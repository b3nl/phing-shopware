{if $boughtArticles}
    <script type="text/javascript">
        $(document).ready(function(){
            $('.bought-slider').slick({
                dots:true,
                autoplay:true,
                slidesToShow:5,
                slidesToScroll: 5,
                responsive: [
                    {
                        breakpoint: 1000,
                        settings: {
                            slidesToShow: 4,
                            slidesToScroll:4
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
    <div class="customers_bought">
        <div class="inner">
            <h2>{s name="DetailBoughtArticlesSlider" namespace="frontend/plugins/recommendation/blocks_detail"}Kunden kauften auch:{/s}</h2>
            <div class="bought-slider">
                {foreach $boughtArticles|array_chunk:$perPage as $articles}
                    {include file="widgets/recommendation/slide_articles.tpl" articles=$articles}
                {/foreach}
            </div>
        </div>
    </div>
{/if}