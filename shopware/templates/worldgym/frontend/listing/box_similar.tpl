{block name="frontend_listing_box_similar"}
<div class="artbox">

		{* Article picture *}
		{block name='frontend_listing_box_similar_article_picture'}
		<a href="{$sArticle.linkDetails|rewrite:$sArticle.articleName}" title="{$sArticle.articleName}">

            {if $sArticle.image.src}
                <figure>
                    <img class="lazy" src="{link file="frontend/_resources/images/bg.gif"}" data-src="{$sArticle.image.src.1}" alt="{$sArticle.articleName}"/>
                </figure>

            {/if}
            {if !isset($sArticle.image.src)}
                <figure>
                    <img class="lazy" src="{link file="frontend/_resources/images/bg.gif"}" data-src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{s name='ListingBoxNoPicture'}{/s}" />
                </figure>
            {/if}
        {/block}


		<div class="title_price">
			{* Article name *}
            {block name='frontend_listing_box_similar_name'}
            <h3>{$sArticle.articleName|truncate:47}</h3>
            {/block}

            {* Unit price *}
            {block name='frontend_listing_similar_article_unit'}
                {if $sArticle.purchaseunit != $sArticle.referenceunit}
                    <div class="article_price_unit">
                        <p>
                            <strong>{se name="ListingBoxArticleContent" namespace="frontend/listing/box_article"}{/se}:</strong> {$sArticle.purchaseunit} {$sArticle.sUnit.description}
                            {if $sArticle.referenceunit}
                                ({$sArticle.referenceprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s} / {$sArticle.referenceunit} {$sArticle.sUnit.unit})
                            {/if}
                        </p>
                    </div>
                {/if}
            {/block}

            {* Price *}
            {block name='frontend_listing_box_similar_price'}
                <p class="price">
                    {if $sArticle.pseudoprice}
                        <span class="pseudo">{s name="reducedPrice" namespace="frontend/listing/box_article"}{/s} {$sArticle.pseudoprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}</span>
                    {/if}
                    <span class="price{if $sArticle.pseudoprice} pseudo_price{/if}">{$sArticle.price|currency} *</span>
                </p>
            {/block}
        </div>
        </a>
       	{* Compare and more *}
       	{block name='frontend_listing_box_similar_actions'}
       	<div class="actions">
			<a href="{$sArticle.linkDetails|rewrite:$sArticle.articleName}" title="{s name='SimilarBoxMore'}{/s} {$sArticle.articleName}" class="more">{se name='SimilarBoxLinkDetails'}{/se}</a>
		</div>
		{/block}
</div>
{/block}