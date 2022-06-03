<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>

    <section class="login-page">
      <h2>Login</h2>
      <form method="post">
        <div class="form-group">
          <input type="text" name="username" placeholder="Username" />
        </div>
        <div class="form-group">
          <input type="password" name="password" placeholder="Password" />
<%--          <a href="#" class="btn btn--small btn--without-border reset-password">Przypomnij hasło</a>--%>
        </div>

        <div class="form-group form-group--buttons">
          <a href="/register" class="btn btn--without-border">Register</a>
          <button class="btn" type="submit">Login</button>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      </form>
    </section>

<%@ include file="footer.jsp" %>

  </body>
</html>
