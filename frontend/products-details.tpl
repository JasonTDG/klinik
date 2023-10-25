<!DOCTYPE html>
<!-- 台北數位集團版權所有 -->
<!-- Powered by taipeiads.com -->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if lte IE 8]><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /><![endif]--><html>
  <head>
    {#include file=$__TV|cat:'meta.tpl'#}
<meta name="og:description" content="{#$company.subject.company#} | {#$rows.subject.subject#}" 。 />
<meta property="og:title" content="{#$company.subject.company#} | {#$rows.subject.subject#}"/>
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
              <h1>{#$rows.subject.subject#}</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
                <li><a href="{#$__C#}/products">Pengenalan produk</a></li>
               {#if $ProductCatagory==3#}  
                <li><a href="{#$__C#}/products-category1/category/{#$classA.node#}">{#$classA.subject.subject#}</a></li>
                <li><a href="{#$__C#}/products-category2/category/{#$classB.node#}">{#$classB.subject.subject#}</a></li>
                <li><a href="{#$__C#}/products-details/no/{#$rows.node#}">{#$rows.subject.subject#}</a></li>
               {#/if#}
                {#if $ProductCatagory==2#} 
                <li><a href="{#$__C#}/products-category2/category/{#$classB.node#}">{#$classB.subject.subject#}</a></li>
                <li><a href="{#$__C#}/products-details/no/{#$rows.node#}">{#$rows.subject.subject#}</a></li>
                {#/if#}
                {#if $ProductCatagory==1#} 
                 <li><a href="{#$__C#}/products-details/no/{#$rows.node#}">{#$rows.subject.subject#}</a></li>
                {#/if#}
                
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
        	<section class="page-content-section products-content">
        		<div class="container full-width">
  			    	<div class="products-gallery col-md-5">
    						<div class="flexslider">
                  <ul class="slides">
                      {#if $rows.subject.picA#}
                    <li data-thumb="{#$__U#}/{#$rows.subject.picA#}">
                                      <a data-lightbox="images" href="{#$__U#}/{#$rows.subject.picA#}"><img src="{#$__U#}/{#$rows.subject.picA#}" /></a>
                    </li>
                                                {#/if#}  
                                               {#if $rows.subject.picB#}   
                    <li data-thumb="{#$__U#}/{#$rows.subject.picB#}">
                                      <a data-lightbox="images" href="{#$__U#}/{#$rows.subject.picB#}"><img src="{#$__U#}/{#$rows.subject.picB#}" /></a>
                    </li>
                                                   {#/if#}  
                                               {#if $rows.subject.picC#}   
                    <li data-thumb="{#$__U#}/{#$rows.subject.picC#}">
                                      <a data-lightbox="images" href="{#$__U#}/{#$rows.subject.picC#}"><img src="{#$__U#}/{#$rows.subject.picC#}" /></a>
                    </li>
                                                   {#/if#}  
                                               {#if $rows.subject.picD#}   
                    <li data-thumb="{#$__U#}/{#$rows.subject.picD#}">
                                      <a data-lightbox="images" href="{#$__U#}/{#$rows.subject.picD#}"><img src="{#$__U#}/{#$rows.subject.picD#}" /></a>
                    </li>
                                                   {#/if#}  
                                    <div class="icon-magnifier"><i class="fa fa-search-plus"></i></div>
                  </ul>
                </div>
  			    	</div>
  			    	<div class="products-specs col-md-5">
                <div class="products-specs-lists">
                  <h2>{#$rows.subject.subject#}</h2>
                   {#if $rows.subject.itemno#} <p>Model: {#$rows.subject.itemno#}</p>{#/if#}
                  {#if $rows.subject.priceswitch=="on"#}
                  <div class="specs-lists-price">
                      {#if $usecart==1#}
                    <del>${#$rows.subject.price1#}</del>
                    <ins>${#$rows.subject.price2#}</ins>
                     {#/if#} 
                  </div>
                  {#/if#}
                  <p>{#$rows.subject.intro|nl2br#}</p>
                
                  <div class="specs-lists-buttons">
                  {#if $rows.subject.size1#}
                    <select class="specs-options" id="size1">
                      <option value="">{#$rows.subject.size1name#}</option>
                      {#foreach item=s1 from=$size1#}
                      <option>{#$s1#}</option>
                      {#/foreach#}
                    </select>
                   {#/if#} 
                    {#if $rows.subject.size2#}
                    <select class="specs-options" id="size2">
                      <option value="">{#$rows.subject.size2name#}</option>
                      {#foreach item=s2 from=$size2#}
                      <option>{#$s2#}</option>
                      {#/foreach#}
                    </select>
                   {#/if#} 
                   {#if $rows.subject.size3#}
                    <select class="specs-options" id="size3">
                      <option value="">{#$rows.subject.size3name#}</option>
                      {#foreach item=s3 from=$size3#}
                      <option>{#$s3#}</option>
                      {#/foreach#}
                    </select>
                   {#/if#} 
                  </div>
                  
                  <div class="specs-lists-buttons">
                  {#if $usecart==1#}
                  
				   {#if $rows.sortB>0 && $rows.subject.price2#}
                                  
                    <a class="specs-addtocart-btn" href="javascript:void(0)" id="addtocar"><i class="fa fa-shopping-cart"></i>Tambahkan ke keranjang</a>
						<div class="specs-quantity">
						
						<!--<input class="calculate" name="" type="button" value="-">-->
						<input id="itemqty" class="text_box" type="number" min="1" max="{#$rows.sortB#}" value="1" title="Kuantitas">
						<!--<input class="calculate" name="" type="button" value="+">-->
						<span class="quantity-remain">{#if 0#}(Saham{#$rows.subject.inv#}){#/if#}</span>
						{#else#}
                                                  {#if $rows.subject.price2#}
						<a class="specs-addtocart-btn disabled"><i class="fa fa-exclamation-circle"></i>Terjual habis</a>{#/if#}
						<div class="specs-quantity">
						 
						
                                         {#/if#} 
				
                    {#else if $usecart==0#}
                    
                    <a class="specs-addtocart-btn" href="javascript:void(0)" id="addtocar"><i class="fa fa-shopping-cart"></i>Saya ingin bertanya</a>
                    <div class="specs-quantity">
                    {#/if#}
                    
                  </div>
                  <script></script>
                  <div class="specs-lists-buttons">
                    <ul>
                      <li><a href="http://www.facebook.com/sharer.php?u={#$curPageURL#}" target="_blank" class="btn_square-round icon-facebook" data-placement="top" data-toggle="tooltip" data-original-title="Bagikan Facebook"><i class="fa fa-facebook"></i></a></li>
                      <li><a href="//plus.google.com/share?url={#$curPageURL#}" target="_blank" class="btn_square-round icon-googleplus" data-placement="top" data-toggle="tooltip" data-original-title="Bagikan Google+"><i class="fa fa-google-plus"></i></a></li>
                      <li><a href="https://twitter.com/share?url={#$curPageURL#}" target="_blank" class="btn_square-round icon-twitter" data-placement="top" data-toggle="tooltip" data-original-title="Bagikan Twitter"><i class="fa fa-twitter"></i></a></li>
                      <li><a href="https://pinterest.com/pin/create/button/?url={#$curPageURL#}&amp;media={#$DOMAIN#}{#$__U#}/{#$rows.subject.picA#}&amp;description={#$rows.subject.subject#}" target="_blank" class="btn_square-round icon-pinterest" data-placement="top" data-toggle="tooltip" data-original-title="Bagikan Pinterest"><i class="fa fa-pinterest-p"></i></a></li>
                      <li><a href="#" class="btn_square-round icon-email" data-placement="top" data-toggle="tooltip" data-original-title="Email"><i class="fa fa-envelope"></i></a></li>
                      <li><a href="javascript:window.print()" class="btn_square-round icon-print" data-placement="top" data-toggle="tooltip" data-original-title="Cetak"><i class="fa fa-print"></i><span>Cetak</span></a></li>
                      <li><span>
<script type="text/javascript" src="//media.line.me/js/line-button.js?v=20140411" ></script>
<script type="text/javascript">
new media_line_me.LineButton({"pc":false,"lang":"zh-hant","type":"a"});
</script>
</span></li>
                      
                      
                      
                      
                      
                    </ul>
                  </div>
                   {#if $ProductCatagory==3#} 
                  <div class="specs-lists-tags">
                     <div class="tags">Kategori：
                         <a href="{#$__C#}/products-category1/category/{#$classA.node#}">{#$classA.subject.subject#}</a>
                         、<a href="{#$__C#}/products-category2/category/{#$classB.node#}">{#$classB.subject.subject#}</a>                        
                     </div> 
                  </div>
                  {#/if#} 
                  {#if $ProductCatagory==2#} 
                  <div class="specs-lists-tags">
                     <div class="tags">Kategori：
                         <a href="{#$__C#}/products-category2/category/{#$classB.node#}">{#$classB.subject.subject#}</a>                        
                     </div> 
                  </div>
                  {#/if#} 
                </div>
              </div>
                                </div>
  	<div class="products-intro" role="tabpanel">
                <ul class="nav nav-tabs" role="tablist">
                {#if $rows.subject.tag1!=""#}
                  <li role="presentation"><a href="#tab-content-1" data-toggle="tab" role="tab"><i class="fa fa-cube"></i>{#$rows.subject.tag1#}</a></li>
                {#/if#}  
                {#if $rows.subject.tag2!=""#}
                  <li role="presentation"><a href="#tab-content-2" data-toggle="tab" role="tab"><i class="fa fa-list"></i>{#$rows.subject.tag2#}</a></li>
                   {#/if#}  
                {#if $rows.subject.tag3!=""#}
                  <li role="presentation"><a href="#tab-content-3" data-toggle="tab" role="tab"><i class="fa fa-exclamation-circle"></i>{#$rows.subject.tag3#}</a></li>
                  {#/if#}  
                </ul>
                <div class="tab-content">
                {#if $rows.subject.tag1!=""#}
                  <div class="tab-pane fade in active" id="tab-content-1" role="tabpanel">
                  {#if $rows.subject.tag1switch=="on"#}
                    {#if $rows.content.tag1txt1!="" or $rows.subject.tag1pic1!=""#}
                      <div class="tab-pane-row">
                        <div class="tab-pane-text equal-height col-md-7">
                          <div class="tab-pane-text-wrapper">
                            {#$rows.content.tag1txt1|nl2br#}
                          </div>
                        </div>
                        {#if $rows.subject.tag1pic1#}<div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag1pic1#}" alt=""></div>  {#/if#} 
                      </div>
                    {#/if#}
                    {#if $rows.content.tag1txt2!="" or $rows.subject.tag1pic2!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag1txt2|nl2br#}
                        </div>
                      </div>
                      {#if $rows.subject.tag1pic2#}<div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag1pic2#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag1txt3!="" or $rows.subject.tag1pic3!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag1txt3|nl2br#}
                        </div>
                      </div>
                     {#if $rows.subject.tag1pic3#} <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag1pic3#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag1txt4!="" or $rows.subject.tag1pic4!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag1txt4|nl2br#}
                        </div>
                      </div>
                    {#if $rows.subject.tag1pic4#}  <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag1pic4#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag1txt5!="" or $rows.subject.tag1pic5!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag1txt5|nl2br#}
                        </div>
                      </div>
                     {#if $rows.subject.tag1pic5#} <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag1pic5#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#else if $rows.subject.tag1switch=="off"#} 
                  {#$rows.content.tag1content#}
                  {#/if#} 
                  </div>
                {#/if#}  
                
                  <div class="tab-pane fade" id="tab-content-2" role="tabpanel">
                    {#if $rows.subject.tag2!=""#}
                  {#if $rows.subject.tag2switch=="on"#}
                    {#if $rows.content.tag2txt1!="" or $rows.subject.tag2pic1!=""#}
                      <div class="tab-pane-row">
                        <div class="tab-pane-text equal-height col-md-7">
                          <div class="tab-pane-text-wrapper">
                            {#$rows.content.tag2txt1|nl2br#}
                          </div>
                        </div>
                       {#if $rows.subject.tag2pic1#} <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag2pic1#}" alt=""></div>  {#/if#} 
                      </div>
                    {#/if#}
                    {#if $rows.content.tag2txt2!="" or $rows.subject.tag2pic2!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag2txt2|nl2br#}
                        </div>
                      </div>
                           {#if $rows.subject.tag2pic2#} <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag2pic2#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag2txt3!="" or $rows.subject.tag2pic3!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag2txt3|nl2br#}
                        </div>
                      </div>
                           {#if $rows.subject.tag2pic3#} <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag2pic3#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag2txt4!="" or $rows.subject.tag2pic4!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag2txt4|nl2br#}
                        </div>
                      </div>
                          {#if $rows.subject.tag2pic4#}  <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag2pic4#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag2txt5!="" or $rows.subject.tag2pic5!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag2txt5|nl2br#}
                        </div>
                      </div>
                         {#if $rows.subject.tag2pic5#}   <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag2pic5#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#else if $rows.subject.tag2switch=="off"#} 
                  {#$rows.content.tag2content#}
                  {#/if#} 
                  </div>
                {#/if#}
                
                  <div class="tab-pane fade" id="tab-content-3" role="tabpanel">
                    {#if $rows.subject.tag3!=""#}  
                  {#if $rows.subject.tag3switch=="on"#}
                    {#if $rows.content.tag3txt1!="" or $rows.subject.tag3pic1!=""#}
                      <div class="tab-pane-row">
                        <div class="tab-pane-text equal-height col-md-7">
                          <div class="tab-pane-text-wrapper">
                            {#$rows.content.tag3txt1|nl2br#}
                          </div>
                        </div>
                       {#if $rows.subject.tag3pic1#} <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag3pic1#}" alt=""></div>  {#/if#} 
                      </div>
                    {#/if#}
                    {#if $rows.content.tag3txt2!="" or $rows.subject.tag3pic2!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag3txt2|nl2br#}
                        </div>
                      </div>
                      {#if $rows.subject.tag3pic2#}<div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag3pic2#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag3txt3!="" or $rows.subject.tag3pic3!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag3txt3|nl2br#}
                        </div>
                      </div>
                     {#if $rows.subject.tag3pic3#} <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag3pic3#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag3txt4!="" or $rows.subject.tag3pic4!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag3txt4|nl2br#}
                        </div>
                      </div>
                      {#if $rows.subject.tag3pic4#}<div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag3pic4#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#if $rows.content.tag3txt5!="" or $rows.subject.tag3pic5!=""#}
                    <div class="tab-pane-row">
                      <div class="tab-pane-text equal-height col-md-7">
                        <div class="tab-pane-text-wrapper">
                          {#$rows.content.tag3txt5|nl2br#}
                        </div>
                      </div>
                     {#if $rows.subject.tag3pic5#} <div class="tab-pane-img equal-height col-md-5"><img src="{#$__U#}/{#$rows.subject.tag3pic5#}" alt=""></div>  {#/if#} 
                    </div>
                  {#/if#}
                  {#else if $rows.subject.tag3switch=="off"#} 
                  {#$rows.content.tag3content#}
                  {#/if#} 
                  </div>
                {#/if#}  
                </div>
              </div>
		    	  </div>
			    </section>
          <section class="page-content-section relproducts-carousel">
            <div class="container full-width">
              <h3>相關商品</h3>
              <div id="relproducts" class="owl-carousel owl-theme">
              {#foreach item=p from=$pro#}
                <a class="item" href="{#$__C#}/products-details/no/{#$p.node#}">
                  <div class="item-image">
                    <img class="lazyOwl" data-src="{#$__U#}/{#$p.subject.picA#}" alt="Products Image">
                    <span class="item-hover" title="Pelajari lebih lanjut">
                      <span class="item-hover-inner">
                        <span class="item-hover-inner-cell">
                          <p class="item-title-more"><span>Pelajari lebih lanjut</span></p>
                          <span class="item-icon"><i class="fa fa-link fa-fw"></i></span>
                        </span>
                      </span>
                    </span>
                  </div>
                  <span class="item-title">{#$p.subject.subject#}</span>
                </a>
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
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.svgeezy.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.mmenu.min.all.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.owl.carousel.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/init.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.lightbox.min.js"></script>
<script>
    function setMyCart(usecart,pid,qty,act,callback){
	var size1="";
	var size2="";
	var size3="";
	//var usecart=0;
	if($('#size1').length>0){
		size1=$('#size1').val();
		if(size1==""){
			alert("Silahkan pilih{#$rows.subject.size1name#}");
			return false;
		}
	}
	if($('#size2').length>0){
		size2=$('#size2').val();
		if(size2==""){
			alert("Silahkan pilih{#$rows.subject.size2name#}");
			return false;
		}
	}
	if($('#size3').length>0){
		size3=$('#size3').val();
		if(size3==""){
			alert("Silahkan pilih{#$rows.subject.size3name#}");
			return false;
		}
	}
	$.ajax({
		url:"{#$__C#}/process/ps/setMyCart",
		data:"id="+pid+"&qty="+qty+"&action="+act+"&size1="+size1+"&size2="+size2+"&size3="+size3,
		type:'POST',
		dataType:  'html' , 
		beforeSend:  function(){   
		  // $.blockUI({ message: '<h2>Pengolahan...</h2>'});
             },
		success: function(data){
               //   $.unblockUI();
				//  $("#total"+id).html("$"+total);
				//alert(888);
				if(data=="INV0"){
					alert("Stok tidak cukup");
				}else{
				    getitemcount();
					if(usecart==0){
					alert("Saya ingin bertanya");}
					else if (usecart==1){
					alert("Tambahkan ke keranjang");}
				}
                }	 
		
    })
	

}
</script>    
    


  <script type="text/javascript">
  	$(window).load(function() {
  	  $('.products-gallery').flexslider({
  	    animation: 'fade',
  	    controlNav: 'thumbnails'
  	  });
  	});
    $(".equal-height").matchHeight({
      byRow: true,
      property: 'height',
      target: null,
      remove: false
    });
    $(document).ready(function() {
      $("#relproducts").owlCarousel({
        items : 5,
        itemsCustom : [[0, 1], [480, 2], [768, 2], [992, 3], [1200, 4], [1600, 5]],
        lazyLoad : true,
        autoPlay: true,
        navigation : true,
        navigationText : false
      }); 
    });
	$(document).ready(function() {
		$(".nav-tabs >li:eq(0)").addClass("active");	
		$(".tab-content >div:eq(0)").addClass("in active");	
    });
	$(function(){
		$("#addtocar").click(function(){
		qty=$("#itemqty").val();							  
		setMyCart('{#$usecart#}','{#$rows.node#}',qty,'Add')
		})	   
	});
	
  </script>
  
</html>