<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/main.css">

<title>用户信息</title>
<style type="text/css">
.targetUsername, .targetNickname, .friend_num, .message_num, form {
	display: inline-block;
}

.targetNickname, .targetUsername {
	margin-left: 20px;
}

.message_num, .friend_num, .focus_num {
	margin-left: 30px;
}

.account {
	float: right;
	margin-right: 20px;
}

body {
	background-color: #73cff1;
}

.main {
	width: 900px;
	margin: 0px auto;
	margin-top: 27px;
	padding-top: 10px;
}

.topInfo {
	width: 900px;
	padding-bottom: 5px;
	margin-bottom: 3px;
	background: #f3f7f9;
	border-radius: 5px 5px 0px 0px;
}

.msgBox {
	float: left;
	padding-left: 10px;
	padding-top: 10px;
	width: 580px;
}

.repostInfo {
	background: #f7f7f7 none repeat scroll 0 0;
	border: 1px solid #dee3e3;
	cursor: pointer;
	padding: 10px 30px;
	width: 500px;
}

.topInfo img {
	margin-top: 20px;
	margin-left: 20px;
}

.topInfo form {
	margin-left: 20px;
}

.left_content {
	display: inline-block;
	float: left;
	border-radius: 0px 0px 0px 5px;
	width: 70%;
	background: #fff;
}

.right_content {
	display: inline-block;
	float: right;
	width: 28%;
	border-radius: 0px 0px 5px 0px;
	background: white;
}

#focus, #unfocus {
	width: 70px;
	background-color: silver;
}

.qqFace {
	margin-top: 4px;
}

.qqFace table td {
	padding: 0px;
}

.qqFace table td img {
	cursor: pointer;
	border: 1px #fff solid;
}

.qqFace table td img:hover {
	border: 1px #0066cc solid;
}

.cmt_emotion, .rpt_emotion {
	width: 42px;
	height: 20px;
	background: url(face/icon.gif) no-repeat 2px 2px;
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 3px;
	cursor: pointer
}

.cmt_emotion:hover, .rpt_emotion:hover {
	background-position: 2px -28px
}

.subtitle, .common_topic {
	padding-top: 30px;
	padding-left: 20px;
	padding-bottom: 10px;
}

.common_friend {
	padding-left: 20px;
}

.otherCom {
	border: 1px solid #dee3e3;
	width: 520px;
	list-style: none;
}
</style>
</head>
<body>
	<div class="bg">
		<img style="heigth: 100%; width: 100%;" src="images/index_bg.jpg" />
	</div>
	<div class="top">
		<ul class="top_content" style="font-weight: bold;">
			<li><a class="link"
				href="main?username=${param.username}&userToken=${param.userToken}">首页</a></li>
			<li><a class="link"
				href="label.jsp?username=${param.username}&userToken=${param.userToken}">标签</a></li>
			<li><a class="link"
				href="topic.jsp?username=${param.username}&userToken=${param.userToken}">话题</a></li>

			<!--  at    好友    私信 -->
			<form action="" method="post">
				<input type="text" class="search_text" /> <select
					class="search_type" name="type">
					<option value="2">搜微博</option>
					<option value="1" selected="selected">搜昵称</option>
				</select> <input type="button" value="搜索" onclick="search()">
			</form>
		</ul>
	</div>
	<div class="main">
		<div class="topInfo">
			<img style="width: 100px; height: 100px;" src=""
				onerror="this.src='images/no_found.png'">
			<div class="targetNickname">
				昵称：
				<div style="color: #006a92; font-weight: bold;"></div>
			</div>
			<br>
			<div class="targetUsername">
				用户名：
				<div style="margin-left: 10px; color: #006a92; font-weight: bold;"></div>
			</div>
			<br> <br>
			<form class="options">
				<!--  暂时不设分组 -->
				<input type="button" id="focus" value="关注"
					onclick="addFriend('normal')"> <input type="button"
					id="unfocus" value="取消关注" onclick="deleteFriend()">
			</form>
			<div class="account">
				<span class="message_num"> 广播： <span
					style="color: #006a92; font-weight: bold;"></span>
				</span> <span class="friend_num"> 听众：<span
					style="color: #006a92; font-weight: bold;"></span>
				</span> <span class="focus_num"> 收听： <span
					style="color: #006a92; font-weight: bold;"></span>
				</span>
			</div>
		</div>
		<div class="left_content">
			<div class="ownMessage">
				<div class="weibolist">
					<ul id="weibo">
					</ul>
				</div>
			</div>
			<div class="getPageNum" align="center">
				<span style="font-weight: bold;" class="prePage">上一页</span><span
					style="font-weight: bold;" class="nextPage">下一页</span>
				<form style="display: inline-block;">
					第<input style="width: 30px;" class="pageNum" type="number">页<input
						type="button" class="btn" value="跳转" onclick="goToPage()">
				</form>
				</from>
			</div>
		</div>
		<div class="right_content">
			<div class="subtitle">
				共同收听<span class="num">0</span>人
			</div>
			<div class="common_friend">
				<span><img style="width: 10px; height: 60px;"
					src="images/pre.jpg" title="上一页"></span> <span id="fri1"
					class="commonfriend_info"></span> <span id="fri2"
					class="commonfriend_info"></span> <span id="fri3"
					class="commonfriend_info"></span> <span><img
					style="width: 10px; height: 60px;" src="images/next.jpg"
					title="下一页"></span>
			</div>
			<div class="common_topic">相似标签</div>
		</div>
	</div>

	<a id="gtotop" class="w-top" style="visibility: visible; opacity: 1;"
		hidefocus="true" href="#" title="回到顶部">回到顶部</a>
