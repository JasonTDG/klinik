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
  <body onLoad="setTimeout('cvv()',1000);">
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
              <h1>Tanya</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/inquiry">Tanya</a></li>

              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
            <section class="page-content-section inquiry-form">
          <div class="container">
              <div class="section-title-group">
                <h1><span><i class="fa fa-pencil-square-o"></i>Mintalah formulirnya</span></span></h1>
                <div class="inquiry-products-area">
                  <p>Tanya produknya: </p>
                  {#foreach item=c from=$cart#}
                  <a id="item{#$c.id#}" class="inquiry-product-name" href="{#$__C#}/products-details/no/{#$c.node#}" targrt="_blank">{#$c.name#}</a>
                  <button id="item2{#$c.id#}" class="button-cancel" data-placement="top" data-toggle="tooltip" data-original-title="Batal" onClick="removeItem('{#$c.id#}')"><i class="fa fa-times"></i></button>
                 {#/foreach#}
                  
                </div>
              </div>
          </div>
          <div class="container">
            <form id="inquiry-products" class="inquiry-products-form" method="post" name="inquiryForm" action="{#$__C#}/process/ps/sendAskCar/">
              <h6><span class="required">*</span>Bidang yang harus diisi</h6>
              <table class="table table-hover inquiry-form-table">
                <tbody>
                {#foreach item=p from=$inp key=i#}
                  <tr>
                    <td class="form-title">{#if $p.viewB=="on"#}<span class="required">*</span>{#/if#}{#$p.subject.subject#}:</td>
                    <td class="form-data">
                    <input name="fields_required[{#$i#}]" type="hidden" {#if $p.viewB=="on"#}value="on"{#else#}value="off"{#/if#}>
                    <input name="fieldstxt[{#$i#}]" type="hidden" value="{#$p.subject.subject#}">
                    {#if $p.subject.type=="text"#}
                    <input name="fields[{#$i#}]" type="text" placeholder="" title="{#$p.subject.subject#}">
                    {#/if#}
                    {#if $p.subject.type=="number"#}
                    <input name="fields[{#$i#}]" type="number" placeholder="" title="{#$p.subject.subject#}">
                    {#/if#}
                    {#if $p.subject.type=="date"#}
                    <input name="fields[{#$i#}]" type="date" placeholder="" title="{#$p.subject.subject#}">
                    {#/if#}
                    {#if $p.subject.type=="textarea"#}
                    <textarea name="fields[{#$i#}]" cols="50" rows="6"></textarea>
                    {#/if#}
                    {#if $p.subject.type=="checkbox"#}
                    {#foreach item=cb from=$p.checkbox#}
                    <input type="checkbox" name="fields[{#$i#}][]" value="{#$cb#}">{#$cb#}
                    {#/foreach#}
                    {#/if#}
                    {#if $p.subject.type=="select"#}
                    <select name="fields[{#$i#}]">
                    {#foreach item=cb from=$p.select#}
                    <option>{#$cb#}</option>
                    {#/foreach#}
                    </select>
                    {#/if#}
                    {#if $p.subject.type=="radio"#}
                    {#foreach item=cb from=$p.radio#}
                    <input type="radio" value="{#$cb#}" name="fields[{#$i#}]">{#$cb#}
                    {#/foreach#}
                    {#/if#}
                    </td>
                  </tr>
                {#/foreach#}  
                 
                  <tr>
                    <td class="form-title"><span class="required">*</span>Kode verifikasi:</td>
                    <td class="form-data"><input id="verifynumber" name="code" type="text" placeholder="Masukkan kode verifikasi" title="Masukkan kode verifikasi">
                    <div class="verifynumber-img" id="vc"></div><div class="verifynumber-txt"><input type="button" value="Ubah peta" id="cvc" class="changenumber" title="Ubah peta" onClick="cvv()"></div></td>
                  </tr>
                </tbody>
              </table>
              <div class="submit-area mmsg"> 
              </div>
              <div class="submit-area"> 
                <button type="button" id="send" class="sendform" title="Kirimkan formulirnya"><i class="fa fa-paper-plane"></i><span>Kirimkan formulirnya</span></button>
              </div>
            </form>
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
<script src="{#$__BR#}/js/form/form.js" type="text/javascript"></script>
<script src="{#$__BR#}/js/blackUI/blackUI.js" type="text/javascript"></script>
<script>
$(window).on('load', function(){
  $(".category-item-inner").matchHeight({
      byRow: true,
      property: 'height',
      target: null,
      remove: false
  });
})

function getitemcount(){
	$.ajax({
		url:"{#$__C#}/process/ps/setMyCart",
		data:"action=itemcount",
		type:'POST',
		dataType:  'html' , 
		beforeSend:  function(){   
		   // $.blockUI({ message: '<img src="/web/res/img/ajax-loader.gif"/>Pengolahan...'});
		   getitemcontent_menu();
             },
		success: function(data){
               //   $.unblockUI();
			   if(data==0){
				 location.href='{#$__C#}/products';  
			   }
			      $("#itemQty").hide();
				  
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
				  $("#item"+pid).remove();
				  $("#item2"+pid).remove();
                }	 
		
    })
}
function cvv(al){
	var date=new Date();
	$('#vc').html('<img src="/web/verfiyNumber.php?c='+date.getSeconds()+'" height="30" align="absmiddle" />');
			  
}
</script> 
<script>
jQuery(function( $ ){
$('#send').bind('click', function(event) {
	var options = { 
	        target:        '#state' 
	        ,beforeSubmit:  function()
	        {    
	        // $('.mmsg').html('');
			  //alert(123);
	         $.blockUI({ message: 'Pengolahan...'});
             }
	           , success: function (data, status)
	            {
	               if(data.state){
					   $('.mmsg').html(data.msg);
			            $('#dataForm').resetForm();
                         $.unblockUI();
                       setTimeout("alert('Kirim selesai')", 350);
                       setTimeout("window.location.reload();", 500);	
				         }
	               else{
			         $('.mmsg').html(data.msg);
				     $.unblockUI();
	               }
					 
			    }
	           , error: function (data, status, e){}
	        
	        ,url:       '{#$__C#}/process/ps/sendAskCar/'   
	        ,type:      'post'      
	        ,dataType:  'json'      

	    }; 
        $('#inquiry-products').ajaxSubmit(options); 
});

});
</script>
</html>