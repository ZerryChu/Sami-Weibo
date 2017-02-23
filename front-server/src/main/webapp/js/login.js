/**
 *  未登录跳转至登录页面
 */   
 function isLogin() {
 	if ($.query.get("username") == "" || $.query.get("userToken") == "") {
 		var forward = "window.location=\"loginWarming.html\"";
 		setTimeout(forward, 0);
 	} // 未登录
 }