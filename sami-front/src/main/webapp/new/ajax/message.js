/**
 * 
 */
// flag ：0 缓存show 1 非缓存show
function show_messages(pageNumber, _flag) {
	$
			.ajax({
				type : "post",
				url : "message/show",
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken"),
					page : pageNumber,
					flag : _flag
				},
				dataType : "json",
				success : function(data) {
					$
							.each(
									data,
									function() {
										// $("#weibo").empty();
										var i = 0;
										while (data.returndata[i] != undefined) {
											// var return_content =
											// replace_em(data.returndata[i].content);
											// 页码
											$("#page").empty;
											$("#page").text("page" + page);
											var message = "<div id=\""
													+ data.returndata[i].id
													+ " class=\"timeline-row alt\"><div class=\"timeline-item\"><div class=\"timeline-icon\"><i class=\"fa fa-comment\"></i></div><div class=\"timeline-item-inner\"><div class=\"timeline-body\"><div class=\"timeline-avatar\"><img src=\""
													+ $.query.get("username")
													+ ".jpg\" alt=\"\" class=\"img-circle\"></div><div class=\"timeline-content\"><div class=\"font-semi-bold\"><a href=\"#\">"
													+ data.returndata[i].author.nickname
													+ "</a></div><small class=\"block text-muted m-bottom-xs\">"
													+ data.returndata[i].create_time
													+ "</small>"
													+ +data.returndata[i].content;

											if (data.returndata[i].pic != undefined
													&& data.returndata[i].pic != "") {
												message += "<img src=\""
														+ data.returndata[i].pic
														+ ".jpg\" alt=\"\" style=\"widht: 100px; height: 100px;\">";
											}

											message += "</div><div class=\"seperate-bar bg-grey font-12 m-top-md\"><small class=\"inline-block m-right-sm\"><i class=\"fa fa-comments\"></i><span id=\"comment"
													+ data.returndata[i].id
													+ "\">"
													+ data.returndata[i].comment_times
													+ " 评论</span></small> <small class=\"inline-block m-right-sm\"><i class=\"fa fa-heart\"></i><span id=\"support"
													+ data.returndata[i].id
													+ "\">"
													+ data.returndata[i].support_times
													+ " 赞</span></small> <small class=\"inline-block m-right-sm\"><i class=\"fa fa-share\"></i>"
													// 分享
													+ " n 分享</small><small class=\"inline-block m-right-sm\"><i class=\"fa fa-tags\"></i>";

											while (data.returndata[i].labels[j] != undefined) {
												message += "<a style=\"text-decoration:none;\" href=\"label.jsp?username="
														+ $.query
																.get("username")
														+ "&userToken="
														+ $.query
																.get("userToken")
														+ "&label="
														+ data.returndata[i].labels[j].id
														+ "&content="
														+ data.returndata[i].labels[j].name
														+ "\">"
														+ data.returndata[i].labels[j].name
														+ "</a>&nbsp;&nbsp;";
												j++;
											}
											// message += return_content;

											message += "</small></div><div class=\"social-reply-section clearfix\"><img src=\""
													// 处理头像路径
													+ $.query.get("username")
													+ ".jpg\" alt=\"\"><div class=\"input-wrapper\"><input type=\"text\" class=\"form-control\" placeholder=\"Write a comment...\"><div class=\"input-icon-link\"><a href=\"#\" class=\"text-normal\"></a></div></div></div><ul id=\"cmtList_"
													+ data.returndata[i].id
													+ "\" class=\"social-comment-list m-top-md\">";

											// 显示第一页评论
											show_comments(
													data.returndata[i].id, 1);
											message += "</ul><div class=\"pagination-row clearfix m-bottom-md\" style=\"margin-top: 10px; margin-bottom: 0px;\"><div class=\"pull-right pull-left-sm\"><div class=\"inline-block vertical-middle m-right-xs\">Page 1 </div><ul class=\"pagination vertical-middle\" style=\"margin: 0px;\"><li class=\"disabled\"><a href=\"#\"><i class=\"fa fa-step-backward\"></i></a></li><li class=\"disabled\"><a href=\"#\"><i class=\"fa fa-caret-left large\"></i></a></li><li><a href=\"#\"><i class=\"fa fa-caret-right large\"></i></a></li><li><a href=\"#\"><i class=\"fa fa-step-forward\"></i></a></li></ul></div></div></div></div></div>";

											$("#receive_msg").after(message);
											judgeIfSupport(
													data.returndata[i].id,
													data.returndata[i].supported);

											
											// var textarea = ".comarea_"
											// + data.returndata[i].id; 发表评论
											// var emotion = '#cmt_emotion'
											// + data.returndata[i].id;
											// $(emotion).qqFace({
											// assign : textarea, // 给输入框赋值
											// path : 'face/' // 表情图片存放的路径
											// });

											i++;
										}
									});
					// $(".timeago").timeago();
					// $(".msg_pic").bigic();
				}
			});

	/**
	 * @content 删除用户发出的微博
	 * @param message_id
	 */
	function deleteOwnmessage(message_id) {

	}

	function show_comments(message_id, pageNumber) {
		$
				.ajax({
					type : "post",
					url : "comment/show",
					async : false, // 发帖同步执行
					data : {
						id : message_id,
						page : pageNumber,
						flag : 1
					},
					dataType : "json",
					success : function(data) {
						$
								.each(
										data,
										function() {
											var i = 0;
											var target = "#cmtList_"
													+ message_id;
											$(target).empty();
											while (data.returndata[i] != undefined) {
												// var return_content =
												// replace_em(data.returndata[i].content);
												$(target)
														.append(
																"<li class=\"clearfix\"><img src=\"" 
																+ data.returndata[i].username // 不知道有没有username
																+ ".jpg\" alt=\"\"><div class=\"comment-body\"><p><a href=\"#\" class=\"comment-name\">"
																+ data.returndata[i].nickname
																+ "</a>"
																+ data.returndata[i].content
																+ "</p><small class=\"block text-muted m-bottom-xs\">"
																+ data.returndata[i].create_time
																+ "<a href=\"#\" class=\"m-left-sm m-right-sm\">Like</a><a href=\"#\" class=\"m-right-sm\">Report</a></small></div>");
																// like 写cmt_id
												i++;
											}
											// $(".timeago").timeago();
										});
					},
					error : function(data) {
						var target = "#comment_" + message_id;
						$(target).empty();

					}
				});
	}	
	
	/**
	 * @content 评论微博
	 */
	function send_comment(message_id, comment_content) {
		if (checkSubmit(2000)) {
			$.ajax({
				type : "post",
				url : "message/comment",
				async : false, // 发帖同步执行
				data : {
					username : $.query.get("username"),
					userToken : $.query.get("userToken"),
					id : message_id,
					content : comment_content,
				},
				dataType : "json",
				success : function(data) {
					$.each(data, function() {
						if (data.msg == 1) {
							var weibo = "#weibo_" + message_id;
							var num = $(weibo).find(".comment").find(".num")
									.text();
							$(weibo).find(".comment").find(".num").text(
									parseInt(num, 10) + 1); // 评论数+1
							show_comments(message_id, 1, 1);
						} else {
							// ...tell fail
							alert("fail");
						}
					});
				}
			});
		}
	}
	
	
	/**
	 * @content 判断是否可以进行点赞（一个用户对单条微博只可以点赞一次）
	 * @author zerrychu
	 * @time 2015.10.23
	 */
	function judgeIfSupport(message_id, isSupported) {
		if (isSupported == false) {
			// 可点赞
			var message = "#" + message_id;
			var zan = $(message).find(".fa fa-heart");
			zan.hide();
			zan.attr("color", "gray");			
			zan.fadeIn();
			var val = "support(" + message_id + ", 0);"; // 点赞
			$(message).find(".fa fa-heart").attr("onclick", val);
		} else {
			// 不可点赞
			var message = "#" + message_id;
			var zan = $(message).find(".fa fa-heart");
			zan.hide();
			zan.attr("color", "red");
			zan.fadeIn(); // 红色的赞
			var val = "support(" + message_id + ", 1);"; // 取消点赞
			$(message).find(".fa fa-heart").attr("onclick", val);
		}
	}

	/**
	 * 
	 * @content 点赞相关操作
	 * @param message_id
	 * @param flag
	 *            1： 取消点赞 0： 点赞
	 */
	function support(message_id, flag) {
		if (checkSubmit(500)) {
			if (flag == 1) {
				$
						.ajax({
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
									//var like_plus = $(weibo).find(".like_plus");
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
				$
						.ajax({
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
									//like_plus.css("display", "block");
									//like_plus.animate({
									//	marginTop : "-50px"
									//}, 500, function() {
									//	like_plus.css("display", "none");
									//});

									$(span).text(parseInt(num, 10) + 1); // 点赞数+1
								} else if (data.msg == 2) {
									//已点过赞
									alert("has ever supported.");
								}
							}
						});
			} // 点赞
		}
	}
}