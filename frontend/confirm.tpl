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
              <h1>購買明細確認</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/check-out">Keranjang belanja</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          	<section class="page-content-section checkout-lists confirm">
			    <div class="container">
				    <div class="section-title-group">
	                  <h1><span><i class="fa fa-shopping-cart"></i>購買明細確認</span></span></h1>
	                  <p>請確認購買商品、Kuantitas與寄送資料是否正確，以利您的商品順利送達！</p>
	                </div>
	                <div class="title-process steps">
			        	<div class="shopping-step-group">
				        	<div class="shopping-step step1"><span>1</span>Keranjang belanja Daftar</div>
				        	<div class="shopping-step step2"><span>2</span>收件人資訊+付款方式</div>
				        	<div class="shopping-step step3 active"><span>3</span>確認訂購資訊</div>
				        	<div class="shopping-step step4"><span>4</span>送出訂單</div>
			        	</div>
			        </div>
			        <h4 class="title-process">本次購買明细</h4>
					<form class="checkout-form">
				        <table width="100%" border="0" class="cartlists-table" cellspacing="0">
				          	<thead>
					            <tr>
						         	<th class="p-img">商品圖</th>
						            <th class="p-name">商品名稱</th>
						            <th class="p-price">單價</th>
						            <th class="p-quantity">Kuantitas</th>
						            <th class="p-total">小計</th>          
					          	</tr>
				          	</thead>
				          	<tbody>
                            {#foreach item=car from=$cart#}
					          	<tr>
						            <td class="p-img">
						            	<img src="{#$__U#}/{#$car.pic#}" alt="Abeye F5000s">
						            </td>
						            <td class="p-name">
						            	<a href="{#$__C#}/products-details/no/{#$car.node#}" target="_blank">{#$car.name#}</a>
						            </td>
						            <td class="p-price">
                    					<ins>NT${#$car.price#}</ins>
						            </td>
						            <td class="p-quantity">
						            	{#$car.qty#}
						            </td>
						            <td class="p-total">NT${#$car.subtotal#}</td>
					          	</tr>
                              {#/foreach#}  
					          	
				        	</tbody>
				        </table>           	
				    </form>
				    <div class="p-fee">
			        	運費	<span class="p-fee-shipment">NT${#$ship#}</span>
			        </div>
			        <div class="p-fee">
			        	<div class="p-fee-total">
			        		本次消費金額：<span class="total-cost">NT${#$grandtotal#}</span>
			          	</div>
			        </div>
			    </div>
			</section>
			<section class="page-content-section checkout-lists confirm">
			    <div class="container">
			        <h4 class="title-process">訂購人資訊</h4>
					<div class="confirm-form">
			          <div class="confirm-data">
			            <label for="Name" class="inline">Nama：</label>
			            <div class="confirm-info">{#$carform.name#} {#$carform.sex#}</div>
			          </div>
			          <div class="confirm-data">
			            <label for="Address" class="inline">收件Alamat：</label>
			            <div class="confirm-info">{#$carform.address#}</div>
			          </div>
			          <div class="confirm-data">
			            <label for="Email" class="inline">Email：</label>
			            <div class="confirm-info">{#$carform.email#}</div>
			          </div>
			          <div class="confirm-data">
			            <label for="Phone" class="inline">聯絡Telepon：</label>
			            <div class="confirm-info">{#$carform.phone#}</div>
			          </div>
					</div>
			    </div>
			</section>
            <section class="page-content-section checkout-lists confirm">
			    <div class="container">
			        <h4 class="title-process">運送&付款方式</h4>
					<div class="confirm-form">
			          <div class="confirm-data">
			            <div class="confirm-info">
                                        運送方式：{#$deliversubject#}
                        <br>付款方式：
                                        {#if $carform.payment=="ATM"#}
                                ATM/轉帳匯款
                                {#/if#}
                                {#if $carform.payment=="CVS"#}
                                超商代碼
                                {#/if#}
                                {#if $carform.payment=="BARCODE"#}
                                超商條碼
                                {#/if#}
                                {#if $carform.payment=="Credit"#}
                                線上刷卡 {#if $carform.card_num==""#}一次付清{#else#}{#$carform.card_num#}期{#/if#}
                                {#/if#}
                      
                        </div>
                         
              
                 
                
			          </div>
			          
					</div>
			    </div>
			</section>
          
                        
			<section class="page-content-section checkout-lists confirm">
				<div class="container">
					<a class="btn-process btn-prev float-l" href="{#$__C#}/check-out"><i class="fa fa-long-arrow-left"></i>Langkah sebelumnya</a>
                    {#if $itemcount<=0#}
                    <a class="btn-process float-r" href="javascript:void(0)" onClick="alert('請先選擇您要購買的物品')"><i class="fa fa-paper-plane"></i>資料無誤，確認送出</a>
                    {#else#}
					<a id="send" class="btn-process float-r" href="{#$__C#}/process/ps/exeShopcarProcess"><i class="fa fa-paper-plane"></i>資料無誤，確認送出</a>
                    {#/if#}
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
           <script>
jQuery(function( $ ){
 
$('#send').bind('click', function(event) {

	         $.blockUI({ message: 'Pengolahan...'});

});

});
</script>
</html>