[@b.head/]
[@b.toolbar title="学生信息查询"]
[/@]
[@b.form name="studentform" action="!search" target="student_list"] 
  <table width="50%" class="table">
    <tr>
    <td><input type="text" name="student.code" class="form-control" placeholder="学号"></td>
    <td><input type="text" name="student.name" class="form-control" placeholder="姓名"></td>
    <td><input type="text" name="student.gender.name" class="form-control" placeholder="性别"></td>
    <td><input type="text" name="student.nationality" class="form-control" placeholder="国籍"></td>
    <td><input type="text" name="student.stdtype.name" class="form-control" placeholder="学生类型"></td>
    <td><input type="text" name="student.checkinstate.name" class="form-control" placeholder="报到状态"></td>
    <td>[@b.submit value="查询" class="btn btn-default"/]</td>
    </tr>
  </table>
[/@]
[@b.div href="!search" id="student_list"/]
[@b.foot/]