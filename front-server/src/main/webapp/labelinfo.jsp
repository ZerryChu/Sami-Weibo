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
				<div style="width: 150px;" class="inbox-menu">
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
								href="labelinfo.jsp?username=${param.username}&userToken=${param.userToken}&id=${param.id}&flag=0">
									最近</a></li>
							<li id="list2"><a id="outbox_a"
								href="labelinfo.jsp?username=${param.username}&userToken=${param.userToken}&id=${param.id}&flag=1">最热
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
							<h3 class="header-text m-top-lg">Welcome To Sami Weibo</h3>

							<div class="row">
								<div class="col-md-8">
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
																			type="text" name="label"
																			class="lbl_form form-control"
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

								<div class="col-md-4">
									<form>
										<div class="form-group">
											<h4>搜索标签</h4>
											<input type="text" class="form-control input-sm">
										</div>
									</form>

									<hr />

									<h4>领域达人</h4>
									<ul class="ppl_user popular-blog-post">
										<li class="clearfix">
											<div class="img-wrapper clearfix">
												<img src="images/blog/blog3.jpg" alt="">
											</div>
											<div class="popular-blog-detail">
												<a href="#" class="h5">How to increase your shop sales</a>
												<div class="text-muted m-top-sm">
													<span>July 27, 2014</span>
													<button>关注</button>
												</div>
											</div>
										</li>
										<li class="clearfix">
											<div class="img-wrapper clearfix">
												<img src="images/blog/blog4.jpg" alt="">
											</div>
											<div class="popular-blog-detail">
												<a href="#" class="h5">The Best Tools For Testing Your
													Designs</a>
												<div class="text-muted m-top-sm">July 26, 2014</div>
											</div>
										</li>
										<li class="clearfix">
											<div class="img-wrapper clearfix">
												<img src="images/blog/blog1.jpg" alt="">
											</div>
											<div class="popular-blog-detail">
												<a href="#" class="h5">The trends of Website Design in
													2014</a>
												<div class="text-muted m-top-sm">July 25, 2014</div>
											</div>
										</li>
									</ul>

									<hr />
									<!--
							<h4>Categories</h4>

							<ul class="blog-sidebar-list">
								<li><a href="#">Technology</a></li>
								<li><a href="#">Websites</a></li>
								<li><a href="#">Photography</a></li>
								<li><a href="#">Theme</a></li>
								<li><a href="#">Illustration</a></li>
								<li><a href="#">Wordpress</a></li>
							</ul>

							<hr/>
							-->

									<h4>相关标签</h4>
									<div class="related_labels">
										<a class="blog-tag" href="#">Website</a> <a class="blog-tag"
											href="#">Wordpress</a> <a class="blog-tag" href="#">Modern</a>
										<a class="blog-tag" href="#">Flat</a> <a class="blog-tag"
											href="#">Design</a> <a class="blog-tag" href="#">Responsive</a>
									</div>
									<hr />
									<!--
							<h4>Archives</h4>

							<ul class="blog-sidebar-list">
								<li><a href="#">July 2014</a></li>
								<li><a href="#">June 2014</a></li>
								<li><a href="#">May 2014</a></li>
								<li><a href="#">April 2014</a></li>
								<li><a href="#">March 2014</a></li>
							</ul>
							-->
								</div>
								<!-- ./col -->
							</div>
						</div>
						<!-- ./padding-md -->
					</div>
				</div>
			</div>
		</div>
		<!-- /main-container -->

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

	<script src="old/plugins/jquery.query-2.1.7.js" type="text/javascript"></script>

	<!-- Simplify -->
	<script src="js/simplify/simplify.js"></script>

	<!--  /ajax  -->
	<script src="ajax/message.js" type="text/javascript"></script>

	<script src="old/plugins/timeago.js" type="text/javascript"></script>

	<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>

	<script src="js/login.js" type="text/javascript"></script>

	<script type="text/javascript">
		isLogin();
		showRelatedLabels();
		
		$.ajax({
			type : "post",
			url : "label/show_label_byId",
			data : {
				id : $.query.get("id")
			},
			dataType : "json",
			success : function(data) {
				$(".lbl_form").attr("value", data.name);
			}
		});

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

		if ($.query.get("flag") == 1) {
			$("#list2").attr("class", "active");
			show_msgByLabel($.query.get("id"), 1, 1);
		} else {
			$("#list1").attr("class", "active");
			show_msgByLabel($.query.get("id"), 1, 0);
		}

		function show_msgByLabel(id, pageNumber, flag) {
			var myUrl = "message/show_by_labelAndHeat";
			if (flag == 0)
				myUrl = "message/show_by_label";
			$
					.ajax({
						type : "post",
						url : myUrl, // 设计算法：以时间+热度排序（时间要衰减的快） // 设计算法：计算相关label的热度，热度过一个值作为相关标签
						data : {
							username : $.query.get("username"),
							userToken : $.query.get("userToken"),
							label_id : id,
							page : pageNumber
						// 设计分页
						},
						dataType : "json",
						success : function(data) {
							$
									.each(
											data,
											function() {
												var i = 0;
												$("#receive_msg").empty();
												while (data.returndata[i] != undefined) {
													var return_content = replace_em(data.returndata[i].content);

													var message = "<div id=\""
											+ data.returndata[i].id
											+ "\" class=\"timeline-row alt\"><div class=\"timeline-item\"><div class=\"timeline-icon\"><i class=\"fa fa-comment\"></i></div><div class=\"timeline-item-inner\"><div class=\"timeline-body\"><div class=\"timeline-avatar\"><img src=\"images/profile/"
											+ data.returndata[i].author.username
											+ ".jpg\" alt=\"\" class=\"img-circle\"></div><div class=\"timeline-content\"><div class=\"font-semi-bold\"><a href=\"#\">"
															+ data.returndata[i].author.nickname
															+ "</a></div><small class=\"block text-muted m-bottom-xs\">"
															+ data.returndata[i].create_time
															+ "</small>"
															+ return_content;

													if (data.returndata[i].pic != undefined
															&& data.returndata[i].pic != "") {
														message += "<img src=\"message/"
												+ data.returndata[i].pic
												+ ".jpg\" alt=\"\" style=\"widht: 100px; height: 100px;\">";
													}

													message += "</div><div class=\"seperate-bar bg-grey font-12 m-top-md\"><small class=\"inline-block m-right-sm\"><i class=\"fa fa-comments\"></i><span id=\"comment"
											+ data.returndata[i].id
											+ "\">"
															+ data.returndata[i].comment_times
															+ "</span> 评论</small> <small class=\"inline-block m-right-sm\"><i class=\"fa fa-heart\"></i><span id=\"support"
											+ data.returndata[i].id
											+ "\">"
															+ data.returndata[i].support_times
															+ "</span> 点赞</small> <small class=\"inline-block m-right-sm\"><i style=\"cursor: pointer;\" class=\"fa fa-share\"></i><span>"
															// 分享
															+ "n</span> 分享</small> <small class=\"inline-block m-right-sm\"><i class=\"fa fa-tags\"></i>";

													var j = 0;
													while (data.returndata[i].labels[j] != undefined) {
														message += "<a style=\"text-decoration:none;\" href=\"labelinfo.jsp?username="
																+ $.query
																		.get("username")
																+ "&userToken="
																+ $.query
																		.get("userToken")
																+ "&id="
																+ data.returndata[i].labels[j].id
																+ "&flag=1\">"
																+ data.returndata[i].labels[j].name
																+ "</a>&nbsp;&nbsp;";
														j++;
													}
													message += "</small></div><div class=\"social-reply-section clearfix\"><img src=\"images/profile/"
															+ $.query
																	.get("username")
															+ ".jpg\" alt=\"\"><div class=\"input-wrapper\"><input type=\"text\" id=\"comarea_"
											+ data.returndata[i].id
											+ "\"class=\"form-control\" placeholder=\"Write a comment...\"><span id=\"cmt_emotion"
											+ data.returndata[i].id
											+ "\" class=\"cmt_emotion\"></span><input style=\"float: right;\" value=\"提交\" type=\"button\" onclick=\"send_comment("
															+ data.returndata[i].id
															+ ")\"><div class=\"input-icon-link\"><a href=\"#\" class=\"text-normal\"></a></div></div></div><ul id=\"cmtList_"
											+ data.returndata[i].id
											+ "\" class=\"social-comment-list m-top-md\">";

													message += "</ul><div class=\"pagination-row clearfix m-bottom-md\" style=\"margin-top: 10px; margin-bottom: 0px;\"><div class=\"pull-right pull-left-sm\"><div class=\"inline-block vertical-middle m-right-xs\">Page 1 </div><ul class=\"pagination vertical-middle\" style=\"margin: 0px;\"><li class=\"disabled\"><a href=\"#\"><i class=\"fa fa-step-backward\"></i></a></li><li class=\"disabled\"><a href=\"#\"><i class=\"fa fa-caret-left large\"></i></a></li><li><a href=\"#\"><i class=\"fa fa-caret-right large\"></i></a></li><li><a href=\"#\"><i class=\"fa fa-step-forward\"></i></a></li></ul></div></div></div></div></div></div>";

													$("#receive_msg").append(
															message);

													// 显示第一页评论
													show_comments(
															data.returndata[i].id,
															1);
													judgeIfSupport(
															data.returndata[i].id,
															data.returndata[i].supported);

													var textarea = "#comarea_"
															+ data.returndata[i].id;
													var emotion = '#cmt_emotion'
															+ data.returndata[i].id;
													$(emotion).qqFace({
														assign : textarea, // 给输入框赋值
														path : 'old/face/' // 表情图片存放的路径
													});
													i++;
												}
											});
							// $(".timeago").timeago();
							// $(".msg_pic").bigic();
						}
					});
		}

		function show_masterUsers(_label_id) {
			$
					.ajax({
						type : "post",
						// async : false,
						url : "user/show_masters",
						data : {
							label_id : _label_id,
							num : 4
						},
						dataType : "json",
						success : function(data) {
							if (data.returndata != undefined) {
								$(".ppl_user").empty();
								for (var i = 0; i < 4; i++)
									if (data.returndata[i] != undefined) {
										var str = "<li class=\"clearfix\"><div class=\"img-wrapper clearfix\"><img src=\"images/profile/"
										+ data.returndata[i].username
										+ ".jpg\" alt=\"\"></div><div class=\"popular-blog-detail\"><a href=\"profile.jsp?username=${param.username}&userToken=${param.userToken}&targetUsername="
												+ data.returndata[i].username
												+ "\" class=\"h5\">"
												+ data.returndata[i].nickname
												+ "</a><div class=\"text-muted m-top-sm\"> user </div></div></li>";
										$(".ppl_user").append(str);
									}
							}
						}
					});
		}

		function showRelatedLabels() {
			$.ajax({
				type : "post",
				// async : false,
				url : "label/show_related_labels",
				data : {
					id : $.query.get("id")
				},
				dataType : "json",
				success : function(data) {
					$(".related_labels").empty();
					var i = 0;
					while (data.returndata[i] != undefined) {
						var str = "<a class=\"blog-tag\" href=\"labelinfo.jsp?username=${param.username}&userToken=${param.userToken}&id="
								+ data.returndata[i].id
								+ "&flag=1\">"
								+ data.returndata[i].name
								+ "</a>";
						$(".related_labels").append(str);
						i++;
					}
				}
			});
		}
	</script>
</body>
</html>
