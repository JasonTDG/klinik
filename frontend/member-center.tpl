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
              <h1>Member Center</h1>
            </div>
            <div class="page-breadcrumb col-md-6">
              <ul>
                <li><a href="/">Rumah</a></li>
<li><a href="{#$__C#}/member-center">Member Center</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- end Banner -->
        <!-- Main Content -->
        <article class="main-content">
          <section class="page-content-section member-center">
  			    <div class="container">
              <div class="panel-section col-md-12">
                <h6><i class="fa fa-smile-o"></i>Halo, {#$mmname#}{#$mmsex#}</h6>
              </div>
              <div class="panel-section col-md-6">
                <div class="panel">
                  <div class="panel-heading">
                    <h2 class="panel-title"><i class="fa fa-file-text-o"></i>Periksa pesanannya</h2>
                  </div>
                  <div class="panel-body">
                    <ul>
                      <li><a class="btn btn-members" href="{#$__C#}/order-record"><i class="fa fa-cog"></i>Periksa pesanannya</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="panel-section col-md-6">
                <div class="panel">
                  <div class="panel-heading">
                    <h2 class="panel-title"><i class="fa fa-user"></i>Pengelolaan data</h2>
                  </div>
                  <div class="panel-body">
                    <ul>
                      <li><a class="btn btn-members" href="{#$__C#}/member-data"><i class="fa fa-cog"></i>Ubah informasi</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="panel-section logout col-md-12"><a class="btn btn-members-logout" href="{#$__C#}/process/ps/exeMemberLogout"><i class="fa fa-sign-out"></i>Logout anggota</a></div>
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