[@b.head/]
[#include "../nav-std.ftl"/]
<div class="container-fluid">
  <div class="row">
   	<div class="col-md-2">
     	[@b.navlist class="nav-pills nav-stacked"]
       		[@b.navitem active=true href="en-changepwd" target="action_content"]Change Password[/@]
     	[/@]
  	 </div>
	 <div class="col-md-8">
 		[@b.form action="!update" name="pwdForm" theme="list"]
		<table class="table">
		<tr>
			<td>
				<label for="oldpassword" style="font-size:14px">&nbsp;&nbsp;Old Password:&nbsp;</label>
			</td>
			<td style="width:700px;">
				<input id="oldpassword" name="oldpassword" type="password" style="width:150px;" class="form-control input-sm"/>
				<input name="encodedPassword" type="hidden" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label for="password" style="font-size:14px;">&nbsp;&nbsp;New Password:&nbsp;</label>
			</td>
			<td style="width:700px;">
				<input id="password" name="password" type="password" style="width:150px;" class="form-control input-sm"/>
				<input name="encodedPassword" type="hidden" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				<label for="newpassword" style="font-size:14px;">&nbsp;&nbsp;Confirm New Password:&nbsp;</label>
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
			[@b.submit value="Confirm" class="btn btn-default"/]
			<input type="hidden" name="user.code" value="${(user.code)!}"/>
  		 	[/@]
		[/@]
	</div>
  </div>
</div>
[@b.foot/]