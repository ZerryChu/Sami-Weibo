package person.zerry.sami_front.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;

import person.zerry.sami_front.dto.ReturnMsgDto;
import person.zerry.sami_front.enumtypes.LabelStatusEnum;
import person.zerry.sami_front.enumtypes.MessageStatusEnum;
import person.zerry.sami_front.service.LabelService;
import person.zerry.sami_front.utils.FetchUrlTools;
import person.zerry.sami_front.utils.HttpTarget;

@Service(value = "LabelService")
public class LabelServiceImpl implements LabelService {

	@Autowired
	HttpTarget httpTarget;
	
	@Autowired
	FetchUrlTools fetchURLTool;
	
	@Override
	public String showHeatedLabel() {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "label/show";
		Map<String, String> paramsMap = new HashMap<String, String>();
		return fetchURLTool.doPost(url, paramsMap);
	}

	@Override
	public String showRecommendedLabels(String username) {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "label/show_rec";
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("username", username);
		return fetchURLTool.doPost(url, paramsMap);
	}

	@Override
	public boolean subscribeLabel(String username, String userToken, int label_id) {
		// TODO Auto-generated method stub
		String url = httpTarget.getHostname() + httpTarget.getPath() + "label/subscribe_label";
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("username", username);
		paramsMap.put("userToken", userToken);
		paramsMap.put("label_id", String.valueOf(label_id));
		ReturnMsgDto returnMsgDto = JSON.parseObject(fetchURLTool.doPost(url, paramsMap), ReturnMsgDto.class);
		if (returnMsgDto.getReturnMsg().trim().equals(LabelStatusEnum.SS.getValue())) {
			return true;
		} else {
			return false;	
		}
	}
}
