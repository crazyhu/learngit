[@b.head/]
[@b.toolbar title="新增、修改学生信息"]
	bar.addBack();
[/@]

[@b.form action="!save" name="studentForm" theme="list"]
   [@b.textfield name="student.code" label="学号" value=(student.code)! check="maxLength(100)" required="false" disabled=true style="color: gray;"/]
   [@b.textfield name="student.name" label="姓名" value=(student.name)! check="maxLength(100)" required="true" disabled=true style="color: gray;"/]
   [@b.select name="student.gender.id" label="性别" value=(student.gender)!  required="true" items=genders disabled=true style="color: gray;background: #F0F0F0;"/]
   [@b.textfield name="student.nationality" label="国籍" value=(student.nationality)! check="maxLength(100)" required="true" disabled=true style="color: gray;"/]
   [@b.textfield name="student.passportNo" label="护照号" value=(student.passportNo)! check="maxLength(100)" required="true" disabled=true style="color: gray;"/]
   [@b.datepicker name="student.birthday" label="出生日期" value=(student.birthday)! required="true" disabled=true style="color: gray;background: #F0F0F0;"/]
   [@b.textfield name="student.major" label="专业" value=(student.major)! check="maxLength(100)" required="true" disabled=true style="color: gray;"/]
   [@b.select name="student.scholarship.id" label="奖学金生" value=(student.scholarship)!  required="true" items=scholarships disabled=true style="color: gray;background: #F0F0F0;"/]
   [@b.datepicker name="student.visadate" label="签证有效期" value=(student.visadate)! required="false" disabled=true style="color: gray;background: #F0F0F0;"/]
   [@b.textfield name="student.tel" label="联系电话" value=(student.tel)! check="maxLength(100)" required="false" disabled=true style="color: gray;"/]
   [@b.textfield name="student.email" label="邮箱" value=(student.email)! check="match('email').maxLength(100)" required="false" disabled=true style="color: gray;"/]
   [@b.textfield name="student.address" label="联系地址" value=(student.address)! check="maxLength(100)" required="false" disabled=true style="color: gray;"/]
   [@b.textfield name="student.stdNo" label="学籍号" value=(student.stdNo)! check="maxLength(100)" required="false" disabled=true style="color: gray;"/]
   [@b.textfield name="student.classes" label="班级" value=(student.classes)! check="maxLength(100)" required="false"/]
   [@b.textfield name="student.landlord" label="房东电话" value=(student.landlord)! check="maxLength(100)" required="false"/]
   [@b.select name="student.stdtype.id" label="学生类别" value=(student.stdtype)!  required="true"  items=stdtypes disabled=true style="color: gray;background: #F0F0F0;"/]
   [@b.select name="student.checkinstate.id" label="报到状态" value=(student.checkinstate)!  required="true"  items=checkinstates disabled=true style="color: gray;background: #F0F0F0;"/]
   [@b.datepicker name="student.checkinDate" label="报到时间" value=(student.checkinDate)! /]
   [@b.textfield name="student.latetimes" label="迟到次数" value=(student.latetimes)! check="maxLength(100)" required="false"/]
   [@b.textfield name="student.skiptimes" label="旷课次数" value=(student.skiptimes)! check="maxLength(100)" required="false"/]
   [@b.textfield name="student.notes" label="备注" value=(student.notes)! check="maxLength(100)" required="false"/]
[@b.formfoot]
[@b.submit value="提交" class="btn btn-default"/]
	<input type="hidden" name="student.id" value="${(student.id)!}"/>
[/@]
[/@]
[@b.foot/]