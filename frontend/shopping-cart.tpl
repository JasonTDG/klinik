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
              <h1>Keranjang belanja</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/shopping-cart">Keranjang belanja</a></li>
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
	                  <h1><span><i class="fa fa-shopping-cart"></i>Keranjang belanja Daftar</span></span></h1>

	                </div>
			        <div class="title-process steps">
			        	<div class="shopping-step-group">
				        	<div class="shopping-step step1 active"><span>1</span>Keranjang belanja Daftar</div>
				        	<div class="shopping-step step2"><span>2</span>收件人資訊+付款方式</div>
				        	<div class="shopping-step step3"><span>3</span>確認訂購資訊</div>
				        	<div class="shopping-step step4"><span>4</span>送出訂單</div>
			        	</div>
			        </div>
				        <table width="100%" border="0" class="cartlists-table responsive" cellspacing="0">
				          	<thead>
					            <tr>
						            <th class="p-remove">刪除</th>
						         	<th class="p-img">商品圖</th>
						            <th class="p-name">商品名稱</th>
						            <th class="p-price">單價</th>
						            <th class="p-quantity">Kuantitas</th>
						            <th class="p-total">小計</th>          
					          	</tr>
				          	</thead>
				          	<tbody>
                            {#foreach item=car from=$cars key=i#}
					          	<tr>
						            <td class="p-remove">
						            	<a href="javascript:void(0)" onClick="removeItem('{#$car.id#}',pagereload())" title="刪除" ><i class="fa fa-trash"></i></a>  
									
								   </td>
						            <td class="p-img">
						            	<img src="{#$__U#}/{#$car.pic#}" alt="{#$car.name#}">
						            </td>
						            <td class="p-name">
						            	<a href="{#$__C#}/products-details/no/{#$car.node#}" target="_blank">{#$car.name#}</a>
						            </td>
						            <td class="p-price">
                    					<ins>NT${#$car.price#}</ins>
						            </td>
						            <td class="p-quantity">
                                    
                                    <select name="num" class="quantity" onChange="getUpdateInfo('{#$car.id#}',this.value,'{#$i#}')">
						             <option value="0">Silahkan pilih</option>
                                    {#section name=i  start=1  step=1 loop=$car.inv+1#}
                                     <option value="{#$smarty.section.i.index#}" {#if $car.qty==$smarty.section.i.index#}selected{#/if#}>{#$smarty.section.i.index#}</option>
                                    {#/section#}
						            </select>    
                                    
						            </td>
						            <td class="p-total" id="sub{#$i#}">NT${#$car.subtotal#}</td>
					          	</tr>
                              {#/foreach#}  
					          	
				        	</tbody>
				        </table>           	
				    
				    <!--<div class="p-fee">
			        	運費	<span class="p-fee-shipment">NT${#$ship#}</span>
			        </div>-->
			        <div class="p-fee">
			        	<div class="p-fee-total">
			        		總計：<span class="total-cost" id="grand">NT${#$total#}</span>
			          	</div>               
				        <!--<div class="p-fee-total-intro">
				       		※ 單筆訂單金額<span>{#$deliverfeelimit#}元以上</span>即享免運費！<br>未滿{#$deliverfeelimit#}元酌收<span>{#$deliverfee#}元</span>宅配處理費。
						</div>-->
			        </div>
			    </div>
			</section>
            {#if $ship#}
            <form class="checkout-form" id="shipform" action="{#$__C#}/process/ps/setCarShip" method="post">
                
            <section class="page-content-section checkout-lists">
			    <div class="container">
			        <h4 class="title-process">
			        	運費計算
			        </h4>
					<div class="confirm-form">
                    {#foreach item=p from=$ship key=i#}
			          <div class="order-data">
			            <input id="payment_method_cvs{#$i#}" type="radio" class="input-radio" name="ship" value="{#$p.id#}" data-order_button_text="" {#if $carform.ship==$p.id#}checked{#/if#}>
                        <label class="radio-label" for="payment_method_cvs{#$i#}">{#$p.subject.subject#}</label>
                        <div class="radio-label-info">{#$p.content.contentA#}</div>
			          </div>
                    {#/foreach#}  
			         
					</div>
					<!--<div class="p-fee">
			        	運費	<span class="p-fee-shipment">NT$0</span>
			        </div>
			        <div class="p-fee">
			        	<div class="p-fee-total">
			        		總計：<span class="total-cost">NT$23,899</span>
			          	</div>
			        </div>-->
			    </div>
			</section>
             </form>
            {#/if#}
			<section class="page-content-section checkout-lists">
				<div class="container">
					<a class="btn-process float-r" href="javascript:void(0)" id="gonext"><i class="fa fa-long-arrow-right"></i>下一步</a>
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
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.responsive-table.js"></script>
<script type='text/javascript' src='{#$__BR#}/js/blackUI/blackUI.js'></script>
<script>
function getUpdateInfo(pid,qty,area){
	$.ajax({
		url:"{#$__C#}/process/ps/getUpdateInfo",
		data:"id="+pid+"&qty="+qty,
		type:'POST',
		dataType:  'json' , 
		beforeSend:  function(){   
		   $.blockUI({ message: '<h2>Pengolahan...</h2>'});
             },
		success: function(data){
                  $.unblockUI();
				  //alert(data.grandtotal);
				  $("#sub"+area).html('NT$'+data.subtotal);
				  $("#grand").html('NT$'+data.total);
				  getitemcount();

                }	 
		
    })
	
	/*$.ajax({
		url:"{#$__C#}/process/ps/getUpdateInfo",
		data:"id="+pid,
		type:'POST',
		dataType:  'json' , 
		beforeSend:  function(){   
		    
             },
		success: function(data){
                  $.unblockUI();
				 // alert(data.grandtotal);
			      $("#sub"+area).html('NT$'+data.subtotal);
				  $("#grand"+area).html('NT$'+data.grandtotal);
                }	 
		
    })*/
}

function pagereload(){
	window.location.reload();
}


</script>
<script>
jQuery(function( $ ){
	
	$("#gonext").click(function(){
		var carnum=0;			
		$("select[name^=num]").each(function(){
				if($(this).val()==0){
					carnum++;
				}
			  });	
		if(carnum>0){
			alert("Kuantitas不得為零");
		}else if($(":radio:checked").length==0){
			alert("Silahkan pilih運費");
			
		}else{
			$('#shipform').submit();
		}
	})		
	$("select[name^=num]").change(function(){
											
	})
});
</script>				
</html>