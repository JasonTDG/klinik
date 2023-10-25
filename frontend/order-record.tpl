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
        <div class="page-banner" style="background-color: transparent; background: url({#$__R#}/{#$__V#}/images/banner/page-banner-members.jpg) 50% 50% no-repeat; background-size: cover; background-attachment: fixed;">
          <div class="container">
            <div class="page-title col-md-6">
              <h1>會員Periksa pesanannya</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/member-center">Member Center</a></li>
<li><a href="{#$__C#}/order-record">會員Periksa pesanannya</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          <section class="page-content-section order-record">
  			    <div class="container">
              <h5 class="order-record-title"><i class="fa fa-clock-o"></i>以下是您的Periksa pesanannya，共<span>{#$totals#}</span>筆</h5>
              <table class="table table-hover table-striped responsive">
                <tbody>
                  <tr>
                    <th class="th-title">訂單編號</th>
                    <th class="th-title">購買時間</th>
                    <th class="th-title">總價</th>
                    <th class="th-title">訂單狀態</th>
                    <th class="th-title">Rincian</th>
                  </tr>
                  {#foreach item=o from=$row#}
                  <tr>
                    <td>{#$o.node#}</td>
                    <td>{#$o.create_at#}</td>
                    <td>${#$o.subject.totalAmount#}</td>
                    <td><span class="new-order">{#$o.statusFrontend#}</span></td>
                    <td><button type="button" class="btn btn-order-details" data-toggle="modal" data-target="#order-details-1" onClick="getcontent('{#$o.id#}')">訂單內容</button></td>
                  </tr>
                 {#/foreach#}
                </tbody>
              </table>
              <nav class="news-pagination">
				      <ul class="pagination">
				        {#$links3#}
				     </ul>
				   </nav>
              <!-- Modal -->
              <div class="modal fade" id="order-details-1" tabindex="-1" role="dialog" aria-labelledby="order-details-Label" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                  <div class="modal-content" id="datecontent">
                    
                  </div>
                </div>
              </div>
              <!-- end Modal -->
            </div>
			    </section>
          <section class="page-content-section order-record">
            <div class="container">
              <div class="submit-area">
                <button id="prestep" class="btn btn-sendform btn-back float-l" title="Member Center" onClick="location.href='{#$__C#}/member-center'"><i class="fa fa-arrow-circle-left"></i><span>Member Center</span></button>
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
<script type="text/javascript" src="{#$__R#}/{#$__V#}/js/jquery.responsive-table.js"></script>
  <script>
function getcontent(id){
  $.get( "{#$__C#}/process/ps/getordercontent/id/"+id, function( data ) {
	$( "#datecontent" ).html( data );
   //window.location.reload();
  // alert(data);
  });
}
</script>
</html>