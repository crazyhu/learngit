package org.openurp.edu.student.info.web.action

import org.beangle.data.model.dao.EntityDao
import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.data.jpa.dao.OqlBuilder
import org.openurp.edu.student.info.model.User
import org.beangle.webmvc.api.view.View

/**
 * @author Administrator
 */
class ChangepwdAction extends ActionSupport {

  var entityDao: EntityDao = _

  def index(): String = {
    forward()
  }

  def update(): View = {
    val oldpassword = get("oldpassword").orNull
    if (oldpassword == "") redirect(to(classOf[ChangepwdAction], "index"), "原密码不能为空！")
    else {
      val password = get("password").orNull
      val newpassword = get("newpassword").orNull
      val builder = OqlBuilder.from(classOf[User], "u").where("u.code = :code", request.getSession.getAttribute("code"))
      val users = entityDao.search(builder).head
      if (users.password != oldpassword) redirect(to(classOf[ChangepwdAction], "index"), "原密码输入错误！")
      else if (password == "") redirect(to(classOf[ChangepwdAction], "index"), "新密码不能为空！")
      else if (password != newpassword) redirect(to(classOf[ChangepwdAction], "index"), "两次密码输入不相同！")
      else {
        users.password = password
        entityDao.saveOrUpdate(users)
        redirect(to(classOf[HomeAction], "index"), "")
      }
    }
  }
}