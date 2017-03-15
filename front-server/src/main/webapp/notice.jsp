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
	<div class="wrapper preload">
		<%@include file="user-frame.jsp"%>

		<%@include file="navi-frame.jsp"%>

		<div class="main-container">
			<div class="padding-md">
				<h3 class="header-text m-top-lg">Welcome To Sami Weibo</h3>

				<div class="row">
					<div class="col-md-8">
						<div id="noticelist" class="blog-wrapper">
							<div class="blog-list">
								<div class="blog-header clearfix m-bottom-md">
									<div class="blog-date">
										27<br />
										<div class="blog-month">July</div>
									</div>

									<div class="blog-title">
										<div class="text-upper">How to increase your shop sales</div>

										<div class="text-muted font-12">
											By <a href="#">John Doe</a> in <a href="#">Technology</a> <span
												class="m-left-xs m-right-xs">|</span> <span><i
												class="fa fa-comments"></i> 32 comments</span>
										</div>
									</div>
								</div>
								<!-- ./blog-header -->

								<img src="images/blog/blog1.jpg" alt="">

								<p class="m-top-lg">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nullam eros nibh, viverra a dui a, gravida
									varius velit. Nunc vel tempor nisi. Aenean id pellentesque mi,
									non placerat mi. Integer luctus accumsan tellus. Vivamus quis
									elit sit amet nibh lacinia suscipit eu quis purus. Vivamus
									tristique est non ipsum dapibus lacinia sed nec metus.</p>

								<div class="m-top-md">
									<a href="single_post.html" class="btn btn-danger text-upper">Read
										More</a>
								</div>
							</div>
							<!-- ./blog-list -->

							<div class="blog-list">
								<div class="blog-header clearfix m-bottom-md">
									<div class="blog-date">
										21<br />
										<div class="blog-month">Feburary</div>
									</div>

									<div class="blog-title">
										<div class="text-upper">The Best Tools For Testing Your
											Designs</div>

										<div class="text-muted font-12">
											By <a href="#">Administrator</a> in <a href="#">Website
												Design</a> <span class="m-left-xs m-right-xs">|</span> <span><i
												class="fa fa-comments"></i> 187 comments</span>
										</div>
									</div>
								</div>
								<!-- ./blog-header -->

								<img src="images/blog/blog2.jpg" alt="">

								<p class="m-top-lg">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nullam eros nibh, viverra a dui a, gravida
									varius velit. Nunc vel tempor nisi. Aenean id pellentesque mi,
									non placerat mi. Integer luctus accumsan tellus. Vivamus quis
									elit sit amet nibh lacinia suscipit eu quis purus. Vivamus
									tristique est non ipsum dapibus lacinia sed nec metus.</p>

								<div class="m-top-md">
									<a href="single_post.html" class="btn btn-danger text-upper">Read
										More</a>
								</div>
							</div>
							<!-- ./blog-list -->

							<div class="blog-list">
								<div class="blog-header clearfix m-bottom-md">
									<div class="blog-date">
										22<br />
										<div class="blog-month">July</div>
									</div>

									<div class="blog-title">
										<div class="text-upper">The trends of Website Design in
											2014</div>

										<div class="text-muted font-12">
											By <a href="#">Administrator</a> in <a href="#">Website
												Design</a> <span class="m-left-xs m-right-xs">|</span> <span><i
												class="fa fa-comments"></i> 17 comments</span>
										</div>
									</div>
								</div>
								<!-- ./blog-header -->

								<img src="images/blog/blog3.jpg" alt="">

								<p class="m-top-lg">Lorem ipsum dolor sit amet, consectetur
									adipiscing elit. Nullam eros nibh, viverra a dui a, gravida
									varius velit. Nunc vel tempor nisi. Aenean id pellentesque mi,
									non placerat mi. Integer luctus accumsan tellus. Vivamus quis
									elit sit amet nibh lacinia suscipit eu quis purus. Vivamus
									tristique est non ipsum dapibus lacinia sed nec metus.</p>

								<div class="m-top-md">
									<a href="single_post.html" class="btn btn-danger text-upper">Read
										More</a>
								</div>
							</div>
							<!-- ./blog-list -->

						</div>
						<!-- ./blog-wrapper -->
					</div>
					<!-- ./col -->
					<div class="col-md-4">
						<form>
							<div class="form-group">
								<h4>搜索</h4>
								<input type="text" class="form-control input-sm">
							</div>
						</form>

						<hr />

						<h4>重要提示</h4>
						<ul class="popular-blog-post">
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="message/maintain.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">How to increase your shop sales</a>
									<div class="text-muted m-top-sm">July 27, 2014</div>
								</div>
							</li>
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="message/maintain.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">The Best Tools For Testing Your
										Designs</a>
									<div class="text-muted m-top-sm">July 26, 2014</div>
								</div>
							</li>
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="message/maintain.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">The trends of Website Design in 2014</a>
									<div class="text-muted m-top-sm">July 25, 2014</div>
								</div>
							</li>
						</ul>

						<hr />

						<h4>公告类别</h4>

						<ul class="blog-sidebar-list">
							<li><a href="#">技术支持</a></li>
							<li><a href="#">系统维护</a></li>
							<li><a href="#">漏洞反馈</a></li>
							<li><a href="#">版权声明</a></li>
						</ul>

						<hr />

						<h4>公告日期</h4>

						<ul class="blog-sidebar-list">
							<li><a href="#">10月 2015</a></li>
							<li><a href="#">11月 2015</a></li>
							<li><a href="#">12月 2015</a></li>
							<li><a href="#">1月 2016</a></li>
							<li><a href="#">2月 2016</a></li>
						</ul>
					</div>
					<!-- ./col -->
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

	<!-- Modernizr -->
	<script src='js/modernizr.min.js'></script>

	<!-- Simplify -->
	<script src="js/simplify/simplify.js"></script>

	<!--  表情包  -->
	<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>

	<script src="old/plugins/timeago.js" type="text/javascript"></script>

	<script src="old/plugins/jquery.query-2.1.7.js" type="text/javascript"></script>
   
	<script src="js/login.js" type="text/javascript"></script>
	
	<script type="text/javascript">
		isLogin();
		
		show_announcements(1);
		
		function show_announcements(_flag) {
	$
			.ajax({
				url : 'message/show_announcements',
				type : 'post',
				data : {
					flag : _flag
				},
				dataType : 'json', // 返回值类型 一般设置为json
				success : function(data, status) { // 服务器成功响应处理函数
					var i = 0;
					$("#noticelist").empty();
					while (data.returndata[i] != undefined) {
						var message = "<div class=\"blog-list\"><div class=\"blog-header clearfix m-bottom-md\"><div class=\"blog-date\">"
									+ data.returndata[i].create_time.substring(8, 10)
									+ "<br /><div class=\"blog-month\">"
									+ data.returndata[i].create_time.substring(5, 7)
									+ "月</div></div><div class=\"blog-title\"><div class=\"text-upper\">"
									/* + data.returndata[i].type 公 告 类 别 */
									+ "系统维护公告</div><div class=\"text-muted font-12\">By <a href=\"#\">"
									+ data.returndata[i].author.nickname
									+ "</a> in <a href=\"#\">System Security</a> <span class=\"m-left-xs m-right-xs\">|</span><span><i class=\"fa fa-comments\"></i> 0 comments</span></div></div></div><p class=\"m-top-lg\">"
									+ data.returndata[i].content
									+ "</p><img src=\"message/"
									+ data.returndata[i].pic // 增加pic获取
									+ ".jpg\" alt=\"\"><div class=\"m-top-md\"><a href=\"#\" class=\"btn btn-danger text-upper\">Read More</a></div></div>";
						$("#noticelist").append(message);
						i++;
					}
				}
			});
		}

	</script>
</body>
</html>
