<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Donation form</title>

    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
    <script src="<c:url value="/resources/js/app.js" />"></script>
</head>
<body>
<header class="header--form-page">
    <nav class="container container--70">
        <ul class="nav--actions">
            <li class="logged-user">
                Hello ${user.firstName}
                <ul class="dropdown">
                    <li><a href="/app/profile/edit">Edit profile</a></li>
                    <li><form action="<c:url value="/"/>" method="post">
                        <input type="submit" value="Wyloguj">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form></li>
                </ul>
            </li>
        </ul>

        <ul>
            <li><a href="index.html" class="btn btn--without-border active">Start</a></li>
            <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
                <li><a href="/app/donations/donation" class="btn btn--without-border">Przekaż dary</a></li>
                <li><a href="/app/donations" class="btn btn--without-border">Zarządzaj darami</a></li>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <li><a href="/admin/institutions" class="btn btn--without-border">Fundacje i organizacje</a></li>
                <li><a href="/admin/admins" class="btn btn--without-border">Zarządzaj administratorami</a></li>
                <li><a href="/admin/users" class="btn btn--without-border">Zarządzaj użytkownikami</a></li>
            </sec:authorize>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Give away stuff you do not need to <br/>
                <span class="uppercase">THOSE IN NEED</span>
            </h1>

            <div class="slogan--steps">
                <div class="slogan--steps-title">4 simple steps:</div>
                <ul class="slogan--steps-boxes">
                    <li>
                        <div><em>1</em><span>Choose categories</span></div>
                    </li>
                    <li>
                        <div><em>2</em><span>Pack them up</span></div>
                    </li>
                    <li>
                        <div><em>3</em><span>Choose organisation</span></div>
                    </li>
                    <li>
                        <div><em>4</em><span>Choose when to pick up</span></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>


<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Important!</h3>
            <p data-step="1" class="active">
                Provide details of your donation, so we will know who need it most.
            </p>
            <p data-step="2">
                Provide details of your donation, so we will know who need it most.
            </p>
            <p data-step="3">
                Choose one, that will receive this donation.
            </p>
            <p data-step="4">Provide address and pickup details.</p>
        </div>
    </div>


    <div class="form--steps-container">
        <div class="form--steps-counter">Step <span>1</span>/4</div>

        <form:form method="POST" modelAttribute="donation" action="">
            <!-- STEP 1: class .active is switching steps -->
            <div data-step="1" class="active">
                <h3>Choose what you want to donate:</h3>
                <spring:bind path="categories">
                    <c:forEach var="category" items="${categories}">
                        <div class="form-group form-group--checkbox">
                            <label>
                                <form:checkbox class="form-group form-group--checkbox"
                                               path="categories"
                                               value="${category}"
                                               nameC="${category.name}"/>
                                <span class="checkbox"></span>
                                <span class="description"
                                >${category.name}</span
                                >
                            </label>
                        </div>
                    </c:forEach>

                    <form:errors path="categories"/>

                </spring:bind>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn next-step">Next</button>
                </div>
            </div>


            <!-- STEP 2 -->
            <div data-step="2">
                <h3>Provide amount of 60L bags that you donate:</h3>
                <spring:bind path="quantity">
                    <div class="form-group form-group--inline">
                        <label>
                            Amount of 60L bags:
                            <form:input path="quantity"
                                        id="quantity"
                                        type="number"
                                        step="1"
                                        min="1"/>
                        </label>
                        <form:errors path="quantity"/>
                    </div>
                </spring:bind>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Previous</button>
                    <button type="button" class="btn next-step">Next</button>
                </div>
            </div>


            <!-- STEP 3 -->
            <div data-step="3">
                <h3>Choose organisation that you want to help:</h3>
                <spring:bind path="institution">
                    <div class="form-group">

                        <c:forEach var="institution" items="${institutions}">

                            <div class="form-group form-group--checkbox">
                                <label>
                                    <form:radiobutton name="institution" value="${institution}" path="institution"
                                                      nameI="${institution.name}"/>
                                    <span class="checkbox radio"></span>
                                    <span class="description">
                              <div class="title">${institution.name}</div>
                              <div class="subtitle">
                                      ${institution.description}
                              </div>
                            </span>
                                </label>
                            </div>
                        </c:forEach>

                    </div>
                    <form:errors path="institution"/>
                </spring:bind>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Previous</button>
                    <button type="button" class="btn next-step">Next</button>
                </div>
            </div>


            <!-- STEP 4 -->
            <div data-step="4">
                <h3>Provide an address and details of pickup:</h3>

                <div class="form-section form-section--columns">
                    <div class="form-section--column">
                        <h4>Pickup address:</h4>
                        <div class="form-group form-group--inline">
                            <label> Street <form:input id="street" path="street"/> </label>
                            <form:errors path="street"/>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> City <form:input id="city" path="city"/> </label>
                            <form:errors path="city"/>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Zip-code <form:input id="zipCode" path="zipCode"/>
                            </label>
                            <form:errors path="zipCode"/>
                        </div>

                    </div>

                    <div class="form-section--column">
                        <h4>Pickup moment</h4>
                        <div class="form-group form-group--inline">
                            <label> Date <form:input id="date" type="date" path="pickUpDate"/> </label>
                            <form:errors path="pickUpDate"/>
                        </div>

                        <div class="form-group form-group--inline">
                            <label> Time <form:input id="time" type="time" path="pickUpTime"/> </label>
                            <form:errors path="pickUpTime"/>
                        </div>

                        <div class="form-group form-group--inline">
                            <label>
                                Comment for courier
                                <form:textarea id="comment" path="pickUpComment"/>
                                <form:errors path="pickUpComment"/>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Previous</button>
                    <button type="button" class="btn next-step">Next</button>
                </div>
            </div>

            <%--                    <!-- STEP 5 -->--%>
            <div data-step="5">
                <h3>Donation summary</h3>
                <div class="summary">
                    <div class="form-section">
                        <h4>You donate:</h4>
                        <ul>
                            <li>
                                <span class="icon icon-bag"></span>
                                <span id="resultQuantity" class="summary--text"
                                > of <span id="resultCategories" class="summary--text"/></span>
                            </li>

                            <li>
                                <span class="icon icon-hand"></span>
                                <span id="resultInstitutionName" class="summary--text"
                                ></span
                                >
                            </li>
                        </ul>
                    </div>

                    <div class="form-section form-section--columns">
                        <div class="form-section--column">
                            <h4>Pickup address:</h4>
                            <ul>
                                <li id="resultStreet"></li>
                                <li id="resultCity"></li>
                                <li id="resultZipCode"></li>
                            </ul>
                        </div>

                        <div class="form-section--column">
                            <h4>Pickup moment:</h4>
                            <ul>
                                <li id="resultPickUpDate"></li>
                                <li id="resultPickUpTime"></li>
                                <li id="resultPickUpComment"></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="form-group form-group--buttons">
                    <button type="button" class="btn prev-step">Previous</button>
                    <button type="submit" class="btn">Confirm</button>
                </div>
            </div>


        </form:form>
    </div>
</section>

<%@ include file="../../footer.jsp" %>
</body>
</html>
