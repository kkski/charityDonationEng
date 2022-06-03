<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<jsp:include page="../../headerloggedin.jsp"/>
<section class="help">
    <h2>Manage donations</h2>
    <div class="help--slides active">
        <table>
            <tbody>
            <tr>
                <td>Quantity</td>
                <td>Categories:</td>
                <td>Organisation:</td>
                <td>Street:</td>
                <td>City:</td>
                <td>Zip code:</td>
                <td>Pickup date:</td>
                <td>Pickup time:</td>
                <td>Comment:</td>
                <td>Status:</td>
                <td>Confirm date:</td>
            </tr>
            <c:forEach items="${donations}" var="donation">
                <tr>
                <td>${donation.quantity}</td>
                <td>${donation.categoriesNames}</td>
                <td>${donation.institution.name}</td>
                <td>${donation.street}</td>
                <td>${donation.city}</td>
                <td>${donation.zipCode}</td>
                <td>${donation.pickUpDate}</td>
                <td>${donation.pickUpTime}</td>
                <td>${donation.pickUpComment}</td>
                <td>${donation.status.pickedUp}</td>
                <td>${donation.status.clickMoment}</td>
                <td><a href="/app/donations/${donation.id}">Details</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>
<%@ include file="../../footer.jsp" %>

</body>
</html>
