package group.zerry.api_server.dao;

import org.springframework.stereotype.Repository;

import group.zerry.api_server.entity.LabelHeat;

@Repository
public interface LabelHeatDao {
	
	int selectTotalLabelHeat(int id);

	void updateLabelHeatById(int user_id, long id, int heat);
	
	LabelHeat[] selectLabelHeat(int id);

	LabelHeat   selectUserLabelHeat(int user_id, int label_id);
}
