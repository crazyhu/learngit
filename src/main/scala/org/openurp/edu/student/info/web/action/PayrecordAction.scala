package org.openurp.edu.student.info.web.action

import org.beangle.webmvc.entity.action.RestfulAction
import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.data.jpa.dao.OqlBuilder
import org.openurp.edu.student.info.model.Schooling
import org.beangle.data.model.dao.EntityDao
import org.openurp.edu.student.info.model.Paytype
import org.openurp.edu.student.info.model.Paystate

/**
 * @author King Sun
 */
class PayrecordAction extends ActionSupport {

  var entityDao: EntityDao = _

  def index(): String = {
    val sno = get("sno", request.getSession.getAttribute("code"))
    val builder = OqlBuilder.from(classOf[Schooling], "s").where("s.code =:code", sno)
    put("students", entityDao.search(builder))
    forward()
  }
}