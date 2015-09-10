[@b.head/]
[#include "../nav.ftl"/]
<div class="container-fluid">
  <div class="row">
   	<div class="col-md-2">
     	[@b.navlist class="nav-pills nav-stacked"]
       		[@b.navitem active=true href="en-changepwd" target="action_content"]修改密码[/@]
     	[/@]
  	 </div>
	 <div class="col-md-8">
 		[@b.form action="!update" name="pwdForm" theme="list"]
		<table class="table">
		<tr>
			<td>
				<label for="oldpassword" style="font-size:14px;">&nbsp;&nbsp;原密码:&nbsp;</label>
			</td>
			<td style="width:700px;">
				<input id="oldpassword" name="oldpassword" type="password" style="width:150px;" class="form-control input-sm"/>
				<input name="encodedPassword" type="hidden" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label for="password" style="font-size:14px;">&nbsp;&nbsp;新密码:&nbsp;</label>
			</td>
			<td style="width:700px;">
				<input id="password" name="password" type="password" style="width:150px;" class="form-control input-sm"/>
				<input name="encodedPassword" type="hidden" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label for="newpassword" style="font-size:14px;">&nbsp;&nbsp;确认新密码:&nbsp;</label>
			</td>
			<td style="width:700px;">
				<input id="newpassword" name="newpassword" type="password" style="width:150px;" class="form-control input-sm"/>
				<input name="encodedPassword" type="hidden" value=""/>
			</td>
		</tr>
		<tr>
			<td>
			</td>
			<td style="font-size:14px;color:red;">
				[@b.messages/]
			</td>
		</tr>
		</table>
 		[@b.formfoot]
			[@b.submit value="提交" class="btn btn-default"/]
			<input type="hidden" name="user.code" value="${(user.code)!}"/>
  		 	[/@]
		[/@]
	</div>
  </div>
</div>
[@b.foot/]