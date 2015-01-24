(function($) {
    $(document).ready(function() {
        $('.emotion-banner-mapping').hover(function() {
            var $this = $(this),
                $next = $this.next('.banner-mapping-tooltip');

            $next.addClass('hover');
        }, function() {
            var $this = $(this),
                $next = $this.next('.banner-mapping-tooltip');

            $next.removeClass('hover');
        });
    });
})(jQuery);

/* Add class to the searchfield */
(function($) {

    $(document).ready(function() {

        $('#searchfield').bind('focus', function() {
            var $this = $(this);
            $this.parent('form').addClass('active');
        });

        $('#searchfield').bind('blur', function() {
            var $this = $(this);
            $this.parent('form').removeClass('active');
        });

        $('.thumb_box a').bind('click', function() {
            $('.thumb_box a').removeClass('active');
            $(this).addClass('active');
        });
        $('.thumb_box a:first-child').addClass('active')
    });
})(jQuery);

/* remove the value per click from the newsletter input in the footer */
(function($) {
    $(document).ready(function() {
        $('#newsletter_input').click(function() {
            if (this.value == this.defaultValue) {
                this.value = '';
            }
        });
        $('#newsletter_input').blur(function() {
            if (this.value == '') {
                this.value = this.defaultValue;
            }
        });
    });
})(jQuery);

/* tapped the compareresults to the bottom of the page: EDIT: not bottom but to element to style nicer */
(function($) {

    $(document).ready(function() {

        $('#compareContainerResults').appendTo($('#compareContainerAjax')).hide();

        $('#compareHighlight').live('mouseleave', function() {
            $('body #compareContainerResults').hide();
        });

    });
})(jQuery);



(function($) {

    /**
     * GREST MODIFIED !
     * _________________________________________________________
     * Helper method which checks with the user agent
     * of the browser if the user is mobile device
     *
     * @public
     * @return boolean
     */
    $.isMobile = function() {

        return navigator.userAgent.match(/Android|webOS|iPhone|iPad|iPod|BlackBerry/i) != null;

    }

    $(document).ready(function() {

        $('.my_options #servicenavi').appendTo($('.service')).hide();

        $('.my_options .service').bind('click',function() {
            $('body #servicenavi').toggle();
        });

//        if($.isMobile()) {
//            $('body').bind('click', function() {
//                $('div#searchresults').slideUp();
//            });
//        }

        /** Set overflow:scroll feature and set .text height **/
        $('.html-text-inner-element').each(function(){
            var $this = $(this),
                $innerEl = $this.find('.text'),
                $offset = $innerEl.offset().top - $this.offset().top + 20;

            if($this.height() < $innerEl.height()) {
                $innerEl.css('overflow-y', 'scroll');
                $innerEl.css('height', $this.height() - $offset + 'px');
            }
        });
    });



    //overide basketLoader setting
    $.basket.options = {
        viewport: '',
        basketLoader: '.ajax_basket_container .ajax_loader',
        basketResult: '.ajax_basket_result',
        basketDisplay: '#shopnavi div.display_basket',
        basketParent: '.ajax_basket_container'
    };

    //Refreshs the basket display
    $.basket.refreshDisplay = function () {
        $.ajax({
            'dataType': 'jsonp',
            'url': $.basket.options.viewport,
            'data': {
                'sAction': 'ajaxAmount'
            },
            'success': function (result) {
                // $('#shopnavi span.quantity')
                $('#shopnavi div.newbasket').html(result);
                $('div.ajax_basket').click(function () {
                    if ($('.ajax_basket_result').hasClass('active')) {
                        $('.ajax_basket_result').removeClass('active').slideToggle('fast');
                    } else {
                        $.basket.getBasket();
                    }
                });
            }
        });
    };
    $.basket.getBasket = function () {
        if(!$($.basket.options.basketResult).length) {
            $('<div>', {
                'class': 'ajax_basket_result'
            }).appendTo('.ajax_basket_container');
        }

        $($.basket.options.basketLoader).show();

        $.ajax({
            'data': {
                'sAction': 'ajaxCart'
            },
            'dataType': 'jsonp',
            'url': $.basket.options.viewport,
            'success': function (result) {

                $($.basket.options.basketLoader).hide();
                if (result.length) {
                    $($.basket.options.basketResult).empty().html(result);
                } else {
                    $($.basket.options.basketResult).empty().html($.basket.options.emptyText);
                }
                $($.basket.options.basketParent).addClass('active');
                $($.basket.options.basketResult).addClass('active').show();
                $(document.body).bind('click.basket', function() {
                    $($.basket.options.basketResult).removeClass('active').hide();
                    $($.basket.options.basketParent).removeClass('active');
                    $(document.body).unbind('click.basket');
                });
            }
        });
    }
})(jQuery);

