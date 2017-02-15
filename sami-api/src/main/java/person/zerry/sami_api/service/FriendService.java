package person.zerry.sami_api.service;

import person.zerry.sami_api.entity.Target;
import person.zerry.sami_api.entity.User;

public interface FriendService {
	public User[] showFriendsByGroupname(String username, String group);
	
	public String[] showGroupsByUsername(String username);
	
	public Target[] showCommonFriendsByTargetUsername(String username, String targetUsername);
		
	public boolean  judgeIfFocusOrNot(String username, String targetUsername);
	
	public Target[] showFavorites(String username, int page);
	
	public Target[] showFollowers(String username, int page);
}
