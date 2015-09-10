package org.openurp.edu.student.info.model

import org.beangle.data.model.bean.LongIdBean

/**
 * @author King Sun
 */
class Student extends LongIdBean {
  var code: String = _
  var name: String = _
  var gender: Gender = _
  var nationality: String = _
  var passportNo: String = _
  var birthday: java.sql.Date = _
  var major: String = _
  var scholarship: Scholarship = _
  var visadate: java.sql.Date = _
  var tel: String = _
  var email: String = _
  var address: String = _
  var stdNo: String = _
  var classes: String = _
  var landlord: String = _
  var stdtype: Stdtype = _
  var checkinstate: Checkinstate = _
  var checkinDate: java.sql.Date = _
  var latetimes: String = _
  var skiptimes: String = _
  var notes: String = _

}