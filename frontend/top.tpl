{#$googleJs2#}
<header class="header-nav">
    <div class="header-nav-top animated fadeIn">
      <div class="container header-shopping-cart">
      {#if $usecart==1#}
        <ul id="cart">
         {#if $itemcount>0#}
          <li class="cart-dropdown">
            <a href="javascript:void(0)" title="Keranjang belanja"><i class="fa fa-shopping-cart"></i><span id="itemQty" class="cart-number">{#if $itemcount>0#}{#$itemcount#}{#else#}0{#/if#}</span></a>
            <div class="mini-cart-window nav-dropdown">
            <div id="car_menu">
            <div class="nav-dropdown-item-wrapper">
              {#foreach item=car from=$cart#}
                <div class="nav-dropdown-item">
                  <div class="cart_list-item">
                    <div class="cart_list-item-img">
                      <a href="{#$__C#}/products-details/no/{#$car.node#}"><img src="{#$__U#}/{#$car.pic#}" alt="cart-product"></a>
                    </div>
                    <div class="cart_list-item-name">
                      <a class="shop-item-name" href="{#$__C#}/products-details/no/{#$car.node#}">{#$car.name#}
                      </a>
                      <div class="cart_list_product_quantity"><span class="amount-item">{#$car.qty#}</span>x<span class="amount-money">${#$car.price#}</span></div>
                    </div>
                    <div class="cart_list-item-remove"> 
                      <a href="#" class="remove" data-placement="top" data-toggle="tooltip" data-original-title="Hapus" onclick="removeItem('{#$car.id#}')"><i class="fa fa-trash-o"></i></a>
                    </div>
                  </div>
                </div>
              {#/foreach#}
            </div> 
            
              <div class="btn-mini-cart">
                <div class="minicart_total">Subtotal<span class="amount-money-total">${#$grandtotal#}</span></div>
                <div class="minicart-buttons">
                  <a href="{#$__C#}/shopping-cart" class="btn-viewcart" title="Keranjang belanja"><i class="fa fa-shopping-cart"></i>Keranjang belanja</a>
                  
                </div>
              </div>
             </div> 
            </div>
          </li>
         {#else if $itemcount==0#}
          <li class="cart-dropdown">
            <a href="#" title="Keranjang belanja"><i class="fa fa-shopping-cart"></i><span id="itemQty" class="cart-number">0</span></a>
            <div class="mini-cart-window nav-dropdown">
            <div id="car_menu">
              <div class="nav-dropdown-empty">
                <p>Tidak ada produk</p>
              </div>
             </div> 
            </div>
          </li>

         {#/if#} 
         
          {#if $mmid==""#}
          <li class="member-dropdown">
            <a href="{#$__C#}/login">Login</a>
          </li>
          {#else#}
          <li class="member-dropdown">
            <a href="javascript:void(0)">Member Center</a>
            <div class="mini-member-window nav-dropdown">
              <div class="member-window-item">
                <h6><i class="fa fa-smile-o"></i>Halo, {#$mmname#}</h6>
              <a href="{#$__C#}/member-center" class="btn-member-center"><i class="fa fa-home"></i>Member Center</a>  
                <a href="{#$__C#}/member-data" class="btn-member-modify"><i class="fa fa-pencil-square-o"></i>Ubah informasi</a>
              <a href="{#$__C#}/order-record" class="btn-order-record"><i class="fa fa-file-text-o"></i>Periksa pesanannya</a>  
              </div>
              <div class="btn-mini-cart">
                <div class="minicart-buttons">
                  <a href="{#$__C#}/process/ps/exeMemberLogout" class="btn-logout" title="Keluar"><i class="fa fa-sign-out"></i>Keluar</a>
                </div>
              </div>
            </div>
          </li>

           {#/if#}
          <!-- <li class="lang-dropdown">
            <a href="javascript: void(0)"><i class="fa fa-globe"></i><span>繁體中文</span></a>
            <ul class="mini-lang-window nav-dropdown">
              <li class="lang-item"><a href="/zh_CN/index">简体中文</a></li>
              <li class="lang-item"><a href="/EN/index">English</a></li>
              
            </ul>
          </li> -->

        </ul>
      {#else if $usecart==0#}  
        <ul id="cart">
          <li class="cart-dropdown">
            <a href="#" title="Tanya"><i class="fa fa-envelope-o"></i><span id="itemQty" class="cart-number">{#if $itemcount>0#}{#$itemcount#}{#else#}0{#/if#}</span></a>
            <div class="mini-cart-window nav-dropdown" >
            <div id="car_menu">
            {#foreach item=car from=$cart#}
              <div class="nav-dropdown-item">
                <div class="cart_list-item">
                  <div class="cart_list-item-img">
                    <a href="{#$__C#}/products-details/no/{#$car.node#}"><img src="{#$__U#}/{#$car.pic#}" alt="cart-product"></a>
                  </div>
                  <div class="cart_list-item-name">
                    <a class="shop-item-name" href="{#$__C#}/products-details/no/{#$car.node#}">{#$car.name#}</a>
                  </div>
                  <div class="cart_list-item-remove"> 
                  <a href="#" class="remove" data-placement="top" data-toggle="tooltip" data-original-title="Hapus" onclick="removeItem('{#$car.id#}')"><i class="fa fa-trash-o"></i></a>				
				  </div>
                </div>
              </div>
            {#/foreach#}  
            </div>
              <div class="btn-mini-cart">
                <div class="minicart-buttons">
                  <a href="{#$__C#}/inquiry" class="btn-viewcart" title="Lihat kueri"><i class="fa fa-envelope-o"></i>Lihat kueri</a>
                </div>
              </div>
            </div>
          </li>
          {#if $mmid==""#}
          <li class="member-dropdown">
            <a href="{#$__C#}/login">Login</a>
          </li>
          {#else#}
          <li class="member-dropdown">
            <a href="#">Member Center</a>
            <div class="mini-member-window nav-dropdown">
              <div class="member-window-item">
                <h6><i class="fa fa-smile-o"></i>Halo, Teman</h6>
        <!--        <a href="{#$__C#}/member-center" class="btn-member-center"><i class="fa fa-home"></i>Member Center</a>  -->
                <a href="{#$__C#}/member-data" class="btn-member-modify"><i class="fa fa-pencil-square-o"></i>Ubah informasi</a>
        <!--        <a href="{#$__C#}/order-record" class="btn-order-record"><i class="fa fa-file-text-o"></i>Periksa pesanannya</a>  -->
              </div>
              <div class="btn-mini-cart">
                <div class="minicart-buttons">
                  <a href="{#$__C#}/process/ps/exeMemberLogout" class="btn-logout" title="Keluar"><i class="fa fa-sign-out"></i>Keluar</a>
                </div>
              </div>
            </div>
          </li>

           {#/if#}
           <!--<li class="lang-dropdown">
            <a href="javascript: void(0)"><i class="fa fa-globe"></i><span>繁體中文</span></a>
            <ul class="mini-lang-window nav-dropdown">
              <li class="lang-item"><a href="/zh_CN/index">简体中文</a></li>
              <li class="lang-item"><a href="/EN/index">English</a></li>
             
            </ul>
          </li>   -->

        </ul>
      {#/if#}  
      </div>
    </div>
    <div id="nav-main" class="header-nav-main">
      <div class="container header-links">
        <nav class="navbar">
          <div class="logo animated fadeIn">
            <a class="logo-pc" href="/"><img src="{#$__R#}/{#$__V#}/images/common/logo.png" alt="Logo" onerror="this.onerror=null; this.src='{#$__R#}/{#$__V#}/images/common/logo.png'" /></a>
            <a class="logo-mobile" href="/"><img src="{#$__R#}/{#$__V#}/images/common/logo.png" alt="Logo" onerror="this.onerror=null; this.src='{#$__R#}/{#$__V#}/images/common/logo.png'" /></a>
          </div>
           <div id="search-form" class="header-search">
            <form id="search-products" method="post" name="searchForm" action="{#$__C#}/process/ps/searchitem" onsubmit="checkform();">
              <input type="text" id="search" name="search" value="Cari produk" placeholder="Cari produk" onFocus="if (this.value == 'Cari produk') this.value = '';" onBlur="if (this.value == '') this.value = 'Cari produk';" />
            </form>
          </div> 
          
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            {#foreach item=M from=$main_menu key=i#}
            {#if $M.prev==1#}
				{#if $M.subject.subject=="Rumah"||$M.subject.subject=="HOME"||$M.subject.subject=="Rumah"||$M.subject.subject=="Home"#}
				<li><a href="{#$M.subject.link#}" target="{#$M.subject.target#}">{#$M.subject.subject#}</a></li>
				{#else#}
				<li><a href="{#$M.subject.link#}" target="{#$M.subject.target#}">{#$M.subject.subject#}</a></li>
				{#/if#}
			{#/if#}
            {#if $M.prev==2#}
            <li><a href="{#$__C#}/{#$M.submenu1.action#}">{#$M.subject.subject#}</a></li>
            {#/if#}
            {#if $M.prev==3#}
            <li class="dropdown">
                <a id="drop{#$i#}" {#if $M.subject.link2!=""#}href="{#$M.subject.link2#}"{#else#}href="javascript:void(0)"{#/if#} class="dropdown-toggle disabled" data-hover="dropdown" aria-haspopup="true" role="button" aria-expanded="false">{#$M.subject.subject#}</a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop{#$i#}">
                {#foreach item=M2 from=$M.submenu2#}
                  <li role="presentation"><a role="menuitem" tabindex="-1" href="{#$__C#}/{#$M2.action#}">{#$M2.name#}</a></li>
                {#/foreach#}  
                 
                </ul>
              </li>
            {#/if#}
            {#if $M.prev==4#}
                <li class="dropdown">
                <a id="drop{#$i#}" href="{#$__C#}/products" class="dropdown-toggle disabled" data-hover="dropdown" aria-haspopup="true" role="button" aria-expanded="false">{#$M.subject.subject#}</a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="drop{#$i#}">
            {#if $ProductCatagory==3#}        
                {#foreach item=mp from=$menu_product#}
                  <li class="dropdown-submenu" role="presentation"><a role="menuitem" tabindex="-1" href="{#$__C#}/products-category1/category/{#$mp.node#}">{#$mp.subject.subject#}</a>
                  {#if $mp.cate2#}
                    <ul class="dropdown-menu">
                    {#foreach item=mp2 from=$mp.cate2#}
                      <li class="dropdown-submenu"><a tabindex="-1" href="{#$__C#}/products-category2/category/{#$mp2.node#}">{#$mp2.subject.subject#}</a>
                      {#if $mp2.cate3#}
                        <ul class="dropdown-menu">
                          {#foreach item=mp3 from=$mp2.cate3#}
                          <li><a href="{#$__C#}/products-details/no/{#$mp3.node#}">{#$mp3.subject.subject#}</a></li>
                          {#/foreach#}
                         
                        </ul>
                        {#/if#}
                      </li>
                     {#/foreach#} 

                    </ul>
                  {#/if#}  
                  </li>
                 {#/foreach#} 
             {#/if#}

             {#if $ProductCatagory==2#}        
                {#foreach item=mp from=$menu_product#}
                  <li class="dropdown-submenu" role="presentation"><a role="menuitem" tabindex="-1" href="{#$__C#}/products-category2/category/{#$mp.node#}">{#$mp.subject.subject#}</a>
                  {#if $mp.cate2#}
                    <ul class="dropdown-menu">
                          {#foreach item=mp2 from=$mp.cate2#}
                          <li class="dropdown-submenu"><a tabindex="-1" href="{#$__C#}/products-details/no/{#$mp2.node#}">{#$mp2.subject.subject#}</a>
                          {#/foreach#}
                    </ul>
                  {#/if#}  
                  </li>
                 {#/foreach#} 
             {#/if#}
             
             {#if $ProductCatagory==1#}        
                {#foreach item=mp from=$menu_product#}
                  <li class="dropdown-submenu" role="presentation"><a role="menuitem" tabindex="-1" href="{#$__C#}/products-details/no/{#$mp.node#}">{#$mp.subject.subject#}</a>
                  </li>
                 {#/foreach#} 
             {#/if#}

                </ul>
              </li>
            {#/if#}
            {#/foreach#}
              
            </ul>
          </div>
          <a id="m-search-icon" title="Cari produk"><i class="fa fa-search"></i></a>
        </nav>
      </div>
    </div>
    <div class="menu-toggle"><a id="menu-toggle-btn" class="FixedTop" href="#menu" title="Perluas"><span></span></a></div>
 </header>
 

