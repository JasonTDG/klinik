<footer>
  <div class="container full-width">
      <div class="col-md-9">
          <p class="copyright">COPYRIGHT &copy; {#$company.subject.company#} All rights reserved.</p>
      </div>
      <div class="col-md-3 copyright-links">
      </div>
  </div>
</footer>

<script>

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
		data:"action=CarContent",
		type:'POST',
		dataType:  'html' , 
		beforeSend:  function(){   
		   // $.blockUI({ message: '<img src="/web/res/img/ajax-loader.gif"/>Pengolahan...'});
             },
		success: function(data){
		//	alert(data)
				  $("#car_menu").html(data);
                }	 
		
    })
}

function removeItem(pid,callback){
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

{#$googleJs3#}