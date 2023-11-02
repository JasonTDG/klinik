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
              <h1>Pengenalan produk</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/products">Pengenalan produk</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          	<section class="page-content-section products-lists">
			    <div class="container">
			        <div class="section-title-group">
			          <h1><span>Pengenalan produk</span></h1>
			        </div>
			    </div>
			    <div class="products-category">
			        <div class="container full-width products-category-items">
                    {#if $ProductCatagory==3#} 
                        {#foreach item=mp from=$menu_product#}
                             <div class="col-sm-6 col-md-4 category-item">
			            <div class="category-item-inner">
			              <div class="category-item-photo"> 
			                <a href="{#$__C#}/products-category1/category/{#$mp.node#}">
			                  <span class="item-photo-hover">
			                    <h5><i class="fa fa-search-plus"></i>Pelajari lebih lanjut</h5>
			                  </span>
			                {#if $mp.subject.picA#}  <img src="{#$__U#}/{#$mp.subject.picA#}" alt="">  {#/if#}
			                </a>
			              </div>
			              <div class="category-item-info">
			                <h5 class="item-info-title">{#$mp.subject.subject#}</h5>
			                <div class="item-info-intro">{#$mp.content.contentA|nl2br#}</div>
			                <a class="item-info-btn" href="{#$__C#}/products-category1/category/{#$mp.node#}" title="Pelajari lebih lanjut"><span>Pelajari lebih lanjut</span><i class="fa fa-long-arrow-right"></i></a>
                                   </div>
			            </div>
			          </div>
                        {#/foreach#} 
                    {#/if#}

                    {#if $ProductCatagory==2#} 
                        {#foreach item=mp from=$menu_product#}
                             <div class="col-sm-6 col-md-4 category-item">
			            <div class="category-item-inner">
			              <div class="category-item-photo"> 
			                <a href="{#$__C#}/products-category2/category/{#$mp.node#}">
			                  <span class="item-photo-hover">
			                    <h5><i class="fa fa-search-plus"></i>Pelajari lebih lanjut</h5>
			                  </span>
			                {#if $mp.subject.picA#}   <img src="{#$__U#}/{#$mp.subject.picA#}" alt=""> {#/if#}
			                </a>
			              </div>
			              <div class="category-item-info">
			                <h5 class="item-info-title">{#$mp.subject.subject#}</h5>
			                <div class="item-info-intro">{#$mp.content.contentA|nl2br#}</div>
			                <a class="item-info-btn" href="{#$__C#}/products-category2/category/{#$mp.node#}" title="Pelajari lebih lanjut"><span>Pelajari lebih lanjut</span><i class="fa fa-long-arrow-right"></i></a>
                                   </div>
			            </div>
			          </div>
                        {#/foreach#} 
                    {#/if#}
                    
                    {#if $ProductCatagory==1#} 
                        {#foreach item=mp from=$menu_product#}
                             <div class="col-sm-6 col-md-4 category-item">
			            <div class="category-item-inner">
			              <div class="category-item-photo"> 
			                <a href="{#$__C#}/products-details/no/{#$mp.node#}">
			                  <span class="item-photo-hover">
			                    <h5><i class="fa fa-search-plus"></i>Pelajari lebih lanjut</h5>
			                  </span>
			                {#if $mp.subject.picA#}  <img src="{#$__U#}/{#$mp.subject.picA#}" alt="">{#/if#}
			                </a>
			              </div>
			              <div class="category-item-info">
			                <h5 class="item-info-title">{#$mp.subject.subject#}</h5>
			                <div class="item-info-intro">{#$mp.content.contentA|nl2br#}</div>
			                <a class="item-info-btn" href="{#$__C#}/products-details/no/{#$mp.node#}" title="Pelajari lebih lanjut"><span>Pelajari lebih lanjut</span><i class="fa fa-long-arrow-right"></i></a>
                                   </div>
			            </div>
			          </div>
                        {#/foreach#} 
                    {#/if#}
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
<script type="text/javascript">
$(window).on('load', function(){
  $(".category-item-inner").matchHeight({
      byRow: true,
      property: 'height',
      target: null,
      remove: false
  });
});
</script>
</html>