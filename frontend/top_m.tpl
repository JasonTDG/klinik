<nav id="menu">
        <ul>
        {#foreach item=M from=$main_menu#}
        {#if $M.prev==1#}
			{#if $M.subject.subject=="Rumah"||$M.subject.subject=="HOME"||$M.subject.subject=="Rumah"||$M.subject.subject=="Home"#}
            <li><a href="{#$M.subject.link#}" target="{#$M.subject.target#}"><i class="fa fa-home"></i>{#$M.subject.subject#}</a></li>
			{#else#}
			<li><a href="{#$M.subject.link#}" target="{#$M.subject.target#}"><i class="fa fa-home"></i>{#$M.subject.subject#}</a></li>
			{#/if#}
		{#/if#}    
        {#if $M.prev==2#}
          <li><a href="{#$__C#}/{#$M.submenu1.action#}"><i class="fa fa-home"></i>{#$M.subject.subject#}</a></li>
        {#/if#}  
        {#if $M.prev==3#}
          <li><a {#if $M.subject.link2!=""#}href="{#$M.subject.link2#}"{#else#}href="javascript:void(0)"{#/if#}><i class="fa fa-users"></i>{#$M.subject.subject#}</a>
            <ul>
            {#foreach item=M2 from=$M.submenu2#}
              <li><a href="{#$__C#}/{#$M2.action#}"><i class="fa fa-users"></i>{#$M2.name#}</a></li>
            {#/foreach#}    
            </ul>
          </li>
        {#/if#}  
        {#if $M.prev==4#}
          <li><a href="{#$__C#}/products"><i class="fa fa-cube"></i>{#$M.subject.subject#}</a>
            <ul>
         {#if $ProductCatagory==3#}  
            {#foreach item=mp from=$menu_product#}
              <li><a href="{#$__C#}/products-category1/category/{#$mp.node#}"><i class="fa fa-cube"></i>{#$mp.subject.subject#}</a>
               {#if $mp.cate2#}
                <ul>
                {#foreach item=mp2 from=$mp.cate2#}
                  <li><a href="{#$__C#}/products-category2/category/{#$mp2.node#}"><i class="fa fa-cube"></i>{#$mp2.subject.subject#}</a>
                 {#if $mp2.cate3#}
                    <ul>
                    {#foreach item=mp3 from=$mp2.cate3#}
                      <li><a href="{#$__C#}/products-details/no/{#$mp3.node#}">{#$mp3.subject.subject#}</a></li>
                    {#/foreach#}  
                      
                    </ul>
                 {#/if#}     
                {#/foreach#}      
                  </li>
                  
                </ul>
               {#/if#}  
              </li>
            {#/foreach#}  
        {#/if#} 
        
        {#if $ProductCatagory==2#}  

        {#foreach item=mp from=$menu_product#}
                  <li><a href="{#$__C#}/products-category2/category/{#$mp.node#}"><i class="fa fa-cube"></i>{#$mp.subject.subject#}</a>
                 {#if $mp.cate2#}
                    <ul>
                    {#foreach item=mp2 from=$mp.cate2#}
                      <li><a href="{#$__C#}/products-details/no/{#$mp2.node#}">{#$mp2.subject.subject#}</a></li>
                    {#/foreach#}  
                      
                    </ul>
                 {#/if#}     
              
                  </li>
                  
            {#/foreach#}  
        {#/if#}   
        
      {#if $ProductCatagory==1#}  
            {#foreach item=mp from=$menu_product#}
           <li><a href="{#$__C#}/products-details/no/{#$mp.node#}">{#$mp.subject.subject#}</a></li>
            {#/foreach#}  
        {#/if#}   

             
            </ul>
          </li>
        {#/if#}  
        {#/foreach#}  
     <!-- <li class="mmenu-lang"><a href="javascript: void(0)"><i class="fa fa-language"></i>繁體中文</a></li>
    <li class="mmenu-lang2"><a href="javascript: void(0)"><i class="fa fa-language"></i>简体中文</a></li>
    <li class="mmenu-lang3"><a href="javascript: void(0)"><i class="fa fa-language"></i>English</a></li> 
-->
          
        </ul>
      </nav>