<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<aside class="sidebar-menu">
	<div class="sidebar-inner scrollable-sidebar">
		<div class="main-menu">
			<ul class="accordion">
				<li class="menu-header">Main Menu</li>
				<li class="bg-palette1 active"><a href="index.jsp?username=${param.username}&userToken=${param.userToken}"> <span
						class="menu-content block"> <span class="menu-icon"><i
								class="block fa fa-home fa-lg"></i></span> <span class="text m-left-sm">个人总览</span>
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
								class="block fa fa-tags fa-lg"></i></span> <span class="text m-left-sm">标签</span></span>
						<span class="menu-content-hover block"> Labaels </span>
				</a></li>
				<li class="bg-palette3"><a
					href="topic.jsp?username=${param.username}&userToken=${param.userToken}">
						<span class="menu-content block"> <span class="menu-icon"><i
								class="block fa fa-gift fa-lg"></i></span> <span class="text m-left-sm">话题</span></span>
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
								class="block fa fa-bell fa-lg"></i></span> <span class="text m-left-sm">公告</span>
							<small
							class="badge badge-warning badge-square bounceIn animation-delay6 m-left-xs pull-right">7</small>
					</span> <span class="menu-content-hover block"> Notice </span>
				</a></li>
				<li class="openable bg-palette4"><a href="#"> <span
						class="menu-content block"> <span class="menu-icon"><i
								class="block fa fa-list fa-lg"></i></span> <span class="text m-left-sm">辅助功能</span>
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
	</aside>
</body>
</html>