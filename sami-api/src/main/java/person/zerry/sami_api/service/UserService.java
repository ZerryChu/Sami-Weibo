package person.zerry.sami_api.service;

import person.zerry.sami_api.entity.User;
import person.zerry.sami_api.enumtypes.UserStatusEnum;

public interface UserService {
	public UserStatusEnum login(String username, String password);
		
	public UserStatusEnum Reg(User user);
	
	public User showUserInfo(String username);

	public User showUserInfoByNickname(String nickname);

	public User showTargetInfoByNickname(String username, String nickname);
	
	//public Friend[] showFriendsByNickname(String nickname);

	public UserStatusEnum addFriend(String username, String friendUsername, String group);
	
	public UserStatusEnum deleteFriend(String username, String friendUsername);

	public User[] showRecommendedUsers(String username);
	
	public User[] getMastersByLabelId(int label_id, int num);
}
