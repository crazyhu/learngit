[@b.head/]
[@b.toolbar title="账号管理"]
[/@]
[@b.form name="adminform" action="!search" target="admin_list"] 
  <table width="50%" class="table">
    <tr>
    <td><input type="text" name="user.code" class="form-control" placeholder="工号/学号"></td>
    <td><input type="text" name="user.username" class="form-control" placeholder="姓名"></td>
    <td>[@b.submit value="查询" class="btn btn-default"/]</td>
    </tr>
  </table>
[/@]
[@b.div href="!search" id="admin_list"/]
[@b.foot/]