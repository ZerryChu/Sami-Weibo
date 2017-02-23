/**
 * Created by zhuzirui on 10/11/15.
 */
// 描述文字等
// 访问量
function showUserInfo() {
	var targetName = $.query.get("targetUsername");
	if (targetName == undefined || targetName == "")
		targetName = $.query.get("username");
	$.ajax({
		type : "post",
		url : "user/getinfo",
		data : {
			username : targetName,
			flag : 1
		},
		dataType : "json",
		success : function(data) {
			$.each(data, function() {
				// 职业
				// $("#job").after("user");
				if (data.returndata != null) {
					$("#user_icon").attr('src', "images/profile/" + data.returndata.username + ".jpg");
					$("#usr_nickname").text(data.returndata.nickname);
					$("#follower").text(data.returndata.friend_num);
					$("#following").text(data.returndata.focus_num);
					$("#weibo").text(data.returndata.message_num);
					// 修改头像
					// $("#user_icon").attr(
					//		"onclick",
					//		"window.location=\"addicon.jsp?username="
					//				+ $.query.get("username") + "&userToken="
					//				+ $.query.get("userToken") + "\"");

				} else {
					$("#usr_nickname").text("null");
					$("#follower").text("0");
					$("#following").text("0");
					$("#weibo").text("0");
				}
			});
		}
	});
	
	
}



/*

    领域
	<div class="m-top-xs">
		<i class="fa fa-briefcase user-profile-icon"></i>
		Software Engineer 
	</div>
	


  个人微博 
<div class="m-top-xs">
	<i class="fa fa-external-link user-profile-icon"></i>
	www.mywebsite.com
</div>
	
	  加入一段描述 
	<h4 class="m-top-md m-bottom-sm">关于我</h4>
	<p class="m-top-sm">
		Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales at.
	<p>
		
	*/	
		