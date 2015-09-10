package org.openurp.edu.student.info.web.action

import org.beangle.data.jpa.dao.OqlBuilder
import org.beangle.data.model.dao.EntityDao
import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.webmvc.api.view.View
import org.openurp.edu.student.info.model.User

/**
 * @author King Sun
 */
class LoginAction extends ActionSupport {

  var entityDao: EntityDao = _

  def index(): String = {
    forward()
  }

  def login(): View = {
    val code = get("username").orNull
    val password = get("password").orNull
    val builder = OqlBuilder.from(classOf[User], "u").where("u.code = :code and u.password = :password", code, password)
    val users = entityDao.search(builder)
    if (users.isEmpty) {
      redirect(to(classOf[LoginAction], "index"), "用户名或者密码错误！")
    } else {
      request.getSession.setAttribute("code", code)
      redirect(to(classOf[HomeAction], "index"), "")
    }
  }
  def logout(): View = {

    request.getSession.removeAttribute("code")
    redirect(to(this, "index"), "")
  }
}