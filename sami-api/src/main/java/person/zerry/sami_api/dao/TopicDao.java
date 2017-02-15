package person.zerry.sami_api.dao;

import person.zerry.sami_api.entity.Message;
import person.zerry.sami_api.entity.Topic;
import person.zerry.sami_api.entity.TopicComment;

public interface TopicDao {
	Topic[] selectTopicsByType(int id);
	
	Topic selectTopicById(int id);
	
	TopicComment[] selectCommentsByTopicId(int id);
	
	Topic selectTopicByName(String name);
}
