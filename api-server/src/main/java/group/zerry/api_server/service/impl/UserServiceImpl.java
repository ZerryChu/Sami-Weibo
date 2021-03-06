package group.zerry.api_server.service.impl;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;

import group.zerry.api_server.dao.FriendDao;
import group.zerry.api_server.dao.UserDao;
import group.zerry.api_server.entity.Count;
import group.zerry.api_server.entity.Friend;
import group.zerry.api_server.entity.User;
import group.zerry.api_server.enumtypes.UserStatusEnum;
import group.zerry.api_server.service.UserService;
import group.zerry.api_server.utils.EncodeTools;
import group.zerry.api_server.utils.Recommender;

/**
 * @author ZerryChu
 * @since 2015.10.3
 *
 */
@Service(value = "UserService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	@Autowired
	private FriendDao friendDao;

	@Autowired
	private Recommender recommender;

	private static Logger logger = Logger.getLogger(UserServiceImpl.class);

	@Override
	public UserStatusEnum login(String username, String password) {
		// TODO Auto-generated method stub
		if (username == null || password == null)
			return UserStatusEnum.UNV;
		username = username.trim();
		password = password.trim();
		if (username == "" || password == "")
			return UserStatusEnum.UNV;
		User user = userDao.selectUserByUsername(username);
		if (user != null
				&& user.getPassword().equals(EncodeTools.encoder(password, user.getPassword().substring(0, 4)))) {
			return UserStatusEnum.LS;
		} else
			return UserStatusEnum.PI;
	}

	@Override
	public UserStatusEnum Reg(User user) {
		// TODO Auto-generated method stub
		if (user == null)
			return UserStatusEnum.UNV;
		else {
			try {
				User temp = userDao.selectUserByUsername(user.getUsername());
				if (temp != null) {
					return UserStatusEnum.UE;
				}
				user.setPassword(EncodeTools.encoder(user.getPassword(), EncodeTools.giveMeSalt()));
				userDao.addUser(user);
				return UserStatusEnum.RS;
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return UserStatusEnum.AUF;
			}
		}
	}

	@Override
	public UserStatusEnum addFriend(String username, String friendUsername, String group) {
		// TODO Auto-generated method stub
		User user1 = userDao.selectUserByUsername(username.trim());
		User user2 = userDao.selectUserByUsername(friendUsername.trim());
		if (user1 == null || user2 == null || user1 == user2)
			return UserStatusEnum.PNV;
		else {
			try {
				userDao.addFriend(user1.getId(), user2.getId(), group);
				// userDao.addFriend(user2.getId(), user1.getId(), group);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return UserStatusEnum.AFE;
			}
			return UserStatusEnum.AFS;
		}

	}

	@Override
	public User showUserInfo(String username) {
		// TODO Auto-generated method stub
		User user = null;
		try {
			user = userDao.selectUserByUsername(username);
			Integer integer = userDao.getUserFansNumById(user.getId());
			user.setFriend_num(integer);
			integer = userDao.getUserFocusNumById(user.getId());
			user.setFocus_num(integer);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		return user;
	}

	@Override
	public User showTargetInfoByNickname(String username, String nickname) {
		// TODO Auto-generated method stub
		User user = null;
		try {
			user = userDao.selectUserByNickname(nickname);
			Integer integer = userDao.getUserFansNumById(user.getId());
			user.setFriend_num(integer);
			integer = userDao.getUserFocusNumById(user.getId());
			user.setFocus_num(integer);
			Count count = friendDao.judgeIfFocusOrNot(userDao.selectUserByUsername(username).getId(), user.getId());
			if (count.getNumber() >= 1) {
				user.setFriend(true);
			} else {
				user.setFriend(false);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		return user;
	}

	@Override
	public UserStatusEnum deleteFriend(String username, String friendUsername) {
		// TODO Auto-generated method stub
		User user1 = userDao.selectUserByUsername(username.trim());
		User user2 = userDao.selectUserByUsername(friendUsername.trim());
		if (user1 == null || user2 == null || user1 == user2)
			return UserStatusEnum.PNV;
		else {
			try {
				userDao.deleteFriend(user1.getId(), user2.getId());
				// userDao.addFriend(user2.getId(), user1.getId(), group);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				return UserStatusEnum.DFE;
			}
			return UserStatusEnum.DFS;
		}
	}

	@Override
	public User[] showRecommendedUsers(String username) {
		User user = userDao.selectUserByUsername(username);
		long[] recs = recommender.getRecommendedUser(user.getId(), 10);
		User[] users = new User[3];
		int user_num = 0;
		Count count = null;
		User item = null;
		for (int i = 0; i < recs.length; i++) {
			item = userDao.selectUserById((int) recs[i]);
			count = friendDao.judgeIfFocusOrNot(user.getId(), item.getId());

			// 已关注的不推荐
			if (count.getNumber() > 0) {
				continue;
			}
			users[user_num++] = item;
			Integer integer = userDao.getUserFansNumById(item.getId());
			item.setFriend_num(integer);
			integer = userDao.getUserFocusNumById(item.getId());
			item.setFocus_num(integer);
			
			// 推荐3人
			if (user_num >= 3)
				break;
		}

		return users;

	}

	@Override
	public User showUserInfoByNickname(String nickname) {
		// TODO Auto-generated method stub
		User user = null;
		try {
			user = userDao.selectUserByNickname(nickname);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
		return user;
	}

	@Override
	public User[] getMastersByLabelId(int label_id, int num) {
		// TODO Auto-generated method stub
		User[] users = userDao.getMasterByLabelId(label_id, num);
		for (int i = 0; i < users.length; i++) {
			User user = users[i];
			Integer integer = userDao.getUserFansNumById(user.getId());
			user.setFriend_num(integer);
			integer = userDao.getUserFocusNumById(user.getId());
			user.setFocus_num(integer);
		}
		return users;
	}

}
