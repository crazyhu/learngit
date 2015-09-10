[@b.head/]

[@b.grid items=users var="user" caption=caption style="table-layout:fixed"]
  [@b.gridbar]
	   bar.addItem("添加",action.add());
	   bar.addItem("修改",action.edit());
	   bar.addItem("删除",action.remove());
  [/@]
  [@b.row]
    [@b.boxcol name="user.id"/]
    [@b.col title="序号" width="2%"] ${user_index+1}[/@]
    [@b.col title="工号"  width="5%" property="code" /]
    [@b.col title="姓名"  width="5%" property="username" /]
    [@b.col title="密码"  width="5%" property="password" /]

  [/@]
[/@]
[@b.foot/]