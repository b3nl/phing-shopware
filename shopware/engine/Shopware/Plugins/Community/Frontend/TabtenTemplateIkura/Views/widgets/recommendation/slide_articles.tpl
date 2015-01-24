{foreach from=$articles item=article}
    {assign var=image value=$article.image.src.3}
    <div class="slide_article">
        <a class="artbox_thumb" title="{$article.articleName}" href="{$article.linkDetails}">
            {if $image}
                <figure>
                    <img class="lazy" src="{link file="frontend/_resources/images/bg.gif"}" data-src="{$image}" alt="{$article.articleName}" />
                </figure>
            {else}
                <figure>
                    <img class="lazy" src="{link file="frontend/_resources/images/bg.gif"}" data-src="{link file="frontend/_resources/images/no_picture.jpg"}" title="{$article.articleName}" />
                </figure>
            {/if}
            <h3>{$article.articleName|truncate:35}</h3>

            {if $article.purchaseunit != $article.referenceunit}
                <div class="article_price_unit">
                    <p>
                        <strong>{se name="SlideArticleInfoContent" namespace="frontend/plugins/recommendation/slide_articles"}{/se}:</strong> {$article.purchaseunit} {$article.sUnit.description}
                        {if $article.referenceunit}
                            ({$article.referenceprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s} / {$article.referenceunit} {$article.sUnit.description})
                        {/if}
                    </p>
                </div>
            {/if}

            <p class="price{if $article.purchaseunit}{else} up{/if}">
            <span class="price{if $article.pseudoprice} pseudo{/if}">
            {if $article.priceStartingFrom && !$article.liveshoppingData}{s name='ListingBoxArticleStartsAt' namespace="frontend/plugins/recommendation/slide_articles"}{/s} {/if}{$article.price|currency} *</span>
                {if $article.pseudoprice}
                    <em>{s name="reducedPrice" namespace="frontend/listing/box_article"}{/s} {$article.pseudoprice|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}</em>
                {/if}
            </p>
        </a>
    </div>
{/foreach}