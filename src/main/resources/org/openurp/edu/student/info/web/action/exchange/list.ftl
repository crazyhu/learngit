[@b.head/]

[@b.grid items=exchanges var="exchange" caption=caption style="table-layout:fixed"]
  [@b.gridbar]
	   bar.addItem("添加",action.add());
	   bar.addItem("修改",action.edit());
	   bar.addItem("删除",action.remove());
	   bar.addItem("导出",action.exportData("code:学号,name:姓名"));
  [/@]
  [@b.row]
    [@b.boxcol name="exchange.id"/]
    [@b.col title="序号" width="2%"] ${exchange_index+1}[/@]
    [@b.col title="学号"  width="5%" property="code" /]
    [@b.col title="姓名"  width="3%" property="name" /]
    [@b.col title="性别"  width="2%" property="gender.name" /]
    [@b.col title="出生日期"  width="5%" property="birthday" /]
    [@b.col title="院系"  width="8%" property="college" /]
    [@b.col title="专业"  width="8%" property="major" /]
    [@b.col title="邮箱"  width="8%" property="email" /]
    [@b.col title="联系电话"  width="5%" property="tel" /]   
    [@b.col title="国外院校"  width="8%" property="college" /]
    [@b.col title="出国时间段"  width="10%" property="outtime" /]
    [@b.col title="学生类别"  width="3%" property="stdtypes.name" /]
    [@b.col title="资助情况"  width="5%" property="supported" /]
    [@b.col title="备注"  width="10%" property="notes" /]
  [/@]
[/@]
[@b.foot/]