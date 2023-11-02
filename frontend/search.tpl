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
              <h1>Pencarian Produk</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/search">Pencarian Produk</a></li>

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
                <h1><span>Hasil pencarian</span></h1>
                  <p>Kata kunci: <span class="search-keywords">{#$search#}</span>, Sebanyak informasi pena: <span class="search-keywords-numbers">{#$totals#}</span></p>
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
                    
                      {#else if $usecart==0 && 0#}  
                      <a class="item-inquiry-btn" href="javascript:void(0);" onClick="setMyCart('{#$p.id#}',1,'Add')" target="_blank" data-placement="top" data-toggle="tooltip" data-original-title="Tambahkan untuk bertanya"><i class="fa fa-envelope-o"></i></a>
                      
                       {#/if#}
                    </div>
                  </div>
                </div>
              {#/foreach#} 
           
               
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
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.svgeezy.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.mmenu.min.all.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.owl.carousel.min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/init.js"></script>
  <script type="text/javascript">
  $(".category-item-inner").matchHeight({
      byRow: true,
      property: 'height',
      target: null,
      remove: false
  });
</script>
<script>
function setMyCart(pid,qty,act){
	$.ajax({
		url:"{#$__C#}/process/ps/setMyCart",
		data:"id="+pid+"&qty="+qty+"&action="+act,
		type:'POST',
		dataType:  'html' , 
		beforeSend:  function(){   
		   // $.blockUI({ message: '<img src="/web/res/img/ajax-loader.gif"/>Pengolahan...'});
             },
		success: function(data){
               //   $.unblockUI();
				//  $("#total"+id).html("$"+total);
				getitemcount();
                }	 
		
    })
}
function getitemcount(){
	$.ajax({
		url:"{#$__C#}/process/ps/setMyCart",
		data:"action=itemcount",
		type:'POST',
		dataType:  'html' , 
		beforeSend:  function(){   
		   // $.blockUI({ message: '<img src="/web/res/img/ajax-loader.gif"/>Pengolahan...'});
             },
		success: function(data){
               //   $.unblockUI();
			      $("#itemQty").hide();
				  getitemcontent_menu();
				  $("#itemQty").html(data);
				  
				  $("#itemQty").slideDown('fast');
                }	 
		
    })
}
function getitemcontent_menu(){
	$.ajax({
		url:"{#$__C#}/process/ps/setMyCart",
		data:"action=AskcarContent",
		type:'POST',
		dataType:  'html' , 
		beforeSend:  function(){   
		   // $.blockUI({ message: '<img src="/web/res/img/ajax-loader.gif"/>Pengolahan...'});
             },
		success: function(data){
			//alert(data)
				  $("#askcar_menu").html(data);
                }	 
		
    })
}

function removeItem(pid){
	$.ajax({
		url:"{#$__C#}/process/ps/setMyCart",
		data:"id="+pid+"&action=Remove",
		type:'POST',
		dataType:  'html' , 
		beforeSend:  function(){   
		   // $.blockUI({ message: '<img src="/web/res/img/ajax-loader.gif"/>Pengolahan...'});
             },
		success: function(data){
               //   $.unblockUI();
			      getitemcount();
                }	 
		
    })
}
</script>
</html>