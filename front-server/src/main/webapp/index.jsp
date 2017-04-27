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

<!-- Morris -->
<link href="css/morris.css" rel="stylesheet" />

<!-- Datepicker -->
<link href="css/datepicker.css" rel="stylesheet" />

<!-- Animate -->
<link href="css/animate.min.css" rel="stylesheet">

<!-- Owl Carousel -->
<link href="css/owl.carousel.min.css" rel="stylesheet">
<link href="css/owl.theme.default.min.css" rel="stylesheet">

<!-- Simplify -->
<link href="css/simplify.min.css" rel="stylesheet">

<style type="text/css">
/*ad*/
#box_ad {
	position: relative;
	width: 740px;
	height: 357px;
	background: #fff;
	border-radius: 5px;
	border: 8px solid #fff;
	margin: 10px auto;
	cursor: pointer;
}

#box_ad .list {
	position: relative;
	width: 725px;
	height: 310px;
	overflow: hidden;
}

#box_ad .list ul {
	position: absolute;
	top: 0;
	left: 0;
}

#box_ad .list li {
	width: 725px;
	height: 310px;
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
				<div class="row">
					<div class="col-sm-6">
						<div class="page-title">欢迎回来,</div>
						<div class="page-sub-header">
							亲爱的 ${param.username} , <i class="fa fa-map-marker text-danger"></i>
							Guangzhou
						</div>
					</div>
					<div class="col-sm-6 text-right text-left-sm p-top-sm">
						<a class="btn btn-default"><i class="fa fa-cog"></i></a>
					</div>
				</div>

				<div class="row m-top-md">
					<div class="col-lg-3 col-sm-6">
						<div class="statistic-box bg-danger m-bottom-md">
							<div class="statistic-title">收听</div>

							<div id="num_following" class="statistic-value">75</div>

							<div class="m-top-md">totoal followings</div>

							<div class="statistic-icon-background">
								<i class="ion-ios7-cart-outline"></i>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="statistic-box bg-info m-bottom-md">
							<div class="statistic-title">关注</div>

							<div id="num_follower" class="statistic-value">12</div>

							<div class="m-top-md">total followers</div>

							<div class="statistic-icon-background">
								<i class="ion-eye"></i>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="statistic-box bg-purple m-bottom-md">
							<div class="statistic-title">微博数量</div>

							<div id="num_weibo" class="statistic-value">129</div>

							<div class="m-top-md">weibo amount</div>

							<div class="statistic-icon-background">
								<i class="ion-person-add"></i>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="statistic-box bg-warning m-bottom-md">
							<div class="statistic-title">访问量</div>

							<div id="num_visit" class="statistic-value">124</div>

							<div class="m-top-md">total visitors</div>

							<div class="statistic-icon-background">
								<i class="ion-stats-bars"></i>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-3">
						<div style="margin-bottom: 0px;"
							class="panel panel-default weather-widget">
							<div class="panel-body bg-success text-white">
								<div style="margin: 0px;" class="h4 text-white text-center">天气情况</div>

								<div class="m-top-md m-bottom-md text-center">
									<canvas id="skycon4" width="120" height="120"></canvas>
								</div>

								<div class="degree-text text-center">24°</div>
							</div>
							<div class="panel-footer bg-white text-center padding-md">
								<div style="margin: 0px;" class="h4 text-upper">
									Guangzhou <i class="fa fa-map-marker"></i>
								</div>
								<div style="margin-top: 0px;"
									class="text-muted font-12 m-top-xs">Clear Day</div>
							</div>
						</div>
						<!-- ./panel -->
					</div>
					<div class="col-lg-8">
						<div id="box_ad">
							<div class="list">
								<ul>
									<li><img src="images/ad/1.jpg" width="725" height="310" /></li>
									<li><img src="images/ad/2.jpg" width="725" height="310" /></li>
									<li><img src="images/ad/3.jpg" width="725" height="310" /></li>
									<li><img src="images/ad/4.jpg" width="725" height="310" /></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- ./row -->


			</div>
			<!-- ./padding-md -->
		</div>
		<!-- /main-container -->

		<footer class="footer"> <span class="footer-brand"> <strong
			class="text-danger">Sami</strong> Weibo
		</span>
		<p class="no-margin">
			&copy; 2017 <strong>Sami Weibo</strong>. ALL Rights Reserved.
		</p>
		</footer>
	</div>
	<!-- /wrapper -->

	<a href="#" class="scroll-to-top hidden-print"><i
		class="fa fa-chevron-up fa-lg"></i></a>


	<!-- Jquery -->
	<script src="js/jquery-1.11.1.min.js"></script>

	<!-- Bootstrap -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<!-- Flot -->
	<script src='js/jquery.flot.min.js'></script>

	<!-- Slimscroll -->
	<script src='js/jquery.slimscroll.min.js'></script>

	<!-- Morris -->
	<script src='js/rapheal.min.js'></script>
	<script src='js/morris.min.js'></script>

	<!-- Datepicker 
	<script src='js/uncompressed/datepicker.js'></script>
	-->

	<!-- Sparkline 
	<script src='js/sparkline.min.js'></script>
	-->

	<!-- Skycons -->
	<script src='js/uncompressed/skycons.js'></script>

	<!-- Sortable -->
	<script src='js/uncompressed/jquery.sortable.js'></script>

	<!-- Owl Carousel -->
	<script src='js/owl.carousel.min.js'></script>

	<!-- Modernizr -->
	<script src='js/modernizr.min.js'></script>

	<!-- Simplify -->
	<script src="js/simplify/simplify.js"></script>
	<script src="js/simplify/simplify_dashboard.js"></script>

	<script src="old/plugins/jquery.query-2.1.7.js" type="text/javascript"></script>

	<script src="old/scripts/ad.js" type="text/javascript"></script>

	<!--  表情包  -->
	<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>
	<script src="old/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<script src='ajax/user_frame.js'></script>

	<script src="js/login.js" type="text/javascript"></script>
	<script>
		isLogin();

		$(function() {
			$('.sortable-list').sortable();

		});
		
		$.ajax({
			type : "post",
			url : "user/getinfo",
			data : {
				username : $.query.get("username"),
				flag : 1
			},
			dataType : "json",
			success : function(data) {
				$.each(data, function() {
					if (data.returndata != null) {
						$("#num_follower").text(data.returndata.friend_num);
						$("#num_following").text(data.returndata.focus_num);
						$("#num_weibo").text(data.returndata.message_num);
	
						
					} else {
						$("#num_follower").text("0");
						$("#num_following").text("0");
						$("#num_weibo").text("0");
					}
				});
			}
		});
	</script>

</body>
</html>
