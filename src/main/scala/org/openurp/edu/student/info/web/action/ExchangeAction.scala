package org.openurp.edu.student.info.web.action

import org.beangle.data.jpa.dao.OqlBuilder
import org.beangle.webmvc.api.view.View
import org.beangle.webmvc.entity.action.RestfulAction
import org.openurp.edu.student.info.model.Checkinstate
import org.openurp.edu.student.info.model.Gender
import org.openurp.edu.student.info.model.Stdtype
import org.openurp.edu.student.info.model.Student
import org.openurp.edu.student.info.model.User
import org.openurp.edu.student.info.model.Scholarship
import org.openurp.edu.student.info.model.Stdtypes
import org.openurp.edu.student.info.model.Exchange

/**
 * @author King Sun
 */
class ExchangeAction extends RestfulAction[Exchange] {

  override protected def editSetting(entity: Exchange): Unit = {
    put("genders", entityDao.getAll(classOf[Gender]))
    put("stdtypes", entityDao.getAll(classOf[Stdtypes]))
  }

}