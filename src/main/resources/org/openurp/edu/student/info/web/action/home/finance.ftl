[@b.head/]
[#include "../nav.ftl"/]
<div class="container-fluid">
  <div class="row">
   <div class="col-md-2">
     [@b.navlist class="nav-pills nav-stacked"]
       [@b.navitem active=true href="paymentfin" target="action_content"]学生收费管理[/@]
     [/@]
   </div>
   [@b.div id="action_content" class="col-md-10" href="welcome"/]
  </div>
</div>
[@b.foot/]