[#--
[#assign total=0/]
[#list states as state]
  [#assign total=total+(state.total)/]
[/#list]
(${total})
--]

[#if states?size>0]
<div id="warning" class="alert alert-danger alert-dismissible " role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Warning!</strong> Please pay tuition fees as soon as possible !
</div>
[/#if]
<h1><td>Hello, </td><td>${std.username}</td><td> ！ </td><small>Student</small><h1>