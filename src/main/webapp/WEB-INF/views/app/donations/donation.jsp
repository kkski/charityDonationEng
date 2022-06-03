<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<jsp:include page="../../headerloggedin.jsp"/>
<section class="help">
    <h2>Donation details</h2>
    <div class="summary">
        <div class="form-section">
            <h4>Your donation contains:</h4>
            <ul>
                <li>
                   ${donation.quantity} bags of

                       ${donation.categoriesNames}.


                </li>

                <li>
                    For organisation ${donation.institution.name}.
                </li>
            </ul>
        </div>

        <div class="form-section form-section--columns">
            <div class="form-section--column">
                <h4>Pickup address:</h4>
                <ul>
                    ${donation.street}
                        ${donation.city}
                        ${donation.zipCode}
                </ul>
            </div>

            <div class="form-section--column">
                <h4>Pickup moment:</h4>
                <ul>
                    <li>
                    Date: ${donation.pickUpDate}
                    </li><li>
                        Time:${donation.pickUpTime}
                </li><li>
                    Comment:${donation.pickUpComment}
                </li>
                </ul>
            </div>

            <div class="form-section--column">
                <h4>Confirmation:</h4>
                <ul>
                    <li>
                        Date and time: ${status.clickMoment}
                     </li>
                    <li>
                    Confirmed: ${status.pickedUp}
                     </li>
                    <li>
                        <a href="/app/donations/${donation.id}/approve">Confirm</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>


<%@ include file="../../footer.jsp" %>

</body>
</html>
