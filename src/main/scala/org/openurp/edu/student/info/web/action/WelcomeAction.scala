package org.openurp.edu.student.info.web.action

import org.beangle.webmvc.entity.action.RestfulAction
import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.data.jpa.dao.OqlBuilder
import org.openurp.edu.student.info.model.Student
import org.beangle.data.model.dao.EntityDao
import org.openurp.edu.student.info.model.User

/**
 * @author King Sun
 */
class WelcomeAction extends ActionSupport {
  var entityDao: EntityDao = _

  def index(): String = {
    val builder = OqlBuilder.from(classOf[User], "u").where("u.code = :code", request.getSession.getAttribute("code"))
    val manager = entityDao.search(builder).head
    put("manager", manager)
    forward()
  }
}