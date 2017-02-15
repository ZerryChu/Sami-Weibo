package person.zerry.sami_api.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import person.zerry.sami_api.dao.TopicDao;
import person.zerry.sami_api.entity.Topic;
import person.zerry.sami_api.entity.TopicComment;
import person.zerry.sami_api.interceptors.PageHelperInterceptor;
import person.zerry.sami_api.interceptors.PageHelperInterceptor.Page;
import person.zerry.sami_api.service.TopicService;

@Service("TopicService")
public class TopicServiceImpl implements TopicService {
	
	@Autowired
	TopicDao topicDao;
	
	@Override
	public Topic[] showTopicsByType(int id, int page) {
		// TODO Auto-generated method stub
		int pageSize = 10;
		PageHelperInterceptor.startPage(page, pageSize);
		Topic[] topics = topicDao.selectTopicsByType(id);
		Page<Topic> myPage = PageHelperInterceptor.endPage();
		List<Topic> list = myPage.getResult();
		topics = (Topic[]) list.toArray(new Topic[list.size()]);
		return topics;
	}

	@Override
	public Topic showTopicById(int id) {
		// TODO Auto-generated method stub
		Topic topic = topicDao.selectTopicById(id);
		return topic;
	}

	@Override
	public TopicComment[] showCommentsById(int id, int page) {
		// TODO Auto-generated method stub
		int pageSize = 5;
		PageHelperInterceptor.startPage(page, pageSize);
		TopicComment[] topicComments = topicDao.selectCommentsByTopicId(id);
		Page<Topic> myPage = PageHelperInterceptor.endPage();
		List<Topic> list = myPage.getResult();
		topicComments = (TopicComment[]) list.toArray(new TopicComment[list.size()]);
		return topicComments;
	}

	@Override
	public Topic showTopicByName(String name) {
		// TODO Auto-generated method stub
		name = name.substring(1, name.length()-1);
		return topicDao.selectTopicByName(name);
	}

}
