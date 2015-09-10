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
class ManagerAction extends RestfulAction[Student] {

  override protected def editSetting(entity: Student): Unit = {
    put("genders", entityDao.getAll(classOf[Gender]))
    put("scholarships", entityDao.getAll(classOf[Scholarship]))
    put("stdtypes", entityDao.getAll(classOf[Stdtype]))
    put("checkinstates", entityDao.getAll(classOf[Checkinstate]))
  }

//  override protected def saveAndRedirect(entity: Student): View = {
//    val result = super.saveAndRedirect(entity)
//    val builder = OqlBuilder.from(classOf[User], "user").where("user.code=:code", entity.code)
//    val users = entityDao.search(builder)
//    if (users.isEmpty) {
//      val user = new User()
//      user.code = entity.code
//      user.username = entity.name
//      user.password = entity.code
//      user.userstate.id = 3
//      entityDao.saveOrUpdate(user)
//    }
//    result
//  }

}