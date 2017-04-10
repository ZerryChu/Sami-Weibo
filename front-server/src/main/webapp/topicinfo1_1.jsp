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
.lbl_p {
	padding-bottom: 50px;
	border-bottom: 2px solid gray;
}

.lbl_p a {
	cursor: pointer;
	margin-left: 20px;
	color: black;
	font-size: 20px;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
}

.msg_emotion, .cmt_emotion {
	background: url(old/face/icon.gif) no-repeat 2px 2px;
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 3px;
	cursor: pointer
}

.msg_emotion:hover, .cmt_emotion:hover {
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

#msg_page li a {
	border: 0px;
	background-color: #f5f5f5;
	margin-left: 30px;
}

.share_ul {
	display: inline-block;
	list-style: none;
}

.share_ul li {
	float: left;
	margin-left: 10px;
}

#list li {
	font-size: 17px;
	margin-top: 10px;
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
						<div id="noticelist" class="blog-wrapper">
							<div class="blog-list">
								<div class="blog-header clearfix m-bottom-md">
									<div class="blog-date">
										27<br />
										<div class="blog-month">March</div>
									</div>

									<div class="blog-title">
										<div style="color: black; font-weight: bold; font-size: 25px;"
											class="text-upper">3分碰瓷数哈登一人完爆29队 概率超常人10倍</div>

										<div class="text-muted font-12">
											By <a href="#">体坛+</a> in <a href="#">新浪微博</a> <span
												class="m-left-xs m-right-xs">|</span> <span><i
												id="msg_sum" class="fa fa-comments"></i> <sum>32</sum> 条相关微博</span>
										</div>
									</div>
								</div>
								<!-- ./blog-header -->

								<img style="margin-left: 40px;"
									src="images/topic/1/1/harden.jpg" alt="">
								<p style="text-align: center; color: black;">登哥的造犯规技术炉火纯青</p>
								<p class="m-top-lg">
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp在NBA比赛中，当一名球员在三分线外做出投篮动作时，突然裁判哨声响起——防守犯规，进攻球员罚篮三次！
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不出意外的话，这等于进攻方可以白捡三分，而防守方往往会非常沮丧。而对裁判而言，这也是份挑战。他们会在之后的比赛回放看清楚，这到底是一次真正的犯规，还是进攻球员所耍的花招？
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp哈登已经成为裁判眼中最头痛的球员。本月早些时候，爵士以七分之优击败火箭。比赛仅剩一分钟时，爵士球员陷入犯规麻烦中。当裁判的哨声再次响起时，乔·约翰逊充满憎恶地举起右手，鲁迪·戈伯特难以置信地摇了摇头。吃到犯规的罗德尼·胡德急于找裁判解释，而乔·英格尔斯则无奈地摊开手掌，对这种体毛级接触也能吃到犯规感到困惑。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp这是当晚爵士球员在哈登身上吃到的第四次三分投篮犯规，虽然听起来难以置信，但这并不是哈登本赛季第一次这么做了。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp哈登一向以擅长制造犯规闻名，但如今他在三分线外把这一艺术提升到一个新高度。前两季，哈登制造的三分投篮犯规数分别为27次和46次，而本赛季在火箭还有11场常规赛未打的情况下，这一数据已攀升到108次。
									<br /> <br />
								</p>
								<img style="margin-left: 50px;" src="images/topic/1/1/data.jpg"
									alt="">
								<p class="m-top-lg">
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp哈登有多种方法可以让裁判吹响哨子。他不像贾马尔·克劳福德，后者制造的很多三分投篮犯规都是实打实的，但哈登似乎从一开始就有意把身体挂在防守者身上。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp哈登甚至找到了让对手上当的秘诀。他会等着防守人做出动作，然后举起双臂做出投篮动作，在裁判看来，防守球员好像真的犯规了。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp新年那天，霍纳塞克在赛后对尼克斯输给火箭表示了不
									满，他还说尼克斯球员要在外线成功防守哈登几乎是不可能的，因为他总有办法骗到裁判。“他用右手运球，却用左胳膊和你发生身体接触。”霍纳塞克说，那晚哈
									登独得53分、16个篮板和17次助攻，并多次在三分投篮时造犯规。“在我看来，那就是一次进攻犯规。但他的速度太快了，你很难看清楚。”
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp在另一方面，他也做得非常棒：哈登在运球时突然来个急停再出手，他的这项急刹车技能简直就是世界级的，对手往往跟不上他的节奏，躲闪不及造成犯规。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp“作为对手，我不认可这种球风。”卡梅隆·安东尼说。“但作为球迷，我会很欣赏。因为作为一名进攻球员，总会想些小花招令球队受益，这无可厚非，而他也找到了适合自己的方式。”
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp那么NBA是怎么看待这件事的呢？几年前，他们就已公开表示不赞同这种打球方式。但一位联盟发言人说，针对一名球员公开发表评论，是违反联盟规定的。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp事实上，哈登并不认为自己在这方面有优势，也拒绝道歉。他只是说当有球员跳投时，如果防守人和他有身体接触就应吃到犯规，这和篮下的激烈碰撞是一个道理。“这就是一个犯规。”哈登说。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不过，有时哈登会滥用这个套路，但结果适得其反——在胡乱把球扔出后，虽然造成了身体接触，裁判却不予理睬，这等于浪费了一次进攻机会。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp但通常情况下，这种冒险对哈登和火箭而言还是非常值得的。他们新近得到的路易斯·威廉姆斯，正是NBA造三分投篮犯规第二多的球员。有记者问火箭总经理莫雷，球队拥有两位造犯规高手的阵容配置是否合理时，他说在交易前火箭管理层就已经注意到威廉姆斯有这份特别的能力，但这并不是他们从湖人交易到他的主要原因。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp“我们知道这两人都是非常好用的得分机器，通常很难防守。对手很清楚，只有通过强硬的身体接触才能加以限制，但这往往给了他们更多造犯规的机会。”莫雷说。“也就是说，我们更关注他们的整体进攻效率，而不是他们在三分线外到底造了多少犯规。”
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp一旦季后赛开打，NBA各队会尽力阻止哈登使用这一技巧，但这可能收不到什么效果。上赛季季后赛，哈登总共42次三分出手，就制造了五次三分投篮犯规，而在对勇士的系列赛中，他在一场比赛中就三次得手。
									<br /> <br />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp火箭将是今年西部季后赛一支非常危险的球队，如何对付哈登三分投篮时纯熟的造犯规技巧？对手和裁判都会为此非常头痛。
									<br /> <br />
								</p>
								<p
									style="display: inline-block; font-weight: bold; color: black;">（体坛+撰稿：王明琛）</p>
								<div style="display: inline-block; float: right;"
									class="m-top-md">
									<a href="single_post.html" class="btn btn-danger text-upper">Read
										More</a>
								</div>
								<!--  label  -->
								<p class="lbl_p">
									标签：<a href="">篮球</a><a href="">NBA</a><a href="">哈登</a>
								</p>
								<div>
									分享 :
									<ul class="share_ul">
										<li><img src="images/label1.png" /></li>
										<li><img src="images/label2.png" /></li>
										<li><img src="images/label3.png" /></li>
									</ul>
									<span style="float: right;"><img src="images/label4.png" />
										微博 : <span id="weibo_sum"> 322</span></span>
								</div>
							</div>

							<!-- ./blog-list -->
						</div>
						<!-- ./blog-wrapper -->
						<div class="timeline-wrapper clearfix">
							<div class="timeline-row clearfix alt">
								<div class="timeline-item">
									<div class="timeline-icon bg-info">
										<i class="fa fa-pencil"></i>
									</div>
									<!-- ./timeline-icon -->
									<div class="timeline-item-inner">
										<div class="timeline-body">
											<div class="timeline-avatar">
												<img src="images/profile/${ param.username }.jpg" alt=""
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
																placeholder="标签...多个标签用#隔开" value="篮球#NBA#哈登"> <span
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
							</div>
							<div id="receive_msg">
								
							</div>
						</div>
						<div style="margin-left: 38%; background-color: #f5f5f5;">
							<ul id="msg_page" class="pagination vertical-middle">
								<li id="opt1"><a href="#"><i
										class="fa fa-step-backward"></i></a></li>
								<li id="opt2"><a href="#"><i
										class="fa fa-caret-left large"></i></a></li>
								<li id="opt3"><a href="#"><i
										class="fa fa-caret-right large"></i></a></li>
								<li id="opt4" class="disabled"><a href="#"><i
										class="fa fa-step-forward"></i></a></li>
							</ul>
						</div>
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

						<h4 style="color: black; font-weight: bold; font-size: 24px;">推荐阅读</h4>
						<ul class="popular-blog-post">
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="images/topic/1/1/1.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">布克成最年轻70分先生</a>
									<div class="text-muted m-top-sm">March 24, 2017</div>
								</div>
							</li>
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="images/topic/1/1/2.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">[常规赛]骑士112-105黄蜂</a>
									<div class="text-muted m-top-sm">March 25, 2017</div>
								</div>
							</li>
							<li class="clearfix">
								<div class="img-wrapper clearfix">
									<img src="images/topic/1/1/3.jpg" alt="">
								</div>
								<div class="popular-blog-detail">
									<a href="#" class="h5">全运预赛马龙率北京保持不败 刘诗雯助广东反弹</a>
									<div class="text-muted m-top-sm">March 25, 2017</div>
								</div>
							</li>
						</ul>

						<hr />

						<h4 style="color: black; font-weight: bold; font-size: 24px;">话题排名</h4>

						<ul id="list" class="blog-sidebar-list">
							<li><span style="color: red; font-weight: bold;">1</span> <a
								style="display: inline;" href="#">NBA爆了!20岁超新星砍下70+</a></li>
							<li><span style="color: red; font-weight: bold;">2</span> <a
								style="display: inline;" href="#">伊朗主帅:里皮令国足发生质变</a></li>
							<li><span style="color: gray; font-weight: bold;">3</span> <a
								style="display: inline;" href="#">热身赛-胡尔克埃神破门韦世豪头槌</a></li>
							<li><span style="color: gray; font-weight: bold;">4</span> <a
								style="display: inline;" href="#">中韩之战引爆社交媒体</a></li>
							<li><span style="color: gray; font-weight: bold;">5</span> <a
								style="display: inline;" href="#">特鲁西埃：里皮果断变阵制胜</a></li>
							<li><span style="color: gray; font-weight: bold;">6</span> <a
								style="display: inline;" href="#">新核！西班牙哈维接班人上位</a></li>
						</ul>

						<hr />

						<h4 style="color: black; font-weight: bold; font-size: 24px;">话题范围</h4>

						<ul class="blog-sidebar-list">
							<li><a href="#">October 2016</a></li>
							<li><a href="#">November 2016</a></li>
							<li><a href="#">December 2016</a></li>
							<li><a href="#">January 2017</a></li>
							<li><a href="#">February 2017</a></li>
							<li><a href="#">March 2017</a></li>
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

	<!--  /ajax  -->
	<script src="ajax/message.js" type="text/javascript"></script>

	<!--  表情包  -->
	<script src="old/plugins/jquery.qqFace.js" type="text/javascript"></script>

	<script src="old/plugins/timeago.js" type="text/javascript"></script>

	<script src="old/plugins/jquery.query-2.1.7.js" type="text/javascript"></script>

	<script src="js/login.js" type="text/javascript"></script>

	<script type="text/javascript">
		//isLogin();

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

		// pageNum
		var pageNum = $.query.get("page");

		if (pageNum == undefined || pageNum == "") {
			pageNum = 1;
			$("#opt1").attr("class", "disabled");
			$("#opt2").attr("class", "disabled");
		}
		$("#opt2 a").attr(
				"href",
				"labelinfo1_1.jsp?username=" + $.query.get("username")
						+ "&userToken=" + $.query.get("userToken") + "&page="
						+ (parseInt(pageNum, 10) - 1));
		$("#opt3 a").attr(
				"href",
				"labelinfo1_1.jsp?username=" + $.query.get("username")
						+ "&userToken=" + $.query.get("userToken") + "&page="
						+ (parseInt(pageNum, 10) + 1));

		show_msgByTopic("7#120#123", pageNum);

		function show_msgByTopic(id_str, pageNumber) {
			$
					.ajax({
						type : "post",
						url : "message/show_messagesByLabelId",
						data : {
							username : $.query.get("username"),
							label_id : id_str,
							page : pageNum
						// 设计分页
						},
						dataType : "json",
						success : function(data) {
							$
									.each(
											data,
											function() {
												var i = 0;
												$("#receive_msg").empty();
												while (data.returndata != undefined) {

													$(".fa-comments sum")
															.text(
																	data.returndata.sum);
													$("#weibo_sum")
															.text(
																	data.returndata.sum);
													var return_content = replace_em(data.returndata.messages[i].content);

													var message = "<div id=\""
											+ data.returndata.messages[i].id
											+ "\" class=\"timeline-row alt\"><div class=\"timeline-item\"><div class=\"timeline-icon\"><i class=\"fa fa-comment\"></i></div><div class=\"timeline-item-inner\"><div class=\"timeline-body\"><div class=\"timeline-avatar\"><img src=\"images/profile/"
											+ data.returndata.messages[i].author.username
											+ ".jpg\" alt=\"\" class=\"img-circle\"></div><div class=\"timeline-content\"><div class=\"font-semi-bold\"><a href=\"#\">"
															+ data.returndata.messages[i].author.nickname
															+ "</a></div><small class=\"block text-muted m-bottom-xs\">"
															+ data.returndata.messages[i].create_time
															+ "</small>"
															+ return_content;

													if (data.returndata.messages[i].pic != undefined
															&& data.returndata.messages[i].pic != "") {
														message += "<img src=\"message/"
												+ data.returndata.messages[i].pic
												+ ".jpg\" alt=\"\" style=\"widht: 100px; height: 100px;\">";
													}

													message += "</div><div class=\"seperate-bar bg-grey font-12 m-top-md\"><small class=\"inline-block m-right-sm\"><i class=\"fa fa-comments\"></i><span id=\"comment"
											+ data.returndata.messages[i].id
											+ "\">"
															+ data.returndata.messages[i].comment_times
															+ "</span> 评论</small> <small class=\"inline-block m-right-sm\"><i class=\"fa fa-heart\"></i><span id=\"support"
											+ data.returndata.messages[i].id
											+ "\">"
															+ data.returndata.messages[i].support_times
															+ "</span> 点赞</small> <small class=\"inline-block m-right-sm\"><i style=\"cursor: pointer;\" class=\"fa fa-share\"></i><span>"
															// 分享
															+ "n</span> 分享</small> <small class=\"inline-block m-right-sm\"><i class=\"fa fa-tags\"></i>";

													var j = 0;
													while (data.returndata.messages[i].labels[j] != undefined) {
														message += "<a style=\"text-decoration:none;\" href=\"labelinfo.jsp?username="
																+ $.query
																		.get("username")
																+ "&userToken="
																+ $.query
																		.get("userToken")
																+ "&id="
																+ data.returndata.messages[i].labels[j].id
																+ "&flag=1\">"
																+ data.returndata.messages[i].labels[j].name
																+ "</a>&nbsp;&nbsp;";
														j++;
													}
													message += "</small></div><div class=\"social-reply-section clearfix\"><img src=\"images/profile/"
															+ $.query
																	.get("username")
															+ ".jpg\" alt=\"\"><div class=\"input-wrapper\"><input type=\"text\" id=\"comarea_"
											+ data.returndata.messages[i].id
											+ "\"class=\"form-control\" placeholder=\"Write a comment...\"><span id=\"cmt_emotion"
											+ data.returndata.messages[i].id
											+ "\" class=\"cmt_emotion\"></span><input style=\"float: right;\" value=\"提交\" type=\"button\" onclick=\"send_comment("
															+ data.returndata.messages[i].id
															+ ")\"><div class=\"input-icon-link\"><a href=\"#\" class=\"text-normal\"></a></div></div></div><ul id=\"cmtList_"
											+ data.returndata.messages[i].id
											+ "\" class=\"social-comment-list m-top-md\">";

													message += "</ul><div class=\"pagination-row clearfix m-bottom-md\" style=\"margin-top: 10px; margin-bottom: 0px;\"><div class=\"pull-right pull-left-sm\"><div class=\"inline-block vertical-middle m-right-xs\">Page 1 </div><ul class=\"pagination vertical-middle\" style=\"margin: 0px;\"><li class=\"disabled\"><a href=\"#\"><i class=\"fa fa-step-backward\"></i></a></li><li class=\"disabled\"><a href=\"#\"><i class=\"fa fa-caret-left large\"></i></a></li><li><a href=\"#\"><i class=\"fa fa-caret-right large\"></i></a></li><li><a href=\"#\"><i class=\"fa fa-step-forward\"></i></a></li></ul></div></div></div></div></div></div>";

													$("#receive_msg").append(
															message);

													// 显示第一页评论
													show_comments(
															data.returndata.messages[i].id,
															1);
													judgeIfSupport(
															data.returndata.messages[i].id,
															data.returndata.messages[i].supported);

													var textarea = "#comarea_"
															+ data.returndata.messages[i].id;
													var emotion = '#cmt_emotion'
															+ data.returndata.messages[i].id;
													$(emotion).qqFace({
														assign : textarea, // 给输入框赋值
														path : 'old/face/' // 表情图片存放的路径
													});
													i++;
												}
											});
							// $(".timeago").timeago();
							// $(".msg_pic").bigic();
						}
					});
		}
	</script>
</body>
</html>
