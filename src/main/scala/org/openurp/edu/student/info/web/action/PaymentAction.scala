package org.openurp.edu.student.info.web.action

import org.beangle.data.jpa.dao.OqlBuilder
import org.beangle.webmvc.api.view.View
import org.beangle.webmvc.entity.action.RestfulAction
import org.openurp.edu.student.info.model.Scholarship
import org.openurp.edu.student.info.model.Schooling
import org.openurp.edu.student.info.model.Paystate
import org.openurp.edu.student.info.model.Paytype

/**
 * @author King Sun
 */
class PaymentAction extends RestfulAction[Schooling] {

  override protected def editSetting(entity: Schooling): Unit = {
    put("paystates", entityDao.getAll(classOf[Paystate]))
    put("paytypes", entityDao.getAll(classOf[Paytype]))
  }
}