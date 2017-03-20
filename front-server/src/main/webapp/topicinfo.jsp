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

.sub_pic_div img {
	width: 182px;
	height: 100px;
	margin-left: 28px;
	margin-top: 12px;
}

.tpc {
	list-style: none;
}

.tpc li {
	margin-top: 3px;
	font-size: 17px;
}

.tpc .imt_tpc {
	color: red;
	margin-top: 15px;
	font-size: 20px;
}

/*ad*/
#box_ad {
	position: relative;
	width: 600px;
	height: 360px;
	background: #fff;
	border-radius: 5px;
	margin: 10px auto;
	cursor: pointer;
}

#box_ad .list {
	position: relative;
	width: 600px;
	height: 360px;
	overflow: hidden;
}

#box_ad .list ul {
	position: absolute;
	top: 0;
	left: 0;
}

#box_ad .list li {
	width: 600px;
	height: 360px;
	overflow: hidden;
}

#box_ad .count {
	position: absolute;
	right: 0;
	bottom: 5px;
}

#box_ad .count li {
	color: #fff;
	float: left;
	width: 20px;
	height: 20px;
	cursor: pointer;
	margin-right: 5px;
	overflow: hidden;
	background: #F90;
	opacity: 0.7;
	filter: alpha(opacity = 70);
	border-radius: 20px;
}

#box_ad .count li.current {
	color: #fff;
	opacity: 1;
	filter: alpha(opacity = 100);
	font-weight: 700;
	background: #f60;
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
						<div id="box_ad">
							<div class="list">
								<ul>
									<li><img src="topic/${param.id}/pic1.jpg" width="600"
										height="360" /></li>
									<li><img src="topic/${param.id}/pic2.jpg" width="600"
										height="360" /></li>
									<li><img src="topic/${param.id}/pic3.jpg" width="600"
										height="360" /></li>
									<li><img src="topic/${param.id}/pic4.jpg" width="600"
										height="360" /></li>
								</ul>
							</div>
						</div>
						<div class="sub_pic_div">
							<img src="topic/${param.id}/pic5.jpg" /><img
								src="topic/${param.id}/pic6.jpg" /><img
								src="topic/${param.id}/pic7.jpg" /><img
								src="topic/${param.id}/pic8.jpg" /><img
								src="topic/${param.id}/pic9.jpg" /><img
								src="topic/${param.id}/pic10.jpg" />
						</div>
					</div>
					<!-- ./col -->
					<div style="margin-left: -25px;" class="col-md-4">
						<div>
							<ul class="tpc">
								<li class="imt_tpc">topic_content1</li>
								<li>topic_content4</li>
								<li>topic_content5</li>
								
								<li class="imt_tpc">topic_content2</li>
								<li>topic_content6</li>
								<li>topic_content7</li>
								
								<li class="imt_tpc">topic_content3</li>
								<li>topic_content8</li>
								<li>topic_content9</li>
								
								<li style="margin-top: 15px;">topic_content10</li>
								<li>topic_content11</li>
								<li>topic_content12</li>
								<li>topic_content13</li>
							</ul>
						</div>
						<img style="margin-top: 5px; width: 300px; height: 184px;" src="topic/${param.id}/pic11.jpg" />
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

	<!-- Modernizr -->
	<script src='js/modernizr.min.js'></script>

	<!-- Simplify -->
	<script src="js/simplify/simplify.js"></script>

	<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>

	<script src="old/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<script src="old/plugins/timeago.js" type="text/javascript"></script>

	<script src="old/plugins/jquery.query-2.1.7.js" type="text/javascript"></script>

	<script src="js/login.js" type="text/javascript"></script>

	<script src="old/scripts/ad.js" type="text/javascript"></script>

	<script type="text/javascript">
		//isLogin();

		show_topics();

		// 获取推荐标签
		function show_topics() {
			$
					.ajax({
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
								while (data.returndata[i] != null && i < 9) {
									var str = "";
									str += "<div class=\"gallery-item\" id=\"lbl"
								+  data.returndata[i].id
								+  "\"><div class=\"gallery-wrapper\"><a class=\"gallery-remove\"><i class=\"fa fa-times\"></i></a> <img class=\"lbl_img\" src=\"images/gallery/"
											+ "gallery"
											+ (i + 1)//	+  data.returndata[i].img
											+ ".jpg\" alt=\"\"><div class=\"gallery-title\">"
											+ data.returndata[i].name
											+ "</div><div class=\"gallery-overlay\"><a href=\"images/gallery/"
											+ "gallery"
											+ (i + 1)//	+  data.returndata[i].img
											+ ".jpg\" class=\"gallery-action enlarged-photo\"><i class=\"fa fa-search-plus fa-lg\"></i></a></div></div></div>";
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

		$(".gallery-item").live(
				'click',
				function() {
					var id = $(this).attr("id").substr(3);
					var name = $(this).find(".gallery-title").text();
					var forward = "window.location='labelinfo.jsp?username="
							+ $.query.get("username") + "&userToken="
							+ $.query.get("userToken") + "&id=" + id
							+ "&flag=1'";
					setTimeout(forward, 0);
				});
	</script>
</body>
</html>
