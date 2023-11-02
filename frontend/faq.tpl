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
              <h1>{#$actionTitle#}</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/faq">{#$actionTitle#}</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          	<section class="page-content-section faq-lists">
			    <div class="container">
			        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    {#foreach item=f from=$rows key=i#}
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="heading-{#$i#}">
					      <h4 class="panel-title">
					        <a data-toggle="collapse" data-parent="#accordion" href="#collapse-{#$i#}" aria-expanded="true" aria-controls="collapse-{#$i#}"><i class="fa fa-question-circle"></i>
					          {#$f.subject.contentA#}
					        </a>
					      </h4>
					    </div>
					    <div id="collapse-{#$i#}" class="panel-collapse collapse {#if $i==0#}in{#/if#}" role="tabpanel" aria-labelledby="heading-{#$i#}">
					      <div class="panel-body">
					       {#$f.content.contentA#}
					      </div>
					    </div>
					  </div>
                    {#/foreach#}  
					
					</div>
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