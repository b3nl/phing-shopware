<script type="text/javascript">

    $(function(){

        $('.bs_{$Data.objectId}').slick({
            dots:{if $Data.banner_slider_numbers}true{else}false{/if},
            arrows:{if $Data.banner_slider_arrows}true{else}false{/if},
            autoplay:{if $Data.banner_slider_rotation}true{else}false{/if},
            autoplaySpeed: 5000,
            touchMove: false,
            fade:true,
            onInit:function(){

                $('.banner_slider img').css({
                    visibility: 'visible',
                    opacity: 0
                });
                $('.banner_slider img').animate({
                    opacity:1
                }, 500, function(){
                    $('.bs_{$Data.objectId}').slickGoTo(0);
                });

            }
        });
    });
</script>


{if $Data.banner_slider_title}
    <h2>{$Data.banner_slider_title}</h2>
{/if}
<div class="bs_{$Data.objectId} banner_slider">
    {foreach $Data.values as $banner}
        <div>
            {if $banner.link}
                <a href="{$banner.link}">
                    <img src="{$banner.path}" alt="{$banner.altText}" {if $banner.title}title="{$banner.title}" {/if}/>
                </a>
            {else}
                <img src="{$banner.path}" alt="{$banner.altText}" {if $banner.title}title="{$banner.title}" {/if}/>
            {/if}
        </div>
    {/foreach}
</div>