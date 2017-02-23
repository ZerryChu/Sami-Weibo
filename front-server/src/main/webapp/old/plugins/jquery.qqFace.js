/////////////      表情包代码解析        /////////////////////////////////////////////////////////////

function replace_em(str) {
	str = str.replace(/\</g, '<；');
	str = str.replace(/\>/g, '>；');
	str = str.replace(/\n/g, '<；br/>；');
	str = str.replace(/\[em_([0-9]*)\]/g,
			'<img style="width: 20px; height: 20px; float: none;" src="old/face/$1.gif" border="0" />');
	return str;
}
// ///////////////////////////////////////////////////////////////////////////////////////////

(function(jQuery){  
	  
	if(jQuery.browser) return;  
	  
	jQuery.browser = {};  
	jQuery.browser.mozilla = false;  
	jQuery.browser.webkit = false;  
	jQuery.browser.opera = false;  
	jQuery.browser.msie = false;  
	  
	var nAgt = navigator.userAgent;  
	jQuery.browser.name = navigator.appName;  
	jQuery.browser.fullVersion = ''+parseFloat(navigator.appVersion);  
	jQuery.browser.majorVersion = parseInt(navigator.appVersion,10);  
	var nameOffset,verOffset,ix;  
	  
	// In Opera, the true version is after "Opera" or after "Version"  
	if ((verOffset=nAgt.indexOf("Opera"))!=-1) {  
	jQuery.browser.opera = true;  
	jQuery.browser.name = "Opera";  
	jQuery.browser.fullVersion = nAgt.substring(verOffset+6);  
	if ((verOffset=nAgt.indexOf("Version"))!=-1)  
	jQuery.browser.fullVersion = nAgt.substring(verOffset+8);  
	}  
	// In MSIE, the true version is after "MSIE" in userAgent  
	else if ((verOffset=nAgt.indexOf("MSIE"))!=-1) {  
	jQuery.browser.msie = true;  
	jQuery.browser.name = "Microsoft Internet Explorer";  
	jQuery.browser.fullVersion = nAgt.substring(verOffset+5);  
	}  
	// In Chrome, the true version is after "Chrome"  
	else if ((verOffset=nAgt.indexOf("Chrome"))!=-1) {  
	jQuery.browser.webkit = true;  
	jQuery.browser.name = "Chrome";  
	jQuery.browser.fullVersion = nAgt.substring(verOffset+7);  
	}  
	// In Safari, the true version is after "Safari" or after "Version"  
	else if ((verOffset=nAgt.indexOf("Safari"))!=-1) {  
	jQuery.browser.webkit = true;  
	jQuery.browser.name = "Safari";  
	jQuery.browser.fullVersion = nAgt.substring(verOffset+7);  
	if ((verOffset=nAgt.indexOf("Version"))!=-1)  
	jQuery.browser.fullVersion = nAgt.substring(verOffset+8);  
	}  
	// In Firefox, the true version is after "Firefox"  
	else if ((verOffset=nAgt.indexOf("Firefox"))!=-1) {  
	jQuery.browser.mozilla = true;  
	jQuery.browser.name = "Firefox";  
	jQuery.browser.fullVersion = nAgt.substring(verOffset+8);  
	}  
	// In most other browsers, "name/version" is at the end of userAgent  
	else if ( (nameOffset=nAgt.lastIndexOf(' ')+1) <  
	(verOffset=nAgt.lastIndexOf('/')) )  
	{  
	jQuery.browser.name = nAgt.substring(nameOffset,verOffset);  
	jQuery.browser.fullVersion = nAgt.substring(verOffset+1);  
	if (jQuery.browser.name.toLowerCase()==jQuery.browser.name.toUpperCase()) {  
	jQuery.browser.name = navigator.appName;  
	}  
	}  
	// trim the fullVersion string at semicolon/space if present  
	if ((ix=jQuery.browser.fullVersion.indexOf(";"))!=-1)  
	jQuery.browser.fullVersion=jQuery.browser.fullVersion.substring(0,ix);  
	if ((ix=jQuery.browser.fullVersion.indexOf(" "))!=-1)  
	jQuery.browser.fullVersion=jQuery.browser.fullVersion.substring(0,ix);  
	  
	jQuery.browser.majorVersion = parseInt(''+jQuery.browser.fullVersion,10);  
	if (isNaN(jQuery.browser.majorVersion)) {  
	jQuery.browser.fullVersion = ''+parseFloat(navigator.appVersion);  
	jQuery.browser.majorVersion = parseInt(navigator.appVersion,10);  
	}  
	jQuery.browser.version = jQuery.browser.majorVersion;  
	})(jQuery);  

