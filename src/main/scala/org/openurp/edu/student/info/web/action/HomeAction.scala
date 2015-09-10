package org.openurp.edu.student.info.web.action

import org.beangle.data.model.dao.EntityDao
import org.beangle.webmvc.api.action.ActionSupport
import org.beangle.data.jpa.dao.OqlBuilder
import org.openurp.edu.student.info.model.User

/**
 * @author Administrator
 */
class HomeAction extends ActionSupport {

  var entityDao: EntityDao = _

  def index(): String = {
    val builder = OqlBuilder.from(classOf[User], "u").where("u.code = :code", request.getSession.getAttribute("code"))
    val user = entityDao.search(builder).head
    put("user", user)

    //     val resources=Set("/info/admin")
    if (user.userstate.code == 300) {
      forward("finance")
    } else if (user.userstate.code == 0) {
      forward("admin")
    } else if (user.userstate.code == 100) {
      forward("exchange")
    } else if (user.userstate.code == 1) {
      forward("managertang")
    }else if (user.userstate.code == 3) {
      forward("managerruan")
    }else if (user.userstate.code == 4) {
      forward("managerhuang")
    }else if (user.userstate.code == 5) {
      forward("managercao")
    }else if (user.userstate.code == 6) {
      forward("managerguo")
    }else {
      forward("student")
    }
  }

}