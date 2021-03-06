package group.zerry.api_server.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import group.zerry.api_server.dao.CommentDao;
import group.zerry.api_server.dao.LabelDao;
import group.zerry.api_server.dao.LabelHeatDao;
import group.zerry.api_server.dao.MessageDao;
import group.zerry.api_server.dao.TopicDao;
import group.zerry.api_server.dao.UserDao;
import group.zerry.api_server.entity.Comment;
import group.zerry.api_server.entity.Count;
import group.zerry.api_server.entity.Label;
import group.zerry.api_server.entity.Message;
import group.zerry.api_server.entity.SourceMessagae;
import group.zerry.api_server.entity.Topic;
import group.zerry.api_server.entity.User;
import group.zerry.api_server.enumtypes.MessageStatusEnum;
import group.zerry.api_server.interceptors.PageHelperInterceptor;
import group.zerry.api_server.interceptors.PageHelperInterceptor.Page;
import group.zerry.api_server.service.LabelService;
import group.zerry.api_server.service.MessageService;
import group.zerry.api_server.utils.BatchHandlerForLabelHeat;
// import group.zerry.api_server.utils.LabelManageTools;
import group.zerry.api_server.utils.LabelManageTools;

/**
 * @author ZerryChu
 * @since 2015.10.3
 *
 */
@Service(value = "MessageService")
public class MessageServiceImpl implements MessageService {

	@Autowired
	MessageDao messageDao;

	@Autowired
	CommentDao commentDao;

	@Autowired
	UserDao userDao;

	@Autowired
	LabelDao labelDao;

	@Autowired
	LabelService labelService;

	@Autowired
	TopicDao topicDao;

	@Autowired
	LabelHeatDao labelHeatDao;

	@Autowired
	LabelManageTools labelManageTools;

	@Autowired
	private BatchHandlerForLabelHeat batchHandleWrapperForLabel;

	private Logger logger = Logger.getLogger(MessageServiceImpl.class);

