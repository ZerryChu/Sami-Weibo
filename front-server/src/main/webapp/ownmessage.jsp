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
</style>
</head>

<body class="overflow-hidden">
	<div class="wrapper preload">
		<div class="sidebar-right">
			<div class="sidebar-inner scrollable-sidebar">
				<div class="sidebar-header clearfix">
					<input class="form-control dark-input" placeholder="Search"
						type="text">
					<div class="btn-group pull-right">
						<a href="#" class="sidebar-setting" data-toggle="dropdown"><i
							class="fa fa-cog fa-lg"></i></a>
						<ul class="dropdown-menu pull-right flipInV">
							<li><a href="#"><i class="fa fa-circle text-danger"></i><span
									class="m-left-xs">Busy</span></a></li>
							<li><a href="#"><i class="fa fa-circle-o"></i><span
									class="m-left-xs">Turn Off Chat</span></a></li>
						</ul>
					</div>
				</div>
				<div class="title-block">Group Chat</div>
				<div class="content-block">
					<ul class="sidebar-list">
						<li><a href="#"> <i class="fa fa-circle-o text-success"></i><span
								class="m-left-xs">Close Friends</span>
						</a></li>
						<li><a href="#"> <i class="fa fa-circle-o text-success"></i><span
								class="m-left-xs">Business</span>
						</a></li>
					</ul>
				</div>
				<div class="title-block">Favorites</div>
				<div class="content-block">
					<ul class="sidebar-list">
						<li><a href="#" class="clearfix"> <img
								src="images/profile/profile2.jpg" class="img-circle"
								alt="user avatar">
								<div class="chat-detail m-left-sm">
									<div class="chat-name">John Doe</div>
									<div class="chat-message">Where are you?</div>
								</div>
								<div class="chat-status">
									<i class="fa fa-circle-o text-success"></i>
								</div>
								<div class="chat-alert">
									<span class="badge badge-purple bounceIn animation-delay2">2</span>
								</div>
						</a></li>
						<li><a href="#" class="clearfix"> <img
								src="images/profile/profile3.jpg" class="img-circle"
								alt="user avatar">
								<div class="chat-detail m-left-sm">
									<div class="chat-name">Jane Doe</div>
									<div class="chat-message">Hello</div>
								</div>
								<div class="chat-status">
									<i class="fa fa-circle-o text-success"></i>
								</div>
								<div class="chat-alert">
									<span class="badge badge-info bounceIn animation-delay2">1</span>
								</div>
						</a></li>
						<li><a href="#" class="clearfix"> <img
								src="images/profile/profile4.jpg" class="img-circle"
								alt="user avatar">
								<div class="chat-detail m-left-sm">
									<div class="chat-name">John Doe</div>
									<div class="chat-message">See you again next week.</div>
								</div>
								<div class="chat-status">
									<i class="fa fa-circle-o text-danger"></i>
								</div>
								<div class="chat-alert">
									<i class="fa fa-check text-success"></i>
								</div>
						</a></li>
						<li><a href="#" class="clearfix"> <img
								src="images/profile/profile5.jpg" class="img-circle"
								alt="user avatar">
								<div class="chat-detail m-left-sm">
									<div class="chat-name">John Doe</div>
									<div class="chat-message">Hello, Are you there?</div>
								</div>
								<div class="chat-status">
									<i class="fa fa-circle-o text-danger"></i>
								</div>
								<div class="chat-alert">
									<i class="fa fa-reply"></i>
								</div>
						</a></li>
					</ul>
				</div>
				<div class="title-block">More friends</div>
				<div class="content-block">
					<ul class="sidebar-list">
						<li><a href="#" class="clearfix"> <img
								src="images/profile/profile6.jpg" class="img-circle"
								alt="user avatar">
								<div class="chat-detail m-left-sm">
									<div class="chat-name">John Doe</div>
									<div class="chat-message">Where are you?</div>
								</div>
								<div class="chat-status">
									<i class="fa fa-circle-o text-success"></i>
								</div>
								<div class="chat-alert">
									<span class="badge badge-success bounceIn animation-delay2">2</span>
								</div>
						</a></li>
						<li><a href="#" class="clearfix"> <img
								src="images/profile/profile7.jpg" class="img-circle"
								alt="user avatar">
								<div class="chat-detail m-left-sm">
									<div class="chat-name">Jane Doe</div>
									<div class="chat-message">Hello</div>
								</div>
								<div class="chat-status">
									<i class="fa fa-circle-o text-success"></i>
								</div>
								<div class="chat-alert">
									<span class="badge badge-danger bounceIn animation-delay2">1</span>
								</div>
						</a></li>
						<li><a href="#" class="clearfix"> <img
								src="images/profile/profile8.jpg" class="img-circle"
								alt="user avatar">
								<div class="chat-detail m-left-sm">
									<div class="chat-name">John Doe</div>
									<div class="chat-message">See you again next week.</div>
								</div>
								<div class="chat-status">
									<i class="fa fa-circle-o text-danger"></i>
								</div>
								<div class="chat-alert">
									<i class="fa fa-check text-success"></i>
								</div>
						</a></li>
						<li><a href="#" class="clearfix"> <img
								src="images/profile/profile9.jpg" class="img-circle"
								alt="user avatar">
								<div class="chat-detail m-left-sm">
									<div class="chat-name">John Doe</div>
									<div class="chat-message">Hello, Are you there?</div>
								</div>
								<div class="chat-status">
									<i class="fa fa-circle-o text-danger"></i>
								</div>
								<div class="chat-alert">
									<i class="fa fa-reply"></i>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
			<!-- sidebar-inner -->
		</div>
		<!-- sidebar-right -->
		<header class="top-nav">
		<div class="top-nav-inner">
			<div class="nav-header">
				<button type="button" class="navbar-toggle pull-left sidebar-toggle"
					id="sidebarToggleSM">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<ul class="nav-notification pull-right">
					<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-cog fa-lg"></i></a> <span
						class="badge badge-danger bounceIn">1</span>
						<ul class="dropdown-menu dropdown-sm pull-right">
							<li class="user-avatar"><img
								src="images/profile/profile1.jpg" alt="" class="img-circle">
								<div class="user-content">
									<h5 class="no-m-bottom">John Doe</h5>
									<div class="m-top-xs">
										<a href="profile.html" class="m-right-sm">Profile</a> <a
											href="signin.html">Log out</a>
									</div>
								</div></li>
							<li><a href="inbox.html"> Inbox <span
									class="badge badge-danger bounceIn animation-delay2 pull-right">1</span>
							</a></li>
							<li><a href="#"> Notification <span
									class="badge badge-purple bounceIn animation-delay3 pull-right">2</span>
							</a></li>
							<li><a href="#" class="sidebarRight-toggle"> Message <span
									class="badge badge-success bounceIn animation-delay4 pull-right">7</span>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">Setting</a></li>
						</ul></li>
				</ul>

				<a href="index.html" class="brand"> <i class="fa fa-database"></i><span
					class="brand-name">Sami Weibo</span>
				</a>
			</div>
			<div class="nav-container">
				<button type="button" class="navbar-toggle pull-left sidebar-toggle"
					id="sidebarToggleLG">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<ul class="nav-notification">
					<li class="search-list">
						<div class="search-input-wrapper">
							<div class="search-input">
								<input type="text" class="form-control input-sm inline-block">
								<a href="#" class="input-icon text-normal"><i
									class="ion-ios7-search-strong"></i></a>
							</div>
						</div>
					</li>
				</ul>
				<div class="pull-right m-right-sm">
					<div class="user-block hidden-xs">
						<a href="#" id="userToggle" data-toggle="dropdown"> <img
							src="images/profile/profile1.jpg" alt=""
							class="img-circle inline-block user-profile-pic">
							<div class="user-detail inline-block">
								Jane Doe <i class="fa fa-angle-down"></i>
							</div>
						</a>
						<div class="panel border dropdown-menu user-panel">
							<div class="panel-body paddingTB-sm">
								<ul>
									<li><a href="profile.html"> <i
											class="fa fa-edit fa-lg"></i><span class="m-left-xs">My
												Profile</span>
									</a></li>
									<li><a href="inbox.html"> <i class="fa fa-inbox fa-lg"></i><span
											class="m-left-xs">Inboxes</span> <span
											class="badge badge-danger bounceIn animation-delay3">2</span>
									</a></li>
									<li><a href="signin.html"> <i
											class="fa fa-power-off fa-lg"></i><span class="m-left-xs">Sign
												out</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="nav-notification">
						<li><a href="#" data-toggle="dropdown"><i
								class="fa fa-envelope fa-lg"></i></a> <span
							class="badge badge-purple bounceIn animation-delay5 active">2</span>
							<ul class="dropdown-menu message pull-right">
								<li><a>You have 4 new unread messages</a></li>
								<li><a class="clearfix" href="#"> <img
										src="images/profile/profile2.jpg" alt="User Avatar">
										<div class="detail">
											<strong>John Doe</strong>
											<p class="no-margin">Lorem ipsum dolor sit amet...</p>
											<small class="text-muted"><i
												class="fa fa-check text-success"></i> 27m ago</small>
										</div>
								</a></li>
								<li><a class="clearfix" href="#"> <img
										src="images/profile/profile3.jpg" alt="User Avatar">
										<div class="detail">
											<strong>Jane Doe</strong>
											<p class="no-margin">Lorem ipsum dolor sit amet...</p>
											<small class="text-muted"><i
												class="fa fa-check text-success"></i> 5hr ago</small>
										</div>
								</a></li>
								<li><a class="clearfix" href="#"> <img
										src="images/profile/profile4.jpg" alt="User Avatar">
										<div class="detail m-left-sm">
											<strong>Bill Doe</strong>
											<p class="no-margin">Lorem ipsum dolor sit amet...</p>
											<small class="text-muted"><i class="fa fa-reply"></i>
												Yesterday</small>
										</div>
								</a></li>
								<li><a class="clearfix" href="#"> <img
										src="images/profile/profile5.jpg" alt="User Avatar">
										<div class="detail">
											<strong>Baby Doe</strong>
											<p class="no-margin">Lorem ipsum dolor sit amet...</p>
											<small class="text-muted"><i class="fa fa-reply"></i>
												9 Feb 2013</small>
										</div>
								</a></li>
								<li><a href="#">View all messages</a></li>
							</ul></li>
						<li><a href="#" data-toggle="dropdown"><i
								class="fa fa-bell fa-lg"></i></a> <span
							class="badge badge-info bounceIn animation-delay6 active">4</span>
							<ul class="dropdown-menu notification dropdown-3 pull-right">
								<li><a href="#">You have 5 new notifications</a></li>
								<li><a href="#"> <span
										class="notification-icon bg-warning"> <i
											class="fa fa-warning"></i>
									</span> <span class="m-left-xs">Server #2 not responding.</span> <span
										class="time text-muted">Just now</span>
								</a></li>
								<li><a href="#"> <span
										class="notification-icon bg-success"> <i
											class="fa fa-plus"></i>
									</span> <span class="m-left-xs">New user registration.</span> <span
										class="time text-muted">2m ago</span>
								</a></li>
								<li><a href="#"> <span
										class="notification-icon bg-danger"> <i
											class="fa fa-bolt"></i>
									</span> <span class="m-left-xs">Application error.</span> <span
										class="time text-muted">5m ago</span>
								</a></li>
								<li><a href="#"> <span
										class="notification-icon bg-success"> <i
											class="fa fa-usd"></i>
									</span> <span class="m-left-xs">2 items sold.</span> <span
										class="time text-muted">1hr ago</span>
								</a></li>
								<li><a href="#"> <span
										class="notification-icon bg-success"> <i
											class="fa fa-plus"></i>
									</span> <span class="m-left-xs">New user registration.</span> <span
										class="time text-muted">1hr ago</span>
								</a></li>
								<li><a href="#">View all notifications</a></li>
							</ul></li>
						<li class="chat-notification"><a href="#"
							class="sidebarRight-toggle"><i class="fa fa-comments fa-lg"></i></a>
							<span class="badge badge-danger bounceIn">1</span>

							<div class="chat-alert">Hello, Are you there?</div></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- ./top-nav-inner --> </header>
		<aside class="sidebar-menu fixed">
		<div class="sidebar-inner scrollable-sidebar">
			<div class="main-menu">
				<ul class="accordion">
					<li class="menu-header">Main Menu</li>
					<li class="bg-palette1"><a href="index.html"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-home fa-lg"></i></span> <span
								class="text m-left-sm">Dashboard</span>
						</span> <span class="menu-content-hover block"> Home </span>
					</a></li>
					<li class="bg-palette2"><a href="landing/landing.html"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-desktop fa-lg"></i></span> <span
								class="text m-left-sm">Landing</span>
						</span> <span class="menu-content-hover block"> Landing </span>
					</a></li>
					<li class="openable bg-palette3"><a href="#"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-list fa-lg"></i></span> <span
								class="text m-left-sm">Form Elements</span> <span
								class="submenu-icon"></span>
						</span> <span class="menu-content-hover block"> Form </span>
					</a>
						<ul class="submenu bg-palette4">
							<li><a href="form_element.html"><span
									class="submenu-label">Form Element</span></a></li>
							<li><a href="form_validation.html"><span
									class="submenu-label">Form Validation</span></a></li>
							<li><a href="form_wizard.html"><span
									class="submenu-label">Form Wizard</span></a></li>
							<li><a href="dropzone.html"><span class="submenu-label">Dropzone</span></a></li>
						</ul></li>
					<li class="openable bg-palette4"><a href="#"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-tags fa-lg"></i></span> <span
								class="text m-left-sm">UI Elements</span> <span
								class="submenu-icon"></span>
						</span> <span class="menu-content-hover block"> UI Kits </span>
					</a>
						<ul class="submenu">
							<li><a href="ui_element.html"><span
									class="submenu-label">Basic Elements</span></a></li>
							<li><a href="button.html"><span class="submenu-label">Button
										& Icons</span></a></li>
							<li class="openable"><a href="#"> <small
									class="badge badge-success badge-square bounceIn animation-delay2 m-left-xs pull-right">2</small>
									<span class="submenu-label">Tables</span>
							</a>
								<ul class="submenu third-level">
									<li><a href="static_table.html"><span
											class="submenu-label">Static Table</span></a></li>
									<li><a href="datatable.html"><span
											class="submenu-label">DataTables</span></a></li>
								</ul></li>
							<li><a href="widget.html"><span class="submenu-label">Widget</span></a></li>
							<li><a href="tab.html"><span class="submenu-label">Tab</span></a></li>
							<li><a href="calendar.html"><span class="submenu-label">Calendar</span></a></li>
							<li><a href="treeview.html"><span class="submenu-label">Treeview</span></a></li>
							<li><a href="nestable_list.html"><span
									class="submenu-label">Nestable Lists</span></a></li>
						</ul></li>
					<li class="bg-palette1"><a href="inbox.html"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-envelope fa-lg"></i></span> <span
								class="text m-left-sm">Inboxs</span> <small
								class="badge badge-danger badge-square bounceIn animation-delay5 m-left-xs">5</small>
						</span> <span class="menu-content-hover block"> Inboxs </span>
					</a></li>
					<li class="bg-palette2 active"><a href="timeline.html"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-clock-o fa-lg"></i></span> <span
								class="text m-left-sm">Timeline</span> <small
								class="badge badge-warning badge-square bounceIn animation-delay6 m-left-xs pull-right">7</small>
						</span> <span class="menu-content-hover block"> Timeline </span>
					</a></li>
					<li class="menu-header">Others</li>
					<li class="openable bg-palette3"><a href="#"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-gift fa-lg"></i></span> <span
								class="text m-left-sm">Extra Pages</span> <span
								class="submenu-icon"></span>
						</span> <span class="menu-content-hover block"> Pages </span>
					</a>
						<ul class="submenu">
							<li><a href="signin.html"><span class="submenu-label">Sign
										in</span></a></li>
							<li><a href="signup.html"><span class="submenu-label">Sign
										Up</span></a></li>
							<li><a href="lockscreen.html"><span
									class="submenu-label">Lock Screen</span></a></li>
							<li><a href="profile.html"><span class="submenu-label">Profile</span></a></li>
							<li><a href="gallery.html"><span class="submenu-label">Gallery</span></a></li>
							<li><a href="blog.html"><span class="submenu-label">Blog</span></a></li>
							<li><a href="single_post.html"><span
									class="submenu-label">Single Post</span></a></li>
							<li><a href="pricing.html"><span class="submenu-label">Pricing</span></a></li>
							<li><a href="invoice.html"><span class="submenu-label">Invoice</span></a></li>
							<li><a href="error404.html"><span class="submenu-label">Error404</span></a></li>
							<li><a href="blank.html"><span class="submenu-label">Blank</span></a></li>
						</ul></li>
					<li class="openable bg-palette4"><a href="#"> <span
							class="menu-content block"> <span class="menu-icon"><i
									class="block fa fa-list fa-lg"></i></span> <span
								class="text m-left-sm">Menu Level</span> <span
								class="submenu-icon"></span>
						</span> <span class="menu-content-hover block"> Menu </span>
					</a>
						<ul class="submenu">
							<li class="openable"><a href="signin.html"> <span
									class="submenu-label">menu 2.1</span> <small
									class="badge badge-success badge-square bounceIn animation-delay2 m-left-xs pull-right">3</small>
							</a>
								<ul class="submenu third-level">
									<li><a href="#"><span class="submenu-label">menu
												3.1</span></a></li>
									<li><a href="#"><span class="submenu-label">menu
												3.2</span></a></li>
									<li class="openable"><a href="#"> <span
											class="submenu-label">menu 3.3</span> <small
											class="badge badge-danger badge-square bounceIn animation-delay2 m-left-xs pull-right">2</small>
									</a>
										<ul class="submenu fourth-level">
											<li><a href="#"><span class="submenu-label">menu
														4.1</span></a></li>
											<li><a href="#"><span class="submenu-label">menu
														4.2</span></a></li>
										</ul></li>
								</ul></li>
							<li><a href="#"><span class="submenu-label">menu
										2.2</span></a></li>
						</ul></li>
				</ul>
			</div>
			<div class="sidebar-fix-bottom clearfix">
				<div class="user-dropdown dropup pull-left">
					<a href="#" class="dropdwon-toggle font-18" data-toggle="dropdown"><i
						class="ion-person-add"></i> </a>
					<ul class="dropdown-menu">
						<li><a href="inbox.html"> Inbox <span
								class="badge badge-danger bounceIn animation-delay2 pull-right">1</span>
						</a></li>
						<li><a href="#"> Notification <span
								class="badge badge-purple bounceIn animation-delay3 pull-right">2</span>
						</a></li>
						<li><a href="#" class="sidebarRight-toggle"> Message <span
								class="badge badge-success bounceIn animation-delay4 pull-right">7</span>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">Setting</a></li>
					</ul>
				</div>
				<a href="lockscreen.html" class="pull-right font-18"><i
					class="ion-log-out"></i></a>
			</div>
		</div>
		<!-- sidebar-inner --> </aside>

		<div class="main-container">
			<div class="padding-md">
				<h2 class="header-text">
					微博圈 <span class="sub-header"> friend circle </span>
				</h2>

				<div class="row">
					<div class="col-md-10">
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
							<div id="receive_msg">
								<div class="timeline-row alt">
									<div class="timeline-item">
										<div class="timeline-icon">
											<i class="fa fa-comment"></i>
										</div>
										<!-- ./timeline-icon -->
										<div class="timeline-item-inner">
											<div class="timeline-body">
												<div class="timeline-avatar">
													<img src="images/profile/profile5.jpg" alt=""
														class="img-circle">
												</div>
												<div class="timeline-content">
													<div class="font-semi-bold">
														<a href="#">Karen Martin</a> updated his profile picture
													</div>
													<small class="block text-muted m-bottom-xs">16 Feb,
														2013, 04:14</small> <img src="images/profile/profile5.jpg" alt=""
														style="widht: 100px; height: 100px;">
												</div>
												<div class="seperate-bar bg-grey font-12 m-top-md">
													<!-- style 标签颜色 -->
													<small class="inline-block m-right-sm"><i
														class="fa fa-comments"></i> 83 评论</small> <small
														class="inline-block m-right-sm"><i
														class="fa fa-heart"></i> 122 赞</small> <small
														class="inline-block m-right-sm"><i
														class="fa fa-share"></i> 31 分享</small>
													<!--  标签  -->
													<small class="inline-block m-right-sm"><i
														class="fa fa-tags"></i> 标签名</small>
												</div>
												<div class="social-reply-section clearfix">
													<img src="images/profile/profile1.jpg" alt="">
													<div class="input-wrapper">
														<input type="text" class="form-control"
															placeholder="Write a comment...">
														<div class="input-icon-link">
															<a href="#" class="text-normal"></a>
														</div>
													</div>
												</div>
												<ul class="social-comment-list m-top-md">
													<li class="clearfix"><img
														src="images/profile/profile7.jpg" alt="">
														<div class="comment-body">
															<p>
																<a href="#" class="comment-name">Sarah Garcia</a>Lorem
																ipsum dolor sit amet, consectetur adipiscing elit.
															</p>
															<small class="block text-muted m-bottom-xs">Yesterday,
																08:02 <a href="#" class="m-left-sm m-right-sm">Like</a><a
																href="#" class="m-right-sm">Report</a>
															</small>
														</div> <!-- ./comment-list --></li>
													<li class="clearfix"><img
														src="images/profile/profile6.jpg" alt="">
														<div class="comment-body">
															<p>
																<a href="#" class="comment-name">Jame Smith</a>Lorem
																ipsum dolor sit amet, consectetur adipiscing elit.
																Vestibulum auctor suscipit lobortis.
															</p>
															<small class="block text-muted m-bottom-xs">Yesterday,
																08:02 <a href="#" class="m-left-sm m-right-sm">Like</a><a
																href="#" class="m-right-sm">Report</a>
															</small>
														</div> <!-- ./comment-list --></li>
												</ul>
												<div class="pagination-row clearfix m-bottom-md"
													style="margin-top: 10px; margin-bottom: 0px;">
													<div class="pull-right pull-left-sm">
														<div class="inline-block vertical-middle m-right-xs">Page
															1 of 8</div>
														<ul class="pagination vertical-middle"
															style="margin: 0px;">
															<li class="disabled"><a href="#"><i
																	class="fa fa-step-backward"></i></a></li>
															<li class="disabled"><a href="#"><i
																	class="fa fa-caret-left large"></i></a></li>
															<li><a href="#"><i
																	class="fa fa-caret-right large"></i></a></li>
															<li><a href="#"><i class="fa fa-step-forward"></i></a></li>
														</ul>
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

								<!--  公告 -->
								<div class="timeline-row clearfix alt">
									<div class="timeline-item">
										<div class="timeline-icon bg-info">
											<i class="fa fa-bell"></i>
										</div>
										<!-- ./timeline-icon -->
										<div class="timeline-item-inner">
											<div class="timeline-body">
												<div class="timeline-avatar">
													<img src="images/profile/profile8.jpg" alt=""
														class="img-circle">
												</div>
												<div class="timeline-content">
													<div class="font-semi-bold">
														<a href="#">John Doe</a> updated his status
													</div>
													<small class="block text-muted m-bottom-xs">27
														July, 2014, 07:24</small> Lorem ipsum dolor sit amet, consectetur
													adipiscing elit. Vestibulum auctor suscipit lobortis. Sed
													quis ipsum risus. Mauris vitae justo non felis pulvinar
													rhoncus. In quis massa ut risus sagittis luctus.
												</div>
												<div class="social-reply-section clearfix">
													<img src="images/profile/profile1.jpg" alt="">
													<div class="input-wrapper">
														<input type="text" class="form-control"
															placeholder="Write a comment...">
														<div class="input-icon-link">
															<a href="#" class="text-normal"></a>
														</div>
													</div>
												</div>

												<div class="pagination-row clearfix m-bottom-md"
													style="margin-top: 10px; margin-bottom: 0px;">
													<div class="pull-right pull-left-sm">
														<div class="inline-block vertical-middle m-right-xs">Page
															1 of 8</div>
														<ul class="pagination vertical-middle"
															style="margin: 0px;">
															<li class="disabled"><a href="#"><i
																	class="fa fa-step-backward"></i></a></li>
															<li class="disabled"><a href="#"><i
																	class="fa fa-caret-left large"></i></a></li>
															<li><a href="#"><i
																	class="fa fa-caret-right large"></i></a></li>
															<li><a href="#"><i class="fa fa-step-forward"></i></a></li>
														</ul>
													</div>
												</div>
												<!-- ./pagination-row -->
											</div>
											<!-- ./timeline-body -->
										</div>
										<!-- ./timeline-item-inner -->
									</div>
									<!-- ./timeline-item -->
								</div>
								<!-- ./timeline-row -->
								<!-- --------------------------- -->

							</div>
						</div>
						<!-- ./timeline-wrapper -->
					</div>
					<!-- ./col -->
				</div>
				<!-- ./row -->
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
