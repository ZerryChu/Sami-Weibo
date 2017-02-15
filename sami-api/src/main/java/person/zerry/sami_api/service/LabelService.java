package person.zerry.sami_api.service;

import java.util.List;

import person.zerry.sami_api.entity.Label;
import person.zerry.sami_api.enumtypes.LabelStatusEnum;

public interface LabelService {
	public Label[] showHeatedLabel();
	
	public Label[] showRecommendedLabels(String username);

	public void addLabels(int msg_id, List<String> labels);
	
	public Label[] showSimilarLabels(int label_id);
	
	public int     showLabelIdByName(String label_name);
	
	public LabelStatusEnum subscribeLabel(String username, int label_id);
}
