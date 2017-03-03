package group.zerry.front_server.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import group.zerry.front_server.annotation.AuthPass;
import group.zerry.front_server.service.LabelService;

@Controller
@RequestMapping(value = "/label")
public class LabelController {
	@Autowired
	private LabelService labelService;
	
	@ResponseBody
	@RequestMapping(value = "/show", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public String showHeatedLabel() {
		return labelService.showHeatedLabel();
	}

	@ResponseBody
	@RequestMapping(value = "/show_rec", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public String showRecommendedLabels(String username) {
		return labelService.showRecommendedLabels(username);
	}
	
	/*
	@ResponseBody
	@RequestMapping(value = "/show_similar", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public String showSimilarLabel(int label_id) {
		return labelService.showSimilarLabel(label_id);
	}
	*/
	
	@AuthPass
	@ResponseBody
	@RequestMapping(value = "/subscribe_label", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public String subscribeLabel(String username, String userToken, int label_id) {
		if (labelService.subscribeLabel(username, userToken, label_id) == true)
			return "{\"msg\" : 1}";
		else
			return "{\"msg\" : 0}";

	}
	
	@ResponseBody
	@RequestMapping(value = "/show_label_byId", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public String showLabelNamedById(int id) {
		return labelService.showLabelNameById(id);
	}
	
}
