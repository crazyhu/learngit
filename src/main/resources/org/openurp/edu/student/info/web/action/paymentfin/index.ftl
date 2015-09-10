[@b.head/]
[@b.toolbar title="学生交费信息查询"]
[/@]
[@b.form name="paymetform" action="!search" target="payment_list"] 
  <table width="50%" class="table">
    <tr>
    <td><input type="text" name="schooling.code" class="form-control" placeholder="学号"></td>
    <td><input type="text" name="schooling.name" class="form-control" placeholder="姓名"></td>
    <td><input type="text" name="schooling.paytype.name" class="form-control" placeholder="学费类型"></td>
    <td><input type="text" name="schooling.paystate.name" class="form-control" placeholder="交费状态"></td>
    <td><input type="text" name="schooling.invoice" class="form-control" placeholder="发票号"></td>
    <td><input type="text" name="schooling.time" class="form-control" placeholder="交费时间"></td>
    <td>[@b.submit value="查询" class="btn btn-default"/]</td>
    </tr>
  </table>
[/@]
[@b.div href="!search" id="payment_list"/]
[@b.foot/]