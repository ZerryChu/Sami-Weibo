package person.zerry.sami_api.controllers;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SimplePropertyPreFilter;

import person.zerry.sami_api.dao.UserDao;
import person.zerry.sami_api.entity.Message;
import person.zerry.sami_api.entity.Target;
import person.zerry.sami_api.entity.User;
import person.zerry.sami_api.enumtypes.MessageStatusEnum;
import person.zerry.sami_api.enumtypes.UserStatusEnum;
import person.zerry.sami_api.interceptors.PageHelperInterceptor;
import person.zerry.sami_api.interceptors.PageHelperInterceptor.Page;
import person.zerry.sami_api.service.SearchService;

/**
 * @author ZerryChu
 * @since 2015 10 19
 * @content 数据库检索
 */
@Controller
@RequestMapping(value = "/search")
public class DataSearchController {

	@Autowired
	SearchService searchService;

	Logger logger = Logger.getLogger(DataSearchController.class);

	private static SimplePropertyPreFilter userFilter = new SimplePropertyPreFilter(User.class, "nickname", "username",
			"age", "type", "habit", "friend_num", "focus_num", "message_num");

	@ResponseBody
	@RequestMapping(value = "/users", produces = "text/html;charset=UTF-8")
	public String searchUsersLikeNickname(String nickname, int page) {
		StringBuilder regMsg = new StringBuilder("{\"returndata\":");
		User[] users = null;
		try {
			users = searchService.searchUsersLikeNickname(nickname, page);
		} catch (Exception e) {
			regMsg.append(UserStatusEnum.UNE.getValue());
			regMsg.append("}");
			return regMsg.toString();
		}
		regMsg.append(JSON.toJSONString(users, userFilter));
		regMsg.append("}");
		return regMsg.toString();
	}

	@ResponseBody
	@RequestMapping(value = "/messages", produces = "text/html;charset=UTF-8")
	public String searchMessagesLikeContent(String username, String content, int page) {
		StringBuilder regMsg = new StringBuilder("{\"returndata\":");
		Message[] messages;
		try {
			messages = searchService.searchMessagesLikeContent(username, content, page);
		} catch (Exception e) {
			e.printStackTrace();
			regMsg.append(MessageStatusEnum.SMF.getValue());
			regMsg.append("}");
			return regMsg.toString();
		}
		regMsg.append(JSON.toJSONString(messages));
		regMsg.append("}");
		logger.error(regMsg.toString());
		return regMsg.toString();
	}
}
