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

/**
 * @author King Sun
 */
class ManagerRuanAction extends RestfulAction[Student] {

  override protected def editSetting(entity: Student): Unit = {
    put("genders", entityDao.getAll(classOf[Gender]))
    put("scholarships", entityDao.getAll(classOf[Scholarship]))
    put("stdtypes", entityDao.getAll(classOf[Stdtype]))
    put("checkinstates", entityDao.getAll(classOf[Checkinstate]))
  }

}