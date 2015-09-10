[@b.head/]
[@b.toolbar title="新增、修改学生交费信息"]
	bar.addBack();
[/@]

[@b.form action="!save" name="paymentForm" theme="list"]
   [@b.textfield name="schooling.code" label="学号" value=(schooling.code)! check="maxLength(100)" required="true" /]
   [@b.textfield name="schooling.name" label="姓名" value=(schooling.name)! check="maxLength(100)" required="true" /]
   [@b.textfield name="schooling.xuefei" label="学费" value=(schooling.xuefei)! check="maxLength(100)" required="true"/]
   [@b.textfield name="schooling.zhusufei" label="住宿费" value=(schooling.zhusufei)! check="maxLength(100)" required="false" /]
   [@b.textfield name="schooling.baoxianfei" label="保险费" value=(schooling.baoxianfei)! check="maxLength(100)" required="false" /]
   [@b.textfield name="schooling.total" label="总计" value=(schooling.total)! check="maxLength(100)" required="false" style="color: red;"/]
   [@b.select name="schooling.paytype.id" label="学费类型" value=(schooling.paytype)!  required="true" items=paytypes/]
   [@b.select name="schooling.paystate.id" label="交费状态" value=(schooling.paystate)!  required="true" items=paystates disabled=true style="color: gray;"/]
   [@b.textfield name="schooling.invoice" label="发票号" value=(schooling.invoice)! check="maxLength(100)" required="false" disabled=true style="color: gray;"/]
   [@b.datepicker name="schooling.time" label="交费日期" value=(schooling.time)! required="true"/]
   
[@b.formfoot]

[@b.submit value="保存" class="btn btn-default"/]
    <input type="button" class="btn btn-default" value="保存并打印"/>
	<input type="hidden" name="schooling.id" value="${(schooling.id)!}"/>
[/@]

[/@]
[@b.foot/]