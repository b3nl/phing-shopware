{**
 * Shopware 4.1.4 Template
 *
 * @category   Shopware
 * @package    Shopware_Template
 * @subpackage Shopware_Template_Frontend
 * @copyright  Copyright (c) 2014 TAB10
 * @author     TAB10
 *}
{block name="frontend_index_start"}{/block}
{block name="frontend_index_doctype"}
<!DOCTYPE html>
{/block}
{block name='frontend_index_html'}
<html class="no-js" lang="{s name='IndexXmlLang'}de{/s}">
{/block}
{block name='frontend_index_header'}
{include file='./frontend/index/header.tpl'}
{/block}
<body {if $Controller}class="ctl_{$Controller}{if $sCategoryContent} page_category_{$sCategoryContent.id}{/if}{if $sArticle} page_article_{$sArticle.articleID}{/if}"{/if} id="top">

{block name='frontend_index_before_page'}{/block}

{* Shop header *}
{block name='frontend_index_navigation'}
	<header id="page_header" class="cf">
        <section id="page_topbar">
            <div class="inner">
                {* Shop logo *}
                {block name='frontend_index_logo'}
                    {if $TabtenTemplateIkura->ikuraLogo}
                        <a id="logo" href="{url controller='index'}" title="{$sShopname} - {s name='IndexLinkDefault'}{/s}" style="margin:{$TabtenTemplateIkura->ikuraLogoMargin};">
                            <img src="{$TabtenTemplateIkura.ikuraLogo}" title="{$sShopname}" alt="{$sShopname}" />
                        </a>
                    {else}
                        <a id="logo" href="{url controller='index'}" title="{$sShopname} - {s name='IndexLinkDefault'}{/s}">
                            <img src="{link file='frontend/_resources/images/ikura-logo.svg'}" title="{$sShopname}" alt="{$sShopname}" />
                        </a>
                    {/if}
                {/block}

                <div id="topbar_search">
                    <div id="search_toggle"></div>
                    {* Search *}
                    {block name='frontend_index_search'}
                        {include file="frontend/index/search.tpl"}
                    {/block}
                </div>
                {* Shop navigation *}
                {block name='frontend_index_checkout_actions'}
                    {action module=widgets controller=checkout action=info}
                {/block}

                {block name='frontend_index_navigation_inline'}
                    {if $sCompareShow}
                        <div id="compareContainerAjax">
                            {action module=widgets controller=compare}
                        </div>
                    {/if}
                {/block}

            </div>
        </section>

        {block name='frontend_index_actions'}{/block}

        {* Maincategories navigation top *}
        {block name='frontend_index_navigation_categories_top'}
            {include file='frontend/index/categories_top.tpl'}
        {/block}
	</header>

    {* Breadcrumb *}
    {block name='frontend_index_breadcrumb'}
        {include file='frontend/index/breadcrumb.tpl'}
    {/block}
{/block}

    {* Content section *}
    <section id="content" class="cf">

        {* Content top container *}
        {block name="frontend_index_content_top"}{/block}

        {* Main content *}
        {block name='frontend_index_content'}{/block}

        {* Sidebar left *}
        {block name='frontend_index_content_left'}
            {include file='frontend/index/left.tpl'}
        {/block}
        {* Sidebar right *}
        {block name='frontend_index_content_right'}{/block}

    </section>

    {block name="frontend_index_footer"}
        {if $sLastArticlesShow && !$isEmotionLandingPage}
            {include file="frontend/plugins/index/viewlast.tpl"}
        {/if}
    {/block}

    {* FOOTER *}
    {block name="frontend_index_shopware_footer"}
        {include file='frontend/index/footer.tpl'}
    {/block}

    {block name='frontend_index_footer_copyright'}
        <div id="page_bottom">
            <div class="footer_copyright">
                <span>{s name="IndexCopyright"}Template Copyright &copy; 2014 <a href="http://tab10.de">TAB10</a>{/s}</span>
            </div>
        </div>
    {/block}

{block name='frontend_index_body_inline'}{/block}

{* Message if javascript is disabled *}
{block name="frontend_index_no_script_message"}
    <noscript>
        <div class="notice bold center noscript_notice">
            {s name="IndexNoscriptNotice"}{/s}
        </div>
    </noscript>
{/block}
<div class="mobile_nav_button">
    <span aria-hidden="true" class="icon mobile_nav_show" data-icon="&#xf0c9;"></span>
    <span aria-hidden="true" class="icon mobile_nav_hide" data-icon="&#xf060;"></span>
</div>
</body>
</html>