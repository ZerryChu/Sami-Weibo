/**
 * 
 */
function sendMsg() {
	$.ajax({
		type : "post",
		// async : false,
		url : "privateMsg/addMsg",
		data : {
			username : $.query.get("username"),
			userToken : $.query.get("userToken"),
			targetUsername : $.query.get("targetUsername"),
			content : $("#content").val()
		},
		dataType : "json",
		success : function(data) {
			if (data.returnmsg == 1) {
				$("#content").val("");
				showMsg(1);
			} else {
				$("#content").val("");
				// add content...
			}
		}
	});
}

显示对话
function showMsg(flag) {
	$
			.ajax({
				type : "post",
				// async : false,
				url : "privateMsg/getMsg",
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken"),
					targetUsername : $.query.get("targetUsername")
				},
				dataType : "json",
				success : function(data) {
					$("#cnt").empty();
					var i = 0;
					while (data.returndata[i] != undefined) {
						//var return_content = replace_em(data.returndata[i].content); // 解析QQ表情
						var str = "";
							// 处理图片url
							str += "<tr><td class=\"text-center\"><div class=\"custom-checkbox\"><input type=\"checkbox\" id=\"chk4\" class=\"inbox-check\"><label for=\"chk4\"></label></div></td><td></td><td><div class=\"author-avatar\"><img src=\"images/profile/"
									+ $.query.get("username") + ".jpg\"> alt=\"\"></div><div class=\"author-name\"><strong class=\"block font-md\">"
							        + data.returndata[i].targetNickname;
							str += "</strong> <a href=\"#\" class=\"text-muted\">Close Friends</a></div></td><td><a href=\"#\">";
							str += $.query.get("content");
							str += "</a></td><td>"
							str += data.returndata[i].time;
							str += "</td></tr>";
							
							
							//str += return_content;
							
							处理时间
							//str += "</div><time class=\"timeago\" datetime=\"";
							//str += data.returndata[i].time;
							//str += "\"></time></div></div>";
						
						$("#cnt").append(str);
						i++;
					}
					//$(".timeago").timeago();
					//if (flag)
					//	$(".msg_list").scrollTop(1000000);
				}
			});

	// 展示最后一条
	function showMsgInfoList() {
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
						$(".user_list").empty();
						var i = 0;
						var num = 0;
						var index = 0;
						while (data.returndata[i] != undefined) {
							var str = "";
							str += "<a href=\"privateMsg.jsp?username="
									+ $.query.get("username")
									+ "&userToken="
									+ $.query.get("userToken")
									+ "&targetUsername="
									+ data.returndata[i].targetUsername
									+ "&targetNickname="
									+ data.returndata[i].targetNickname
									+ "\">"
									+ "<li id=\""
									+ index
									+ "\" class=\"info\"><div><img style=\"margin: 15px; width: 100px; height: 100px;\" src=\"pic/"
									+ data.returndata[i].targetUsername
									+ ".jpg\" onerror=\"this.src='images/no_found.png'\">"
									+ "<div class=\"nickname\">"
									+ data.returndata[i].targetNickname
									+ "</div><time class=\"timeago\"></time><div class=\"msg_num\"><span class=\"num\">"
									+ data.returndata[i].count
									+ "</span>个对话</div></div></li></a>";
							$(".user_list").append(str);
							//$(".timeago").attr("datetime",
							//		data.returndata[i].time);
							if (data.returndata[i].has_noRead == true) {
								$(".info").css("background-color", "#e9e8ea");
								num++;
							}
							i++;
							index++;
						}
						//$(".timeago").timeago();
						// 未读信息
						$("#not_read .num").text(num);
					},
					error : function() {
						alert("error");
					}
				});
	}
}

//
<tr>
<td class="text-center">
	<div class="custom-checkbox">
		<input type="checkbox" id="chk4" class="inbox-check">
		<label for="chk4"></label>
	</div>
</td>
<td></td>
<td>
	<div class="author-avatar">
		<img src="images/profile/profile6.jpg" alt="">
	</div>
	<div class="author-name">
		<strong class="block font-md">Christopher Brown</strong> <a
			href="#" class="text-muted">Close Friends</a>
	</div>
</td>
<td><a href="#"> Nulla tellus elit, varius non commodo
		eget. <small class="block">quis ullamcorper ligula
			sodales at.</small>
</a></td>
<td>19 Jun, 7:41</td>
</tr>