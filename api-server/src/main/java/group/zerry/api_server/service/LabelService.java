package group.zerry.api_server.service;

import java.util.List;

import group.zerry.api_server.entity.Label;
import group.zerry.api_server.enumtypes.LabelStatusEnum;

public interface LabelService {
	public Label[] showHeatedLabel();
	
	public Label[] showRecommendedLabels(String username);

	public void addLabels(int msg_id, List<String> labels);
	
	public Label[] showSimilarLabels(int label_id);
	
	public int     showLabelIdByName(String label_name);
	
	public LabelStatusEnum subscribeLabel(String username, int label_id);
}
