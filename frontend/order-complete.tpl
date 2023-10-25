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
              <h1>購買完成</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li>購買完成</li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          	<section class="page-content-section checkout-lists complete">
			    <div class="container">
				    <div class="section-title-group">
	                  <h1><span><i class="fa fa-shopping-cart"></i>謝謝您的訂購</span></span></h1>
	                  <p>歡迎您下次再來</p>
	                </div>
	                <div class="title-process steps">
			        	<div class="shopping-step-group">
				        	<div class="shopping-step step1"><span>1</span>Keranjang belanja Daftar</div>
				        	<div class="shopping-step step2"><span>2</span>收件人資訊+付款方式</div>
				        	<div class="shopping-step step3"><span>3</span>確認訂購資訊</div>
				        	<div class="shopping-step step4 active"><span>4</span>Kirim訂單</div>
			        	</div>
			        </div>
			        <h4 class="title-order-number"><i class="fa fa-file-text-o"></i>訂單編號：{#$row.node#}</h4>
			        <p class="order-message">您將會收到一封來自我們的訂購確認信至<span>{#$mmemail#}</span>，請立即至信箱收信!</p>
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="heading-1">
					      <h4 class="panel-title">
					        <a data-toggle="collapse" data-parent="#accordion" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1"><i class="fa fa-arrow-circle-right"></i>
					          本次購買明细
					        </a>
					      </h4>
					    </div>
		    			<div id="collapse-1" class="panel-collapse" role="tabpanel" aria-labelledby="heading-1">
		      				<div class="panel-body">
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
								            	<a href="{#$__C#}/products-details/no/{#$car.node#}"><img src="{#$__U#}/{#$car.pic#}" alt="{#$car.name#}" width="60" title="{#$car.name#}"></a>
								            </td>
								            <td class="p-name">
								            	<a href="{#$__C#}/products-details/no/{#$car.node#}">{#$car.name#}</a>
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
						    <div class="p-fee">
					        	運費	<span class="p-fee-shipment">NT${#$row.subject.ship#}</span>
					        </div>
					        <div class="p-fee">
					        	<div class="p-fee-total">
					        		本次消費金額：<span class="total-cost">NT${#$row.subject.totalAmount#}</span>
					          	</div>
					        </div>
					      </div>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="heading-2">
					      <h4 class="panel-title">
					        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2"><i class="fa fa-arrow-circle-right"></i>
					          訂購人資訊
					        </a>
					      </h4>
					    </div>
					    <div id="collapse-2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading-2">
					      <div class="panel-body">
					        <div class="confirm-form">
					          <div class="confirm-data">
					            <label for="Name" class="inline">Nama：</label>
					            <div class="confirm-info">{#$carform.name#} </div>
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
                                                  
                                                  <div class="confirm-data">
					            <label for="Phone" class="inline">運送方式：</label>
					            <div class="confirm-info">{#$row.subject.shippingmethod#}</div>
					          </div>
                                                  <div class="confirm-data">
					            <label for="Phone" class="inline">付款方式：</label>
					            <div class="confirm-info">
                                                      {#if $row.subject.payment=="ATM"#}
                                                        ATM/轉帳/匯款
                                                        {#/if#}
                                                        {#if $row.subject.payment=="CVS"#}
                                                        超商代碼
                                                        {#/if#}
                                                        {#if $row.subject.payment=="BARCODE"#}
                                                        超商條碼
                                                        {#/if#}
                                                        {#if $row.subject.payment=="Credit"#}
                                                        線上刷卡 {#if $row.subject.card_num==""#}一次付清{#else#}{#$row.subject.card_num#}期{#/if#}
                                                        {#/if#}
                                                        {#if $row.subject.payment=="CVSCOD"#}
                                                        超商取貨付款 
                                                        {#/if#}
                                                    </div>
					          </div>
                                                 
                                                {#if $row.subject.payment=="ATM"#}     
                                                    
                                                   <div class="confirm-data">
					            <label for="Phone" class="inline">繳費銀行/代碼：</label>
                                                    <div class="confirm-info">
                                                      {#if $BankCode#}  
                                                        {#$payment_2#} / {#$BankCode#}
                                                        {#else#} 
                                                      {#$payment_2#} / {#$row.subject.BankCode#}
                                                     {#/if#} 
                                                    </div>
					          </div>
                                                    
                                                  <div class="confirm-data">
					            <label for="Phone" class="inline">ATM虛擬Nomor rekening：</label>
                                                    <div class="confirm-info">
                                                    {#if $vAccount#}{#$vAccount#}{#else#}{#$row.subject.vAccount#}{#/if#}
                                                    </div>
					          </div>
                                                    
                                                  <div class="confirm-data">
					            <label for="Phone" class="inline">繳費期限：</label>
                                                    <div class="confirm-info">
                                                    {#if $ExpireDate#}{#$ExpireDate#}{#else#}{#$row.subject.ExpireDate#}{#/if#}
                                                    </div>
					          </div>  
                                                    
                                                {#/if#} 
                                                
                                                 {#if $row.subject.payment=="Credit"#}
                                                  <div class="confirm-data">
					            <label for="Phone" class="inline">付款狀態：</label>
                                                    <div class="confirm-info">
                                                {#if $RtnCode#}
                                                    {#if $RtnCode==1#}
                                                    已完成付款
                                                    {#else#}
                                                    未完成付款 ,代碼:{#$RtnCode#}/訊息:{#$RtnMsg#}
                                                    {#/if#}  
                                                 {#else#}

                                                    {#if $row.subject.RtnCode==1#}
                                                    已完成付款
                                                    {#else#}
                                                    未完成付款 ,代碼:{#$row.subject.RtnCode#}/訊息:{#$row.subject.RtnMsg#}
                                                    {#/if#}
                                                 {#/if#}  
                                                        
                                                    </div>
					          </div>
                                                 
                                                  <div class="confirm-data">
					            <label for="Phone" class="inline">綠界交易代碼：</label>
                                                    <div class="confirm-info">
                                                     {#if $TradeNo#}{#$TradeNo#} {#else#}{#$row.subject.TradeNo#} {#/if#}
                                                    </div>
					          </div>
                                                    
                                                  <div class="confirm-data">
					            <label for="Phone" class="inline">交易成功時間：</label>
                                                    <div class="confirm-info">
                                                     {#if $RtnCode==1#}{#$PaymentDate#}{#else#}{#$row.subject.PaymentDate#} {#/if#}
                                                    </div>
					          </div> 
                                                 
                                                 
                                                 {#/if#} 
                                                  
						</div>
					      </div>
					    </div>
					  </div>
					</div>
			    </div>
			</section>
			<section class="page-content-section checkout-lists complete">
				<div class="container">
					<a class="btn-process float-r" href="{#$__C#}/order-record"><i class="fa fa-file-text-o"></i>Catatan pesanan</a>
					<a class="btn-process float-r" href="/"><i class="fa fa-home"></i>Rumah</a>
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