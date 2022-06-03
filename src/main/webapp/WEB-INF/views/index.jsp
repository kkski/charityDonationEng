<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>
    <script src="<c:url value="/resources/js/app.js" />"></script>
</head>
<body>

<header class="header--main-page">
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="/login" class="btn btn--small btn--without-border">Login</a></li>
            <li><a href="/register" class="btn btn--small btn--highlighted">Register</a></li>
        </ul>

        <ul>
            <li><a href="/" class="btn btn--without-border active">Start</a></li>
            <li><a href="#steps" class="btn btn--without-border">What is this about?</a></li>
            <li><a href="#about-us" class="btn btn--without-border">About us</a></li>
            <li><a href="#help" class="btn btn--without-border">Organisations</a></li>
            <li><a href="#contact" class="btn btn--without-border">Contact</a></li>
        </ul>
    </nav>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Start helping out! <br />
                Donate your unwanted items to trusted organisations!
            </h1>
        </div>
    </div>
</header>

<section class="stats">
    <div class="container container--85">
        <div class="stats--item">
            <em>${bagsAmount}</em>
            <h3>donated bags</h3>
            <p></p>
        </div>

        <div class="stats--item">
            <em>${donationsAmount}</em>
            <h3>donations</h3>
            <p></p>

        </div>

    </div>
</section>

<section class="steps">
    <h2>Donate in 4 simple steps</h2>

    <div class="steps--container">
        <div class="steps--item">
            <span class="icon icon--hands"></span>
            <h3>Choose categories</h3>
            <p>clothes, toys, gear and others</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--arrow"></span>
            <h3>Pack them up</h3>
            <p>use your trash bags</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--glasses"></span>
            <h3>Decide who are you going to help out</h3>
            <p>choose trusted place</p>
        </div>
        <div class="steps--item">
            <span class="icon icon--courier"></span>
            <h3>Book a pick-up</h3>
            <p>courier comes at suitable time</p>
        </div>
    </div>

    <a href="/register" class="btn btn--large">Register</a>
</section>

<section class="about-us">
    <div class="about-us--text">
        <h2>About us</h2>
        <p>This is a personal example project, created with template provided.</p>
        <img src="<c:url value="resources/images/signature.svg"/>" class="about-us--text-signature" alt="Signature"/>
    </div>
    <div class="about-us--image"><img src="<c:url value="resources/images/about-us.jpg"/>" alt="People in circle"/>
    </div>
</section>

<section class="help">
    <h2>Who are we helping out?</h2>

    <!-- SLIDE 1 -->
    <div class="help--slides active" data-id="1">
        <p>In our databse you can find list of verified organisations, that we co-operate with.
            You can check what their goals are.</p>

        <ul class="help--slides-items">
            <c:forEach items="${institutions}" var = "i" begin = "0" end = "4" varStatus="loop">
                <c:if test="${loop.index % 2 == 0}"><li></c:if>
                    <div class="col">
                        <div class="title">${i.name}</div>
                        <div class="subtitle">${i.description}</div>
                    </div>
                <c:if test="${loop.index + 1 % 2 == 0}"></li></c:if>
                </c:forEach>

        </ul>
    </div>

</section>

<%@ include file="footer.jsp" %>

<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
