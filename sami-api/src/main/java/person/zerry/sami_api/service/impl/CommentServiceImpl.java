package person.zerry.sami_api.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import person.zerry.sami_api.dao.CommentDao;
import person.zerry.sami_api.dao.MessageDao;
import person.zerry.sami_api.dao.UserDao;
import person.zerry.sami_api.entity.Comment;
import person.zerry.sami_api.entity.TopicComment;
import person.zerry.sami_api.entity.User;
import person.zerry.sami_api.enumtypes.CommentStatusEnum;
import person.zerry.sami_api.enumtypes.MessageStatusEnum;
import person.zerry.sami_api.enumtypes.UserStatusEnum;
import person.zerry.sami_api.interceptors.PageHelperInterceptor;
import person.zerry.sami_api.interceptors.PageHelperInterceptor.Page;
import person.zerry.sami_api.service.CommentService;

/**
 * 
 * @author ZerryChu
 * @since 2015 10 13 12:50am
 * @version 1.0
 */
@Service(value = "CommentService")
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDao            commentDao;
	
	@Autowired
	UserDao               userDao;
	
	@Autowired
	MessageDao            messageDao;
	
	private static Logger logger = Logger.getLogger(CommentServiceImpl.class);
	
	@Override
	public Comment[] showComments(int id, int page) {
		int pageSize = 5;
		Comment[] comments = null;
		try {
			PageHelperInterceptor.startPage(page, pageSize);
		    comments = commentDao.selectCommentsByMessageId(id);
			Page<Comment> myPage = PageHelperInterceptor.endPage();
			List<Comment> list = myPage.getResult();
			comments = (Comment[]) list.toArray(new Comment[list.size()]);
		} catch(Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		return comments;
	}

	@Override
	public CommentStatusEnum delete_comment(String username, String nickname, int message_id, int id) {
		// TODO Auto-generated method stub
		try {
			User user = userDao.selectUserByNickname(nickname);
			if(null == user.getUsername() || !user.getUsername().equals(username)) {
				return CommentStatusEnum.UAF;
			}
			commentDao.deleteComment(nickname, id);
		} catch (Exception e) {
			logger.error(e.getMessage());
			return CommentStatusEnum.DCF;
		}
		return CommentStatusEnum.OS;
	}
	
	@Override
	public CommentStatusEnum insertCommentByTopicId(String username, String comment, int topic_id) {
		try {
			User user = userDao.selectUserByUsername(username);
			TopicComment topicComment = new TopicComment();
			topicComment.setUser_id(user.getId());
			topicComment.setComment(comment);
			topicComment.setTopic_id(topic_id);
			commentDao.insertTopicComment(topicComment);
		} catch(Exception e) {
			System.out.println(e.getMessage());
			return CommentStatusEnum.OF;
		}
		return CommentStatusEnum.ATCS;
	}
}
