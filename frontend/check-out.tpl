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
          <script type="text/javascript">
    if (window.location.hash && window.location.hash == '#_=_') {
        window.location.hash = '';
    }
    
</script>
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
              <h1>Informasi Penerima</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/check-out">Informasi Penerima</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          	<section class="page-content-section checkout-lists">
			    <div class="container">
				    <div class="section-title-group">
	                  <h1><span><i class="fa fa-shopping-cart"></i>Informasi Penerima</span></span></h1>

	                </div>
	                <div class="title-process steps">
			        	<div class="shopping-step-group">
				        	<div class="shopping-step step1"><span>1</span>Keranjang belanja Daftar</div>
				        	<div class="shopping-step step2 active"><span>2</span>收件人資訊+付款方式</div>
				        	<div class="shopping-step step3"><span>3</span>確認訂購資訊</div>
				        	<div class="shopping-step step4"><span>4</span>送出訂單</div>
			        	</div>
			        </div>
			    </div>
			</section>
            <form name="carform" action="{#$__C#}/process/ps/carform" method="post">
			<section class="page-content-section checkout-lists">
			    <div class="container">
			        <h4 class="title-process">
			        	Informasi Penerima
			        </h4>
					<div class="confirm-form">
			          <div class="order-data">
			            <label for="Name" class="inline"><span class="required">*</span>Nama：</label>
                        {#if $carform.name#}
			            <input type="text" id="name" name="name" class="text-name" value="{#$carform.name#}">
                        {#else#}
                         <input type="text" id="name" name="name" class="text-name" value="{#$mmname#}">
                        {#/if#}
			            <div class="data-sex">
                        {#if $carform.sex#}
                            <label><input name="sex" type="radio" value="先生" {#if $carform.sex=="先生"#}checked{#/if#}>先生</label>
			            	<label><input name="sex" type="radio" value="小姐" {#if $carform.sex=="小姐"#}checked{#/if#}>小姐</label>
                        {#else#}
			            	<label><input name="sex" type="radio" value="先生" {#if $mmsex=="先生"#}checked{#/if#}>先生</label>
			            	<label><input name="sex" type="radio" value="小姐" {#if $mmsex=="小姐"#}checked{#/if#}>小姐</label>
                        {#/if#}    
			            </div>
			          </div>
			          <div class="order-data">
			            <label for="Address" class="inline"><span class="required">*</span>收件Alamat：</label>
                        {#if $carform.address#}
			            <input type="text" id="Address" name="address" value="{#$carform.address#}">
                        {#else#}
                        <input type="text" id="Address" name="address" value="{#$row.subject.address#}">
                        {#/if#}    
			          </div>
			          <div class="order-data">
			            <label for="Email" class="inline"><span class="required">*</span>Email：</label>
                        {#if $carform.email#}
			            <input type="text" id="Email" name="email" value="{#$carform.email#}">
                         {#else#}
                         <input type="text" id="Email" name="email" value="{#$row.subject.email#}">
                         {#/if#}    
			          </div>
			          <div class="order-data">
			            <label for="Phone" class="inline"><span class="required">*</span>聯絡Telepon：</label>
                         {#if $carform.phone#}
                         <input type="text" id="Phone" name="phone" value="{#$carform.phone#}">
                          {#else#}
			            <input type="text" id="Phone" name="phone" value="{#$row.subject.mobile#}">
                        {#/if#}   
			          </div>
					</div>
                   
			    </div>
			</section>
            <section class="page-content-section checkout-lists">
			    <div class="container">
			        <h4 class="title-process">
			        	Metode pembayaran
			        </h4>
					<div class="confirm-form">
			          <div class="order-data">
			            <input id="payment_method_bank" type="radio" class="input-radio" name="payment" value="ATM"  {#if $carform.payment=="ATM"#}checked{#/if#}><label class="radio-label" for="payment_method_bank">ATM虛擬代碼轉帳</label>
			          </div>
                   <!--   <div class="order-data">
			            <input id="payment_method_cvs" type="radio" class="input-radio" name="payment" value="CVS"><label class="radio-label" for="payment_method_cvs">超商代碼</label>
			          </div>
                      <div class="order-data">
			            <input id="payment_method_barcode" type="radio" class="input-radio" name="payment" value="BARCODE"><label class="radio-label" for="payment_method_barcode">超商條碼</label>
			          </div>  -->
			          <div class="order-data">
			            <input id="payment_method_card" type="radio" class="input-radio" name="payment" value="Credit" {#if $carform.payment=="Credit"#}checked{#/if#}><label class="radio-label" for="payment_method_card">信用卡</label><!--<img class="payment-icon" src="{#$__R#}/{#$__V#}/images/checkout/pay-by-card.jpg" alt="信用卡">-->
                              <select name="card_num" id="car_num" class="credit" style="margin-left: 10px;">
                                        <option value="" {#if $carform.card_num==""#}selected{#/if#}>一次付清</option>
                                  <!--      <option value="3" {#if $carform.card_num=="3"#}selected{#/if#}>3期</option>
                                         <option value="6" {#if $carform.card_num=="6"#}selected{#/if#}>6期</option>
                                         <option value="12" {#if $carform.card_num=="12"#}selected{#/if#}>12期</option>
                                         <option value="18" {#if $carform.card_num=="18"#}selected{#/if#}>18期</option> -->
                                    </select>  
			          </div>
			          
					</div>
			    </div>
			</section>
            </form>
			<section class="page-content-section checkout-lists">
				<div class="container">
                    <a class="btn-process btn-prev float-l" href="{#$__C#}/shopping-cart"><i class="fa fa-long-arrow-left"></i>Langkah sebelumnya</a>
					<a class="btn-process float-r" href="javascript:void(0)"  id="gonext"><i class="fa fa-long-arrow-right"></i>下一步</a>
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
	// $(document).ready(function(){
	// 	$("#navbar ul li").click(function(){
	// 		$(this).addClass("active");
	// 		$(this).siblings("li").removeClass("active");
	// 	});
	// 	$('#cart').hover(
	// 		function(){$('.cart-hover').show();},
	// 		function(){$('.cart-hover').hide();}
	// 	);
	// 	$('#itemList').mouseover(function(){
	// 		$('.cart-hover').show();
	// 	});
	// 	$('#itemList').mouseout(function(){			
	// 		$('.cart-hover').hide();
	// 	});
	// });
</script>
<script>
function updateItem(pid){
	$.ajax({
		url:"{#$__C#}/process/ps/setMyCart",
		data:"id="+pid+"&action=Update",
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
function pagereload(){
	window.location.reload();
}
jQuery(function( $ ){
	
	$("#gonext").click(function(){
		if($('#name').val().trim()==""){
			alert("請填Nama");
		}else if($('#Address').val().trim()==""){
			alert("請填收件Alamat");
		}else if($('#Email').val().trim()==""){
			alert("請填Email");
		}else if($('#Phone').val().trim()==""){
			alert("請填聯絡Telepon");
		}else if($("input[name=payment]:checked").length==0){	
		  alert("Silahkan pilih付款方式");
		}else{
			carform.submit();
		}
	})		
	
});
</script>
</html>