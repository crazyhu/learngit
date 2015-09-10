package org.openurp.edu.student.info.model

import org.beangle.data.model.bean.LongIdBean

/**
 * @author King Sun
 */
class User extends LongIdBean {
  var code: String = _
  var username: String = _
  var password: String = _
  var userstate: Userstate = _
}