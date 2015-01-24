<div class="heading">
	<h2>{if !$sBasketInfo}{s name="AjaxAddHeader"}{/s}{else}{s name='AjaxAddHeaderError'}Hinweis:{/s}{/if} <span aria-hidden="true" class="icon" data-icon="&#xf00c;"></span></h2>
</div>

{if $sBasketInfo}
<div class="error_container">
	<p class="text">
		{$sBasketInfo}
	</p>
	<div class="clear">&nbsp;</div>
</div>
{/if}

<div class="ajax_add_article">
    {block name='frontend_checkout_ajax_add_article_middle'}
	<div class="middle">
		{if $sArticle}
		<div class="row added_article">

			{* Thumbnail *}
			<figure class="thumbnail">
                {if $sArticle.image.src}
                    <img src="{$sArticle.image.src.1}" alt="{$sArticle.articleName}" />
                {/if}
                {if !$sArticle.image.src}<img src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{s name='ListingBoxNoPicture'}{/s}" />{/if}

				{*<a href="{$sArticle.linkDetails}" title="{$sArticle.articleName}" class="artbox_thumb" {if $sArticle.image.src}*}
					{*style="background: url({$sArticle.image.src.1}) no-repeat center center"{/if}>*}
					{*{if !$sArticle.image.src}<img src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{s name='ListingBoxNoPicture'}{/s}" />{/if}*}
				{*</a>*}
			</figure>
            <div class="col">
                {* Title *}
                <span><strong class="title">{$sArticleName|truncate:37|strip_tags}</strong></span>

                {* Ordernumber *}
                <span class="ordernumber">{s name="AjaxAddLabelOrdernumber"}{/s}: {$sArticle.ordernumber}</span>

                {* Price *}
                <span><strong class="price">{$sArticle.price|currency}</strong></span>

                {* Quantity *}
                <span class="quantity">{s name="AjaxAddLabelQuantity"}{/s}: {$sArticle.quantity}</span>
            </div>

		</div>
		{/if}

		{* Actions *}
		<div class="row">
			{block name='frontend_checkout_ajax_add_article_action_buttons'}
			<a title="{s name='AjaxAddLinkBack'}{/s}" class="btn modal_close" href="#">
				{se name="AjaxAddLinkBack"}{/se}
			</a>
			<a href="{url action='cart'}" class="btn viewbasket" title="{s name='AjaxAddLinkCart'}{/s}">
				{se name="AjaxAddLinkCart"}{/se}
			</a>
			{/block}
		</div>
	</div>
    {/block}

    <div class="bottom row">
        {block name='frontend_checkout_ajax_add_article_cross_selling'}
            {if $sCrossSimilarShown|@count || $sCrossBoughtToo|@count}
                <h3>{se name="AjaxAddHeaderCrossSelling"}{/se}</h3>
                <div class="article-slider">

                    {$sCrossSellingArticles = $sCrossBoughtToo}
                    {if $sCrossSimilarShown && $sCrossBoughtToo|count < 1}
                        {$sCrossSellingArticles = $sCrossSimilarShown}
                    {/if}

                    {foreach from=$sCrossSellingArticles item=article}

                        {assign var=image value=$article.image.src.2}
                        <div class="artbox">

                            <a title="{$article.articleName|escape}" href="{$article.linkDetails}">
                                {if $image}
                                    <figure>
                                        <img src="{$image}" alt="{$article.articleName|escape}"/>
                                    </figure>
                                {else}
                                    <figure>
                                        <img src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{s name='ListingBoxNoPicture'}{/s}" />
                                    </figure>
                                {/if}
                                <div class="title_desc">
                                    <h3>{$article.articleName|truncate:28}</h3>
                                </div>
                                {if $article.purchaseunit}
                                    <div class="article_price_unit">
                                        <p>
                                            <strong>{se name="SlideArticleInfoContent"}{/se}:</strong> {$article.purchaseunit} {$article.sUnit.description}
                                        </p>
                                        {if $article.purchaseunit != $article.referenceunit}
                                            <p>
                                                {if $article.referenceunit}
                                                    <strong class="baseprice">{se name="SlideArticleInfoBaseprice"}{/se}:</strong> {$article.referenceunit} {$article.sUnit.description} = {$article.referenceprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}
                                                {/if}
                                            </p>
                                        {/if}
                                    </div>
                                {/if}

                                <p class="price">
                                    <span class="exact_price">{if $article.priceStartingFrom && !$article.liveshoppingData}{s name='ListingBoxArticleStartsAt'}{/s} {/if}{$article.price|currency} *</span>
                                </p>
                            </a>
                        </div>
                    {/foreach}
                </div>
            {/if}
        {/block}
    </div>
    {* Close button *}
    <a href="#" class="modal_close btn_close" title="{s name='LoginActionClose'}{/s}">
        <p>{s name='LoginActionClose'}{/s}</p>
        <span aria-hidden="true" class="icon" data-icon="&#xf00d;"></span>
    </a>
</div>

