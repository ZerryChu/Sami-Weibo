package group.zerry.api_server.dao;

import org.springframework.stereotype.Repository;

import group.zerry.api_server.entity.User;

@Repository
public interface UserDao {
	public User selectUserByUsername(String username);
	
	public User selectUserByNickname(String nickname);
	
	public void addUser(User user);
	
	public User selectUserById(int id);
	//public User[] selectFriendIdByUsername(String username);
		
	public void addFriend(int id, int friendId, String group);
	
	public void deleteFriend(int id, int friendId);
	
	public String[] selectFriendsNicknameByUsername(String nickname);
	
	public void addMessage_numByUsername(String username);
	
	public void decreaseMessage_numByUsername(String username);
	
	public void addFriend_numByUsername(String username);
	
	public User[] searchUsersLikeNickname(String nickname);
	
	public Integer getUserFansNumById(int id);
	
	public Integer getUserFocusNumById(int id);
	// 推荐的大神个数
	public User[] getMasterByLabelId(int label_id, int num);
}