</body>
<script src="plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="plugins/timeago.js" type="text/javascript"></script>
<script src="plugins/jquery.query-2.1.7.js" type="text/javascript"></script>
<script src="scripts/showUserInfo.js" type="text/javascript"></script>
<script src="scripts/show_friends.js" type="text/javascript"></script>
<script src="plugins/jquery.qqFace.js" type="text/javascript"></script>
<script src="scripts/show_messages.js" type="text/javascript"></script>
<script src="scripts/support.js" type="text/javascript"></script>
<script src="scripts/checkSubmit.js" type="text/javascript"></script>
<script src="scripts/jquery-bigic.js" type="text/javascript"></script>
<script src="scripts/search.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		showTargetInfo(1);
	});

	$(document).scroll(function() {
		var content = $(".subtitle");
		if (248 <= $(window).scrollTop()) {
			content.css("margin-top", $(window).scrollTop() - 220);
		} else {
			content.css("margin-top", 0);
		}
	});

	/*
	function openFriendList() {
		if($(li).find(".friend_list").slideToggle();
		addFriend($(".targetUsername div").text(), "normal");
	}
	 */

	function addFriend(_group) {
		if (checkSubmit(500)) {
			$.ajax({
				type : "post",
				url : "user/addfriend",
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken"),
					friendUsername : $(".targetUsername div").text(),
					group : _group
				},
				dataType : "json",
				success : function(data) {
					$.each(data, function() {
						if (data.msg == 1) {
							//...add content
							//judgeIfFriend($(".targetUsername div").text(), 1);
							$("#focus").attr("disabled", true);
							$("#unfocus").attr("disabled", false);
							// 更新数据
						} else {
							//...tell fail
							alert("fail");
						}
					});
				}
			});
		}
	} //关注

	$("#focus, #unfocus").mouseover(function() {
		$(this).css("background-color", "white");
	});

	$("#focus, #unfocus").mousedown(function() {
		$(this).css("background-color", "silver");
	});
	$("#focus, #unfocus").mouseout(function() {
		$(this).css("background-color", "silver");
	});

	function deleteFriend() {
		if (checkSubmit(500)) {

			$.ajax({
				type : "post",
				url : "user/deletefriend",
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken"),
					friendUsername : $(".targetUsername div").text(),
				},
				dataType : "json",
				success : function(data) {
					$.each(data, function() {
						if (data.msg == 1) {
							//...add content
							//judgeIfFriend($(".targetUsername div").text(), 1);
							$("#focus").attr("disabled", false);
							$("#unfocus").attr("disabled", true);
							// 更新数据
						} else {
							//...tell fail
							alert("fail");
						}
					});
				}
			});
		}
	} //取消关注

	function showOwnmessages(pageNumber, _flag) {
		$
				.ajax({
					url : 'message/show_ownmessages', // 用于文件上传的服务器端请求地址
					type : 'post',
					data : {
						nickname : $(".targetNickname div").text(),
						page : pageNumber,
						flag : _flag
					},
					dataType : 'json', // 返回值类型 一般设置为json
					success : function(data, status) // 服务器成功响应处理函数
					{

						$
								.each(
										data,
										function() {
											var i = 0;
											$("#weibo").empty();
											while (data.returndata[i] != undefined) {
												var return_content = replace_em(data.returndata[i].content); // 解析QQ表情
												var message = "<li id=\"weibo_"
															+ data.returndata[i].id
															+ "\"><div class=\"weiboinfo\"><div class=\"msgBox\"><div class=\"txt\">";
												if (data.returndata[i].type == 2) {
													var content = return_content
													var authorWords = content
															.substr(
																	0,
																	content
																			.indexOf(';')); // 转发者说的话
													var id = content
															.substr(content
																	.indexOf(';') + 1); // 原微博id
													message += authorWords
															+ "<div class=\"repostInfo\">"
															+ "</div></div>";
													message += "<div class=\"info\"><time class=\"timeago\" datetime=\""
																+ data.returndata[i].create_time
																+ "\"></time><span class=\"num_info\"><span class=\"comment\">评论(<span class=\"num\">"
															+ data.returndata[i].comment_times
															+ "</span>)&转发(<span class=\"rpt_num\">"
															+ data.returndata[i].repost_times
															+ "</span>)</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"support\"><img class=\"zan\" style=\"width:8%; height:50%;\" src=\"\" onclick=\"\">(<span class=\"num\">"
															+ data.returndata[i].support_times
															+ "</span>)<i class=\"like_plus\" style=\"color: gray; margin-top: -35px; margin-left: 65%; display: none;\">+1</i></span></span></div><div class=\"comtxt\" style=\"display: none\"><textarea style=\"height: 40px; width: 560px;\" class=\"comarea_"
																+ data.returndata[i].id
																+ "\" name=\"content\"></textarea><br><span class=\"cmt_emotion\" id=\"cmt_emotion"
																+ data.returndata[i].id
																+ "\"></span><div class=\"comment_btn\"><button class=\"comment_button\">评论</button><button class=\"repost_button\">转发</button></div>"
															+ "<ul class=\"otherCom\" id=\"comment_"
																+ data.returndata[i].id
																+ "\" style=\"\"></ul>"
															+ "</div></div></div></li>";
													$("#weibo").append(message);
													show_sourceMessage(
															data.returndata[i].source_message.id,
															data.returndata[i].id,														
															data.returndata[i].source_message.nickname,
															data.returndata[i].source_message.content,
															data.returndata[i].source_message.pic,
															data.returndata[i].source_message.create_time,
															data.returndata[i].source_message.comment_times,
															data.returndata[i].source_message.repost_times,
															data.returndata[i].source_message.support_times);
												} else {

													message += return_content;
													if (data.returndata[i].labels != undefined) {
														message += "<div class=\"msg_label\"><span id=\"l_icon\" class=\"icon\"></span>";
														var j = 0;
														while (data.returndata[i].labels[j] != undefined) {
															message += "<a style=\"text-decoration:none;\" href=\"label.jsp?username="
																	+ $.query
																			.get("username")
																	+ "&userToken="
																	+ $.query
																			.get("userToken")
																	+ "&label="
																	+ data.returndata[i].labels[j].id
																	+ "&content="
																	+ data.returndata[i].labels[j].name
																	+ "\">"
																	+ data.returndata[i].labels[j].name
																	+ "</a>&nbsp;&nbsp;";
															j++;
														}
														message += "</div>";
													}
													if (data.returndata[i].pic != undefined
															&& data.returndata[i].pic != "")
														message += "<br><img class=\"msg_pic\" title=\"点击显示原图\" src=\"message/"
																	+ data.returndata[i].pic
																	+ ".jpg\">";
													message += "<div class=\"info\"><time class=\"timeago\" datetime=\""
																+ data.returndata[i].create_time
																+ "\"></time><span class=\"num_info\"><span class=\"comment\">评论(<span class=\"num\">"
															+ data.returndata[i].comment_times
															+ "</span>)&转发(<span class=\"rpt_num\">"
															+ data.returndata[i].repost_times
															+ "</span>)</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"support\"><img class=\"zan\" style=\"width:8%; height:50%;\" src=\"images/2.png\" onclick=\"\">(<span class=\"num\">"
															+ data.returndata[i].support_times
															+ "</span>)<i class=\"like_plus\" style=\"color: gray; margin-top: -35px; margin-left: 65%; display: none;\">+1</i></span></span></div><div class=\"comtxt\" style=\"display: none\"><textarea style=\"height: 40px; width: 560px;\" class=\"comarea_"
																+ data.returndata[i].id
																+ "\" name=\"content\"></textarea><br><span class=\"cmt_emotion\" id=\"cmt_emotion"
																+ data.returndata[i].id
																+ "\"></span><div class=\"comment_btn\"><button class=\"comment_button\">评论</button><button class=\"repost_button\">转发</button></div>"
															+ "<ul class=\"otherCom\" id=\"comment_"
																+ data.returndata[i].id
																+ "\" style=\"\"></ul>"
															+ "</div></div></div></li>";
													$("#weibo").append(message);
												}
												judgeIfSupport(
														data.returndata[i].id, data.returndata[i].supported);

												var textarea = ".comarea_"
														+ data.returndata[i].id;
												var emotion = '#cmt_emotion'
														+ data.returndata[i].id;
												$(emotion).qqFace({
													assign : textarea, // 给输入框赋值
													path : 'face/' // 表情图片存放的路径
												});
												i++;
											}
										})
						$(".timeago").timeago();
						$(".msg_pic").bigic();
						showCommonFriends(1);
					}
				});
	}

	$(".comment").live('click', function() {
		var message_id = $(this).parents("li").attr("id");
		message_id = message_id.substr(6);
		var comtxt = $(this).parents("li").find(".comtxt");
		if (comtxt.css("display") == "none") {
			show_comments(message_id, 1, 1);
			comtxt.slideToggle();
			$(this).parents("li").find(".pageNum").text("1");
		} else {
			comtxt.slideToggle();
		}
	}); // 查看评论

	$(".repost").live('click', function() {
		var message_id = $(this).parents("li").attr("id");
		message_id = message_id.substr(6);
		var comtxt = $(this).parents("li").find(".comtxt");
		if (comtxt.css("display") == "none") {
			show_comments(message_id, 1, 1);
			comtxt.slideToggle();
			$(this).parents("li").find(".pageNum").text("1");
		} else {
			comtxt.slideToggle();
		}
	}); // 同查看评论

	$(".repost_button").live('click', function() {
		var message_id = $(this).parents("li").attr("id");
		message_id = message_id.substr(6);
		var textarea = ".comarea_" + message_id;
		var content = $(textarea).val();
		repost_message(content, message_id, 1);
		$(textarea).val("");
	}); // 转发微博

	$(".comment_button").live('click', function() {
		var message_id = $(this).parents("li").attr("id");
		message_id = message_id.substr(6);
		comarea = ".comarea_" + message_id;
		content = $(comarea).val();
		send_comment(message_id, content);
		$(comarea).val(""); // 清空输入框
	}); //发送评论

	$(".top_content li").mouseover(function() {
		this.style.background = "snow";
	});

	$(".top_content li").mouseout(function() {
		this.style.background = "";
	});

	$(".prePage").click(function() {
		if (pageNum == 1)
			return;
		pageNum--;
		if (pageNum < 1) {
			pageNum = 1;
		}
		showOwnmessages(pageNum, 1, true);
		$(window).scrollTop(0);
		//setTimeout('adjustHeight()', 300);
		$(".pageNum").val(pageNum);
	});// 跳转上一页

	var pageNum = 1; // 微博页码
	$(".nextPage").click(function() {
		pageNum++;
		showOwnmessages(pageNum, 1, true);
		$(window).scrollTop(0);
		//setTimeout('adjustHeight()', 300);
		$(".pageNum").val(pageNum);
	});// 跳转下一页

	function goToPage() {
		var num = $(".pageNum").val();
		if (num == "" || isNaN(num)) {
			return;
		}
		if (num <= 1) {
			pageNum = 1;
			$(".pageNum").val(pageNum);
		} else
			pageNum = num;
		showOwnmessages(pageNum, 1, true);
		$(window).scrollTop(0);
		//setTimeout('adjustHeight()', 300);
	} // 跳转指定页面
</script>
</html>