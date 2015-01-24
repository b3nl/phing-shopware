<head>
    {* Http-Tags *}
    {block name="frontend_index_header_meta_http_tags"}
        <meta charset="utf-8">
    {/block}

    {* Page title *}
    <title>
        {block name='frontend_index_header_title'}{strip}
            {if $sBreadcrumb}{foreach from=$sBreadcrumb|array_reverse item=breadcrumb}{$breadcrumb.name} | {/foreach}{/if}{config name=sShopname}
        {/strip}
        {/block}
    </title>

    {* Meta-Tags *}
    {block name='frontend_index_header_meta_tags'}
        <meta name="author" content="{s name='IndexMetaAuthor'}{/s}" />
        <meta name="copyright" content="{s name='IndexMetaCopyright'}{/s}" />
        <meta name="robots" content="{block name='frontend_index_header_meta_robots'}{s name='IndexMetaRobots'}{/s}{/block}" />
        <meta name="revisit-after" content="{s name='IndexMetaRevisit'}{/s}" />
        <meta name="keywords" content="{block name='frontend_index_header_meta_keywords'}{if $sCategoryContent.metakeywords}{$sCategoryContent.metakeywords}{else}{s name='IndexMetaKeywordsStandard'}{/s}{/if}{/block}" />
        <meta name="description" content="{block name='frontend_index_header_meta_description'}{s name='IndexMetaDescriptionStandard'}{/s}{/block}" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="designer" content="http://tab10.de">{* website will be broken if you remove this line :) *}
        <link rel="shortcut icon" href="{s name='IndexMetaShortcutIcon'}{link file='frontend/_resources/favicon.ico'}{/s}" type="image/x-icon" />{* Favicon *}
    {/block}

    {* Internet Explorer 9 specific meta tags *}
    {block name='frontend_index_header_meta_tags_ie9'}{/block}

    {* Canonical link *}
    {block name='frontend_index_header_canonical'}{/block}

    {* RSS and Atom feeds *}
    {block name="frontend_index_header_feeds"}{/block}

    {* Stylesheets and Javascripts *}
    {block name="frontend_index_header_css_screen"}
        <link href='//fonts.googleapis.com/css?family=Fjalla+One|Roboto+Condensed:400,300,700' rel='stylesheet' type='text/css'>
        <link type="text/css" media="all" rel="stylesheet" href="{link file='frontend/_resources/styles/css/main.css'}" />

        <!--[if lt IE 9]>
        <link type="text/css" media="all" rel="stylesheet" href="{link file='frontend/_resources/styles/css/oldie.css'}" />
        <![endif]-->

        {if $TabtenTemplateIkura->ikuraPageWidth}
            <style>
                .inner{ max-width: {$TabtenTemplateIkura.ikuraPageWidth}px; }
            </style>
        {/if}
    {/block}

    {* Print Stylesheets // delete from template *}
    {block name="frontend_index_header_css_print"}{/block}

    {block name="frontend_index_header_javascript_jquery_lib"}

    {* Grab Google CDN's jQuery, with a protocol relative URL *}
    {*<script src="{link file='frontend/_resources/javascript/jquery-1.7.2.min.js'}"></script>*}

        <script src="{link file='frontend/_resources/javascript/vendor/modernizr.custom.js'}"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="frontend/_resources/javascript/vendor/jquery-1.7.2.min.js"><\/script>')</script>
    {/block}

    {block name="frontend_index_header_javascript"}
        <script type="text/javascript">
            //<![CDATA[
            {block name="frontend_index_header_javascript_inline"}
            var timeNow = {time() nocache};

            jQuery.controller =  {ldelim}
                'vat_check_enabled': '{config name='vatcheckendabled'}',
                'vat_check_required': '{config name='vatcheckrequired'}',
                'ajax_cart': '{url controller="checkout"}',
                'ajax_search': '{url controller="ajax_search"}',
                'ajax_login': '{url controller="account" action="ajax_login"}',
                'register': '{url controller="register"}',
                'checkout': '{url controller="checkout"}',
                'ajax_logout': '{url controller="account" action="ajax_logout"}',
                'ajax_validate': '{url controller="register"}'
                {rdelim};
            {/block}
            //]]>
        </script>
    {block name="frontend_index_header_javascript_jquery"}
        {*DEBUG*}
        {*<script src="{link file='frontend/_resources/javascript/slick.js'}"></script>*}
        {*<script src="{link file='frontend/_resources/javascript/jquery.shopware.js'}"></script>*}
        {*<script src="{link file='frontend/_resources/javascript/jquery.emotion.js'}"></script>*}
        {*<script src="{link file='frontend/_resources/javascript/jquery.unveil.min.js'}"></script>*}
        {*<script src="{link file='frontend/_resources/javascript/masonry.pkgd.min.js'}"></script>*}
        {*<script src="{link file='frontend/_resources/javascript/jquery.scrollUp.js'}"></script>*}
        {*<script src="{link file='frontend/_resources/javascript/custom.js'}"></script>*}

        {*LIVE*}
        <script type="text/javascript" src="{link file='frontend/_resources/javascript/min/compressed-min.js'}"></script>

        {if !{config name=disableShopwareStatistics} }
            {include file='widgets/index/statistic_include.tpl'}
        {/if}
    {/block}
    {/block}

    {block name="frontend_index_header_css_ie"}{/block}
</head>