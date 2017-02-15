package person.zerry.sami_api.service;

import java.util.List;

import person.zerry.sami_api.entity.PrivateMsg;
import person.zerry.sami_api.entity.PrivateMsgInfo;
import person.zerry.sami_api.enumtypes.PrivateMsgStatusEnum;

public interface PrivateMsgService {
	/*
	public int getMessagesCount(int id1, int id2);
	
	public int[] getAllIdTalkedToUser(int id);
	*/
	
	public PrivateMsg[] getPrivateMsg(String username, String targetUsername);
	
	public List<PrivateMsgInfo> getALLPrivateMsgList(String username);
	
	public PrivateMsgStatusEnum addPrivateMessage(String username, String targetUsername, String content);
	
	public PrivateMsgStatusEnum readPrivateMsg(String username ,String targetUsername);
}
