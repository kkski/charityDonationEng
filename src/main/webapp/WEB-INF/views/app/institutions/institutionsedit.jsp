<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<jsp:include page="../../headerloggedin.jsp"/>

<section class="login-page">
    <h2>Edit institution</h2>

    <form:form method="POST" modelAttribute="institution" class="form-signin">
        <spring:bind path="name">
            <div class="form-group">
                <p class="title">Institution name:</p>
                <form:input type="text" name="name" placeholder="Instititution name" path="name"/>
                <p class="subtitle"><form:errors path="name"/></p>
            </div>
        </spring:bind>
        <spring:bind path="description">
            <div class="form-group">
                <p class="title">Description:</p>
                <form:input type="text" name="description" placeholder="Institution description." path="description" class="title"/>
                <p class="subtitle"><form:errors path="description"/></p>
            </div>
        </spring:bind>

        <div class="form-group form-group--buttons">
            <button class="btn" type="submit">Edit institution</button>
        </div>
    </form:form>
</section>


<%@ include file="../../footer.jsp" %>

</body>
</html>
