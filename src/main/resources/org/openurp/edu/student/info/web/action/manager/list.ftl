[@b.head/]

[@b.grid items=students var="student" caption=caption style="table-layout:fixed"]
  [@b.gridbar]
	   bar.addItem("添加",action.add());
	   bar.addItem("修改",action.edit());
	   bar.addItem("删除",action.remove());
	   bar.addItem("导出",action.exportData("code:学号,name:姓名"));
  [/@]
  [@b.row]
    [@b.boxcol name="student.id"/]
    [@b.col title="序号" width="2%"] ${student_index+1}[/@]
    [@b.col title="学号"  width="5%" property="code" /]
    [@b.col title="姓名"  width="5%" property="name" /]
    [@b.col title="性别"  width="2%" property="gender.name" /]
    [@b.col title="国籍"  width="5%" property="nationality" /]
    [@b.col title="护照号"  width="5%" property="passportNo" /]
    [@b.col title="出生日期"  width="5%" property="birthday" /]
    [@b.col title="专业"  width="5%" property="major" /]
    [@b.col title="奖学金生"  width="2%" property="scholarship.name" /]
    [@b.col title="签证有效期"  width="5%" property="visadate" /]
    [@b.col title="联系电话"  width="5%" property="tel" /]   
    [@b.col title="邮箱"  width="8%" property="email" /]
    [@b.col title="联系地址"  width="10%" property="address" /]
    [@b.col title="学籍号"  width="5%" property="stdNo" /]
    [@b.col title="班级"  width="5%" property="classes" /]
    [@b.col title="房东电话"  width="5%" property="landlord" /]
    [@b.col title="学生类别"  width="3%" property="stdtype.name" /]
    [@b.col title="报到状态"  width="3%" property="checkinstate.name" /]
    [@b.col title="报到时间"  width="5%" property="checkinDate" /]
    [@b.col title="迟到次数"  width="2%" property="latetimes" /]
    [@b.col title="旷课次数"  width="2%" property="skiptimes" /]
    [@b.col title="备注"  width="10%" property="notes" /]
  [/@]
[/@]
[@b.foot/]