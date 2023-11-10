
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
<link rel="icon" type="image/png" href="{#$__R#}/{#$__V#}/images/favicons/favicon.png" sizes="32x32">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="{#$__R#}/{#$__V#}/images/favicons/mstile-144x144.png">
<meta name="theme-color" content="#ffffff">
<title>{#$title#} - {#$actionTitle#}</title>
{#if $MODE=='test'#}
<meta name="description" content="{#$description#}" />
<meta name="keywords" content="{#$keywords#}" />
{#else#}
<meta name="robots" content="none">
<meta name="robots" content="noindex,nofollow">
<!--<meta name="description" content="{#$description#}" />
<meta name="keywords" content="{#$keywords#}" />-->
{#/if#}
<script>
    !function(a){"use strict";var b=function(b,c,d){function j(a){return e.body?a():void setTimeout(function(){j(a)})}function l(){f.addEventListener&&f.removeEventListener("load",l),f.media=d||"all"}var g,e=a.document,f=e.createElement("link");if(c)g=c;else{var h=(e.body||e.getElementsByTagName("head")[0]).childNodes;g=h[h.length-1]}var i=e.styleSheets;f.rel="stylesheet",f.href=b,f.media="only x",j(function(){g.parentNode.insertBefore(f,c?g:g.nextSibling)});var k=function(a){for(var b=f.href,c=i.length;c--;)if(i[c].href===b)return a();setTimeout(function(){k(a)})};return f.addEventListener&&f.addEventListener("load",l),f.onloadcssdefined=k,k(l),f};"undefined"!=typeof exports?exports.loadCSS=b:a.loadCSS=b}("undefined"!=typeof global?global:this);
</script>    
<script type="text/javascript">
    loadCSS( "{#$__R#}/{#$__V#}/css/style.css?v=1111");
</script>
<style>
#preloader{
  overflow:hidden;
  position:fixed;
  top:0;
  left:0;
  right:0;
  bottom:0;
  background-color:#FFF;
  z-index:99999999999
}
#preloader > img {
  width: 100%;
  max-width: 100px;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
}

</style>


<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
{#$googleJs1#}
{#$customerJs#}



