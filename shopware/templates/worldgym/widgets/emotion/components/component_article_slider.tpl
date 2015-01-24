
{if $Data.article_slider_type == 'selected_article'}
    <script type="text/javascript">
        $(document).ready(function(){
            {$perPage = $sColWidth }

            if ( $('.article-slider-emotion_{$Data.objectId}').parent().parent().hasClass('col4') ){

                $('.article-slider-emotion_{$Data.objectId}').slick({
                    dots:{if $Data.article_slider_numbers}true{else}false{/if},
                    autoplay:true,
                    slidesToShow:5,
                    slidesToScroll: 5,
                    responsive: [
                        {
                            breakpoint: 1000,
                            settings: {
                                slidesToShow: 3,
                                slidesToScroll: 3
                            }
                        },
                        {
                            breakpoint: 550,
                            settings: {
                                slidesToShow: 2,
                                slidesToScroll: 2
                            }
                        }
                        ,
                        {
                            breakpoint: 480,
                            settings: {
                                slidesToShow: 1,
                                slidesToScroll: 1
                            }
                        }
                    ]
                });

            } else if ( $('.article-slider-emotion_{$Data.objectId}').parent().parent().hasClass('col3') ){

                $('.article-slider-emotion_{$Data.objectId}').slick({
                    dots:{if $Data.article_slider_numbers}true{else}false{/if},
                    autoplay:true,
                    slidesToShow:3,
                    slidesToScroll: 3,
                    responsive: [
                        {
                            breakpoint: 550,
                            settings: {
                                slidesToShow: 2,
                                slidesToScroll: 2

                            }
                        }
                        ,
                        {
                            breakpoint: 480,
                            settings: {
                                slidesToShow: 1,
                                slidesToScroll: 1
                            }
                        }
                    ]
                });

            } else if( $('.article-slider-emotion_{$Data.objectId}').parent().parent().hasClass('col2') ){

                $('.article-slider-emotion_{$Data.objectId}').slick({
                    dots:{if $Data.article_slider_numbers}true{else}false{/if},
                    autoplay:true,
                    slidesToShow:2,
                    slidesToScroll: 2,
                    responsive: [
                        {
                            breakpoint: 480,
                            settings: {
                                slidesToShow: 1,
                                slidesToScroll: 1
                            }
                        }
                    ]
                });

            } else if( $('.article-slider-emotion_{$Data.objectId}').parent().parent().hasClass('col1') ){

                $('.article-slider-emotion_{$Data.objectId}').slick({
                    dots:{if $Data.article_slider_numbers}true{else}false{/if},
                    autoplay:true,
                    slidesToShow:1,
                    slidesToScroll: 1
                });
            }
        });
    </script>

{if $Data.article_slider_title}
    <h2>{$Data.article_slider_title}</h2>
{/if}

    <div class="article-slider-emotion article-slider-emotion_{$Data.objectId}">

        {foreach $Data.values|array_chunk:$perPage as $articles}
            {foreach from=$articles item=article}
                <div>
                    {assign var=image value=$article.image.src.4}
                    <a title="{$article.articleName}" href="{$article.linkDetails}" class="slide_article artbox">
                        {if $image}
                            <figure>
                                <img src="{$image}" title="{$article.articleName}" />
                            </figure>
                        {else}
                            <figure>
                                <img src="{link file="frontend/_resources/images/no_picture.jpg"}" title="{$article.articleName}" />
                            </figure>
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
        {/foreach}

    </div>

{else}
<script type="text/javascript">
    (function($) {
        $(document).ready(function() {
            {$sliderHeight = $sElementHeight}
            {if $Data.article_slider_title}
            {$sliderHeight = $sliderHeight - 36};
            {/if}
            {$perPage = $sColWidth }
            var config  = {
                'url': '{$Data.ajaxFeed}',
                'title': "{$Data.article_slider_title}",
                'headline': {if $Data.article_slider_title}true{else}false{/if},
                'scrollSpeed': ~~(1 * '{$Data.article_slider_scrollspeed}'),
                'rotateSpeed': ~~(1 * '{$Data.article_slider_rotatespeed}'),
                'rotate': {if $Data.article_slider_rotation}true{else}false{/if},
                'layout': 'horizontal',
                'showNumbers': {if $Data.article_slider_numbers}true{else}false{/if},
                'navigation': {if $Data.article_slider_type == 'selected_article'}true{else}false{/if},
                'showArrows': {if $Data.article_slider_arrows}true{else}false{/if},
                'scrollWidth': ~~(1 * '{$sElementWidth}'),
                'scrollHeight': ~~(1 * '{$sElementHeight}'),
                'skipInitalRendering': true,
                'maxPages': ~~(1 * '{$Data.pages}'),
                'extraParams': {
                    'category': ~~(1 * '{$Data.categoryId}'),
                    'start': 0,
                    'limit': ~~(1 * '{$perPage}'),
                    'elementWidth': ~~(1 * '{$sElementWidth}'),
                    'elementHeight': ~~(1 * '{$sliderHeight-5}'),
                    'max': ~~(1 * '{$Data.article_slider_max_number}')
                }
            };

            var slider = $('.slider_article_{$Data.objectId}').ajaxSlider({if $Data.article_slider_type == 'selected_article'}'locale'{else}'ajax'{/if}, config);
            slider.find('.sliding_outer, .sliding_container').css('height', {$sliderHeight});
            slider.find('.ajaxSlider').css('height', {$sElementHeight-2});
        });

    })(jQuery);
</script>
<div class="slider_article_{$Data.objectId} article-slider-emotion" style="height:{$sElementHeight}px">
    {if $Data.article_slider_type == 'selected_article'}
        {foreach $Data.values|array_chunk:$perPage as $articles}
            {include file="widgets/emotion/slide_articles.tpl" articles=$articles sElementWidth=$sElementWidth sPerPage=$perPage sElementHeight=$sliderHeight-5}
        {/foreach}
    {/if}
</div>
{/if}
