{*DEFAULT ---------------*}
{* Promotion *}
{include file='frontend/listing/promotions.tpl' sTemplate=$sTemplate}

{* Supplier filter *}
{block name="frontend_listing_list_filter_supplier"}
    {if $sSupplierInfo}
        <div id="supplierfilter_top" {if $sSupplierInfo.image}class="supplierfilter_image"{/if}>
            <div class="cat_text">
                <div class="inner_container">
                    <h1>{se name='ListingInfoFilterSupplier'}{/se} {$sSupplierInfo.name}</h1>
                    <div class="inner-supplier">
                        {if $sSupplierInfo.description}
                            <div class="supplier-desc">
                                {if $sSupplierInfo.image}
                                    <img src="{$sSupplierInfo.image}" alt="{$sSupplierInfo.name}" name="{$sSupplierInfo.name}" class="right" border="0" title="{$sSupplierInfo.name}" />
                                {/if}
                                {$sSupplierInfo.description}
                            </div>
                        {else}
                            {if $sSupplierInfo.image}
                                <img src="{$sSupplierInfo.image}" alt="{$sSupplierInfo.name}" name="{$sSupplierInfo.name}" class="right" border="0" title="{$sSupplierInfo.name}" />
                            {/if}
                        {/if}
                    </div>
                </div>
            </div>
            <div class="{if !$sSupplierInfo.description}no-desc{else}right{/if}">
                <a href="{$sSupplierInfo.link}" title="{s name='ListingLinkAllSuppliers'}{/s}" class="btn neutral close">
                    {se name='ListingLinkAllSuppliers'}{/se}
                </a>
            </div>
        </div>
    {/if}
{/block}

{* Sorting and changing layout *}
{block name="frontend_listing_top_actions"}
    {if !$sOffers}
        <div class="top_actions row">
            <div class="ta_inner row">
                {include file='frontend/listing/listing_actions.tpl' sTemplate=$sTemplate}
            </div>
        </div>
    {/if}
{/block}


{* Hide actual listing if a promotion is active *}
{if !$sOffers}
    <div class="listing row" id="{$sTemplate}">
        {block name="frontend_listing_list_inline"}
        {* Actual listing *}
            {foreach $sArticles as $sArticle}
                {include file="frontend/listing/box_article.tpl" sTemplate=$sTemplate lastitem=$sArticle@last firstitem=$sArticle@first}
            {/foreach}
        {/block}
    </div>
{/if}

{* Paging *}
{block name="frontend_listing_bottom_paging"}
    {if !$sOffers}
        {include file='frontend/listing/listing_actions.tpl' sTemplate=$sTemplate}
    {else}
        {if $sCategoryContent.parent != 1}
            <div class="actions_offer">
                {include file='frontend/listing/listing_actions.tpl' sTemplate=$sTemplate}
            </div>
        {/if}
    {/if}
{/block}