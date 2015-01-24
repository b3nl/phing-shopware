{$width = $sElementWidth-61}
<div class="slide slides">
	{foreach from=$articles item=article}
		{assign var=image value=$article.image.src.4}
        <div class="outer-article-box" style="width:{'100' / $sPerPage-2}%">
            <a title="{$article.articleName}" class="article_box artbox slide_article" href="{$article.linkDetails}">
                <!-- article 1 -->
                {if $image}
                    <img src="{$image}" title="{$article.articleName}" />
                {else}
                    <img src="{link file="frontend/_resources/images/no_picture.jpg"}" title="{$article.articleName}" alt="{$article.articleName}" />
                {/if}
                <h3>
                    {$article.articleName|truncate:35}
                </h3>

                {if $article.purchaseunit && $article.purchaseunit != 0}
                    <p class="article-purchase-unit">
                        <span class="purchaseunit">
                            <strong>{se name="ListingBoxArticleContent" namespace="frontend/listing/box_article"}{/se}:</strong> {$article.purchaseunit} {$article.sUnit.description}
                        </span>
                {/if}
                {if $article.purchaseunit != $article.referenceunit}
                        {if $article.referenceunit}
                            <span class="referenceunit">
                             ({$article.referenceprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s} / {$article.referenceunit} {$article.sUnit.description})
                            </span>
                        {/if}
                    </p>
                {/if}

                <p class="price">
                    {if $article.pseudoprice}
                        <span class="pseudo">
                        <em>
                            {s name="reducedPrice"}Statt: {/s}{$article.pseudoprice|currency} {s name="Star"}*{/s}
                        </em>
                        </span>
                    {/if}
                    <span class="price{if $article.pseudoprice} pseudo{/if}">{if $article.priceStartingFrom && !$article.liveshoppingData}{s namespace="frontend/plugins/recommendation/slide_articles" name='ListingBoxArticleStartsAt'}{/s} {/if}{$article.price|currency} *</span>
                </p>
            </a>
        </div>
	{/foreach}

</div>

