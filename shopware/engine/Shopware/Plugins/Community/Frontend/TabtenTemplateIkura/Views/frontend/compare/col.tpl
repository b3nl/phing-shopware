<div class="col four compare_article">
	{* Picture *}
	<div class="picture row">
		{block name="frontend_compare_article_picture"}
		<a href="{$sArticle.linkDetails}" title="{$sArticle.articleName}">
			{if $sArticle.image.src}
				<img src="{$sArticle.image.src.2}" alt="{$sArticle.articleName}" />
			{else}
				<img src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{$sArticle.articleName}" />
			{/if}
		</a>
		{/block}
	</div>
	
	{* Name *}
	<div class="name row">
        {block name='frontend_compare_article_name'}
            <h3><a href="{$sArticle.linkDetails}" title="{$sArticle.articleName}">{$sArticle.articleName|truncate:35}</a></h3>
            <a href="{$sArticle.linkDetails|rewrite:$sArticle.articleName}" title="{$sArticle.articleName}" class="btn">{s name='ListingBoxLinkDetails' namespace="frontend/listing/box_article"}{/s}</a>
        {/block}
	</div>
	
	{* User Votings *}
	<div class="votes row">
		{block name='frontend_compare_votings'}
		<div class="star star{$sArticle.sVoteAverange.averange*2|round}">Star Rating</div>
		{/block}
	</div>
	
	{* Description *}
	<div class="desc row">
		{block name='frontend_compare_description'}
		<p>
    		{$sArticle.description_long|truncate:70}
    	</p>
    	{/block}	
	</div>
	
	{* Price *}
	<div class="price row">
		{block name='frontend_compare_price'}
		<p {if $sArticle.pseudoprice} class="article-price2" {else} class="article-price"{/if}>
    		{if $sArticle.pseudoprice}<s>{s name="reducedPrice" namespace="frontend/listing/box_article"}{/s} {$sArticle.pseudoprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}</s><br />{/if}
    		<strong>{if $sArticle.priceStartingFrom}ab {/if}{$sArticle.price|currency}</strong>*
    	</p>
    	{/block}
    	
    	{block name='frontend_compare_unitprice'}
    	{if $sArticle.purchaseunit}
            <div class="article_price_unit row">
                <p>
                    <strong>{se name="CompareContent"}{/se}:</strong> {$sArticle.purchaseunit} {$sArticle.sUnit.description}
                </p>
                {if $sArticle.purchaseunit != $sArticle.referenceunit}
                    <p>
                        {if $sArticle.referenceunit}
                            <strong class="baseprice">{se name="CompareBaseprice"}{/se}:</strong> {$sArticle.referenceunit} {$sArticle.sUnit.description} = {$sArticle.referenceprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}
                        {/if}
                    </p>
                {/if}
            </div>
        {/if}
        {/block}
	</div>
	
	{* Properties *}
	{foreach from=$sArticle.sProperties item=property}
        {block name='frontend_compare_properties'}
            <div class="property" style="background-color:#fff;">
                {if $property.value}{$property.value}{else}-{/if}
            </div>
        {/block}
	{/foreach}
</div>