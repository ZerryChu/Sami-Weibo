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
<link href="css/simplify.css" rel="stylesheet">
<style>
#facebox img {
	width: 20px;
	height: 20px;
}

.msg_emotion, .cmt_emotion {
	background: url(old/face/icon.gif) no-repeat 2px 2px;
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 3px;
	cursor: pointer
}

.msg_emotion:hover, .cmt_emotion:hover, .rpt_emotion:hover {
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

#msg_page li a {
	border: 0px;
	background-color: #f5f5f5;
	margin-left: 30px;
}
</style>
</head>

<body class="overflow-hidden">
	<div class="wrapper preload">
		<%@include file="user-frame.jsp"%>

		<%@include file="navi-frame.jsp"%>

		<div class="main-container">
			<div class="padding-md">
				<h2 class="header-text">
					微博圈 <span class="sub-header"> friend circle </span>
				</h2>

				<div class="row">
					<div style="margin-left: 8%;" class="col-md-10">
						<div class="timeline-wrapper clearfix">
							<!--  改  -->
							<div class="timeline-year"></div>

							<div class="timeline-row clearfix alt">
								<div class="timeline-item">
									<div class="timeline-icon bg-info">
										<i class="fa fa-pencil"></i>
									</div>
									<!-- ./timeline-icon -->
									<div class="timeline-item-inner">
										<div class="timeline-body">
											<div class="timeline-avatar">
												<img src="images/profile/profile8.jpg" alt=""
													class="img-circle">
											</div>
											<div class="timeline-content" style="margin-left: 10px;">
												<div class="input-wrapper">
													<form id="MsgForm" action="message/send?type=1"
														method="post" enctype="multipart/form-data">
														<input type="text" id="content" name="content"
															class="form-control" placeholder="发送微博..."> <input
															type="hidden" name="username" value="${param.username}">
														<input type="hidden" name="userToken"
															value="${param.userToken}">
														<div class="input-icon-link">
															<i style="cursor: pointer;" id="cmr"
																class="fa fa-camera fa-lg"></i> <input
																class="fileOnLoad" type="file" id="t_file" name="pic"
																style="display: none"
																onchange="pic_name.value=this.value">
														</div>
														<div style="margin-top: 10px;">
															<span>已选择的图片: </span><input type="text"
																style="width: 200px;" readonly="readonly" id="pic_name">
														</div>
														<div style="margin-top: 10px;">
															<input style="display: inline; width: 60%;" type="text"
																name="label" class="form-control"
																placeholder="标签...多个标签用#隔开"> <span
																id="msg_emotion" class="msg_emotion"></span> <input
																style="display: inline; width: 20%;" type="submit"
																value="提交" class="form-control">
														</div>
													</form>
												</div>
											</div>
										</div>
										<!-- ./timeline-body -->
									</div>
									<!-- ./timeline-item-inner -->
								</div>
								<!-- ./timeline-item -->
							</div>
							<!-- ./timeline-row -->


							<div class="timeline-year bg-purple"></div>
							<div id="receive_msg"></div>
						</div>
						<!-- ./timeline-wrapper -->
					</div>
					<!-- ./col -->
				</div>
				<!-- ./row -->
				<div style="margin-left: 38%; background-color: #f5f5f5;">
					<ul id="msg_page" class="pagination vertical-middle">
						<li class="disabled"><a href="#"><i
								class="fa fa-step-backward"></i></a></li>
						<li class="disabled"><a href="#"><i
								class="fa fa-caret-left large"></i></a></li>
						<li><a href="#"><i class="fa fa-caret-right large"></i></a></li>
						<li><a href="#"><i class="fa fa-step-forward"></i></a></li>
					</ul>
				</div>
				<!-- ./pagination-row -->
			</div>
			<!-- ./padding-md -->
		</div>
		<!-- /main-container -->
	</div>
	<!-- /wrapper -->

	<a href="#" id="scroll-to-top" class="hidden-print"><i
		class="icon-chevron-up"></i></a>

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

	<!--  /ajax  -->
	<script src="ajax/message.js" type="text/javascript"></script>

	<script src="old/plugins/timeago.js" type="text/javascript"></script>

	<script src="old/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<script src='ajax/user_frame.js'></script>

	<script src="js/login.js" type="text/javascript"></script>

	<script type="text/javascript">
		isLogin();

		/////////////      表情包        /////////////////////////////////////////////////////////////
		$(function() {
			$('#msg_emotion').qqFace({
				assign : '#content', //给输入框赋值 
				path : 'old/face/' //表情图片存放的路径 
			});

		});
		//////////////////////////////////////////////////////////////////////////////////////////

		$("#cmr").click(function() {
			$("#t_file").click();
		});

		showOwnmessages($.query.get("username"), 1, 1);

		/**
		 * 
		 * @content 点赞相关操作
		 * @param message_id
		 * @param flag 1： 取消点赞 0： 点赞
		 */
		function support(message_id, flag) {
			if (flag == 1) {
				$.ajax({
					type : "post",
					url : "message/_support",
					data : {
						username : $.query.get("username"),
						id : message_id,
						userToken : $.query.get("userToken")
					},
					dataType : "json",
					success : function(data) {
						if (data.msg == 1) {
							judgeIfSupport(message_id, false);
							var span = "#support" + message_id;
							var num = $(span).text();
							$(span).text(parseInt(num, 10) - 1); // 点赞数-1
							// var like_plus = $(weibo).find(".like_plus");
							// 还原动画效果
							// like_plus.css("margin-top", -35);
						} else if (data.msg == 2) {
							// 没点过赞
							alert("never supported before.");
						}
					}
				});
			} // 取消点赞

			else if (flag == 0) {
				$.ajax({
					type : "post",
					url : "message/support",
					data : {
						username : $.query.get("username"),
						id : message_id,
						userToken : $.query.get("userToken")
					},
					dataType : "json",
					success : function(data) {
						if (data.msg == 1) {
							judgeIfSupport(message_id, true);
							var span = "#support" + message_id;
							var num = $(span).text();

							// ////动画效果
							// var like_plus = $(weibo).find(".like_plus");
							// like_plus.css("display", "block");
							// like_plus.animate({
							// marginTop : "-50px"
							// }, 500, function() {
							// like_plus.css("display", "none");
							// });

							$(span).text(parseInt(num, 10) + 1); // 点赞数+1
						} else if (data.msg == 2) {
							// 已点过赞
							alert("has ever supported.");
						}
					}
				});
			} // 点赞
		}
	</script>
</body>
</html>
