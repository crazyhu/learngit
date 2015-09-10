package org.openurp.edu.student.info.web.action

import org.beangle.webmvc.entity.action.RestfulAction
import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.data.jpa.dao.OqlBuilder
import org.openurp.edu.student.info.model.Student
import org.beangle.data.model.dao.EntityDao

/**
 * @author King Sun
 */
class StudentAction extends ActionSupport {

  var entityDao: EntityDao = _

  def index(): String = {
    val sno = get("sno", request.getSession.getAttribute("code"))
    val builder = OqlBuilder.from(classOf[Student], "s").where("s.code =:code", sno)
    put("students", entityDao.search(builder).head)
    forward()
  }
}