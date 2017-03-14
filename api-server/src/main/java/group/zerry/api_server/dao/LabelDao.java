package group.zerry.api_server.dao;

import group.zerry.api_server.entity.Count;
import group.zerry.api_server.entity.Label;
import group.zerry.api_server.entity.LabelHeat;

public interface LabelDao {
	int searchLabelIdByName(String name);

	int searchLabelIDByMsgId(Long id);
	
	int selectTotalLabelHeat(int id);
	
	String searchLabelNameById(long id1);
	
	String showLabelNameById(int id);
	
	void updateLabelHeatById(int user_id, long id);
	
	void insertNewLabel(String name);
	
	Count judgeIfLabelExists(String name);
	
	void addLabel(int msg_id, int lbl_id);
	
	void addUsrLblRelation(String username, int label_id);
	
	void deleteUsrLblRelation(String username, int label_id);
	
	Label[] showSubscribedLabels(String username);
	
	Label[] showRelatedLabels(int id);
	
	LabelHeat[] selectLabelHeat(int id);
	
}
