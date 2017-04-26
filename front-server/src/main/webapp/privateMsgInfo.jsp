<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Sami Weibo</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- ionicons -->
<link href="css/ionicons.min.css" rel="stylesheet">

<!-- Simplify -->
<link href="css/simplify.min.css" rel="stylesheet">
<style>
/*#facebox {
	top: 28.283px;
	left: 200.533px;
}*/
#facebox img {
	width: 20px;
	height: 20px;
}

.msg_emotion {
	background: url(old/face/icon.gif) no-repeat 2px 2px;
	padding-left: 20px;
	padding-right: 20px;
	margin-left: 7px;
	cursor: pointer;
}

.msg_emotion:hover {
	background-position: 2px -28px
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
</style>
</head>

<body class="overflow-hidden">
	<div class="wrapper preload">
		<%@include file="user-frame.jsp"%>

		<%@include file="navi-frame.jsp"%>

		<div class="main-container">
			<div style="margin-left: 20%; width: 50%;" class="padding-md">
				<div class="smart-widget widget-purple">
					<div class="smart-widget-header">
						<i class="fa fa-comment"></i> Chat <span
							class="smart-widget-option"> <span
							class="refresh-icon-animated"> <i
								class="fa fa-circle-o-notch fa-spin"></i>
						</span> <a href="#" class="widget-toggle-hidden-option"> <i
								class="fa fa-cog"></i>
						</a> <a href="#" class="widget-collapse-option" data-toggle="collapse">
								<i class="fa fa-chevron-up"></i>
						</a> <a href="#" class="widget-refresh-option"> <i
								class="fa fa-refresh"></i>
						</a> <a href="#" class="widget-remove-option"> <i
								class="fa fa-times"></i>
						</a>
						</span>
					</div>
					<div class="smart-widget-inner">
						<div class="smart-widget-hidden-section">
							<ul class="widget-color-list clearfix">
								<li style="background-color: #20232b;" data-color="widget-dark"></li>
								<li style="background-color: #4c5f70;"
									data-color="widget-dark-blue"></li>
								<li style="background-color: #23b7e5;" data-color="widget-blue"></li>
								<li style="background-color: #2baab1;" data-color="widget-green"></li>
								<li style="background-color: #edbc6c;"
									data-color="widget-yellow"></li>
								<li style="background-color: #fbc852;"
									data-color="widget-orange"></li>
								<li style="background-color: #e36159;" data-color="widget-red"></li>
								<li style="background-color: #7266ba;"
									data-color="widget-purple"></li>
								<li style="background-color: #f5f5f5;"
									data-color="widget-light-grey"></li>
								<li style="background-color: #fff;" data-color="reset"></li>
							</ul>
						</div>
						<div class="smart-widget-body"
							style="height: 350px; overflow-y: auto;">
							<div id="chatScroll">
								<ul class="chat">
								</ul>
							</div>
						</div>
						<div class="smart-widget-footer">
							<input id="btn-input" style="display: inline; width: 75%;"
								type="text" class="form-control input-sm"
								placeholder="type your message here..."> <span
								id="msg_emotion" class="msg_emotion"></span><span
								style="display: inline;" class="input-group-btn">
								<button class="btn btn-success btn-sm no-shadow" id="btn-chat"
									onclick="sendMsg();">Send</button>
							</span>
							<!-- /input-group -->
						</div>
						<!-- ./smart-widget-footer -->
					</div>
					<!-- ./smart-widget-inner -->
				</div>
				<!-- ./smart-widget -->
			</div>
			<!-- ./padding-md -->
		</div>
		<!-- /main-container -->

		<footer class="footer"> <span class="footer-brand"> <strong
			class="text-danger">Sami</strong> Weibo
		</span>
		<p class="no-margin">
			&copy; 2017 <strong>Sami Weibo</strong>. ALL Rights Reserved.
		</p>
		</footer>
	</div>
	<!-- /wrapper -->

	<a href="#" class="scroll-to-top hidden-print"><i
		class="fa fa-chevron-up fa-lg"></i></a>


	<!-- Le javascript
	    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<!-- Jquery -->
	<script src="js/jquery-1.11.1.min.js"></script>

	<!-- Bootstrap -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<!-- Slimscroll -->
	<script src='js/jquery.slimscroll.min.js'></script>

	<!-- Popup Overlay -->
	<script src='js/jquery.popupoverlay.min.js'></script>

	<!-- Modernizr -->
	<script src='js/modernizr.min.js'></script>

	<!-- Simplify -->
	<script src="js/simplify/simplify.js"></script>

	<script src="old/plugins/jquery.query-2.1.7.js" type="text/javascript"></script>

	<script src="old/plugins/timeago.js" type="text/javascript"></script>

	<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>

	<script src="js/login.js" type="text/javascript"></script>
	<script>
		isLogin();
		showMsg();
		setInterval('showMsg()', 5000);

		/////////////      表情包        /////////////////////////////////////////////////////////////
		$(function() {
			$('#msg_emotion').qqFace({
				assign : '#btn-input', //给输入框赋值 
				path : 'old/face/' //表情图片存放的路径 
			});

		});
		//////////////////////////////////////////////////////////////////////////////////////////

		function sendMsg() {
			$.ajax({
				type : "post",
				// async : false,
				url : "privateMsg/addMsg",
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken"),
					targetUsername : $.query.get("targetUsername"),
					content : $("#btn-input").val()
				},
				dataType : "json",
				success : function(data) {
					if (data.returnmsg == 1) {
						$("#btn-input").val("");
						showMsg();
					} else {
						$("#btn-input").val("");
						// add content...
					}
				}
			});
		}

		function showMsg() {
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
							$(".chat").empty();
							var i = 0;
							while (data.returndata[i] != undefined) {
								var return_content = replace_em(data.returndata[i].content); // 解析QQ表情
								var str = "";
								// right
								if (data.returndata[i].is_target == false) {
									str += "<li class=\"right clearfix\"><span class=\"chat-img pull-right\">"
											+ "<img src=\"images/profile/"
											+ $.query.get("username")
											+ ".jpg\" alt=\"User Avatar\"></span><div class=\"chat-body clearfix\"><div class=\"header\"><strong class=\"primary-font\">我"
								} else {
									str += "<li class=\"left clearfix\"><span class=\"chat-img pull-left\">"
											+ "<img src=\"images/profile/"
											+ $.query.get("targetUsername")
											+ ".jpg\" alt=\"User Avatar\"></span><div class=\"chat-body clearfix\"><div class=\"header\"><strong class=\"primary-font\">"
											+ $.query.get("targetNickname");
								}
								str += "</strong> <small class=\"pull-right text-muted\"><i class=\"fa fa-clock-o\"></i><time id=\"pvtmsg"
									+   i
									+ "\" class=\"timeago\"></time>"
										+ "</small></div><p>"
										+ return_content
										+ "</p></div></li>";
								$(".chat").append(str);
								$("#pvtmsg" + i).attr("datetime",
										data.returndata[i].time);
								i++;
							}
							$(".timeago").timeago();
						}
					});
		}
	</script>

</body>
</html>
