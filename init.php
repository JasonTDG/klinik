<?php 


        session_start();
        
       $_SESSION['ckfinder']='ckfinder';
        
        date_default_timezone_set('Asia/Taipei');
        
	    header("Content-Type: text/html; charset=UTF-8");
	    

		define('__ROOT',$_SERVER[DOCUMENT_ROOT]);
		//echo __ROOT;
		
		//define('__DOMAIN','tsi.iproducts.com.tw' );
		//客戶網址  
		define('__DOMAIN',$_SERVER[SERVER_NAME] );
		//echo __DOMAIN;
		//**客戶資訊
		 define("__COMPANY","Klinik");
		
		
		//模版版本
		define('__VERSSION','D001');
		//lib
		define('__LIB',__ROOT.'lib');
				
		//db
		define('__DB',__ROOT.'db');	

		//tmp
		define('__TMP',__ROOT.'tmp');			
		
		//config
		define('__CONFIG',__ROOT.'config');

		//res
		define('__WEB_RES','/web/res');
		
		define('__ROOT_RES',__ROOT.'web/res');

		//upload
		define('__WEB_UPLOAD','/web/upload');		
		
		define('__ROOT_UPLOAD',__ROOT.'web/upload');

		//JQ
		define('__JQ','/web/res/lib/jquery');			
		
		//錯誤導向頁面
		define('__ERROR_IDENTITY','app/errorIdentity');

		//登入頁面
		define('__LOGIN','app/login');		
		
		//登入成功導向
		define('__LOGIN_SUCESS','app/welcome');
		



        //root管理者帳號密碼
         define('__ROOT_USER','allproducts');
        define('__ROOT_PASSWORD','27892000');
        define('__ROOT_EMAIL','kevin3918@tradeserv.com');
        define('__ROOT_MOBILE','');
        define('__ROOT_NAME','亞普達');
        define('__ROOT_GROUP','亞普達有限公司');
		define('__ROOT_LOGIN_SUCESS','app/welcome');		//登入成功導向			

		//客戶logo
		//define('__CUSTOMER_LOGO', '<img src="/res/zh_TW/images/problem2.JPG" width="150px"/>');
define('__CUSTOMER_LOGO', '<h3><a href="http://'.__DOMAIN.'" target="_blank">奧斯沃電腦股份有限公司</a></h2>');
				
        //控制器名稱
		define("__INDEX",'index.php');	
		
		include_once __CONFIG.'/config.php';
		
		include_once __CONFIG.'/lang.php';		
		
        //include_once __PLUGIN.'/lib/system/system.php';		
		
		include_once __LIB.'/core/class.php';

		include_once __LIB.'/core/func.php';	
		
		include_once __CONFIG.'/module.php';		

		include_once __PLUGIN.'/lib/PHPMailer/kMail.php';	
                
                //                include_once __PLUGIN.'lib/PHPExcel/PHPExcel.php';//
//                include_once __PLUGIN.'lib/PHPExcel/PHPExcel/Writer/Excel2007.php';//
//                include_once __PLUGIN.'lib/PHPExcel/PHPExcel/Writer/Excel5.php';//
//                include_once __PLUGIN.'lib/PHPExcel/PHPExcel/IOFactory.php';//
		
		
		//include_once __PLUGIN.'/lib/tcpdf/tcpdf.php';	
		
		
		//global $ProductCatagory; 
		define('__ProductCatagory',2);//產品層數
		define('__UseCart',2);//使用:購物車1 詢問車0 
		define('__ProductAmount',500);//產品層數

		

?>