package person.zerry.sami_front.service;

public interface PrivateMsgService {
	public String getALLPrivateMsgList(String username, String userToken);

	public String getMsg(String username, String userToken, String targetUsername);
	
	public String addPrivateMessage(String username, String userToken, String targetUsername, String content);
	
	public String readPrivateMessage(String username, String userToken, String targetUsername);
}
