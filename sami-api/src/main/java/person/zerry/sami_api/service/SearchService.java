package person.zerry.sami_api.service;

import person.zerry.sami_api.entity.Message;
import person.zerry.sami_api.entity.User;

public interface SearchService {
	public Message[] searchMessagesLikeContent(String username, String content, int page);
	
	public User[] searchUsersLikeNickname(String nickname, int page);
}
