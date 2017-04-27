/**
 * 
 */
getFollowing();
showChattingList();

function getFollowing() {
	$
			.ajax({
				type : "post",
				url : "friend/favorites",
				data : {
					username : $.query.get("username"),
					// userToken : $.query.get("userToken"),
					page : 1
				},
				dataType : "json",
				success : function(data) {
					var i = 0;
					$("#following").empty();
					while (data.returndata[i] != undefined) {
						var message = "<li class=\""
								+ data.returndata[i].username
								+ "\"><div style=\"display: inline-block;\"><a href=\"profile.jsp?username="
								+ $.query.get("username")
								+ "&userToken="
								+ $.query.get("userToken")
								+ "&targetUsername="
								+ data.returndata[i].username
								+ "\" class=\"clearfix show_info\"> <img src=\"images/profile/"
								+ data.returndata[i].username
								+ ".jpg\" class=\"img-circle\" alt=\"user avatar\"><div style=\"width: 100px;\" class=\"chat-detail m-left-sm\"><div class=\"chat-name\">"
								+ data.returndata[i].nickname
								+ "</div><div class=\"chat-message\">"
								+ data.returndata[i].title
								+ "</div></div></a></div><div style=\"position: relative; display: inline-block; left: 40px; top: -22px; class=\"chat-status\"><i style=\"cursor: pointer;\" class=\"fa fa-envelope fa-lg send_pvtmsg\"></i></div><div class=\"chat-alert\"> </div></li>";
						$("#following").append(message); //<span class=\"badge badge-purple bounceIn animation-delay2\"> </span>
						i++;
					}
				}
			});
}

function showChattingList() {

	$
			.ajax({
				type : "post",
				// async : false,
				url : "privateMsg/getInfo",
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken")
				},
				dataType : "json",
				success : function(data) {
					$("#chatting").empty();
					var i = 0;
					while (data.returndata[i] != undefined) {
						var return_content = replace_em(data.returndata[i].content);
						var str = "<li class=\""
								+ data.returndata[i].targetUsername
								+ "\"><div style=\"display: inline-block;\"><a href=\"profile.jsp?username="
								+ $.query.get("username")
								+ "&userToken="
								+ $.query.get("userToken")
								+ "&targetUsername="
								+ data.returndata[i].targetUsername
								+ "\" class=\"clearfix show_info\"> <img src=\"images/profile/"
								+ data.returndata[i].targetUsername
								+ ".jpg\" class=\"img-circle\" alt=\"user avatar\"><div style=\"width: 100px;\" class=\"chat-detail m-left-sm\"><div class=\"chat-name\">"
								+ data.returndata[i].targetNickname
								+ "</div><div class=\"chat-message\">"
								+ return_content + "</div></div>";
						if (data.returndata[i].has_noRead == true)
							str += "<span style=\"margin-top: 10px;\" class=\"badge badge-success bounceIn animation-delay2\">1</span>";
						else
							str += "<span style=\"margin-top: 10px;\" class=\"badge badge-fail bounceIn animation-delay2\">0</span>"
						str += "</a></div><div style=\"position: relative; display: inline-block; left: 20px; top: 2px;\" class=\"chat-status\"><i style=\"cursor: pointer;\" class=\"block fa fa-envelope fa-lg send_pvtmsg\"></i></div><div class=\"chat-alert\"></div></li>";

						$("#chatting").append(str);
						i++;
					}
				},
				error : function() {
					//...
				}
			});
}

$(".send_pvtmsg").live(
		'click',
		function() {
			var targetUsername = $(this).parent().parent().attr(
					"class");
			var forward = "window.location='privateMsgInfo.jsp?username="
					+ $.query.get("username") + "&userToken="
					+ $.query.get("userToken") + "&targetUsername="
					+ targetUsername + "&targetNickname=" + targetUsername
					+ "'";
			setTimeout(forward, 0);
		});

$("#srh_fri_a").live(
		'click',
		function() {
			var targetUsername = $("#srh_fri").val();
			var forward = "window.location.href='profile.jsp?username="
					+ $.query.get("username") + "&userToken="
					+ $.query.get("userToken") + "&targetUsername="
					+ targetUsername + "'";
			setTimeout(forward, 0);
		});