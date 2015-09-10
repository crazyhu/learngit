[@b.head/]

<table class="table table-bordered table-hover">
<tr class="info">
    <td>Index</td>
    <td>Code</td>
    <td>Name</td>
    <td>Total(¥)</td>
    <td>Type</td>
    <td>State</td>
    <td>Invoice Number</td>
    <td>Pay Date</td>
</tr>
[#if students?size<1]
<tr>
	<td colSpan="8" align=center>No Records</td>
<tr>
[/#if]
[#list students as student]
<tr>
    <td>${student_index+1}</td>
    <td>${(student.code)}</td>
    <td>${(student.name)}</td>
    <td>${(student.total!"")}</td>
    <td>${(student.paytype.enname)}</td>
    <td>${(student.paystate.enname)}</td>
    <td>${(student.invoice!"")}</td>
    <td>${(student.time)}</td>
</tr>
[/#list]
</table>

[@b.foot/]