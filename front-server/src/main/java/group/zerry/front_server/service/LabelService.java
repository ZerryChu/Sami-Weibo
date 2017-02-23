package group.zerry.front_server.service;

public interface LabelService {
	public String showHeatedLabel();
	
	public String showRecommendedLabels(String username);

	//public String showSimilarLabel(int label_id);
	
	public boolean subscribeLabel(String username, String userToken, int label_id);
}
