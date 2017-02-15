/**
 * Created by zhuzirui on 10/11/15.
 */


// 描述文字等
// 访问量
//ifShow
function showUserInfo() {
	$.ajax({
		type : "post",
		url : "user/getinfo",
		data : {
			username : $.query.get("username"),
			flag : 1
		},
		dataType : "json",
		success : function(data) {
			//if (!ifshow)
			//	return;
			$.each(data, function() {
				$(".fa fa-briefcase user-profile-icon").text("user");
				if (data.returndata != null) {
					$("#usr_nickname").text(data.returndata.nickname);
					// $(".username").text(data.returndata.username);
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
					//$(".username").text("null");
					$("#follower").text("0");
					$("#following").text("0");
					$("#weibo").text("0");
				}
			});
		}
	});
}


/*

    职位
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
		