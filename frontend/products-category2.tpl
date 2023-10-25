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
    <div id="preloader">
      <div id="status">
        <div class="loader-squares"><img src="{#$__R#}/{#$__V#}/images/common/logo-loading.png" /></div>
        <div class="loading-text">Loading ...</div>
      </div>
    </div>
    <!-- Container -->
    <div id="container">
      <!-- Header -->
      {#include file=$__TV|cat:'top.tpl'#}
      <!-- end Header -->
      <!-- Content -->
      <div id="content">
        <!-- Banner -->
        <div class="page-banner" style="background-color: transparent; background: url({#$__R#}/{#$__V#}/images/banner/page-banner-products.jpg) 50% 50% no-repeat; background-size: cover; background-attachment: fixed;">
          <div class="container">
            <div class="page-title col-md-6">
              <h1>{#$classB.subject.subject#}</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/products">Pengenalan produk</a></li>
{#if $ProductCatagory==3#} 
<li><a href="{#$__C#}/products-category1/category/{#$classA.node#}">{#$classA.subject.subject#}</a></li>
<li><a href="{#$__C#}/products-category2/category/{#$classB.node#}">{#$classB.subject.subject#}</a></li>
{#/if#}
{#if $ProductCatagory==2#} 
<li><a href="{#$__C#}/products-category2/category/{#$classB.node#}">{#$classB.subject.subject#}</a></li>
{#/if#}
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
			          <h1><span><i class="fa fa-trophy"></i>Pengenalan produk</span></span></h1>
			          <p>{#$classB.content.contentA#}</p>
			        </div>
			    </div>
			    <div class="products-category">
			        <div class="container full-width products-category-items">
                    {#foreach item=p from=$rows#}
			          <div class="col-sm-6 col-md-4 category-item">
			            <div class="category-item-inner">
			              <div class="category-item-photo">
			                <a href="{#$__C#}/products-details/no/{#$p.node#}">
			                  <span class="item-photo-hover">
			                    <h5><i class="fa fa-search-plus"></i>Pelajari lebih lanjut</h5>
			                  </span>
			                  <img src="{#$__U#}/{#$p.subject.picA#}" alt="">
			                </a>
			              </div>
			              <div class="category-item-info">
			                <h5 class="item-info-title">{#$p.subject.subject#}</h5>
			                <div class="item-info-intro">{#$p.subject.intro|nl2br#}</div>
                            {#if $p.subject.priceswitch=="on"#}
			                <div class="item-info-price">
                                                {#if $usecart==1#}
			                	<del>${#$p.subject.price1#}</del>
			                	<ins>${#$p.subject.price2#}</ins>
                                                {#/if#}
			                </div>
                            {#/if#}
			                <a class="item-more-btn" href="{#$__C#}/products-details/no/{#$p.node#}"><i class="fa fa-search-plus"></i><span>Pelajari lebih lanjut</span></a>
                            
                            {#if $usecart==1#}
			                <!--<a class="item-addtocart-btn" href="javascript:void(0);" onClick="setMyCart('{#$p.node#}',1,'Add')"><i class="fa fa-shopping-cart"></i>Tambahkan ke keranjang</a>-->
                            {#else if $usecart==0 && 0#}  
			                <a class="item-addtocart-btn" href="javascript:void(0);" onClick="setMyCart('{#$usecart#}','{#$p.node#}',1,'Add')"><i class="fa fa-envelope-o"></i>加入詢問</a>
                            {#/if#}
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