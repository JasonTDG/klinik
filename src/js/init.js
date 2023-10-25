// Preloader
$(window).load(function() {
	$("#status").fadeOut();
	$("#preloader").delay().fadeOut("slow");
	$("body").delay().queue(function(next){$(this).addClass("loaded");next();})
});

// Fixed Menu
if( $('header').hasClass('header-nav') ){
  $(window).on('scroll',function(){
    if( $(window).scrollTop()>100 ){
      $('.header-nav').addClass('sticky animated fadeInDown');
    }
    else{
      $('.header-nav').removeClass('sticky animated fadeInDown');
    }
  });
}

// Dropdown Menu
$('.navbar-nav .dropdown').hover(function() {
  $(this).find('.dropdown-menu').first().stop(true, true).slideDown(150);
}, function() {
  $(this).find('.dropdown-menu').first().stop(true, true).slideUp(150)
});

// Navigation Active
$(function() {
  $('#navbar .navbar-nav').smartmenus({
    subMenusSubOffsetX: 0,
    subMenusSubOffsetY: 0,
    markCurrentItem:  true,
    subIndicatorsPos:   'append', // position of the SPAN relative to the menu item content ('prepend', 'append')
    showTimeout:    50,   // timeout before showing the sub menus
    hideTimeout:    50,   // timeout before hiding the sub menus
  });
});


// Shopping Cart Dropdown Menu
$(document).ready(function () {
    $("#cart .cart-dropdown").hover(function () {
            $('.mini-cart-window').stop(true,true).slideDown(200);
        }, function () {
            $('.mini-cart-window').stop(true,true).slideUp(200);
    });
    $("#cart .member-dropdown").hover(function () {
            $('.mini-member-window').stop(true,true).slideDown(200);
        }, function () {
            $('.mini-member-window').stop(true,true).slideUp(200);
    });
    $("#cart .lang-dropdown").hover(function () {
            $('.mini-lang-window').stop(true,true).slideDown(200);
        }, function () {
            $('.mini-lang-window').stop(true,true).slideUp(200);
    });
});

// Mobile Menu
$(function() {
  $('nav#menu').mmenu({
    extensions  : [ 'effect-slide', 'pageshadow' ],
    header    : true,
    counters  : true,
    footer    : {
      add     : true,
      content   : 'Copyright © 2015 Oswald Corporation All rights reserved.'
    }
  });
});

// Search
$('#m-search-icon').click(function() {
  $('#search-form').fadeIn(300);
  $('#search-form input').focus();
});
$('#search-form input').blur(function() {
  $('#search-form').fadeOut(300);
});

// Tooltips
$('[data-toggle="tooltip"]').tooltip({
    'placement': 'top'
});

// Google Map
$('.google-maps, .branches-item-map, .contact-info-map').on({
  mouseleave: function() {
      $(this).find('iframe').css('pointer-events','none');
  },
  click : function() {
      $(this).find('iframe').css('pointer-events','auto');
  }
}).find('iframe').css('pointer-events','none');

// Back to Top
$(document).ready(function(){
	// hide #back-top first
	$("#back-top").hide();
	// fade in #back-top
	$(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 100) {
				$('#back-top').fadeIn();
			} else {
				$('#back-top').fadeOut();
			}
		});
		// scroll body to 0px on click
		$('#back-top').click(function () {
			$('body,html').animate({
				scrollTop: 0
			}, 800);
			return false;
		});
	});
});

// Scrollbar
$(document).ready(function() {  
    $("html").niceScroll();
});

// Scrollbar Check IE11
function IEVersion() {
      if (!!navigator.userAgent.match(/Trident\/7\./)) {
        return 11;
      }
    }

    if (IEVersion() != 11) 
    {
      $('html').niceScroll({
        cursorcolor: "#222",
        zindex: '99999',
        cursorminheight: 60,
        scrollspeed: 80,
        cursorwidth: 7,
        autohidemode: true,
        background: "#000",
        cursorborder: 'none',
        cursoropacitymax: .7,
        cursorborderradius: 0,
        horizrailenabled: false
      });
    }