// QQ表情插件
(function($) {
	$.fn.qqFace = function(options) {
		var defaults = {
			id : 'facebox',
			path : 'old/face/',
			assign : '#content',
			tip : 'em_'
		};
		var option = $.extend(defaults, options);
		var assign = $(option.assign);
		var id = option.id;
		var path = option.path;
		var tip = option.tip;

		if (assign.length <= 0) {
			alert('缺少表情赋值对象。');
			return false;
		}

		$(this)
				.click(
						function(e) {
							var strFace, labFace;
							if ($('#' + id).length <= 0) {
								strFace = '<div id="'
										+ id
										+ '" style="position:absolute;display:none;z-index:1000;" class="qqFace">'
										+ '<table border="0" cellspacing="0" cellpadding="0"><tr>';
								for (var i = 1; i <= 75; i++) {
									labFace = '[' + tip + i + ']';
									strFace += '<td><img src="' + path + i
											+ '.gif" onclick="$(\''
											+ option.assign
											+ '\').setCaret();$(\''
											+ option.assign
											+ '\').insertAtCaret(\'' + labFace
											+ '\');" /></td>';
									if (i % 15 == 0)
										strFace += '</tr><tr>';
								}
								strFace += '</tr></table></div>';
							}
							$(this).parent().append(strFace);
							var offset = $(this).position();
							var top = offset.top + $(this).outerHeight();
							$('#' + id).css('top', top);
							$('#' + id).css('left', offset.left);
							$('#' + id).show();
							e.stopPropagation();
						});

		$(document).click(function() {
			$('#' + id).hide();
			$('#' + id).remove();
		});
	};

})(jQuery);

jQuery.extend({
	unselectContents : function() {
		if (window.getSelection)
			window.getSelection().removeAllRanges();
		else if (document.selection)
			document.selection.empty();
	}
});
jQuery.fn
		.extend({
			selectContents : function() {
				$(this)
						.each(
								function(i) {
									var node = this;
									var selection, range, doc, win;
									if ((doc = node.ownerDocument)
											&& (win = doc.defaultView)
											&& typeof win.getSelection != 'undefined'
											&& typeof doc.createRange != 'undefined'
											&& (selection = window
													.getSelection())
											&& typeof selection.removeAllRanges != 'undefined') {
										range = doc.createRange();
										range.selectNode(node);
										if (i == 0) {
											selection.removeAllRanges();
										}
										selection.addRange(range);
									} else if (document.body
											&& typeof document.body.createTextRange != 'undefined'
											&& (range = document.body
													.createTextRange())) {
										range.moveToElementText(node);
										range.select();
									}
								});
			},

			setCaret : function() {
				if (!$.browser.msie)
					return;
				var initSetCaret = function() {
					var textObj = $(this).get(0);
					textObj.caretPos = document.selection.createRange()
							.duplicate();
				};
				$(this).click(initSetCaret).select(initSetCaret).keyup(
						initSetCaret);
			},

			insertAtCaret : function(textFeildValue) {
				var textObj = $(this).get(0);
				if (document.all && textObj.createTextRange && textObj.caretPos) {
					var caretPos = textObj.caretPos;
					caretPos.text = caretPos.text
							.charAt(caretPos.text.length - 1) == '' ? textFeildValue
							+ ''
							: textFeildValue;
				} else if (textObj.setSelectionRange) {
					var rangeStart = textObj.selectionStart;
					var rangeEnd = textObj.selectionEnd;
					var tempStr1 = textObj.value.substring(0, rangeStart);
					var tempStr2 = textObj.value.substring(rangeEnd);
					textObj.value = tempStr1 + textFeildValue + tempStr2;
					textObj.focus();
					var len = textFeildValue.length;
					textObj.setSelectionRange(rangeStart + len, rangeStart
							+ len);
					textObj.blur();
				} else {
					textObj.value += textFeildValue;
				}
			}
		});