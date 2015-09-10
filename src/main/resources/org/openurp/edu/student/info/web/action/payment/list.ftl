[@b.head/]

[@b.grid items=schoolings var="schooling" caption=caption style="table-layout:fixed"]
  [@b.gridbar]
	   bar.addItem("添加",action.add());
	   bar.addItem("修改",action.edit());
	   bar.addItem("删除",action.remove());
	   bar.addItem("导出",action.exportData("code:学号,name:姓名"));
  [/@]
  [@b.row]
    [@b.boxcol name="schooling.id"/]
    [@b.col title="序号" width="2%"] ${schooling_index+1}[/@]
    [@b.col title="学号"  width="5%" property="code" /]
    [@b.col title="姓名"  width="5%" property="name" /]
    [@b.col title="学费"  width="2%" property="xuefei" /]
    [@b.col title="住宿费"  width="2%" property="zhusufei" /]
    [@b.col title="保险费"  width="2%" property="baoxianfei" /]
    [@b.col title="总计"  width="5%" property="total" /]
    [@b.col title="学费类型"  width="5%" property="paytype.name" /]
    [@b.col title="交费状态"  width="2%" property="paystate.name" /]
    [@b.col title="发票号"  width="5%" property="invoice" /]
    [@b.col title="交费时间"  width="5%" property="time" /]   
  [/@]
[/@]
[@b.foot/]