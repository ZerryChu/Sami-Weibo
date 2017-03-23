package group.zerry.api_server.dao;

import group.zerry.api_server.entity.Topic;
import group.zerry.api_server.entity.TopicComment;

public interface TopicDao {
	Topic[] selectTopicsByType();
	
	Topic selectTopicById(int id);
	
	TopicComment[] selectCommentsByTopicId(int id);
	
	Topic selectTopicByName(String name);
}
