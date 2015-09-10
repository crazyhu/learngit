package org.openurp.edu.student.info.web.action

import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.data.model.dao.EntityDao
import org.beangle.data.jpa.dao.OqlBuilder
import org.openurp.edu.student.info.model.Student
import org.beangle.webmvc.api.view.View

/**
 * @author Administrator
 */
class MyInforAction extends ActionSupport {

  var entityDao: EntityDao = _

  def index(): String = {
    forward()
  }

  def update(): View = {
    val landlord = get("landlord").orNull
    val tel = get("tel").orNull
    val address = get("address").orNull
    val email = get("email").orNull
    val builder = OqlBuilder.from(classOf[Student], "s").where("s.code = :code", request.getSession.getAttribute("code"))
    val users = entityDao.search(builder).head
    if (tel != "") {
      users.tel = tel
    }
    if (landlord != "") {
      users.landlord = landlord
    }
    if (email != "") {
      users.email = email
    }
    if (address != "") {
      users.address = address
    }
    entityDao.saveOrUpdate(users)
    redirect(to(classOf[HomeAction], "index"), "")
  }

}