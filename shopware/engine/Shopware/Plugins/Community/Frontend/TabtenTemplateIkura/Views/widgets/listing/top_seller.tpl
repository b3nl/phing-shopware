{if $sCharts|@count}
    <script type="text/javascript">
        $(function() {

            $('.topseller-slider').slick({
                dots:true,
                autoplay:true,
                slidesToShow:4,
                slidesToScroll: 4,
                responsive: [
                    {
                        breakpoint: 1000,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll:3
                        }
                    },
                    {
                        breakpoint: 550,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll:2,
                            dots:false
                        }
                    }
                    ,
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll:1
                        }
                    }
                ]
            });
        });
    </script>

<div class="topseller_container">
    <div class="inner">
        <h2>{s name="TopsellerHeading" namespace=frontend/plugins/index/topseller}{/s}</h2>
        {if $Data.article_slider_title}
            <h2>{$Data.article_slider_title}</h2>
        {/if}
        <div class="topseller-slider">
            {foreach from=$sCharts item=article}
                {*{if $article@index % $perPage == 0}*}
                <div>
                    {assign var=image value=$article.image.src.4}
                    <a class="slide_article" title="{$article.articleName|escape}" href="{$article.linkDetails}">
                        {if $image}
                            <img src="{$image}" alt="{$article.articleName|escape}" />
                        {else}
                            no picture
                        {/if}
                        <h3>{$article.articleName}</h3>
                        <span>{$article.price|currency}</span>
                    </a>

                    {*{if $article@index % $perPage == ($perPage - 1) || $article@last}*}
                    {*{/if}*}
                </div>
                {*{/if}*}
            {/foreach}
        </div>
    </div>
</div>
{/if}

