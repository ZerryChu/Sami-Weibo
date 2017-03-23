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
	margin-right: 8px;
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

.tpc li a {
	color: black;
	font-size: 14px;
}

.tpc .imt_tpc a {
	color: red;
	font-size: 16px;
}

a:hover {
	cursor: pointer;
	text-decoration: underline;
}

.small_sub {
	display: inline-block;
	margin-left: 30px;
	margin-bottom: 20px;
	padding-right: 30px;
	border-right: 2px solid gray;
	color: black;
}

.sub_tpc {
	display: inline-block;
	margin-left: 60px;
	width: 610px;
}

.sub_tpc ul {
	display: inline-block;
	list-style: none;
	width: 300px;
	height: 110px;
	margin-top: 22px;
}

.sub_tpc ul li {
	margin-bottom: 5px;
}

.sub_tpc ul li a {
	color: black;
}

.sub_pic {
	display: inline-block;
}

.sub_pic img {
	display: block;
	width: 227px;
	height: 100px;
	margin-top: 20px;
}

.sub_pic_div div {
	display: inline-block;
	position: relative;
}

.sub_pic_div div span {
	position: absolute;
	text-align: center;
	width: 182px;
	left: 0px;
	bottom: 0px;
	color: white;
	background: url('images/background.png');
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

				<div
					style="margin-left: 40px; padding-bottom: 30px; margin-right: 40px;"
					class="row">
					<div class="col-md-8">
						<div id="box_ad">
							<!--  图片加叙述文字！！！ -->
							<div class="list">
								<ul>
									<li><img src="images/topic/${param.id}/1.jpg" width="600"
										height="360" /></li>
									<li><img src="images/topic/${param.id}/2.jpg" width="600"
										height="360" /></li>
									<li><img src="images/topic/${param.id}/3.jpg" width="600"
										height="360" /></li>
									<li><img src="images/topic/${param.id}/4.jpg" width="600"
										height="360" /></li>
								</ul>
							</div>
						</div>
						<div style="width: 600px;" class="sub_pic_div">
							<div>
								<a><img src="images/topic/${param.id}/5.jpg" /><span>曼联英超600胜
										林加德纪录片</span></a>
							</div>
							<div>
								<a><img src="images/topic/${param.id}/6.jpg" /><span>1V4抽射+梅西式奔袭破门</span></a>
							</div>
							<div>
								<a><img src="images/topic/${param.id}/7.jpg" /><span>19:35直播12强赛
										国足VS韩国</span></a>
							</div>
							<div>
								<a><img src="images/topic/${param.id}/8.jpg" /><span>羽联排名：林丹上升1名居第6</span></a>
							</div>
							<div>
								<a><img src="images/topic/${param.id}/9.jpg" /><span>姚明揭晓2019年中国篮球世界杯会徽</span></a>
							</div>
							<div>
								<a><img src="images/topic/${param.id}/10.jpg" /><span>CBA半决赛拉拉队宝贝热舞助威</span></a>
							</div>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-md-4">
						<div>
							<ul class="tpc">
								<li class="imt_tpc"><a>19:35播国足VS韩国</a></li>
								<li><a>黄博文亲证无法出战</a></li>
								<li><a>4年前雨战绝杀抢3分</a></li>

								<li class="imt_tpc"><a>詹皇低迷骑士惨败</a></li>
								<li><a>科比将出席奥胖雕像揭幕</a></li>
								<li><a>战报 -30!詹皇这数据辣眼睛</a></li>

								<li class="imt_tpc"><a>波尔蒂告别赛献绝杀 德国力擒英格兰</a></li>
								<li><a>西媒:超60%看好皇马压巴萨</a></li>
								<li><a>眼含泪光!7万人送别青春</a></li>

								<li style="margin-top: 15px;"><a>温格:足球不全是为了冠军</a></li>
								<li><a>三双+100%威少历史第1</a></li>
								<li><a>游泳中心争议主任离任 乒羽体操掌门均换人</a></li>
								<li><a>马琳王皓确认竞聘愿返国乒</a></li>
							</ul>
						</div>
						<div style="position: relative;">
							<a><img
								style="margin-top: 5px; width: 300px; height: 184px; margin-left: -30px;"
								src="images/topic/${param.id}/11.jpg" /> <span
								style="position: absolute; left: -30px; top: 171px; width: 276px; background: url('images/background.png'); text-align: center; color: white;">爵士队97年经典阵容再聚首
									已白发苍苍</span></a>
						</div>
					</div>
				</div>
				<div
					style="border-top: 3px solid red; margin-right: 50px; margin-left: 60px; margin-top: 20px; padding-top: 7px;"
					class="sub_ttl">
					<span style="font-size: 30px; color: gray;" class="big_sub">足球</span>
					<span class="small_sub">国足</span><span class="small_sub">英超</span><span
						class="small_sub">转会</span><span
						style="margin-left: 30px; color: black;">世界杯</span>
				</div>
				<!--  文字框 -->
				<div class="sub_tpc">
					<ul>
						<li><a>媒评:万一今晚国足输球 长沙球迷请不要再输人</a></li>
						<li><a>黄博文自己确认无法出战中韩战:可惜了 腿不给力</a></li>
						<li><a>韩名记:"福地"再来一次恐韩症 看看与垫底的差距</a></li>
						<li><a>粤媒:中国足球没有那么不堪 长沙赢球才叫福地</a></li>
						<li><a style="color: red;">19:35直播12强赛 国足VS韩国 转折还是出局?</a></li>
					</ul>
					<ul>
						<li><a>再传不利!长沙降雨国足多将患感冒 郑智鼻音颇重</a></li>
						<li><a>国足预计首发:主场抢攻志夺三分 张玉宁冲锋陷阵</a></li>
						<li><a>国足抗韩历史胜率仅5.9% 大战一触即发命运几何</a></li>
						<li><a>国足抗韩攻略或割爱张玉宁 替补充当搏命武器？</a></li>
						<li><a>亚足联发国足战韩国23人名单:黄博文于海落选</a></li>
					</ul>
					<ul>
						<li><a>谁能站出来结束国足球荒 福地抗韩要全力死磕</a></li>
						<li><a>恒大辟谣斯帅离任传闻:只是请假回去看一下家人</a></li>
						<li><a>观点:里皮V韩主帅是狮子斗绵羊 权威不可动摇</a></li>
						<li><a>贵州美女董事长:已经嫁给了足球 盼智诚永留中超</a></li>
						<li><a>韩国队23人号码公布:孙兴慜7号 洪正好身披15号</a></li>
					</ul>
					<ul>
						<li><a>12强赛374分钟进球荒!国足未获赔率示好或战平</a></li>
						<li><a>韩国解说:客场气氛不是问题 里皮带来精神上改变</a></li>
						<li><a>老总回应恒大向上港推销张琳芃传闻 将开建主场</a></li>
						<li><a>张贤秀直言踢中超不影响水平 主帅:明天会很艰难</a></li>
						<li><a>上港老总谈2将去向 三手段解决年轻球员分流问题</a></li>
					</ul>
				</div>
				<div class="sub_pic">
					<div style="position: relative;">
						<a><img src="images/topic/${param.id}/12.jpg" /><span
							style="position: absolute; left: 0px; top: 82px; width: 227px; background: url('images/background.png'); text-align: center; color: white;">里皮计划国足要赢韩国
								平伊朗</span></a>
					</div>
					<div style="position: relative;">
						<a><img src="images/topic/${param.id}/13.jpg" /><span
							style="position: absolute; left: 0px; top: 82px; width: 227px; background: url('images/background.png'); text-align: center; color: white;">中韩四番战轮国足登场
								别拖中超后腿</span></a>
					</div>
				</div>
				<div
					style="border-top: 3px solid red; margin-right: 50px; margin-left: 60px; margin-top: 50px; padding-top: 7px;"
					class="sub_ttl">
					<span style="font-size: 30px; color: gray;" class="big_sub">篮球</span>
					<span class="small_sub">NBA</span><span class="small_sub">中国男篮</span><span
						class="small_sub">欧文</span><span
						style="color: black; margin-left: 30px;">科比退役</span>
				</div>
				<!--  文字框 -->
				<div class="sub_tpc">
					<div style="display:inline-block; position: relative;">
						<a><img style="width: 270px; height: 100px; margin-right: 30px; margin-top: -100px;" src="images/topic/${param.id}/9.jpg" /><span
							style="position: absolute; left: 0px; top: -19px; width: 270px; background: url('images/background.png'); text-align: center; color: white;">姚明揭晓2019年中国篮球世界杯会徽</span></a>
					</div>
					<ul>
						<li><a>再传不利!长沙降雨国足多将患感冒 郑智鼻音颇重</a></li>
						<li><a>国足预计首发:主场抢攻志夺三分 张玉宁冲锋陷阵</a></li>
						<li><a>国足抗韩历史胜率仅5.9% 大战一触即发命运几何</a></li>
						<li><a>国足抗韩攻略或割爱张玉宁 替补充当搏命武器？</a></li>
						<li><a>亚足联发国足战韩国23人名单:黄博文于海落选</a></li>
					</ul>
					<ul>
						<li><a>再传不利!长沙降雨国足多将患感冒 郑智鼻音颇重</a></li>
						<li><a>国足预计首发:主场抢攻志夺三分 张玉宁冲锋陷阵</a></li>
						<li><a>国足抗韩历史胜率仅5.9% 大战一触即发命运几何</a></li>
						<li><a>国足抗韩攻略或割爱张玉宁 替补充当搏命武器？</a></li>
						<li><a>亚足联发国足战韩国23人名单:黄博文于海落选</a></li>
					</ul>
					<ul>
						<li><a>再传不利!长沙降雨国足多将患感冒 郑智鼻音颇重</a></li>
						<li><a>国足预计首发:主场抢攻志夺三分 张玉宁冲锋陷阵</a></li>
						<li><a>国足抗韩历史胜率仅5.9% 大战一触即发命运几何</a></li>
						<li><a>国足抗韩攻略或割爱张玉宁 替补充当搏命武器？</a></li>
						<li><a>亚足联发国足战韩国23人名单:黄博文于海落选</a></li>
					</ul>
				</div>
				<div class="sub_pic">
					<div style="position: relative;">
						<a><img src="images/topic/${param.id}/14.jpg" /><span
							style="position: absolute; left: 0px; top: 82px; width: 227px; background: url('images/background.png'); text-align: center; color: white;">谁说广东是骗纸，他们实力总是最强</span></a>
					</div>
					<div style="position: relative;">
						<a><img src="images/topic/${param.id}/15.jpg" /><span
							style="position: absolute; left: 0px; top: 82px; width: 227px; background: url('images/background.png'); text-align: center; color: white;">女团现场献唱助阵半决赛</span></a>
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
						url : "topic/show",
						data : {},
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
