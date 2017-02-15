package person.zerry.sami_front.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import person.zerry.sami_front.service.TopicService;
import person.zerry.sami_front.utils.FetchUrlTools;
import person.zerry.sami_front.utils.HttpTarget;

@Service("TopicService")
public class TopicServiceImpl implements TopicService {

	@Autowired
	HttpTarget httpTarget;
	
	@Autowired
	FetchUrlTools fetchURlTool;
	
	@Override
	public String showTopicsByType(int id, int page) {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "topic/show";
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("id", String.valueOf(id));
		paramsMap.put("page", String.valueOf(page));
		return fetchURlTool.doPost(url, paramsMap);
	}

	@Override
	public String showTopicById(int id) {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "topic/show_topic";
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("id", String.valueOf(id));
		return fetchURlTool.doPost(url, paramsMap);	
	}

	@Override
	public String showCommentsByTopicId(int id, int page) {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "topic/show_comment";
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("id", String.valueOf(id));
		paramsMap.put("page", String.valueOf(page));
		return fetchURlTool.doPost(url, paramsMap);	
	}

	@Override
	public String showTopicByName(String name) {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "topic/show_topicByName";
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("name", name);
		return fetchURlTool.doPost(url, paramsMap);	
	}
	
	
}
