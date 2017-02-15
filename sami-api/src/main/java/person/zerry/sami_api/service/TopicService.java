package person.zerry.sami_api.service;

import person.zerry.sami_api.entity.Topic;
import person.zerry.sami_api.entity.TopicComment;

public interface TopicService {
	public Topic[] showTopicsByType(int id, int page);
	
	public Topic showTopicById(int id);
	
	public TopicComment[] showCommentsById(int id, int page);
	
	public Topic showTopicByName(String name);

}
