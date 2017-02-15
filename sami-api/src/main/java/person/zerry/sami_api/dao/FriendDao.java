package person.zerry.sami_api.dao;

import person.zerry.sami_api.entity.Count;
import person.zerry.sami_api.entity.Target;
import person.zerry.sami_api.entity.User;

public interface FriendDao {
	//public Friend[] selectFriendsByNickname(String nickname);

	public User[]   selectFriendsByGroupname(String username, String group);
	
	public String[] selectGroupsByUsername(String username);
	
	public Target[] selectCommonFriendsByTargerUsername(String username, String targetUsername);

	public Target[] selectFavorites(String username);
	
	public Target[] selectFollowers(String username);
	
	public Count    judgeIfFocusOrNot(int userId, int targetUserId);
}
