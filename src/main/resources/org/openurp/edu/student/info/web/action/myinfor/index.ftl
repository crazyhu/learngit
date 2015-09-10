[@b.head/]
[@b.form action="!update" name="inforForm" theme="list"]
<table class="table">
<tr>
	<td>
		<label for="tel" style="font-size:14px;">&nbsp;&nbsp;Tel:&nbsp;</label>
	</td>
	<td>
		<input id="tel" name="tel"style="width:150px;" class="form-control input-sm"/>
	</td>
</tr>
<tr>
	<td>
		<label for="email" style="font-size:14px;">&nbsp;&nbsp;E-mail:&nbsp;</label>
	</td>
	<td>
		<input id="email" name="email"style="width:150px;" check="match('email').maxLength(100)" class="form-control input-sm"/>
	</td>
</tr>
<tr>
	<td>
		<label for="address" style="font-size:14px;">&nbsp;&nbsp;Address:&nbsp;</label>
	</td>
	<td>
		<input id="address" name="address"style="width:150px;" class="form-control input-sm"/>
	</td>
</tr>
<tr>
	<td>
		<label for="landlord" style="font-size:14px;">&nbsp;&nbsp;Landlord Tel:&nbsp;</label>
	</td>
	<td>
		<input id="landlord" name="landlord"style="width:150px;" class="form-control input-sm"/>
	</td>
</tr>
</table>
[@b.formfoot]
	[@b.submit value="Confirm" class="btn btn-default"/]
		<input type="hidden" name="student.code" value="${(student.code)!}"/>
    [/@]
[/@]
[@b.foot/]