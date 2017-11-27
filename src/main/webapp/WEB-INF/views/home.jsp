<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>

<t:layout>	
    <jsp:body>    
    	  <header id="yo" class="Header">
      <!-- sadsdasdasdasdasdas-->
    </header>
    <ul class="WorkMenu">
      <li>
        <a class="WorkMenu-link is-active" href="#estratega-digital">Comodidad y Confort</a>
      </li>
      <li>
        <a class="WorkMenu-link" href="#analista-de-datos">Alquiler de Maquinaria Pesada</a>
      </li>
      <li>
        <a class="WorkMenu-link" href="#content-marketing">Transporte de Personal</a>
      </li>
    </ul>
    <section class="WorkSection" id="estratega-digital">
      <div class="overlay"></div>
       <img src="<c:url value="/resources/static/images/estratega-digital.jpg" />"alt="Estratega Digital"/>
    
    </section>
    <section class="WorkSection" id="analista-de-datos">
      <div class="overlay"></div>
    <img src="<c:url value="/resources/static/images/analista-datos.jpg" />"alt="Analista de datos"/>
    </section>
    <section class="WorkSection" id="content-marketing">
      <div class="overlay"></div>
      
    <img src="<c:url value="/resources/static/images/content-marketing.jpg" />"alt="Content Marketing"/>
    
    </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-scrollTo/2.1.2/jquery.scrollTo.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-localScroll/1.4.0/jquery.localScroll.min.js"></script>

    <script>
      $(document).ready(function(){
        var $body = $('body');

        $body.localScroll();
        var $workButtons = $('.WorkMenu-link');

        var itemSelected = 0;
        var halfViewportHeight = window.innerHeight / 2;
        var viewportHeight = window.innerHeight - halfViewportHeight ;
        window.addEventListener('scroll', (event) => {
          if (window.scrollY >= viewportHeight) {
            $workButtons.removeClass('is-active');
            $workButtons[++itemSelected].classList.add('is-active');
            viewportHeight = viewportHeight + window.innerHeight;
          }
          if (window.scrollY < (viewportHeight - window.innerHeight)) {
            $workButtons.removeClass('is-active');
            $workButtons[--itemSelected].classList.add('is-active');
            viewportHeight = viewportHeight - window.innerHeight;
          }
        });
        $('.contact-button').on('click', function(){
          ga('sent', 'event', 'contacto' , 'click' , $(this).data('type'));
        });
      })

    </script>
    </jsp:body>
</t:layout>



