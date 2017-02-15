package person.zerry.sami_front.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import person.zerry.sami_front.entity.Message;
import person.zerry.sami_front.entity.User;
import person.zerry.sami_front.service.SearchService;
import person.zerry.sami_front.utils.FetchUrlTools;
import person.zerry.sami_front.utils.HttpTarget;

@Service(value="SearchService")
public class SearchServiceImpl implements SearchService{

	@Autowired
	HttpTarget    httpTarget;

	@Autowired
	FetchUrlTools fetchURLTool;
	
	public String searchUsersLikeNickname(String nickname, int page) {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "search/users";
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("nickname", nickname);		
		paramsMap.put("page", String.valueOf(page));
		return fetchURLTool.doPost(url, paramsMap);
	}

	public String searchMessagesLikeContent(String username, String content, int page) {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "search/messages";
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("username", username);
		paramsMap.put("content", content);
		paramsMap.put("page", String.valueOf(page));
		return fetchURLTool.doPost(url, paramsMap);
	}

}
