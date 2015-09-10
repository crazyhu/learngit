[@b.head/]
[@b.toolbar title="新增、修改账号信息"]
	bar.addBack();
[/@]

[@b.form action="!save" name="adminForm" theme="list"]
   [@b.textfield name="user.code" label="工号" value=(user.code)! check="maxLength(100)" required="true" /]
   [@b.textfield name="user.username" label="姓名" value=(user.username)! check="maxLength(100)" required="true" /]
   [@b.textfield name="user.password" label="密码" value=(user.password)! check="maxLength(100)" required="true" /]
   [@b.select name="user.userstate.id" label="类别" value=(user.userstate)!  required="true" items=userstates/]
   [@b.formfoot]
		[@b.submit value="提交" class="btn btn-default"/]
		<input type="hidden" name="user.id" value="${(user.id)!}"/>
   [/@]
[/@]
[@b.foot/]