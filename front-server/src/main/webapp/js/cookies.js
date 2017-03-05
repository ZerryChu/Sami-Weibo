
function show_label_historyList() {

}

function save_cookies(name, value) {
	var Days = 30;
	var exp = new Date();
	exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 12);
	document.cookie = name + "=" + escape(value) + ";expires="
			+ exp.toGMTString();
}

function load_cookiesByName(name) {
	var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
	if (arr = document.cookie.match(reg))
		return unescape(arr[2]);
	else
		return null;
}

/*
function load_allCookies() {
	var aCookie = document.cookie.split(";");
	var re = '';
	for (var i = 0; i < aCookie.length; i++) {
		var aCrumb = aCookie[i].split("=");
		// aCrumb[0]
		// aCrumb[1]
	}
}*/

function remove_cookies(name) {
	var exp = new Date();
	exp.setTime(exp.getTime() - 1);
	var cval = load_cookiesByName(name);
	if (cval != null)
		document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
}