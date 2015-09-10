<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
  <title></title>
  <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <meta http-equiv="pragma" content="no-cache"/>
  <meta http-equiv="cache-control" content="no-cache"/>
  <meta http-equiv="expires" content="0"/>
  <meta http-equiv="content-style-type" content="text/css"/>
  <meta http-equiv="content-script-type" content="text/javascript"/>
  <script type="text/javascript" src="${base}/static/scripts/jquery/jquery,/scripts/beangle/beangle.js"></script>
  <link id="beangle_theme_link" rel="stylesheet" href="${base}/static/themes/default/beangle-ui.css" type="text/css"/>

</head>
<body>

<link rel="stylesheet" href="${base}/static/css/login.css" />
<script type="text/javascript" src="${base}/static/scripts/css_browser_selector.js?x1"></script>
<script type="text/javascript" src="${base}/static/scripts/sha1.js"></script>

<div class="browser-hint">
	<h2>请使用IE8(或以上版本)、Firefox或Google Chrome浏览器访问本系统<br>否则可能影响功能使用</h2>
	<ul>
		<li>
			<a class="iexplorer" href="http://www.microsoft.com/windows/internet-explorer" target="_blank"></a>
		</li>
		<li>
			<a class="firefox" href="http://www.mozilla.com" target="_blank"></a>
		</li>
		<li>
			<a class="chrome" href="http://www.google.com/chrome" target="_blank"></a>
		</li>
	</ul>
</div>

<div class="logindiv">
	<div class="banner1"></div>
	<div class="banner2"></div>	
[@b.form id="loginForm" name="loginForm" action="!login" target="_top" ]
		<table class="bulletin">
			<tr>
				<td>
				</td>
			</tr>
		</table>
		<table class="logintable">
			<tr>
				<td colspan="2" style="text-align:center;color:red;">[@b.messages/]</td>
			</tr>
			<tr>
				<td><label for="username">用户名:&nbsp; Username&nbsp;</label></td>
				<td>
					<input name="username" id="username" tabindex="1" title="请输入用户名" type="text" value="" style="width:105px;"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="password">密　码:&nbsp; Password&nbsp;</label>
				</td>
				<td>
					<input id="password" name="password"  tabindex="2" type="password" style="width:105px;"/>
					<input name="encodedPassword" type="hidden" value=""/>
				</td>
			</tr>
			<tr>
				<td>
				</td>
				<td>
					
				</td>
			</tr>
			<tr>
				<td colspan="2">
					
				</td>
			</tr>
			<tr>
				<td colspan="2">
<input type="submit"  value="登录" onclick="bg.form.submit('loginForm',null,null,checkLogin);return false;" tabindex="6" name="submitBtn" class="blue-button"/>				</td>
			</tr>
		</table>
		<table class="footage">
			<tr>
				<td style="text-align:right">
				</td>
			</tr>
		</table>

[/@b.form]
</div>

<div class="foot"></div>

<script type="text/javascript">
	var form  = document.loginForm;

	function checkLogin(form){
		if(!form['username'].value){
			alert("用户名称不能为空");return false;
		}
		if(!form['password'].value){
			alert("密码不能为空");return false;
		}
    	//form['password'].value = CryptoJS.SHA1('2ef390ff-7ed7-4e5b-899c-e529fceafe38-' + form['password'].value);
		return true;
	}
	if("zh".indexOf("en")!=-1){document.getElementById('local_en').checked=true;}
	var username=beangle.cookie.get("username");
	if(null!=username){ form['username'].value=username;}
	(function(){
		// 侦测登陆页面是否被嵌套了
		if(jQuery("body > div:not(.logindiv,.foot,.browser-hint)").length) {
			window.location = "${base}/info/login?v=1";
		}
	})();
</script>
</body>
</html>