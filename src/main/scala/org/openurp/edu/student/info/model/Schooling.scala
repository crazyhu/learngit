package org.openurp.edu.student.info.model

import org.beangle.data.model.bean.LongIdBean

/**
 * @author King Sun
 */
class Schooling extends LongIdBean {
  var code: String = _
  var name: String = _
  var xuefei: String = _
  var zhusufei: String = _
  var baoxianfei: String = _
  var total: String = _
  var paytype: Paytype = _
  var paystate: Paystate = _
  var invoice: String = _
  var time: java.sql.Date = _
}