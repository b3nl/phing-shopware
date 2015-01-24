{extends file='frontend/index/index.tpl'}

{block name='frontend_index_header'}
	{include file='frontend/listing/header.tpl'}
{/block}

{* Sidebar right *}
{block name='frontend_index_content_right'}
    {include file='frontend/listing/right.tpl'}
{/block}

{* Main content *}
{block name='frontend_index_content'}
<div id="center">
	{* Banner *}

    {* Topseller slider *}
    {block name="frontend_listing_index_banner"}
        {if !$sLiveShopping}
            {include file='frontend/listing/banner.tpl' sLiveShopping=$sLiveShopping}
        {/if}
    {/block}

	{* Liveshopping *}
	{block name="frontend_listing_index_liveshopping"}
		{include file='frontend/listing/liveshopping.tpl'}
	{/block}

	{* Category headline *}
	{block name="frontend_listing_index_text"}
        {include file='frontend/listing/text.tpl'}
	{/block}

    {block name="frontend_listing_index_text" append}
        {if !$hasEmotion && !$sSupplierInfo && {config name=topSellerActive}}
            {action module=widgets controller=listing action=top_seller sCategory=$sCategoryContent.id}
        {/if}
    {/block}

	{* Change / Logic move to controller *}

	{if $sCategoryContent.template eq "article_listing_1col.tpl"}
		{assign var="sTemplate" value="listing-1col"}
		{assign var="sBoxMode" value="list"}
	{elseif $sCategoryContent.template eq "article_listing_2col.tpl"}
		{assign var="sTemplate" value="listing-2col"}
		{assign var="sBoxMode" value="table"}
	{elseif $sCategoryContent.template eq "article_listing_3col.tpl"}
		{assign var="sTemplate" value="listing-3col"}
		{assign var="sBoxMode" value="table"}
	{elseif $sCategoryContent.template eq "article_listing_4col.tpl"}
		{assign var="sTemplate" value="listing"}
		{assign var="sBoxMode" value="table"}
	{else}
		{assign var="sTemplate" value="listing-3col"}
		{assign var="sBoxMode" value="table"}
	{/if}


	{* Listing *}
    {block name="frontend_listing_index_listing"}
        <div class="inner">
            {include file='frontend/listing/listing.tpl' sTemplate=$sTemplate}
            {if $sCategoryContent.parent != 1 && ! $showListing && !$sSupplierInfo}
                <div class="emotion-link">
                    <a class="emotion-offers" href="{url controller='cat' sPage=1 sCategory=$sCategoryContent.id}">
                        {s name="ListingActionsOffersLink"}Weitere Artikel in dieser Kategorie{/s}
                        <span aria-hidden="true" class="icon" data-icon="&#xf105;"></span>
                    </a>
                </div>
            {/if}
        </div>
    {/block}

    {* Tagcloud *}
    {block name="frontend_home_index_tagcloud"}
    <div class="tcloud">
        <div class="inner">
            {if {config name=show namespace=TagCloud } }
                {action module=widgets controller=listing action=tag_cloud}
            {/if}
        </div>
    </div>
    {/block}

</div>
{/block}


{* Hide listing if we're having a emotion here *}
{block name="frontend_listing_list_inline"}
    {if $showListing}
        {$smarty.block.parent}
    {/if}
{/block}

{* Listing actions top *}
{block name="frontend_listing_top_actions"}
    {if $showListing}
        {$smarty.block.parent}
    {/if}
{/block}

{* Listing actions bottom *}
{block name="frontend_listing_bottom_paging"}
    {if $showListing}
        {$smarty.block.parent}
    {/if}
{/block}

{* Category text *}
{block name="frontend_listing_index_text"}
    {if !$hasEmotion && !$sSupplierInfo}
        {$smarty.block.parent}
    {/if}
{/block}