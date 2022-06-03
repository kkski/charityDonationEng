<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<footer>
    <div class="contact">
        <h2>Contact us</h2>
        <h3>Contact form</h3>
        <form class="form--contact">
            <div class="form-group form-group--50"><input type="text" name="name" placeholder="Name"/></div>
            <div class="form-group form-group--50"><input type="text" name="surname" placeholder="Surname"/></div>

            <div class="form-group"><textarea name="message" placeholder="Message" rows="1"></textarea></div>

            <button class="btn" type="submit">Wyślij</button>
        </form>
    </div>
    <div class="bottom-line">
        <span class="bottom-line--copy">2022</span>
        <div class="bottom-line--icons">
            <a href="#" class="btn btn--small"><img alt="Facebook" src="<c:url value="/resources/images/icon-facebook.svg"/>"/></a> <a href="#"
                                                                                            class="btn btn--small"><img alt="Instagram"
                src="<c:url value="/resources/images/icon-instagram.svg"/>"/> </a>
        </div>
    </div>
</footer>