package org.openurp.edu.student.info.web.security;

import org.beangle.commons.lang.annotation.description
import org.beangle.commons.web.intercept.OncePerRequestInterceptor
import org.beangle.webmvc.api.context.Flash

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

//拦截器
class SecurityInterceptor extends OncePerRequestInterceptor {

  override final def doPreInvoke(request: HttpServletRequest, response: HttpServletResponse): Boolean = {
    if (request.getRequestURI.contains("/login")) {
      true
    } else {
      var name = request.getSession.getAttribute("code")
      if (null == name) response.sendRedirect(request.getContextPath + "/info/login")
      (null != name)
    }
  }

}