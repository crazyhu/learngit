package org.openurp.edu.student.info.model

import org.beangle.data.model.bean.LongIdBean

/**
 * @author King Sun
 */
class Exchange extends LongIdBean {
  var code: String = _
  var name: String = _
  var gender: Gender = _
  var birthday: java.sql.Date = _
  var college: String = _
  var major: String = _
  var email: String = _
  var tel: String = _
  var fgnschool: String = _
  var outtime: String = _
  var stdtypes: Stdtypes = _
  var supported: String = _
  var notes: String = _

}