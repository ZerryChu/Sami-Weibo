package person.zerry.sami_api.service;

import person.zerry.sami_api.entity.Comment;
import person.zerry.sami_api.enumtypes.CommentStatusEnum;

public interface CommentService {
	
	public Comment[] showComments(int id, int page);
	
	public CommentStatusEnum delete_comment(String username, String nickname, int message_id, int id);
	
	public CommentStatusEnum insertCommentByTopicId(String username, String comment, int topic_id);
}
