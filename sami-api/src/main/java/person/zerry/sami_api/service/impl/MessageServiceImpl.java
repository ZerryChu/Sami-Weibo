package person.zerry.sami_api.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.hamcrest.core.IsNot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import person.zerry.sami_api.dao.CommentDao;
import person.zerry.sami_api.dao.LabelDao;
import person.zerry.sami_api.dao.MessageDao;
import person.zerry.sami_api.dao.TopicDao;
import person.zerry.sami_api.dao.UserDao;
import person.zerry.sami_api.entity.Comment;
import person.zerry.sami_api.entity.Count;
import person.zerry.sami_api.entity.Label;
import person.zerry.sami_api.entity.Message;
import person.zerry.sami_api.entity.SourceMessagae;
import person.zerry.sami_api.entity.Topic;
import person.zerry.sami_api.entity.User;
import person.zerry.sami_api.enumtypes.MessageStatusEnum;
import person.zerry.sami_api.interceptors.PageHelperInterceptor;
import person.zerry.sami_api.interceptors.PageHelperInterceptor.Page;
import person.zerry.sami_api.service.LabelService;
import person.zerry.sami_api.service.MessageService;
import person.zerry.sami_api.utils.BatchHandleWrapperForLabel;
import person.zerry.sami_api.utils.LabelManageTools;

/**
 * @author ZerryChu
 * @since 2015.10.3
 *
 */
@Service(value = "MessageService")
public class MessageServiceImpl implements MessageService {

	@Autowired
	MessageDao       messageDao;

	@Autowired
	CommentDao       commentDao;

	@Autowired
	UserDao          userDao;

	@Autowired
	LabelDao         labelDao;

	@Autowired
	LabelService     labelService;
	
	@Autowired
	TopicDao         topicDao;

	@Autowired
	LabelManageTools labelManageTools;
	
	@Autowired
	private BatchHandleWrapperForLabel batchHandleWrapperForLabel;

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
		/*
		if (label != null) {
			Count count = labelDao.judgeIfLabelExists(label);
			int id;
			if (count.getNumber() == 0) {
				labelDao.insertNewLabel(label);
			}
			id = labelDao.searchLabelIdByName(label);
			labelDao.updateLabelHeatById(user.getId(), id);
		}
		*/
		try {
			messageDao.addMessage(message);
			// 标签识别
			Message lastMessage = messageDao.getLastMessage(user.getNickname());
			List<String> labels = labelManageTools.extractLabel(content);
			labelService.addLabels(lastMessage.getId(), labels);
		} catch (Exception e) {
			System.out.println(e.getMessage());
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
			logger.error(e.getMessage());
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

	// chuli
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
			message = messageDao.getMessagesAndHotByLabel(label_id);
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
	public Message[] showWeiboByTopicId(String username, int topic_id, int page) {
		// TODO Auto-generated method stub
		Topic topic = topicDao.selectTopicById(topic_id);
		int pageSize = 3;
		Message[] message = null;
		try {
			PageHelperInterceptor.startPage(page, pageSize);
			// mysql like语句
			message = messageDao.selectWeiboByTopicName("#" + topic.getName() + "#%");
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
			for (int j = 0;j < labels.length; j++) {
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
		for (int i = 0;i < labels.length; i++) {
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

}