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
.popular-blog-post li {
	margin-bottom: 0px;
}

.popular-blog-post li .popular-blog-detail {
	margin-top: 15px;
}

.task-widget {
	text-align: left;
}

.popular-blog-post li .img-wrapper {
	margin-left: 15px;
}

.task-widget .task-widget-body {
	padding: 5px 10px;
	width: 95%;
}

.popular-blog-post li .popular-blog-detail {
    margin-left: 100px;
}
</style>
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
						<div id="lbl_list" class="gallery-list js-masonry m-top-md">

						</div>
						<!-- ./gallery-list -->
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

						<h4>
							搜索历史<a href="#"
								style="font-size: 10px; color: #218388; margin-left: 20px;">remove</a>
						</h4>
						<ul class="popular-blog-post">
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="images/gallery/gallery1.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">How to increase your shop sales</a>
									<div class="text-muted m-top-sm">July 27, 2014</div>
								</div>
							</li>
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="images/gallery/gallery2.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">The Best Tools For Testing Your
										Designs</a>
									<div class="text-muted m-top-sm">July 26, 2014</div>
								</div>
							</li>
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="images/gallery/gallery3.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">The trends of Website Design in 2014</a>
									<div class="text-muted m-top-sm">July 25, 2014</div>
								</div>
							</li>
						</ul>

						<hr />

						<h4>相似用户</h4>
						<ul class="ppl_user popular-blog-post">
							<li class="clearfix">
								<div class="task-widget">
									<div class="task-widget-body clearfix">
										<div class="pie-chart-wrapper">
											<div class="img-wrapper clearfix">
												<img class="small-img img-circle img-thumbnail"
													src="images/profile/zerry.jpg" alt="">
											</div>
											<div class="popular-blog-detail">
												<a href="profile.jsp" style="font-size: 20px;" class="h5">zerry</a>
												<div class="text-muted m-top-sm">
													<span>user</span>
												</div>
											</div>
										</div>
									</div>
									<!-- ./task-widget-body -->
									<div class="task-widget-statatistic">
										<ul class="clearfix">
											<li class="bg-grey border-success">
												<div class="text-muted text-upper font-sm">评论</div> 231
											</li>
											<li class="bg-grey border-danger">
												<div class="text-muted text-upper font-sm">转发</div> 321
											</li>
											<li class="bg-grey border-purple">
												<div class="text-muted text-upper font-sm">点赞</div> 171
											</li>
										</ul>
										<!-- ./row -->
									</div>
								</div> <!-- ./task-widget -->
							</li>
						</ul>

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

	<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>

	<script src="old/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<script src="old/plugins/timeago.js" type="text/javascript"></script>

	<script src="old/plugins/jquery.query-2.1.7.js" type="text/javascript"></script>

	<!--  表情包  -->
	<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>
	<script src="old/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<script src='ajax/user_frame.js'></script>
	
	<script src="js/login.js" type="text/javascript"></script>

	<script type="text/javascript">
		isLogin();
		
		show_recommendedlabel();
		
		// 获取推荐标签
		function show_recommendedlabel() {
			$.ajax({
				type : "post",
				// async : false,
				url : "label/show_rec",
				data : {
					username : $.query.get("username")
				},
				dataType : "json",
				success : function(data) {
					if (data.returndata != undefined) {
						$("#lbl_list").empty();
						var i = 0;
						while (data.returndata[i] != null) {
							var str = "";
							str += "<div class=\"gallery-item\" id=\"lbl"
								+  data.returndata[i].id
								+  "\"><div class=\"gallery-wrapper\"><a class=\"gallery-remove\"><i class=\"fa fa-times\"></i></a> <img class=\"lbl_img\" src=\"images/gallery/"
								+  "gallery" + (i+1)//	+  data.returndata[i].img
								+  ".jpg\" alt=\"\"><div class=\"gallery-title\">"
								+  data.returndata[i].name
								+  "</div><div class=\"gallery-overlay\"><a href=\"images/gallery/"
								+  "gallery" + (i+1)//	+  data.returndata[i].img
								+  ".jpg\" class=\"gallery-action enlarged-photo\"><i class=\"fa fa-search-plus fa-lg\"></i></a></div></div></div>";
							i++;
							$("#lbl_list").append(str);
								
							// img
							//$(item).find(".gallery-title").text(data.returndata[i].name);
							//$(item).find(".gallery-action").attr("href", "labelinfo.jsp?");
						}
					}
				}
			});
		}

		$(".gallery-item").live('click', function() {
		 	var id = $(this).attr("id").substr(3);
		 	var name = $(this).find(".gallery-title").text();
		 	var forward = "window.location='labelinfo.jsp?username=" + $.query.get("username") + "&userToken=" + $.query.get("userToken") + "&id=" + id + "&flag=1'";
	 		setTimeout(forward, 0);
		});
		
		function show_SimilarUsers(_label_id) {
			$
					.ajax({
						type : "post",
						// async : false,
						url : "user/show_rec_users",
						data : {
							label_id : _label_id,
							num : 4
						},
						dataType : "json",
						success : function(data) {
							if (data.returndata != undefined) {
								$(".ppl_user").empty();
								for (var i = 0; i < 3; i++)
									if (data.returndata.user[i] != undefined) {
										var str = "<li class=\"clearfix\"><div class=\"task-widget\"><div class=\"task-widget-body clearfix\"><div class=\"pie-chart-wrapper\"><div class=\"img-wrapper clearfix\"><img class=\"small-img img-circle img-thumbnail\" src=\"images/profile/"
												+ data.returndata.user[i].username
												+ ".jpg\" alt=\"\"></div><div class=\"popular-blog-detail\"><a href=\"profile.jsp?username=${param.username}&userToken=${param.userToken}&targetUsername="
														+ data.returndata.user[i].username
														+ "\" style=\"font-size: 20px;\" class=\"h5\">"
												+ data.returndata.user[i].nickname
												+ "</a><div class=\"text-muted m-top-sm\"><span>user</span></div></div></div><div style=\"float: right; margin-top: 22px;\"><small class=\"text-upper text-muted block font-sm\">heat</small><h1 style=\"font-size: 25px; color: #fc5050;\" class=\"no-margin\">"
												+ data.returndata.heat[i]
												+ "</h1></div></div><div class=\"task-widget-statatistic\"><ul class=\"clearfix\"><li class=\"bg-grey border-success\"><div class=\"text-muted text-upper font-sm\">关注</div> "
												+ data.returndata.user[i].focus_num
												+ "</li><li class=\"bg-grey border-danger\"><div class=\"text-muted text-upper font-sm\">粉丝</div> "
												+ data.returndata.user[i].friend_num
												// 浏览量
												+ "</li><li class=\"bg-grey border-purple\"><div class=\"text-muted text-upper font-sm\">浏览</div> 2176"
												+ "</li></ul></div></div></li>";	
									$(".ppl_user").append(str);			
									}
							}
								
						}
					});
		}
	</script>
</body>
</html>