	@Override
	public MessageStatusEnum send_message(String username, String content, int type, String pic, String label) {
		// TODO Auto-generated method stub
		User user = userDao.selectUserByUsername(username);
		Message message = new Message();

		message.setAuthor(user);
		if (pic != null) {
			message.setPic(pic);
		} else {
			message.setPic("");
		}
		message.setContent(content);
		message.setType(type);

		try {
			messageDao.addMessage(message);
			if (label != null) {
				Message lastMessage = messageDao.getLastMessage(user.getNickname());
				int msg_id = lastMessage.getId();
				int user_id = user.getId();
				List<String> topics = labelManageTools.extractLabel(content);
				// 包含labelheat + 3
				labelService.addLabels(user_id, msg_id, topics);

				// 标签可多个
				String[] labels = label.split("#");
				for (int i = 0; i < labels.length; i++) {
					int label_id;
					if (topics.contains(labels[i]) == false) {
						Count count = labelDao.judgeIfLabelExists(labels[i]);
						if (count.getNumber() == 0) {
							System.out.println("create new label: " + labels[i]);
							labelDao.insertNewLabel(labels[i]);
						}
						label_id = labelDao.searchLabelIdByName(labels[i]);
						messageDao.addLabel(msg_id, label_id);
						labelHeatDao.updateLabelHeatById(user_id, label_id, 5);
					} else {
						label_id = labelDao.searchLabelIdByName(labels[i]);
						labelHeatDao.updateLabelHeatById(user_id, label_id, 5);
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			// System.out.println(e.getMessage());
			return MessageStatusEnum.AMF;
		}
		return MessageStatusEnum.AMS;
	}

	@Override
	public MessageStatusEnum delete_message(String username, int id) {
		// TODO Auto-generated method stub
		try {
			messageDao.deleteMessageById(id);
			// userDao.decreaseMessage_numByUsername(username);
		} catch (Exception e) {
			logger.error(e.getMessage());
			return MessageStatusEnum.DMF;
		}
		return MessageStatusEnum.DMS;
	}

	@Override
	public Message[] show_messages(String username, int page) {
		// TODO Auto-generated method stub
		int pageSize = 5;
		Message[] message = null;
		try {
			String[] friend = null;
			friend = userDao.selectFriendsNicknameByUsername(username);
			if (null == friend || 0 == friend.length) {
				return null;
			}
			PageHelperInterceptor.startPage(page, pageSize);
			message = messageDao.getMessages(friend);
			Page<Message> myPage = PageHelperInterceptor.endPage();
			List<Message> list = myPage.getResult();
			message = (Message[]) list.toArray(new Message[list.size()]);
			messageCompletion(message, username);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return null;
		}
		return message;
	}

	/**
	 * 转发微博 message.content: 用户说的话；原微博id
	 */
	@Override
	public MessageStatusEnum addRepost(String username, String _content, int id) {
		// TODO Auto-generated method stub
		try {
			User user = userDao.selectUserByUsername(username);
			Message message = messageDao.getMessageById(id);
			// 获取原作者id
			int _author_id = message.getAuthor().getId();

			message.setAuthor(user);
			if (message.getType() == 1) {
				message.setContent(_content + ";" + id);
				// setPic()
				message.setType(2);
			} else {
				message.setContent(_content + " || " + message.getAuthor() + ":" + message.getContent());
			}
			messageDao.addMessage(message);
			messageDao.addRepostTimes(id);

			Label[] labels = null;
			if ((labels = message.getLabels()) != null) {
				for (int i = 0; i < labels.length; i++) {
					// update_labelHeat
					labelHeatDao.updateLabelHeatById(_author_id, labels[i].getId(), 3);
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return MessageStatusEnum.OF;
		}
		return MessageStatusEnum.RS;
	}

	/**
	 * 评论
	 */
	@Override
	public MessageStatusEnum addComment(String username, String content, int id) {
		// TODO Auto-generated method stub
		try {
			String nickname = userDao.selectUserByUsername(username).getNickname();
			Comment comment = new Comment();
			comment.setNickname(nickname);
			comment.setContent(content);
			comment.setMessage_id(id);
			commentDao.addComment(comment);

			Integer[] label_ids = labelDao.searchLabelIDByMsgId(id);
			if (label_ids.length > 0) {
				int _author_id = messageDao.getMessageById(id).getAuthor().getId();

				for (int i = 0; i < label_ids.length; i++) {
					// update_labelHeat
					labelHeatDao.updateLabelHeatById(_author_id, label_ids[i], 2);
				}
			}
			// messageDao.addCommentTimes(id);
		} catch (Exception e) {
			return MessageStatusEnum.OF;
		}
		return MessageStatusEnum.CS;
	}

	@Override
	public MessageStatusEnum addSupport(String username, int id) {
		// TODO Auto-generated method stub
		try {
			int num = messageDao.findIfSupportedByUsername(username, id).getNumber();
			if (num > 1 || num < 0) {
				return MessageStatusEnum.OF;
			} else if (num == 1)
				return MessageStatusEnum.HAS;
			messageDao.addSupportInfo(id, username);

			Integer[] label_ids = labelDao.searchLabelIDByMsgId(id);

			if (label_ids.length > 0) {
				int _author_id = messageDao.getMessageById(id).getAuthor().getId();

				for (int i = 0; i < label_ids.length; i++) {
					// update_labelHeat
					labelHeatDao.updateLabelHeatById(_author_id, label_ids[i], 1);
				}
			}
			// messageDao.addSupportTimes(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return MessageStatusEnum.OF;
		}
		return MessageStatusEnum.SS;

	}

	@Override
	public MessageStatusEnum decreaseSupport(String username, int id) {
		// TODO Auto-generated method stub
		try {
			int num = messageDao.findIfSupportedByUsername(username, id).getNumber();
			if (num == 0) {
				return MessageStatusEnum.HNS;
			}
			if (num > 1 || num < 0)
				return MessageStatusEnum.OF;
			messageDao.decreaseSupportInfo(id, username);

			Integer[] label_ids = labelDao.searchLabelIDByMsgId(id);
			if (label_ids.length > 0) {
				int _author_id = messageDao.getMessageById(id).getAuthor().getId();

				for (int i = 0; i < label_ids.length; i++) {
					// update_labelHeat
					labelHeatDao.updateLabelHeatById(_author_id, label_ids[i], -1);
				}
			}
			// messageDao.decreaseSupportTimes(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return MessageStatusEnum.OF;
		}
		return MessageStatusEnum.OS;
	}

	@Override
	public Message[] show_ownMessages(String nickname, int page) {
		// TODO Auto-generated method stub
		int pageSize = 10;
		Message[] message = null;
		try {
			// User user = userDao.selectUserByUsername(username);
			PageHelperInterceptor.startPage(page, pageSize);
			message = messageDao.getOwnMessages(nickname);
			Page<Message> myPage = PageHelperInterceptor.endPage();
			List<Message> list = myPage.getResult();
			message = (Message[]) list.toArray(new Message[list.size()]);

			User user = userDao.selectUserByNickname(nickname);
			messageCompletion(message, user.getUsername());
		} catch (Exception e) {
			e.printStackTrace();	
			return null;
		}
		return message;
	}

	@Override
	public Message[] show_announcements() {
		// TODO Auto-generated method stub
		Message[] message = null;
		try {
			// User user = userDao.selectUserByUsername(username);
			message = messageDao.getAnnouncements();
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
		return message;
	}

	/**
	 * 
	 * @param username
	 * @param id
	 * @return false: 可以点赞 false： 可以点赞
	 */
	@Override
	public boolean judgeIfSupport(String username, int id) {
		// TODO Auto-generated method stub
		Count count = messageDao.findIfSupportedByUsername(username, id);
		int num = count.getNumber();
		if (num > 1 || num < 0 || num == 1)
			return true;
		return false;
	}

	// chuli
	@Override
	public Message show_messageById(String username, int message_id) {
		// TODO Auto-generated method stub
		Message message = messageDao.getMessageById(message_id);
		messageCompletion(message, username);
		return message;
	}

	@Override
	public Message[] show_messagesByLabel(String username, int label_id, int page) {
		// TODO Auto-generated method stub
		int pageSize = 5;
		Message[] message = null;
		try {
			// 待做 获取user heat 再分页

			PageHelperInterceptor.startPage(page, pageSize);
			message = messageDao.getMessagesByLabel(label_id);
			Page<Message> myPage = PageHelperInterceptor.endPage();
			List<Message> list = myPage.getResult();
			message = (Message[]) list.toArray(new Message[list.size()]);

			messageCompletion(message, username);
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
		return message;
	}

	@Override
	public Message[] showMessagesByLabelAndHeat(String username, int label_id, int page) {
		// TODO Auto-generated method stub
		int pageSize = 5;
		Message[] message = null;
		try {
			// 待做 获取user heat 再分页

			PageHelperInterceptor.startPage(page, pageSize);
			message = messageDao.getMessagesAndHeatByLabel(label_id);
			Page<Message> myPage = PageHelperInterceptor.endPage();
			List<Message> list = myPage.getResult();
			message = (Message[]) list.toArray(new Message[list.size()]);

			messageCompletion(message, username);
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
		return message;
	}

	@Override
	public Message[] showMessagesByLabelAndHeat(String username, int[] label_id, int page) {
		// TODO Auto-generated method stub
		int pageSize = 5;
		Message[] message = null;
		try {
			// 待做 获取user heat 再分页

			PageHelperInterceptor.startPage(page, pageSize);
			message = messageDao.getMessagesAndHeatByLabels(label_id);
			Page<Message> myPage = PageHelperInterceptor.endPage();
			List<Message> list = myPage.getResult();
			message = (Message[]) list.toArray(new Message[list.size()]);

			messageCompletion(message, username);
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
		return message;
	}

	/*
	 * 弃用
	 * 
	 * @Override public Message[] showWeiboByTopicId(String username, int
	 * topic_id, int page) { // TODO Auto-generated method stub Topic topic =
	 * topicDao.selectTopicById(topic_id); int pageSize = 3; Message[] message =
	 * null; try { PageHelperInterceptor.startPage(page, pageSize); // mysql
	 * like语句 message = messageDao.selectWeiboByTopicName("#" + topic.getName()
	 * + "#%"); Page<Message> myPage = PageHelperInterceptor.endPage();
	 * List<Message> list = myPage.getResult(); message = (Message[])
	 * list.toArray(new Message[list.size()]);
	 * 
	 * messageCompletion(message, username); } catch (Exception e) {
	 * logger.error(e.getMessage()); return null; } return message; }
	 */

	@Override
	public MessageStatusEnum send_topicMessage(String username, String content, String pic, int topic_id) {
		// TODO Auto-generated method stub
		User user = userDao.selectUserByUsername(username);
		Message message = new Message();
		message.setAuthor(user);
		if (pic != null) {
			message.setPic(pic);
		} else {
			message.setPic("");
		}
		Topic topic = topicDao.selectTopicById(topic_id);
		content = '#' + topic.getName() + '#' + content;
		message.setContent(content);
		message.setType(1);
		try {
			messageDao.addMessage(message);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return MessageStatusEnum.AMF;
		}
		return MessageStatusEnum.AMS;
	}

	public void messageCompletion(Message[] message, String username) {
		User author = null;
		for (int i = 0; i < message.length; i++) {
			author = userDao.selectUserByNickname(message[i].getAuthor().getNickname());
			// 屏蔽密码
			author.setPassword("");
			message[i].setAuthor(author);
			message[i].setSupported(judgeIfSupport(username, message[i].getId()));
			String content = message[i].getContent();

			// set labels
			String[] label_names = messageDao.findLabel(message[i].getId());
			Label[] labels = new Label[label_names.length];
			for (int j = 0; j < labels.length; j++) {
				labels[j] = new Label();
				labels[j].setName(label_names[j]);
				labels[j].setId(labelService.showLabelIdByName(label_names[j]));
			}
			message[i].setLabels(labels);

			if (message[i].getType() == 2) {
				int index = content.indexOf(';');
				message[i].setContent(content.substring(0, index));
				// 获取被转发的原微博
				Message msg = messageDao.getMessageById(Integer.parseInt(content.substring(index + 1)));
				SourceMessagae sourceMsg = msg;
				sourceMsg.setNickname(msg.getAuthor().getNickname());
				message[i].setSource_message(sourceMsg);
			}
		}
	}

	public void messageCompletion(Message message, String username) {
		User author = null;
		author = userDao.selectUserByNickname(message.getAuthor().getNickname());
		// 屏蔽密码
		author.setPassword("");
		message.setAuthor(author);
		message.setSupported(judgeIfSupport(username, message.getId()));
		String content = message.getContent();
		// set labels
		String[] label_names = messageDao.findLabel(message.getId());
		Label[] labels = new Label[label_names.length];
		for (int i = 0; i < labels.length; i++) {
			labels[i].setName(label_names[i]);
			labels[i].setId(labelService.showLabelIdByName(label_names[i]));
		}
		message.setLabels(labels);

		if (message.getType() == 2) {
			int index = content.indexOf(';');
			message.setContent(content.substring(0, index));
			// 获取被转发的原微博
			Message msg = messageDao.getMessageById(Integer.parseInt(content.substring(index + 1)));
			SourceMessagae sourceMsg = msg;
			sourceMsg.setNickname(msg.getAuthor().getNickname());
			message.setSource_message(sourceMsg);
		}
	}

	@Override
	public Message[] show_messagesByHeat(String username, int page) {
		// TODO Auto-generated method stub
		int pageSize = 5;
		Message[] message = null;
		try {
			String[] friend = null;
			friend = userDao.selectFriendsNicknameByUsername(username);
			if (null == friend || 0 == friend.length) {
				return null;
			}
			PageHelperInterceptor.startPage(page, pageSize);
			message = messageDao.getMessagesByHeat(friend);
			Page<Message> myPage = PageHelperInterceptor.endPage();
			List<Message> list = myPage.getResult();
			message = (Message[]) list.toArray(new Message[list.size()]);
			messageCompletion(message, username);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return null;
		}
		return message;
	}

	@Override
	public int getMessageNumByLabel(int[] label_id) {
		// TODO Auto-generated method stub
		Count count = messageDao.getMessageNumByLabelId(label_id);
		return count.getNumber();
	}

}
