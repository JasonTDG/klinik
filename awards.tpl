<!DOCTYPE html>
<!-- 台北數位集團版權所有 -->
<!-- Powered by taipeiads.com -->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]--><html>
  <head>
  {#include file=$__TV|cat:'meta.tpl'#}
  <body>
    <!-- Container -->
    <div id="container">
      <!-- Header -->
      {#include file=$__TV|cat:'top.tpl'#}
      <!-- end Header -->
      <!-- Content -->
      <div id="content">
        <!-- Banner -->
        <div class="page-banner">
          <div class="container">
            <div class="page-title col-md-6">
              <h1>{#$actionTitle#}</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/awards">{#$actionTitle#}</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
        	<section class="page-content-section page-awards">
  			    <div class="container">
			        <div class="row">
                <div class="col-md-9 aboutus-slogan">
                  <h2>Kemuliaan dan penegasan kita</h2>
                  <p>Jangan pernah mengendur, mengejar keunggulan, memenangkan penghargaan internasional</p>
                </div>   
              </div>
  			    </div>
            <div class="container">
              <div class="row">
                <div class="awards-list">
                {#foreach item=a from=$rows#}
                  <div class="awards-item">
                    <div class="container">
                      <div class="col-sm-8 awards-item-text">
                        <h5 class="awards-title">{#$a.subject.subject#}</h5>
                        <p class="awards-content">{#$a.content.contentA#}</p>
                        {#if $a.subject.link#}
                        <a class="awards-link" href="{#$a.subject.link#}">Pelajari lebih lanjut</a>
                        {#/if#}
                      </div>
                      {#if $a.subject.picA#}
                      <div class="col-sm-4 awards-item-img"><img src="{#$__U#}/{#$a.subject.picA#}" alt="awards-photo"></div>
                      {#/if#}
                    </div>
                  </div>
                {#/foreach#}  

                  
                </div>   
              </div>
              <nav class="news-pagination">
				      <ul class="pagination">
				        {#$links3#}
				     </ul>
				   </nav>
            </div>
  			  </section>
        </article>
        <!-- end Main Content -->
        <!-- Footer -->
        {#include file=$__TV|cat:'foot.tpl'#}
        <!-- end Footer -->
      </div>
      <!-- end Content -->
      <!-- Mobile Nav  -->
      {#include file=$__TV|cat:'top_m.tpl'#}
      <!-- end Mobile Nav  -->
    </div>
    <!-- end container -->
    <p id="back-top"><a href="#top" title="Kembali ke atas"><i class="fa fa-chevron-circle-up"></i></a></p>
  </body>
<!-- Java Script ================================================== -->
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.smartmenus.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.smartmenus.bootstrap.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.device.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.viewportchecker.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.animation.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.svgeezy.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.mmenu.min.all.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.owl.carousel.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/init.js"></script>
</html>