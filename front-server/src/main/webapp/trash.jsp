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

</head>
<body class="overflow-hidden">
	<div class="wrapper preload no-footer">
		<%@include file="user-frame.jsp"%>

		<aside class="sidebar-menu sidebar-mini">
		<div class="sidebar-inner scrollable-sidebar">
			<div class="main-menu">
				<ul class="accordion">
					<li class="menu-header">Main Menu</li>
					<li class="bg-palette1 active"><a href="index.jsp?username=${param.username}&userToken=${param.userToken}"> <span
							class="menu-content block"> <span class="menu-icon"><i
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
								href="message.jsp?username=${param.username}&userToken=${param.userToken}&flag=1"><span
									class="submenu-label">朋友圈</span></a></li>
						<li><a
								href="ownmessage.jsp?username=${param.username}&userToken=${param.userToken}"><span
									class="submenu-label">自己的微博</span></a></li>
					</ul></li>
				<li class="bg-palette4"><a
						href="label.jsp?username=${param.username}&userToken=${param.userToken}">
						<span class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-tags fa-lg"></i></span> <span
								class="text m-left-sm">标签</span></span>
						<span class="menu-content-hover block"> Labaels </span>
				</a></li>
				<li class="bg-palette3"><a
						href="topic.jsp?username=${param.username}&userToken=${param.userToken}">
						<span class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-gift fa-lg"></i></span> <span
								class="text m-left-sm">话题</span></span>
						<span class="menu-content-hover block"> Topics </span>
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
								class="text m-left-sm">公告</span>
							<small
								class="badge badge-warning badge-square bounceIn animation-delay6 m-left-xs pull-right">7</small>
					</span> <span class="menu-content-hover block"> Notice </span>
				</a></li>
				<li class="openable bg-palette4"><a href="#"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-list fa-lg"></i></span> <span
								class="text m-left-sm">辅助功能</span>
							<span class="submenu-icon"></span>
					</span> <span class="menu-content-hover block"> Additions </span>
				</a>
					<ul class="submenu">
						<li><a href="signin.html"><span class="submenu-label">登录</span></a></li>
						<li><a href="signup.html"><span class="submenu-label">注册</span></a></li>
						<li><a href="lockscreen.jsp?username=${param.username}&userToken=${param.userToken}"><span class="submenu-label">锁屏</span></a></li>
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
											class="navbar-toggle pull-left sidebar-toggle"
											id="inboxCollapse">
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

						<ul>
							<li><a
												href="inbox.jsp?username=${ param.username }&userToken=${ param.userToken }"> <span
													class="badge badge-success m-right-xs">${param.no_read}</span> 收件箱
							</a></li>
							<li>
								<!--  添加未读 --> <!-- span class="badge badge-warning m-right-xs" 1 /span   -->
								<a
												href="outbox.jsp?username=${ param.username }&userToken=${ param.userToken }&no_read=${ param.no_read }"><span
													class="badge badge-success m-right-xs">2</span> 发件箱 </a>
							</li>
							<li class="active"><a
												href="trash.jsp?username=${ param.username }&userToken=${ param.userToken }&no_read=${ param.no_read }"> 垃圾箱
							</a></li>
						</ul>

					</div>
					<!-- ./inbox-menu-inner -->
					<!--</div>-->
				</div>
				<!-- ./inbox-menu -->

				<div class="inbox-body padding-md">
					<div class="row m-bottom-md">
						<div class="col-sm-6 m-bottom-sm">
							<h2 class="no-margin">
								垃圾箱<span class="sub-header"> Trash </span>
							</h2>
						</div>
						<!-- ./col -->
						<div class="col-sm-6 text-right text-left-sm">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle"
													data-toggle="dropdown">
									Move to <span class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Socials</a></li>
									<li><a href="#">Promotions</a></li>
									<li><a href="#">Forums</a></li>
									<li class="divider"></li>
									<li><a href="#">Spam</a></li>
									<li><a href="#">Trash</a></li>
								</ul>
							</div>
							<a href="#" class="btn btn-success hidden-xs">Report Spam</a> <a
												href="#" class="btn btn-danger">Move to Trash</a>
						</div>
						<!-- ./col -->
					</div>
					<!-- .row -->

					<div class="message-table table-responsive">
						<table class="table table-bordereds">
							<thead>
								<tr>
									<th class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chkAll" class="inbox-check">
											<label for="chkAll"></label>
										</div>
									</th>
									<th></th>
									<th>Author</th>
									<th>Message</th>
									<th>Date</th>
								</tr>
							</thead>
							<tbody id="cnt">
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk1" class="inbox-check">
											<label for="chk1"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile2.jpg" alt="">
										</div>
										<div class="author-name">
											<a href="#"><strong class="block font-md">Karen
													Martin</strong></a> <a href="#" class="text-muted">Business</a>
										</div>
									</td>
									<td><a href="#"> Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. <small class="block">Lorem
												ipsum dolor sit amet.</small>
									</a></td>
									<td>Today, 9.03</td>
								</tr>
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk2" class="inbox-check">
											<label for="chk2"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile4.jpg" alt="">
										</div>
										<div class="author-name">
											<strong class="block font-md">James Smith</strong> <a
																href="#" class="text-muted">Friends</a>
										</div>
									</td>
									<td><a href="#"> Curabitur bibendum ornare dolor. <small
															class="block">Lorem ipsum dolor sit amet, consectetur
												adipiscing elit.</small>
									</a></td>
									<td>Yesterday, 3:12</td>
								</tr>
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk3" class="inbox-check">
											<label for="chk3"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile3.jpg" alt="">
										</div>
										<div class="author-name">
											<strong class="block font-md">Sarah Garcia</strong> <a
																href="#" class="text-muted">Friends</a>
										</div>
									</td>
									<td><a href="#"> Quis ullamcorper ligula sodales at. <small
															class="block">Curabitur bibendum ornare dolor.</small>
									</a></td>
									<td>19 Jun, 7:55</td>
								</tr>
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
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk5" class="inbox-check">
											<label for="chk5"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile5.jpg" alt="">
										</div>
										<div class="author-name">
											<strong class="block font-md">Elizabeth Carter</strong> <a
																href="#" class="text-muted">Family</a>
										</div>
									</td>
									<td><a href="#"> Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. <small class="block">Lorem
												ipsum dolor sit amet.</small>
									</a></td>
									<td>18 Jun, 01:12</td>
								</tr>
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk6" class="inbox-check">
											<label for="chk6"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile7.jpg" alt="">
										</div>
										<div class="author-name">
											<a href="#"><strong class="block font-md">Karen
													Martin</strong></a> <a href="#" class="text-muted">Business</a>
										</div>
									</td>
									<td>Curabitur bibendum ornare dolor. <small class="block">Lorem
											ipsum dolor sit amet, consectetur adipiscing elit.</small>
									</td>
									<td>18 Jun, 9:03</td>
								</tr>
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk7" class="inbox-check">
											<label for="chk7"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile8.jpg" alt="">
										</div>
										<div class="author-name">
											<strong class="block font-md">James Smith</strong> <a
																href="#" class="text-muted">Friends</a>
										</div>
									</td>
									<td><a href="#"> Quis ullamcorper ligula sodales at. <small
															class="block">Curabitur bibendum ornare dolor.</small>
									</a></td>
									<td>18 Jun, 3:12</td>
								</tr>
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk8" class="inbox-check">
											<label for="chk8"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile2.jpg" alt="">
										</div>
										<div class="author-name">
											<strong class="block font-md">Sarah Garcia</strong> <a
																href="#" class="text-muted">Friends</a>
										</div>
									</td>
									<td><a href="#"> Nulla tellus elit, varius non commodo
											eget. <small class="block">quis ullamcorper ligula
												sodales at.</small>
									</a></td>
									<td>17 Jun, 7:55</td>
								</tr>
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk9" class="inbox-check">
											<label for="chk9"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile9.jpg" alt="">
										</div>
										<div class="author-name">
											<strong class="block font-md">Christopher Brown</strong> <a
																href="#" class="text-muted">Close Friends</a>
										</div>
									</td>
									<td><a href="#"> Lorem ipsum dolor sit amet,
											consectetur adipiscing elit. <small class="block">Lorem
												ipsum dolor sit amet.</small>
									</a></td>
									<td>16 Jun, 7:41</td>
								</tr>
								<tr>
									<td class="text-center">
										<div class="custom-checkbox">
											<input type="checkbox" id="chk10" class="inbox-check">
											<label for="chk10"></label>
										</div>
									</td>
									<td></td>
									<td>
										<div class="author-avatar">
											<img src="images/profile/profile3.jpg" alt="">
										</div>
										<div class="author-name">
											<strong class="block font-md">Elizabeth Carter</strong> <a
																href="#" class="text-muted">Family</a>
										</div>
									</td>
									<td>Curabitur bibendum ornare dolor. <small class="block">Lorem
											ipsum dolor sit amet, consectetur adipiscing elit.</small>
									</td>
									<td>16 Jun, 01:12</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- ./message-table -->
					<div class="pagination-row clearfix">
						<div class="pull-left vertical-middle hidden-xs">112
							messages</div>
						<div class="pull-right pull-left-sm">
							<div class="inline-block vertical-middle m-right-xs">Page 1
								of 8</div>
							<ul class="pagination vertical-middle">
								<li class="disabled"><a href="#"><i
														class="fa fa-step-backward"></i></a></li>
								<li class="disabled"><a href="#"><i
														class="fa fa-caret-left large"></i></a></li>
								<li><a href="#"><i class="fa fa-caret-right large"></i></a></li>
								<li><a href="#"><i class="fa fa-step-forward"></i></a></li>
							</ul>
						</div>
					</div>
					<!-- ./pagination-row -->
				</div>
				<!-- ./inbox-body -->
			</div>
			<!-- ./inbox-wrapper -->
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

	<!-- Simplify -->
	<script src="js/simplify/simplify.js"></script>

	<!--  /ajax  -->
	<script src="ajax/private_msg.js" type="text/javascript"></script>
	
	<script src="old/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<script src='ajax/user_frame.js'></script>
	
	<script src="js/login.js" type="text/javascript"></script>

	<script>
		isLogin();

		$(function() {
			$('.inbox-check').click(function() {
				var activeRow = $(this).parent().parent().parent();

				activeRow.toggleClass('active');
			});

			$('#inboxCollapse').click(function() {
				$('.inbox-menu-inner').slideToggle();
			});

			$('#chkAll').click(
					function() {
						if ($(this).prop('checked')) {
							$('.inbox-check').prop('checked', true);
							$('.inbox-check').parent().parent().parent()
									.addClass('active');
						} else {
							$('.inbox-check').prop('checked', false);
							$('.inbox-check').parent().parent().parent()
									.removeClass('active');
						}
					});

			$(window).resize(function() {
				if (Modernizr.mq('(min-width: 980px)')) {
					$('.inbox-menu ul').show();
				}
			});
		});
	</script>

</body>
</html>