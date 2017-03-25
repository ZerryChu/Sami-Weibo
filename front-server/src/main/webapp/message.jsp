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

.msg_emotion:hover, .cmt_emotion:hover {
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

#msg_page li a{
	border: 0px;
	background-color: #f5f5f5;
	margin-left: 30px;
}
</style>
</head>

<body class="overflow-hidden">
	<div class="wrapper preload">
		<%@include file="user-frame.jsp"%>

		<aside class="sidebar-menu sidebar-mini">
		<div class="sidebar-inner scrollable-sidebar">
			<div class="main-menu">
				<ul class="accordion">
					<li class="menu-header">Main Menu</li>
					<li class="bg-palette1 active"><a
						href="index.jsp?username=${param.username}&userToken=${param.userToken}">
							<span class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-home fa-lg"></i></span> <span
								class="text m-left-sm">个人总览</span>
						</span> <span class="menu-content-hover block"> Home </span>
					</a>
					<li class="openable bg-palette3"><a href="#"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-list fa-lg"></i></span><span class="text m-left-sm">微博</span>
								<span class="submenu-icon"></span></span><span
							class="menu-content-hover block"> Messages </span>
					</a>
						<ul class="submenu">
							<li><a
								href="message.jsp?username=${param.username}&userToken=${param.userToken}"><span
									class="submenu-label">朋友圈</span></a></li>
							<li><a
								href="ownmessage.jsp?username=${param.username}&userToken=${param.userToken}"><span
									class="submenu-label">自己的微博</span></a></li>
						</ul></li>
					<li class="bg-palette4"><a
						href="label.jsp?username=${param.username}&userToken=${param.userToken}">
							<span class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-tags fa-lg"></i></span> <span
								class="text m-left-sm">标签</span></span> <span
							class="menu-content-hover block"> Labaels </span>
					</a></li>
					<li class="bg-palette3"><a
						href="topic.jsp?username=${param.username}&userToken=${param.userToken}">
							<span class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-gift fa-lg"></i></span> <span
								class="text m-left-sm">话题</span></span> <span
							class="menu-content-hover block"> Topics </span>
					</a></li>
					<li class="bg-palette1"><a
						href="inbox.jsp?username=${param.username}&userToken=${param.userToken}">
							<span class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-envelope fa-lg"></i></span> <span
								class="text m-left-sm">私信</span> <small
								class="badge badge-danger badge-square bounceIn animation-delay5 m-left-xs">5</small>
						</span> <span class="menu-content-hover block"> Pvt_msg </span>
					</a></li>
					<li class="bg-palette2"><a
						href="notice.jsp?username=${param.username}&userToken=${param.userToken}">
							<span class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-bell fa-lg"></i></span> <span
								class="text m-left-sm">公告</span> <small
								class="badge badge-warning badge-square bounceIn animation-delay6 m-left-xs pull-right">7</small>
						</span> <span class="menu-content-hover block"> Notice </span>
					</a></li>
					<li class="openable bg-palette4"><a href="#"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-list fa-lg"></i></span> <span
								class="text m-left-sm">辅助功能</span> <span class="submenu-icon"></span>
						</span> <span class="menu-content-hover block"> Additions </span>
					</a>
						<ul class="submenu">
							<li><a href="signin.html"><span class="submenu-label">登录</span></a></li>
							<li><a href="signup.html"><span class="submenu-label">注册</span></a></li>
							<li><a href="lockscreen.html"><span
									class="submenu-label">锁屏</span></a></li>
						</ul></li>
				</ul>
			</div>

		</div>
		</aside>
		<div class="main-container sidebar-mini">
			<div class="inbox-wrapper">
				<div class="inbox-menu">
					<div class="inbox-menu-sm clearfix">
						<button type="button"
							class="navbar-toggle pull-left sidebar-toggle" id="inboxCollapse">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>

						<a class="btn btn-danger btn-sm m-top-sm m-right-sm pull-right">Compose</a>
					</div>

					<div class="padding-md text-center visible-lg visible-md">
						<a class="btn btn-danger">Compose</a>
					</div>

					<div class="inbox-menu-inner">
						<div class="inbox-menu-header">分类</div>

						<ul class="sort_list">
							<li id="list1"><a id="inbox_a"
								href="message.jsp?username=${param.username}&userToken=${param.userToken}&flag=1">
									最近</a></li>
							<li id="list2"><a id="outbox_a"
								href="message.jsp?username=${param.username}&userToken=${param.userToken}&flag=0">最热
							</a></li>
						</ul>

					</div>
					<!-- ./inbox-menu-inner -->
					<!--</div>-->
				</div>
				<!-- ./inbox-menu -->

				<div class="inbox-body padding-md">
					<div class="row m-bottom-md">
						<div class="padding-md">
							<h2 class="header-text">
								微博圈 <span class="sub-header"> friend circle </span>
							</h2>

							<div class="row">
								<div style="margin-left: 8%;" class="col-md-10">
									<div class="timeline-wrapper clearfix">

										<div class="timeline-row clearfix alt">
											<div class="timeline-item">
												<div class="timeline-icon bg-info">
													<i class="fa fa-pencil"></i>
												</div>
												<!-- ./timeline-icon -->
												<div class="timeline-item-inner">
													<div class="timeline-body">
														<div class="timeline-avatar">
															<img src="images/profile/${ param.username }.jpg" alt=""
																class="img-circle">
														</div>
														<div class="timeline-content" style="margin-left: 10px;">
															<div class="input-wrapper">
																<form id="MsgForm" action="message/send?type=1"
																	method="post" enctype="multipart/form-data">
																	<input type="text" id="content" name="content"
																		class="form-control" placeholder="发送微博..."> <input
																		type="hidden" name="username"
																		value="${param.username}"> <input
																		type="hidden" name="userToken"
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
																			style="width: 200px;" readonly="readonly"
																			id="pic_name">
																	</div>
																	<div style="margin-top: 10px;">
																		<input style="display: inline; width: 60%;"
																			type="text" name="label" class="form-control"
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
									<li id="opt1"><a href="#"><i
											class="fa fa-step-backward"></i></a></li>
									<li id="opt2"><a href="#"><i
											class="fa fa-caret-left large"></i></a></li>
									<li id="opt3"><a href="#"><i class="fa fa-caret-right large"></i></a></li>
									<li id="opt4" class="disabled"><a href="#"><i class="fa fa-step-forward"></i></a></li>
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

				<script src="old/plugins/jquery.query-2.1.7.js"
					type="text/javascript"></script>

				<!--  /ajax  -->
				<script src="ajax/message.js" type="text/javascript"></script>

				<!--  表情包  -->
				<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>

				<script src="old/plugins/timeago.js" type="text/javascript"></script>

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

					
		
					// pageNum
					var pageNum = $.query.get("page");

					if (pageNum == undefined || pageNum == "") {
						pageNum = 1;
						$("#opt1").attr("class", "disabled");
						$("#opt2").attr("class", "disabled");
					}
					
					$("#opt2 a").attr(
							"href",
							"message.jsp?username=" + $.query.get("username")
									+ "&userToken=" + $.query.get("userToken")
									+ "&flag=" + $.query.get("flag")
									+ "&page=" + (parseInt(pageNum, 10) - 1));
					$("#opt3 a").attr(
							"href",
							"message.jsp?username=" + $.query.get("username")
									+ "&userToken=" + $.query.get("userToken")
									+ "&flag=" + $.query.get("flag")
									+ "&page=" + (parseInt(pageNum, 10) + 1));

					if ($.query.get("flag") == 1) {
						$("#list1").attr('class', 'active');
						show_messages(pageNum, 1);
					} else {
						$("#list2").attr('class', 'active');
						show_messages(pageNum, 0);
					}

					$("#cmr").click(function() {
						$("#t_file").click();
					});

					//////////////分页...
				</script>
</body>
</html>