/**
 * SwagButtonSolution
 *
 * Copyright (c) 2012, shopware AG
 */
(function($) {
    $(document).ready(function() {
        $('.agb_cancelation input[name=sAGB]').change(function() {
            $('.agb-checkbox').val($(this).is(':checked'))
        });

        $('.agb_cancelation input[name=sNewsletter]').change(function() {
            $('.newsletter-checkbox').val($(this).is(':checked'))
        });
    });
})(jQuery);

/**
 * Overview button progressive enhancement
 * using the { @link sessionStorage } to provide a personalized link with the currently active
 * filter properties for the HTTP cache.
 *
 * Copyright (c) 2013, shopware AG
 */
;(function($, window, undefined) {
    /*global jQuery:false */
    "use strict";

    var pluginName = 'httpCacheFilters',
        defaults = {
            mode: 'listing'
        },
        hasSessionStorageSupport = typeof(window.Storage) !== 'undefined' || !window.hasOwnProperty('sessionStorage');

    /**
     * Plugin constructor which merges the default settings
     * with the user configuration and sets up the DOM bridge.
     *
     * @param { HTMLElement } element
     * @param { Object } options
     * @returms { Void }
     * @constructor
     */
    function Plugin(element, options) {
        var me = this;

        me.element = element;
        me.opts = $.extend({}, defaults, options);
        me._defaults = defaults;
        me._name = pluginName;

        me.init();
    }

    /**
     * Initialized the plugin, checks if { @link sessionStorage } is
     * supported and sets up the event listener.
     *
     * @returns { Boolean } Falsy, if { @link sessionStorage } isn't supported, otherwise truthy
     */
    Plugin.prototype.init = function() {
        var me = this,
            mode;

        // Check if the browser support { @link sessionStorage }
        if(!hasSessionStorageSupport) {
            return false;
        }

        // Terminate if we're on the category listing or on the detail page
        mode = $(me.element).hasClass('ctl_detail') ? 'detail' : 'listing';
        if(mode === 'listing') {
            $('.artbox .artbox_thumb, .artbox .title, .artbox .buynow').on('click.' + pluginName, $.proxy(me.onOpenDetailPage, me));
            $('.filter_properties .close a').on('click.' + pluginName, $.proxy(me.onResetFilterOptions, me));
        } else {
            me.restoreState();
        }

        return true;
    };

    /**
     * Event callback which will be fired when the user wants to open up
     * the detail page.
     *
     * The method just proxies the method { @link #saveCurrentState }.
     *
     * @event `click`
     * @returns { Void }
     */
    Plugin.prototype.onOpenDetailPage = function() {
        var me = this;
        me.saveCurrentState();
    };

    /**
     * Event callback which will be fired when the user wants to
     * reset a filter property group.
     *
     * The method reads out the url of the reset link and save it
     * to the { @link sessionStorage }.
     *
     * @param { Event } event
     * @return { Void }
     */
    Plugin.prototype.onResetFilterOptions = function(event) {
        var me = this,
            $this = $(event.currentTarget),
            url = $this.attr('href');

        me.saveCurrentState(url);
    };

    /**
     * Saves the passed url to the { @link sessionStorage } using
     * the { @link pluginName } as the key of the entry.
     *
     * @param { String } [url] - URL, which should be saved.
     * @returns { Boolean }
     */
    Plugin.prototype.saveCurrentState = function(url) {
        if(!url || !url.length) {
            url = window.location.href;
        }
        window.sessionStorage.setItem(pluginName, url);

        return true;
    };

    /**
     * Restores a state from the `sessionStorage` on the
     * detail page and removes the entry to prevent
     * strange behaviors of the overview link.
     *
     * @returns { Boolean } Truthy, if all went well, otherwise falsy
     */
    Plugin.prototype.restoreState = function() {
        if(!window.sessionStorage.getItem(pluginName)) {
            return false;
        }
        $('.article_overview a').attr('href', window.sessionStorage.getItem(pluginName));

        window.sessionStorage.removeItem(pluginName);
        return true;
    };

    /** Lightweight plugin starter */
    $.fn[pluginName] = function ( options ) {
        return this.each(function () {
            if (!$.data(this, 'plugin_' + pluginName)) {
                $.data(this, 'plugin_' + pluginName,
                    new Plugin( this, options ));
            }
        });
    };

    /** Fire up the plugin */
    $(function() {
        $('body').httpCacheFilters();
    });
})(jQuery, window);
