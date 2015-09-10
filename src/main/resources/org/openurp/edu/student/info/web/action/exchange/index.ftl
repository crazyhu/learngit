[@b.head/]
[@b.toolbar title="学生信息查询"]
  bar.addItem("导入","alert('成功！')")
[/@]
[@b.form name="exchangeform" action="!search" target="exchange_list"] 
  <table width="50%" class="table">
    <tr>
    <td><input type="text" name="exchange.code" class="form-control" placeholder="学号"></td>
    <td><input type="text" name="exchange.name" class="form-control" placeholder="姓名"></td>
    <td><input type="text" name="exchange.gender.name" class="form-control" placeholder="性别"></td>
    <td><input type="text" name="exchange.college" class="form-control" placeholder="院系"></td>
    <td><input type="text" name="exchange.fgnschool" class="form-control" placeholder="国外院校"></td>
    <td><input type="text" name="exchange.stdtypes.name" class="form-control" placeholder="学生类型"></td>
    <td>[@b.submit value="查询" class="btn btn-default"/]</td>
    </tr>
  </table>
[/@]
[@b.div href="!search" id="exchange_list"/]
[@b.foot/]