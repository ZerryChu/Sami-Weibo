package group.zerry.front_server.service;

public interface TopicService {
	public String showTopicsByType();
	
	public String showTopicById(int id);
	
	public String showCommentsByTopicId(int id, int page);
	
	public String showTopicByName(String name);
}
