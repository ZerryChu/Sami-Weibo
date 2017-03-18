package group.zerry.api_server.service;

import java.util.List;

import group.zerry.api_server.entity.Label;
import group.zerry.api_server.entity.LabelHeat;
import group.zerry.api_server.enumtypes.LabelStatusEnum;

public interface LabelService {
	public Label[] showHeatedLabel();
	
	public Label[] showRecommendedLabels(String username);

	public void addLabels(int msg_id, List<String> labels);
	
	public Label[] showSimilarLabels(int label_id);
	
	public Label[] showRelatedLabels(int label_id);
	
	public LabelHeat   getUserLabelHeat(int user_id, int label_id);

	public LabelHeat[] showLabelHeat(String username);
	
	public int     showTotalLabelHeat(String username);
	
	public int     showLabelIdByName(String label_name);
	
	public String  showLabelNameById(int id);
	
	public LabelStatusEnum subscribeLabel(String username, int label_id);
}
