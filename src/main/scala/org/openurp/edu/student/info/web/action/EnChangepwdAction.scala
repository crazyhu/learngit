package org.openurp.edu.student.info.web.action

import org.beangle.data.model.dao.EntityDao
import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.data.jpa.dao.OqlBuilder
import org.openurp.edu.student.info.model.User
import org.beangle.webmvc.entity.action.RestfulAction
import org.beangle.webmvc.api.view.View
import javax.swing.JOptionPane

/**
 * @author Administrator
 */
class EnChangepwdAction extends ActionSupport {
  
  var entityDao: EntityDao = _

  def index(): String = {
    forward()
  }

  def update(): View = {
    val oldpassword = get("oldpassword").orNull
    if (oldpassword == "") redirect(to(classOf[EnChangepwdAction], "index"), "Old password can't be empty！")
    else {
      val password = get("password").orNull
      val newpassword = get("newpassword").orNull
      val builder = OqlBuilder.from(classOf[User], "u").where("u.code = :code", request.getSession.getAttribute("code"))
      val users = entityDao.search(builder).head
      if (users.password != oldpassword) redirect(to(classOf[EnChangepwdAction], "index"), "Old password is wrong！")
      else if (password == "") redirect(to(classOf[EnChangepwdAction], "index"), "New password can't be empty！")
      else if (password != newpassword) redirect(to(classOf[EnChangepwdAction], "index"), "Twice password is not the same ！")
      else {
        users.password = password
        entityDao.saveOrUpdate(users)
        redirect(to(classOf[HomeAction], "index"), "")
      }
    }
  }

}