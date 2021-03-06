<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<jsp:include page="../../headerloggedin.jsp"/>

<section class="login-page">
    <h2>Delete institution</h2>

    <h3>Name of institution: ${institutionToDelete.name}</h3>
    <h3>Description of institution: ${institutionToDelete.description}</h3>
    </div>
    <a href="/admin/institutions/delete/${institutionToDelete.id}/confirm">Confirm removal</a>
</section>


<%@ include file="../../footer.jsp" %>

</body>
</html>
