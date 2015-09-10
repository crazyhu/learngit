[@b.head/]
[#include "../nav-std.ftl"/]
<div class="container-fluid">
  <div class="row">
   <div class="col-md-2">
     [@b.navlist class="nav-pills nav-stacked"]
       [@b.navitem active=true href="student" target="action_content"]My Information[/@]
       [@b.navitem active=true href="my-infor" target="action_content"]Change Mine[/@]
       [@b.navitem active=true href="payrecord" target="action_content"]Pay Record[/@]
     [/@]
   </div>
   [@b.div id="action_content" class="col-md-10" href="en-welcome"/]
  </div>
</div>
[@b.foot/]