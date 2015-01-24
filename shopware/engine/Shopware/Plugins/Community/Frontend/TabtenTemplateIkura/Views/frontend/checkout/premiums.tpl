{if $sPremiums}
<div class="table_premium">
	{block name='frontend_checkout_premium_head'}
	<div class="head">
		<h5>{s name="PremiumsHeader"}{/s}</h5>
	</div>
	{/block}
	
	{block name='frontend_checkout_premium_body'}
	<div class="body listing row" id="listing-3col">

	{foreach from=$sPremiums item=premium key=key}
		{if $premium.sArticle.active}
			<div class="artbox">
			
				{* Article picture *}
				{block name='frontend_checkout_premium_image'}
	        	<a class="thumbnail" href="{$premium.sArticle.linkDetails}" title="{$premium.sArticle.articleName}">
	        		{if $premium.sArticle.image.src}
                        <figure>
                            <img src="{$premium.sArticle.image.src.1}" alt="{$premium.sArticle.articleName}" title="{$premium.sArticle.articleName}" border="0"/>
                        </figure>
	       			{else}
                        <figure>
                            <img src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{s name="PremiumInfoNoPicture"}{/s}" style="width:57px" />
                        </figure>
	       			{/if}
	        	</a>
	        	{/block}
	        	
	        	{block name='frontend_checkout_premium_article_name'}
	        	{* Article name *}
	        	<div class="name">
	        		<a href="{$premium.sArticle.linkDetails}" title="{$premium.sArticle.articleName}">
	        			<h3>{$premium.sArticle.articleName}</h3>
	        		</a>
	        	</div>
				{/block}
			</div>
		{else}
			<div class="artbox">
				{block name='frontend_checkout_premium_image'}
				<a class="thumbnail" title="{$premium.sArticle.articleName}">
					{if $premium.sArticle.image.src}
                        <figure>
                            <img src="{$premium.sArticle.image.src.1}" alt="{$premium.sArticle.articleName}" title="{$premium.sArticle.articleName}" border="0"/>
                        </figure>
						{else}
                        <figure>
                            <img src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{s name="PremiumInfoNoPicture"}{/s}"/>
                        </figure>
					{/if}
				</a>
				{/block}
				<div class="name">
					{block name='frontend_checkout_premium_article_name'}
					<a href="{$premium.sArticle.linkDetails}" title="{$premium.sArticle.articleName}">
						<h3>{$premium.sArticle.articleName}</h3>
					</a>
					{/block}
					
					{if $premium.available}
						<form action="{url action='addPremium' sTargetAction=$sTargetAction}" method="post" id="sAddPremiumForm{$key}" name="sAddPremiumForm{$key}">
							
							{block name='frontend_checkout_premium_select_article'}
							{if $premium.sVariants&&$premium.sVariants|@count>1}
                                <select class="variant" id="sAddPremium{$key}" name="sAddPremium">
                                    <option value="">{s name="PremiumInfoSelect"}{/s}</option>
                                    {foreach from=$premium.sVariants item=variant}
                                        <option value="{$variant.ordernumber}">{$variant.additionaltext}</option>
                                    {/foreach}
                                </select>
					  		{else}
					   			<input type="hidden" name="sAddPremium" value="{$premium.sArticle.ordernumber}" />
					  		{/if}
							
							<input type="submit" class="btn premium"  title="{$premium.sArticle.articleName}" value="{s name='PremiumActionAdd'}{/s}" />
							{/block}
						</form>
					{else}
						{block name='frontend_checkout_premium_bonus_price'}
						<div class="bonus_price">
							<span class="pr1">{se name="PremiumsInfoAtAmount"}{/se} {$premium.startprice|currency}</span>
				  			<span class="pr2">({se name="PremiumsInfoDifference"}{/se} {$premium.sDifference|currency})</span>
				  		</div>
				  		{/block}
					{/if}
				</div>
			</div>
		{/if}
	{/foreach}
	</div>
	{/block}
</div>
{/if}