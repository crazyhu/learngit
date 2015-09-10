package org.openurp.edu.student.info.web.action

import org.beangle.data.jpa.dao.OqlBuilder
import org.beangle.data.model.dao.EntityDao
import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.webmvc.entity.action.RestfulAction
import org.openurp.edu.student.info.model.Schooling
import org.openurp.edu.student.info.model.Student
import org.openurp.edu.student.info.model.User

/**
 * @author King Sun
 */
class EnWelcomeAction extends ActionSupport {
  var entityDao: EntityDao = _

  def index(): String = {
    val builder = OqlBuilder.from(classOf[User], "u").where("u.code = :code", request.getSession.getAttribute("code"))
    val std = entityDao.search(builder).head
    put("std", std)
    val builder2 = OqlBuilder.from(classOf[Schooling], "u").where("u.code = :code and u.paystate.id= :state", request.getSession.getAttribute("code"), 1L)
    val state = entityDao.search(builder2)
    put("states", state)
    forward()
  }
}