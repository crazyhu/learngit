package org.openurp.edu.student.info

import org.beangle.commons.inject.bind.AbstractBindModule
import org.openurp.edu.student.info.web.action.ChangepwdAction
import org.openurp.edu.student.info.web.action.HomeAction
import org.openurp.edu.student.info.web.action.LoginAction
import org.openurp.edu.student.info.web.action.ManagerAction
import org.openurp.edu.student.info.web.action.PaymentAction
import org.openurp.edu.student.info.web.action.StudentAction
import org.openurp.edu.student.info.web.action.WelcomeAction
import org.openurp.edu.student.info.web.security.SecurityInterceptor
import org.openurp.edu.student.info.web.action.EnChangepwdAction
import org.openurp.edu.student.info.web.action.AdminAction
import org.openurp.edu.student.info.web.action.ExchangeAction
import org.openurp.edu.student.info.web.action.EnWelcomeAction
import org.openurp.edu.student.info.web.action.MyInforAction
import org.openurp.edu.student.info.web.action.PayrecordAction
import org.openurp.edu.student.info.web.action.ManagerRuanAction
import org.openurp.edu.student.info.web.action.ManagerGuoAction
import org.openurp.edu.student.info.web.action.ManagerTangAction
import org.openurp.edu.student.info.web.action.ManagerHuangAction
import org.openurp.edu.student.info.web.action.ManagerCaoAction
import org.openurp.edu.student.info.web.action.PaymentfinAction

class DefaultModule extends AbstractBindModule {

  protected def binding(): Unit = {
    bind(classOf[ManagerAction])
    bind(classOf[ManagerTangAction])
    bind(classOf[ManagerGuoAction])
    bind(classOf[ManagerHuangAction])
    bind(classOf[ManagerCaoAction])
    bind(classOf[ManagerRuanAction])
    bind(classOf[StudentAction])
    bind(classOf[LoginAction])
    bind(classOf[WelcomeAction])
    bind(classOf[EnWelcomeAction])
    bind(classOf[HomeAction])
    bind(classOf[EnChangepwdAction])
    bind(classOf[ExchangeAction])
    bind(classOf[ChangepwdAction])
    bind(classOf[PaymentAction])
    bind(classOf[PaymentfinAction])
    bind(classOf[PayrecordAction])
    bind(classOf[AdminAction])
    bind(classOf[MyInforAction])
    bind("web.Interceptor.mysecurity", classOf[SecurityInterceptor])

  }
}