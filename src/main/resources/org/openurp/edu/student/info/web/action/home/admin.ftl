[@b.head/]
[#include "../nav-admin.ftl"/]
<div class="container-fluid">
  <div class="row">
   <div class="col-md-2">
     [@b.navlist class="nav-pills nav-stacked"]
       [@b.navitem active=true href="admin" target="action_content"]账号管理[/@]
      [/@]
   </div>
   [@b.div id="action_content" class="col-md-10" href="admin"/]
  </div>
</div>
[@b.foot/]