<!DOCTYPE html>
<!-- 台北數位集團版權所有 -->
<!-- Powered by taipeiads.com -->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]--><html>
  <head>
   {#include file=$__TV|cat:'meta.tpl'#}
  </head>
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
              <h1>Berita terbaru</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/news">Berita terbaru</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          	<section class="page-content-section news-lists">
			    <div class="container">
                {#foreach item=n from=$rows#}
			        <div class="news-item">
			        	<div class="news-item-img equal-height col-md-5"><img src="{#$__U#}/{#$n.subject.picA#}" alt="news-img"></div>
			        	<div class="news-item-text equal-height col-md-7">
			        		<div class="news-item-text-wrapper">
				        		<h5>{#$n.subject.subject#}</h5>
				        		<p class="date"><i class="fa fa-calendar"></i>{#$n.subject.date#}</p>
								<p class="news-content">{#$n.content.contentA|nl2br#}
								</p>
								<a class="news-more-details" href="{#$__C#}/news-details/id/{#$n.id#}" title="Pelajari lebih lanjut">Pelajari lebih lanjut</a>
							</div>
			        	</div>
			        </div>
                {#/foreach#}    
			       
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
<script type="text/javascript">
$(window).on('load', function(){
  $(document).ready(function(){
    $("#navbar ul li").click(function(){
      $(this).addClass("active");
      $(this).siblings("li").removeClass("active");
    });
    $('#cart').hover(
      function(){$('.cart-hover').show();},
      function(){$('.cart-hover').hide();}
    );
    $('#itemList').mouseover(function(){
      $('.cart-hover').show();
    });
    $('#itemList').mouseout(function(){     
      $('.cart-hover').hide();
    });
  });
  $(".equal-height").matchHeight({
      byRow: true,
      property: 'height',
      target: null,
      remove: false
  });
})	
</script>

</html>