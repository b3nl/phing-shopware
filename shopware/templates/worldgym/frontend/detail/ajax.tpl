{extends file="frontend/detail/index.tpl"}

{* Change the styling a bit *}
{block name="frontend_detail_header_css"}{/block}

{block name="frontend_index_header_css_screen" append}
    <style>
        #content{
            padding: 0;
        }
        #page_bottom,
        .mobile_nav_button,
        .main-details h1.title,
        .supplier{
            display: none !important;
        }
    </style>
{/block}

{* Empty shop header *}
{block name='frontend_index_navigation'}{/block}

{* Empty top navigation *}
{block name='frontend_index_navigation_categories_top'}{/block}

{* Empty search *}
{block name='frontend_index_search'}{/block}

{* Empty breadcrumb *}
{block name='frontend_index_breadcrumb'}{/block}

{* Empty sidebar left *}
{block name='frontend_index_content_left'}{/block}

{* Empty sidebar right *}
{block name='frontend_index_content_right'}{/block}

{* Empty footer *}
{block name="frontend_index_footer"}{/block}
{block name="frontend_index_shopware_footer"}{/block}

{* Empty detail navigation *}
{block name="frontend_detail_index_navigation"}{/block}

{block name='frontend_index_content'}
    <div class="ajax-detail">
        <div class="upper-content">
            <div class="image">
                {if $sArticle.image.src.4}
                    <img src="{$sArticle.image.src.4}" alt="{$sArticle.articleName}" title="{if $sArticle.image.res.description}{$sArticle.image.res.description}{else}{$sArticle.articleName}{/if}" />
                {else}
                    <img src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{$sArticle.articleName}" />
                {/if}
            </div>
            <div class="main-details">
                <h1 class="title">{$sArticle.articleName}</h1>
                <strong class="supplier">{se name="DetailFrom" namespace="frontend/detail/index"}{/se}: {$sArticle.supplierName}</strong>

                {if $sArticle.attr1}
                    <p>{$sArticle.attr1}</p>
                {/if}
                {if $sArticle.attr2}
                    <p>{$sArticle.attr2}</p>
                {/if}

                {if $sArticle.sProperties}
                    <table cellspacing="0">
                        {foreach from=$sArticle.sProperties item=sProperty}
                            <tr>
                                <td class="property">
                                    {$sProperty.name}
                                </td>
                                <td>
                                    {$sProperty.value}
                                </td>
                            </tr>
                        {/foreach}
                    </table>
                {/if}
            </div>
        </div>

        <div class="lower-content">
            <h2 class="sub-title">{se name="DetailDescriptionHeader" namespace="frontend/detail/description"}{/se} "{$sArticle.articleName}"</h2>

            <div class="description">
                {$sArticle.description_long|replace:"<table":"<table id=\"zebra\""}
            </div>
            <div class="space"></div>

            {if $sArticle.attr3}
                <div class="comment">
                    <h2>{se name='DetailDescriptionComment' namespace="frontend/detail/description"}{/se}</h2>
                    <blockquote>{$sArticle.attr3}</blockquote>
                </div>
            {/if}
        </div>
    </div>
{/block}