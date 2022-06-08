<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Charity donation</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
    <script src="<c:url value="/resources/js/app.js" />"></script>
</head>
<body>
<header>
    <nav class="container container--70">
        <ul class="nav--actions">
            <li class="logged-user">
                Hello ${user.firstName}
                <ul class="dropdown">
                    <li><a href="/profile/edit">Edit profile</a></li>
                    <li><form action="<c:url value="/"/>" method="post">
                        <input type="submit" value="Logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form></li>
                </ul>
            </li>
        </ul>

        <ul>
            <li><a href="" class="btn btn--without-border active">Start</a></li>
            <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
                <li><a href="/app/donations/donate" class="btn btn--without-border">Make a donation</a></li>
                <li><a href="/app/donations" class="btn btn--without-border">Manage donations</a></li>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
                <li><a href="/admin/institutions" class="btn btn--without-border">Foundations and organisations</a></li>
                <li><a href="/admin/admins" class="btn btn--without-border">Manage admins</a></li>
                <li><a href="/admin/users" class="btn btn--without-border">Manage users</a></li>
            </sec:authorize>
            <li><a href="index.html#contact" class="btn btn--without-border">Contact</a></li>
        </ul>    </nav>
</header>