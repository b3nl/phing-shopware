{if $viewedArticles}
    <script type="text/javascript">
        $(document).ready(function(){
            $('.viewed-slider').slick({
                dots:true,
                autoplay:true,
                slidesToShow:5,
                slidesToScroll: 5,
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
<div class="customers_viewed">
    <div class="inner">
        <h2>{s name="DetailViewedArticlesSlider" namespace="frontend/plugins/recommendation/blocks_detail"}Kunden haben sich ebenfalls angesehen:{/s}</h2>
        <div class="viewed-slider">
            {foreach $viewedArticles|array_chunk:$perPage as $articles}
                {include file="widgets/recommendation/slide_articles.tpl" articles=$articles}
            {/foreach}
        </div>
    </div>
</div>
{/if}