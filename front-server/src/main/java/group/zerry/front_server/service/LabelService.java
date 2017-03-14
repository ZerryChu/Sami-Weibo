package group.zerry.front_server.service;

public interface LabelService {
	public String showHeatedLabel();
	
	public String showRecommendedLabels(String username);

	public String showRelatedLabels(int label_id);
	
	public String showLabelNameById(int id);
	
	//public String showSimilarLabel(int label_id);
	
	public boolean subscribeLabel(String username, String userToken, int label_id);
	
	public String showLabelHeat(String username);
}
