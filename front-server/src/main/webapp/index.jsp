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

</head>

<body class="overflow-hidden">
	<div class="wrapper preload">
		<%@include file="user-frame.jsp"%>

		<%@include file="navi-frame.jsp"%>

		<div class="main-container">
			<div class="padding-md">
				<div class="row">
					<div class="col-sm-6">
						<div class="page-title">Welcome Back,</div>
						<div class="page-sub-header">
							${param.username} , <i class="fa fa-map-marker text-danger"></i>
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
							<div class="statistic-title">Today Visitors</div>

							<div class="statistic-value">96.7k</div>

							<div class="m-top-md">11% Higher than last week</div>

							<div class="statistic-icon-background">
								<i class="ion-eye"></i>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="statistic-box bg-info m-bottom-md">
							<div class="statistic-title">Today Sales</div>

							<div class="statistic-value">751</div>

							<div class="m-top-md">8% Higher than last week</div>

							<div class="statistic-icon-background">
								<i class="ion-ios7-cart-outline"></i>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="statistic-box bg-purple m-bottom-md">
							<div class="statistic-title">Today Users</div>

							<div class="statistic-value">129</div>

							<div class="m-top-md">3% Higher than last week</div>

							<div class="statistic-icon-background">
								<i class="ion-person-add"></i>
							</div>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="statistic-box bg-success m-bottom-md">
							<div class="statistic-title">Today Earnings</div>

							<div class="statistic-value">$124.45k</div>

							<div class="m-top-md">7% Higher than last week</div>

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
							<div class="panel-body bg-info text-white">
								<div style="margin: 0px;" class="h4 text-white text-center">Today Weather</div>

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
						<div class="smart-widget">
							<div class="smart-widget-header">
								标签使用率 <span class="smart-widget-option"> <span
									class="refresh-icon-animated"> <i
										class="fa fa-circle-o-notch fa-spin"></i>
								</span> <a href="#" class="widget-toggle-hidden-option"> <i
										class="fa fa-cog"></i>
								</a> <a href="#" class="widget-collapse-option"
									data-toggle="collapse"> <i class="fa fa-chevron-up"></i>
								</a> <a href="#" class="widget-refresh-option"> <i
										class="fa fa-refresh"></i>
								</a> <a href="#" class="widget-remove-option"> <i
										class="fa fa-times"></i>
								</a>
								</span>
							</div>
							<div class="smart-widget-inner table-responsive">
								<div class="smart-widget-hidden-section">
									<ul class="widget-color-list clearfix">
										<li style="background-color: #20232b;"
											data-color="widget-dark"></li>
										<li style="background-color: #4c5f70;"
											data-color="widget-dark-blue"></li>
										<li style="background-color: #23b7e5;"
											data-color="widget-blue"></li>
										<li style="background-color: #2baab1;"
											data-color="widget-green"></li>
										<li style="background-color: #edbc6c;"
											data-color="widget-yellow"></li>
										<li style="background-color: #fbc852;"
											data-color="widget-orange"></li>
										<li style="background-color: #e36159;" data-color="widget-red"></li>
										<li style="background-color: #7266ba;"
											data-color="widget-purple"></li>
										<li style="background-color: #f5f5f5;"
											data-color="widget-light-grey"></li>
										<li style="background-color: #fff;" data-color="reset"></li>
									</ul>
								</div>
								<table class="table table-striped no-margin">
									<thead>
										<tr>
											<th class="text-right">Date</th>
											<th class="text-right">Database Usage</th>
											<th class="text-right">CPU Usage</th>
											<th class="text-right">Memory Usage</th>
											<th class="text-right">Total Disk Usage</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="text-right">July, 11</td>
											<td class="text-right">31.05%</td>
											<td class="text-right">65.12%</td>
											<td class="text-right">86.41%</td>
											<td class="text-right">
												<div class="progress progress-sm inline-block m-bottom-none"
													style="width: 100px; margin-top: 6px">
													<div class="progress-bar progress-bar-success"
														style="width: 54.41%;">
														<span class="sr-only">54.41% Complete</span>
													</div>
												</div> <span class="m-left-sm vertical-top">54.41%</span>
											</td>
										</tr>
										<tr>
											<td class="text-right">July, 12</td>
											<td class="text-right">48.99%</td>
											<td class="text-right">72.31%</td>
											<td class="text-right">74.21%</td>
											<td class="text-right">
												<div class="progress progress-sm inline-block m-bottom-none"
													style="width: 100px; margin-top: 6px">
													<div class="progress-bar progress-bar-warning"
														style="width: 69.92%;">
														<span class="sr-only">69.92% Complete</span>
													</div>
												</div> <span class="m-left-sm vertical-top">69.92%</span>
											</td>
										</tr>
										<tr>
											<td class="text-right">July, 13</td>
											<td class="text-right">13.68%</td>
											<td class="text-right">32.31%</td>
											<td class="text-right">50.82%</td>
											<td class="text-right">
												<div class="progress progress-sm inline-block m-bottom-none"
													style="width: 100px; margin-top: 6px">
													<div class="progress-bar progress-bar-danger"
														style="width: 43.17%;">
														<span class="sr-only">43.17% Complete</span>
													</div>
												</div> <span class="m-left-sm vertical-top">43.17%</span>
											</td>
										</tr>
										<tr>
											<td class="text-right">July, 13</td>
											<td class="text-right">13.68%</td>
											<td class="text-right">32.31%</td>
											<td class="text-right">50.82%</td>
											<td class="text-right">
												<div class="progress progress-sm inline-block m-bottom-none"
													style="width: 100px; margin-top: 6px">
													<div class="progress-bar progress-bar-danger"
														style="width: 43.17%;">
														<span class="sr-only">43.17% Complete</span>
													</div>
												</div> <span class="m-left-sm vertical-top">43.17%</span>
											</td>
										</tr>
										<tr>
											<td class="text-right">July, 14</td>
											<td class="text-right">9.23%</td>
											<td class="text-right">11.91%</td>
											<td class="text-right">10.21%</td>
											<td class="text-right">
												<div class="progress progress-sm inline-block m-bottom-none"
													style="width: 100px; margin-top: 6px">
													<div class="progress-bar progress-bar-success"
														style="width: 12.11%;">
														<span class="sr-only">12.11% Complete</span>
													</div>
												</div> <span class="m-left-sm vertical-top">12.11%</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- ./smart-widget-inner -->
						</div>
						<!-- ./smart-widget -->
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
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>

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

	<script src="js/login.js" type="text/javascript"></script>
	<script>
		isLogin();

		$(function() {
			$('.sortable-list').sortable();

		});
	</script>

</body>
</html>
