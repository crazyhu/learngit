[@b.head/]
[#include "../nav.ftl"/]
<div class="container-fluid">
  <div class="row">
   <div class="col-md-2">
     [@b.navlist class="nav-pills nav-stacked"]
       [@b.navitem active=true href="manager-ruan" target="action_content"]学生信息管理[/@]
       [@b.navitem active=true href="payment" target="action_content"]学生交费管理[/@]
     [/@]
   </div>
   [@b.div id="action_content" class="col-md-10" href="welcome"/]
  </div>
</div>
[@b.foot/]