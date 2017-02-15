package person.zerry.sami_front.service;

public interface SearchService {
	public String searchUsersLikeNickname(String nickname, int page);
	
	public String searchMessagesLikeContent(String username, String content, int page);

}
