<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Simplify Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet">

<!-- ionicons -->
<link href="css/ionicons.min.css" rel="stylesheet">

<!-- Datepicker -->
<link href="css/datepicker.css" rel="stylesheet" />

<!-- Owl Carousel -->
<link href="css/owl.carousel.min.css" rel="stylesheet">
<link href="css/owl.theme.default.min.css" rel="stylesheet">

<!-- Simplify -->
<link href="css/simplify.min.css" rel="stylesheet">

</head>

<body class="overflow-hidden">
	<div class="wrapper preload">
		<%@include file="user-frame.jsp"%>

		<%@include file="navi-frame.jsp"%>

		<div class="main-container">
			<div class="padding-md">
				<h3 class="header-text m-bottom-md">
					用户总览 <span class="sub-header"> User Profile </span>
				</h3>

				<div class="row user-profile-wrapper">
					<div class="col-md-3 user-profile-sidebar m-bottom-md">
						<div class="row">
							<div class="col-sm-4 col-md-12">
								<div class="user-profile-pic">
									<img id="user_icon" src="images/profile/profile1.jpg"
										alt="userIcon">
									<div class="ribbon-wrapper">
										<div class="ribbon-inner shadow-pulse bg-success">user</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-12">
								<div id="usr_nickname" class="user-name m-top-sm">
									<i class="fa fa-circle text-success m-left-xs font-14"></i>
								</div>

								<div class="m-top-sm">

									<div class="m-top-xs">
										<i id="job" class="fa fa-briefcase user-profile-icon"></i>
										student
									</div>

									<!--  个人微博 -->
									<div class="m-top-xs">
										<i class="fa fa-external-link user-profile-icon"></i>
										www.mywebsite.com
									</div>
								</div>

								<div class="m-top-sm text-centers">
									<a class="btn btn-success"><i class="fa fa-edit m-right-xs"></i>发送私信</a>
								</div>

								<!--  加入一段描述 -->
								<h4 class="m-top-md m-bottom-sm">关于我</h4>
								<p class="m-top-sm">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Curabitur bibendum ornare dolor, quis
									ullamcorper ligula sodales at.
								<p>
								<h4 class="m-top-md m-bottom-sm">Get Social</h4>

								<!--  外链接 -->
								<a class="social-link facebook-hover"><i
									class="fa fa-facebook"></i></a> <a
									class="social-link twitter-hover"><i class="fa fa-twitter"></i></a>
								<a class="social-link pinterest-hover"><i
									class="fa fa-pinterest"></i></a>

							</div>
						</div>
						<!-- ./row -->
					</div>
					<!-- ./col -->
					<div class="col-md-9">
						<div class="smart-widget">
							<div class="smart-widget-inner">
								<ul class="nav nav-tabs tab-style2 tab-right bg-grey">
									<li><a href="#profileTab3" data-toggle="tab"> <span
											class="icon-wrapper"><i class="fa fa-eye"></i></span> <span
											class="text-wrapper">Followers</span>
									</a></li>
									<li><a href="#profileTab2" data-toggle="tab"> <span
											class="icon-wrapper"><i class="fa fa-book"></i></span> <span
											class="text-wrapper">账户信息</span>
									</a></li>
									<li class="active"><a href="#profileTab1"
										data-toggle="tab"> <span class="icon-wrapper"><i
												class="fa fa-trophy"></i></span> <span class="text-wrapper">总览</span>
									</a></li>
								</ul>

								<!--  标签使用率  -->
								<div class="smart-widget-body">
									<div class="tab-content">
										<div class="tab-pane fade in active" id="profileTab1">
											<h4 class="header-text m-bottom-md">
												标签使用率 <span class="sub-header"> Welocome back， my
													friend </span>
											</h4>
											<div class="row">
												<div class="col-sm-3 col-sm-6s">
													<div class="m-bottom-md">
														<div class="text-center">HTML5</div>
														<div
															class="chart profile-skill chart-skill-red center-block"
															data-percent="73">73%</div>
													</div>
												</div>
												<div class="col-sm-3 col-sm-6s">
													<div class="m-bottom-md">
														<div class="text-center">CSS</div>
														<div
															class="chart profile-skill chart-skill-blue center-block"
															data-percent="54">54%</div>
													</div>
												</div>
												<div class="col-sm-3 col-sms-6">
													<div class="m-bottom-md">
														<div class="text-center">Jquery</div>
														<div
															class="chart profile-skill chart-skill-green center-block"
															data-percent="89">89%</div>
													</div>
												</div>
												<div class="col-sm-3 col-sm-6s">
													<div class="m-bottom-md">
														<div class="text-center">PHP</div>
														<div
															class="chart profile-skill chart-skill-purple center-block"
															data-percent="92">92%</div>
													</div>
												</div>
											</div>
											<!-- ./row -->


											<!-- 近况 -->
											<div class="row">
												<div class="col-lg-6">
													<h4 class="m-top-md">近况</h4>

													<div class="recent-activity-list">
														<ul>
															<li>
																<div class="activity-user-profile">
																	<img src="images/profile/profile3.jpg" alt="">
																</div>
																<div class="activity-detail">
																	<span class="font-semi-bold">Karen Martin</span>
																	started following <span class="font-semi-bold">Jame
																		Smith</span>. <small class="text-muted block">36 mins
																		ago</small>
																</div>
															</li>
															<li>
																<div class="activity-user-profile">
																	<img src="images/profile/profile3.jpg" alt="">
																</div>
																<div class="activity-detail">
																	<span class="font-semi-bold">Karen Martin</span> just
																	added <span class="font-semi-bold">Simplify
																		Admin</span> to dashboard. <small class="text-muted block">3
																		hrs ago </small>
																</div>
															</li>
															<li>
																<div class="activity-user-profile">
																	<img src="images/profile/profile5.jpg" alt="">
																</div>
																<div class="activity-detail">
																	<span class="font-semi-bold">Sarah Garcia</span> added
																	new photo <small class="text-muted block">Yesterday</small>

																	<div class="m-top-sm">
																		<img src="images/img11.jpg" alt="">
																	</div>
																</div>
															</li>
															<li>
																<div class="activity-user-profile">
																	<img src="images/profile/profile4.jpg" alt="">
																</div>
																<div class="activity-detail">
																	<span class="font-semi-bold">Jame Smith</span> started
																	following <span class="font-semi-bold">Karen
																		Martin</span>. <small class="text-muted block">36
																		mins ago</small>
																</div>
															</li>
															<li>
																<div class="activity-user-profile">
																	<img src="images/profile/profile6.jpg" alt="">
																</div>
																<div class="activity-detail">
																	<span class="font-semi-bold">Chistopher Brown</span>
																	just purchased <span class="font-semi-bold">your
																		item</span>. <small class="text-muted block">36 mins
																		ago</small>
																</div>
															</li>
															<li>
																<div class="activity-user-profile">
																	<img src="images/profile/profile7.jpg" alt="">
																</div>
																<div class="activity-detail">
																	<span class="font-semi-bold">Elizabeth Carter</span>
																	uploaded <a class="font-semi-bold">3 photos</a>. <small
																		class="text-muted block">36 mins ago</small>

																	<ul class="uploaded-photo-list m-top-sm clearfix">
																		<li><a href="#"><img
																				src="images/gallery/gallery4.jpg" alt=""></a></li>
																		<li><a href="#"><img
																				src="images/gallery/gallery5.jpg" alt=""></a></li>
																		<li><a href="#"><img
																				src="images/gallery/gallery6.jpg" alt=""></a></li>
																	</ul>
																	<!-- ./upload-photo-list -->
																</div>
															</li>
														</ul>
													</div>
													<!-- ./.recent-activity-list -->
												</div>
												<!-- ./col -->
												<div class="col-lg-6">
													<h4 class="m-top-md">用户综合</h4>

													<div class="row m-top-md">
														<div class="col-sm-6">
															<div class="widget-stat3 bg-primary">
																<div class="widget-stat-icon">
																	<i class="fa fa-facebook fa-3x"></i>
																</div>
																<small class="text-upper">Following</small>
																<h3 id="following" class="no-margin"></h3>
															</div>
														</div>
														<!-- ./col -->
														<div class="col-sm-6">
															<div class="widget-stat3 bg-info">
																<div class="widget-stat-icon">
																	<i class="fa fa-twitter fa-3x"></i>
																</div>
																<small class="text-upper">Follower</small>
																<h3 id="follower" class="no-margin"></h3>
															</div>
														</div>
														<!-- ./col -->
													</div>

													<div class="row">
														<div class="col-sm-6">
															<div class="widget-stat3 text-white"
																style="background-color: #ea4c89;">
																<div class="widget-stat-icon">
																	<i class="fa fa-dribbble fa-3x"></i>
																</div>
																<small class="text-upper">Weibo</small>
																<h3 id="weibo" class="no-margin">1903</h3>
															</div>
														</div>
														<!-- ./col -->
														<div class="col-sm-6">
															<div class="widget-stat3 bg-success">
																<div class="widget-stat-icon">
																	<i class="fa fa-eye fa-3x"></i>
																</div>
																<small class="text-upper">Visit</small>
																<h3 class="no-margin">2176</h3>
															</div>
														</div>
														<!-- ./col -->
													</div>
													<!-- ./row -->

												</div>
												<!-- ./col -->
											</div>
											<!-- ./row -->
										</div>
										<!-- ./tab-pane -->
										<div class="tab-pane fade" id="profileTab2">
											<h4 class="header-text m-top-md">General Information</h4>
											<form class="form-horizontal m-top-md">
												<div class="form-group">
													<label class="col-sm-3 control-label">姓名</label>
													<div class="col-sm-9">
														<input type="text" class="form-control"
															value="${param.username}">
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">性别</label>
													<div class="col-sm-9">
														<div class="radio inline-block">
															<div class="custom-radio m-right-xs">
																<input type="radio" id="inlineRadio1"
																	name="profileGender"> <label for="inlineRadio1"></label>
															</div>
															<div class="inline-block vertical-top">男</div>
														</div>
														<div class="radio inline-block m-left-sm">
															<div class="custom-radio m-right-xs">
																<input type="radio" id="inlineRadio2"
																	name="profileGender"> <label for="inlineRadio2"></label>
															</div>
															<div class="inline-block vertical-top">女</div>
														</div>
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">联系方式</label>
													<div class="col-sm-9">
														<input type="text" class="form-control" value="">
													</div>
												</div>

												<div class="form-group">
													<label class="col-sm-3 control-label">个人微博</label>
													<div class="col-sm-9">
														<input type="text" class="form-control" value="">
													</div>
												</div>

												<h4 class="header-text m-top-lg">安全信息设置</h4>

												<div class="form-group">
													<label class="col-sm-3 control-label">安全码(设置后无法改变)</label>
													<div class="col-sm-9">
														<input type="text" class="form-control" value="">
													</div>
												</div>

												<div class="form-group m-top-lg">
													<label class="col-sm-3 control-label"></label>
													<div class="col-sm-9">
														<a class="btn btn-default">提交</a> <a
															class="btn btn-info m-left-xs">取消</a>
													</div>
												</div>
											</form>
										</div>
										<!-- ./tab-pane -->
										<div class="tab-pane fade" id="profileTab3">
											<div class="profile-follower-list clearfix">
												<ul id="follower_list">
													<li>
														<div class="panel panel-default clearfix">
															<div class="panel-body">
																<div class="user-wrapper">
																	<div class="user-avatar">
																		<img class="small-img img-circle img-thumbnail"
																			src="images/profile/profile2.jpg" alt="">
																	</div>
																	<div class="user-detail small-img">
																		<div class="font-16">Karen Martin</div>
																		<small class="block text-muted font-12">Web
																			Designer</small> <small> <small
																			class="freelancer-rating"> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i>
																		</small>
																		</small>

																		<div class="m-top-sm">
																			<button type="button"
																				class="btn btn-default btn-sm marginTB-xs"
																				disabled="" data-toggle="modal">following</button>
																			<button type="button"
																				class="btn btn-success btn-sm marginTB-xs"
																				data-toggle="modal">View Profile</button>
																		</div>
																	</div>
																</div>
																<!-- ./user-wrapper -->
															</div>
														</div>
													</li>

													<li>
														<div class="panel panel-default clearfix">
															<div class="panel-body">
																<div class="user-wrapper">
																	<div class="user-avatar">
																		<img class="small-img img-circle img-thumbnail"
																			src="images/profile/profile3.jpg" alt="">
																	</div>
																	<div class="user-detail small-img">
																		<div class="font-16">Sarah Garcia</div>
																		<small class="block text-muted font-12">Content
																			Writing</small> <small> <small
																			class="freelancer-rating"> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i>
																		</small>
																		</small>

																		<div class="m-top-sm">
																			<button type="button"
																				class="btn btn-default btn-sm marginTB-xs"
																				disabled="" data-toggle="modal">following</button>
																			<button type="button"
																				class="btn btn-success btn-sm marginTB-xs"
																				data-toggle="modal">View Profile</button>
																		</div>
																	</div>
																</div>
																<!-- ./user-wrapper -->
															</div>
														</div>
													</li>

													<li>
														<div class="panel panel-default clearfix">
															<div class="panel-body">
																<div class="user-wrapper">
																	<div class="user-avatar">
																		<img class="small-img img-circle img-thumbnail"
																			src="images/profile/profile4.jpg" alt="">
																	</div>
																	<div class="user-detail small-img">
																		<div class="font-16">Jame Smith</div>
																		<small class="block text-muted font-12">Programmer</small>
																		<small> <small class="freelancer-rating">
																				<i class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i>
																		</small>
																		</small>

																		<div class="m-top-sm">
																			<button type="button"
																				class="btn btn-primary btn-sm marginTB-xs"
																				data-toggle="modal">follow</button>
																			<button type="button"
																				class="btn btn-success btn-sm marginTB-xs"
																				data-toggle="modal">View Profile</button>
																		</div>
																	</div>
																</div>
																<!-- ./user-wrapper -->
															</div>
														</div>
													</li>

													<li>
														<div class="panel panel-default clearfix">
															<div class="panel-body">
																<div class="user-wrapper">
																	<div class="user-avatar">
																		<img class="small-img img-circle img-thumbnail"
																			src="images/profile/profile5.jpg" alt="">
																	</div>
																	<div class="user-detail small-img">
																		<div class="font-16">Elizabeth Carter</div>
																		<small class="block text-muted font-12">@Elizabeth</small>
																		<small> <small class="freelancer-rating">
																				<i class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i>
																		</small>
																		</small>

																		<div class="m-top-sm">
																			<button type="button"
																				class="btn btn-primary btn-sm marginTB-xs"
																				data-toggle="modal">follow</button>
																			<button type="button"
																				class="btn btn-success btn-sm marginTB-xs"
																				data-toggle="modal">View Profile</button>
																		</div>
																	</div>
																</div>
																<!-- ./user-wrapper -->
															</div>
														</div>
													</li>

													<li>
														<div class="panel panel-default clearfix">
															<div class="panel-body">
																<div class="user-wrapper">
																	<div class="user-avatar">
																		<img class="small-img img-circle img-thumbnail"
																			src="images/profile/profile6.jpg" alt="">
																	</div>
																	<div class="user-detail small-img">
																		<div class="font-16">Christopher Brown</div>
																		<small class="block text-muted font-12">@Christopher</small>
																		<small> <small class="freelancer-rating">
																				<i class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i>
																		</small>
																		</small>

																		<div class="m-top-sm">
																			<button type="button"
																				class="btn btn-primary btn-sm marginTB-xs"
																				data-toggle="modal">follow</button>
																			<button type="button"
																				class="btn btn-success btn-sm marginTB-xs"
																				data-toggle="modal">View Profile</button>
																		</div>
																	</div>
																</div>
																<!-- ./user-wrapper -->
															</div>
														</div>
													</li>

													<li>
														<div class="panel panel-default clearfix">
															<div class="panel-body">
																<div class="user-wrapper">
																	<div class="user-avatar">
																		<img class="small-img img-circle img-thumbnail"
																			src="images/profile/profile7.jpg" alt="">
																	</div>
																	<div class="user-detail small-img">
																		<div class="font-16">Jane Doe</div>
																		<small class="block text-muted font-12">janeDoe@company.com</small>
																		<small> <small class="freelancer-rating">
																				<i class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i> <i
																				class="fa fa-star text-warning"></i>
																		</small>
																		</small>

																		<div class="m-top-sm">
																			<button type="button"
																				class="btn btn-primary btn-sm marginTB-xs"
																				data-toggle="modal">follow</button>
																			<button type="button"
																				class="btn btn-success btn-sm marginTB-xs"
																				data-toggle="modal">View Profile</button>
																		</div>
																	</div>
																</div>
																<!-- ./user-wrapper -->
															</div>
														</div>
													</li>
												</ul>

												<!-- 
												<div>
													<ul style="float: right;"
														class="pagination pagination-split">
														<li style="width: 33px; padding: 0px;" class="disabled"><a
															href="#">«</a></li>
														<li style="width: 33px; padding: 0px;" class="active"><a
															href="#">1</a></li>
														<li style="width: 33px; padding: 0px;"><a href="#">2</a></li>
														<li style="width: 33px; padding: 0px;"><a href="#">3</a></li>
														<li style="width: 33px; padding: 0px;"><a href="#">4</a></li>
														<li style="width: 33px; padding: 0px;"><a href="#">5</a></li>
														<li style="width: 33px; padding: 0px;"><a href="#">»</a></li>
													</ul>
												</div>
												-->
											</div>
											<!-- ./profile-follower-list -->
											<div style="" class="pagination-row clearfix">
												<div class="pull-left vertical-middle hidden-xs">112
													messages</div>
												<div class="pull-right pull-left-sm">
													<div class="inline-block vertical-middle m-right-xs">Page
														1 of 8</div>
													<ul class="pagination vertical-middle">
														<li style="width: 33px; padding: 0px;" class="disabled"><a
															href="#"><i class="fa fa-step-backward"></i></a></li>
														<li style="width: 33px; padding: 0px;" class="disabled"><a
															href="#"><i class="fa fa-caret-left large"></i></a></li>
														<li style="width: 33px; padding: 0px;"><a href="#"><i
																class="fa fa-caret-right large"></i></a></li>
														<li style="width: 33px; padding: 0px;"><a href="#"><i
																class="fa fa-step-forward"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
										<!-- ./tab-pane -->
									</div>
									<!-- ./tab-content -->
								</div>
								<!-- ./smart-widget-body -->
							</div>
							<!-- ./smart-widget-inner -->
						</div>
						<!-- ./smart-widget -->
					</div>
				</div>
			</div>
			<!-- ./padding-md -->
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

	<!-- Easy Pie Chart -->
	<script src='js/jquery.easypiechart.min.js'></script>

	<!-- Owl Carousel -->
	<script src='js/owl.carousel.min.js'></script>

	<!-- Datepicker -->
	<script src='js/uncompressed/datepicker.js'></script>

	<!-- Modernizr -->
	<script src='js/modernizr.min.js'></script>

	<!-- Simplify -->
	<script src="js/simplify/simplify.js"></script>

	<script src="old/plugins/jquery.query-2.1.7.js" type="text/javascript"></script>

	<!--  /ajax  -->
	<script src="ajax/profile.js" type="text/javascript"></script>

	<script src="js/login.js" type="text/javascript"></script>

	<script>
		isLogin();
		showUserInfo();
		getfollowers(1);

		$(function() {
			$('.chart-skill-red').easyPieChart({
				barColor : '#fc8675',
				lineWidth : '5'
			});

			$('.chart-skill-blue').easyPieChart({
				barColor : '#65C3DF',
				lineWidth : '5'
			});

			$('.chart-skill-green').easyPieChart({
				barColor : '#1dc499',
				lineWidth : '5'
			});

			$('.chart-skill-purple').easyPieChart({
				barColor : '#a48ad4',
				lineWidth : '5'
			});
		});

		function getfollowers(_page) {
			var targetName = $.query.get("targetUsername");
			if (targetName == undefined || targetName == "")
				targetName = $.query.get("username");
			$
					.ajax({
						type : "post",
						// async : false,
						url : "friend/followers",
						data : {
							username : targetName,
							page : _page
						},
						dataType : "json",
						success : function(data) {
							var i = 0;
							$("#follower_list").empty();
							message = "";
							while (data.returndata[i] != undefined) {
								message += "<li><div class=\"panel panel-default clearfix\"><div class=\"panel-body\"><div class=\"user-wrapper\"><div class=\"user-avatar\"><img class=\"small-img img-circle img-thumbnail\" src=\"images/profile/"
											+ data.returndata[i].username
											+ ".jpg\" alt=\"\"></div><div class=\"user-detail small-img\"><div class=\"font-16\">"
										+ data.returndata[i].nickname
										+ "</div><small class=\"block text-muted font-12\">"
										// 领域
										+ "@student"
										+ "</small><small class=\"freelancer-rating\"><i class=\"fa fa-star text-warning\"></i><i class=\"fa fa-star text-warning\"></i><i class=\"fa fa-star text-warning\"></i><i class=\"fa fa-star text-warning\"></i><i class=\"fa fa-star text-warning\"></i></small> <small>关注: "
										+ data.returndata[i].friend_num
										+ " 收听: "
										+ data.returndata[i].focus_num
										+ "</span></small><div class=\"m-top-sm\"><button type=\"button\" class=\"btn btn-primary btn-sm marginTB-xs\" data-toggle=\"modal\"";

								$
										.ajax({
											async : false,
											type : "post",
											url : "friend/iffriends",
											data : {
												username : $.query
														.get("username"),
												targetUsername : data.returndata[i].username,
												flag : 1
											},
											dataType : "json",
											success : function(data) {
												if (1 == data)
													message += " style=\"background-color: gray;\" onclick=\"\">unfollow";
												else {
													message += " style=\"\" onclick=\"\">follow";
												}
											}
										});

								message += "</button><button style=\"margin-left:5px;\" type=\"button\" class=\"btn btn-success btn-sm marginTB-xs\" data-toggle=\"modal\" onclick=\"window.location.href='profile.jsp?username="
										+ $.query.get("username")
										+ "&userToken="
										+ $.query.get("userToken")
										+ "&targetUsername="
										+ data.returndata[i].username
										+ "'\">View Profile</button></div></div></div></div></div></li>";
								i++;
							}
							$("#follower_list").append(message);
						}
					});
		}

		function judgeIfFocus(_targetUsername) {

		}

		function addFriend(targetUsername) {
			$.ajax({
				type : "post",
				url : "user/addfriend",
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken"),
					friendUsername : targetUsername,
					group : 'normal'
				},
				dataType : "json",
				success : function(data) {
					$.each(data, function() {
						if (data.msg == 1) {

							//
							// 更新数据
						} else {
							//...tell fail
							alert("fail");
						}
					});
				}
			});
		} //关注

		function deleteFriend(targetUsername) {

			$.ajax({
				type : "post",
				url : "user/deletefriend",
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken"),
					friendUsername : targetUsername
				},
				dataType : "json",
				success : function(data) {
					$.each(data, function() {
						if (data.msg == 1) {

							//
							// 更新数据
						} else {
							//...tell fail
							alert("fail");
						}
					});
				}
			});
		} //取消关注
	</script>

</body>
</html>