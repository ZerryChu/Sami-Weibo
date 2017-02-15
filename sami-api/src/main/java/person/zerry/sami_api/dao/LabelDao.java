package person.zerry.sami_api.dao;

import person.zerry.sami_api.entity.Count;
import person.zerry.sami_api.entity.Label;

public interface LabelDao {
	int searchLabelIdByName(String name);

	int searchLabelIDByMsgId(Long id);
	
	String searchLabelNameById(long id1);
	
	void updateLabelHeatById(int user_id, long id);
	
	void insertNewLabel(String name);
	
	Count judgeIfLabelExists(String name);
	
	void addLabel(int msg_id, int lbl_id);
	
	void addUsrLblRelation(String username, int label_id);
	
	void deleteUsrLblRelation(String username, int label_id);
	
	Label[] showSubscribedLabels(String username);
}
