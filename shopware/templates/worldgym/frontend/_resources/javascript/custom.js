// ****************************************************************
// * IKURA - Clean, Minimal, Responsive, Shopware Template
// * Copyright 2014, TAB10 (http://tab10.de)
// ****************************************************************


$(document).ready(function() {
    var $mainNav    = $('#main_navigation'),
        $content    = $('#content'),
        subBtn      = $('.sub_opt_btn'),
        leftAside   = $('#left_sidebar'),
        asideToggle = $('#aside_toggle'),
        mobileNavButton = $('.mobile_nav_button');

    // --------------------------------------------------------
    // mobile nav
    // --------------------------------------------------------
    mobileNavButton.on('click', function(){
        var self = $(this);

        if ( self.hasClass('active') ){
            self.removeClass('active');
            $mainNav.removeClass('active');
        } else {
            self.addClass('active');
            $mainNav.addClass('active');
            $('body, html').scrollTop(0);
        }
    });

    // --------------------------------------------------------
    // subobtions
    // --------------------------------------------------------
    $('#sub_option_toggle').on('click', function(){
        var self = $(this),
            subOptions = $('.sub_options');

        if ( self.hasClass('active') ){
            self.removeClass('active');
            subOptions.removeClass('active');
            subBtn.hide();
        } else {
            self.addClass('active');
            subOptions.addClass('active');
            subBtn.show();
            $('#servicenavi').hide();
        }
    });

    asideToggle.on('click', function(){
        var self = $(this);

        if ( self.hasClass('active') ){
            self.removeClass('active');
            leftAside.hide();
        } else {
            self.addClass('active');
            leftAside.show();
        }
    });

    // --------------------------------------------------------
    // wrap selectbox for style + error status
    // --------------------------------------------------------
    var styleSelect = function(){
        if ( $('#birthdate').length ){
            $content.find('#birthdate select').wrap('<div class="select_wrap mid"></div>');
            $content.find('select').not('#birthdate select').wrap('<div class="select_wrap"></div>');
        } else if ( $content.find('select:disabled').length !==0 ){
            $content.find('select:disabled').wrap('<div class="select_wrap disabled"></div>');
            $content.find('select').not('select:disabled').wrap('<div class="select_wrap"></div>');
        } else {
            $content.find('select').wrap('<div class="select_wrap"></div>');
        }

    };
    styleSelect();

    // --------------------------------------------------------
    // lazyload
    // --------------------------------------------------------
    $("img.lazy").unveil(200, function() {
        $(this).load(function() {
            this.style.opacity = 1;
        });
    });

    var fadeInBox = function(){
        var $box = $('.teaser_box');
        $box.each(function( index, element ){
            $(element)
                .delay( index * 200 )
                .fadeTo(600, 1);
        });
    };
    fadeInBox();


    // --------------------------------------------------------
    // topnav button for listings
    // --------------------------------------------------------
    var topNavButton = function(){

        var topActions = $('.top_actions'),
            topActionsInner = $('.ta_inner');

        topActions.append('<span class="top_nav_button"><span></span></span>').children('.ta_inner').hide();

        var topNavBtn = $('.top_nav_button');

        if ( localStorage.getItem('activeTopLink') ) {
            topNavBtn.attr('class', localStorage.getItem('activeTopLink'));
            topActionsInner.show();
        }

        topNavBtn.on('click', function(){
            var self = $(this);

            if ( self.hasClass('active') ){
                self.removeClass('active');
                localStorage.clear();
            } else {
                self.addClass('active');
                localStorage.setItem('activeTopLink', self.attr('class'));
            }

            topActionsInner.toggle();
        });
    };
    topNavButton();

    // --------------------------------------------------------
    // Searchtoggle
    // --------------------------------------------------------
    var searchToggle = function(){
        var searchToggleButton = $('#search_toggle'),
            searchField = $('#searchcontainer');

        searchToggleButton.on('click', function(){
            var self = $(this);

            if ( self.hasClass('active') ){
                self.removeClass('active');
                searchField.animate({
                    'width' : 0,
                    'opacity' : 0
                }, 222,function(){
                    $(this).hide();
                });
            } else {
                self.addClass('active');
                searchField.show().animate({
                    'width' : '40%',
                    'opacity' : 1
                }, 222);
                $('#searchfield').focus();
            }
        });
    };
    searchToggle();

    // --------------------------------------------------------
    // navihint
    // --------------------------------------------------------
    if ( $('.inneraside').length ){

        setTimeout(function(){
            $('#navi_hint').fadeIn();
            asideToggle.addClass('hint');
        }, 1000);

        setTimeout(function(){
            $('#navi_hint').fadeOut();
            asideToggle.removeClass('hint');
        }, 10000);

        $('.close_navihint').on('click', function(){
           $('#navi_hint').fadeOut();
            asideToggle.removeClass('hint');
        });
    }


    // --------------------------------------------------------
    // scrollUp
    // --------------------------------------------------------

    var headerHeight = $('#page_header').height();

    // scrollUp full options
    $.scrollUp({
        scrollName: 'getup', // Element ID
        scrollDistance: headerHeight, // Distance from top/bottom before showing element (px)
        scrollFrom: 'top', // 'top' or 'bottom'
        scrollSpeed: 800, // Speed back to top (ms)
        easingType: 'easeOutExpo', // Scroll to top easing (see http://easings.net/)
        animation: 'fade', // Fade, slide, none
        animationSpeed: 200, // Animation in speed (ms)
        scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
        //scrollTarget: false, // Set a custom target element for scrolling to the top
        scrollText: '', // Text for element, can contain HTML
        scrollTitle: false, // Set a custom <a> title if required.
        scrollImg: false, // Set true to use image
        activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
        zIndex: 2147483647 // Z-Index for the overlay
    });
});

$(window).on('load', function(){
    // --------------------------------------------------------
    // masonry for blogitems
    // --------------------------------------------------------
    $('.listing-blog .block').masonry({
        //columnWidth: 300,
        itemSelector: '.blogbox'
    });
});
