<script type="text/javascript">

    $(function() {
        $('.slider_manufacturer_{$Data.objectId}').slick({
            dots:{if $Data.manufacturer_slider_numbers}true{else}false{/if},
            arrows:{if $Data.manufacturer_slider_arrows}true{else}false{/if},
            autoplay:{if $Data.manufacturer_slider_rotation}true{else}false{/if},
            slidesToShow:5,
            slidesToScroll: 5,
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll:3
                    }
                },
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

{if $colWidth eq 3}
    {$perPage = $sColWidth + 1}
{elseif $colWidth eq 2}
    {$perPage = $sColWidth + 1}
{else}
    {$perPage = $sColWidth}
{/if}
{if $Data.manufacturer_slider_title}
    <h2>{$Data.manufacturer_slider_title}</h2>
{/if}
<div class="slider_manufacturer_{$Data.objectId} slider-manufacturer">
    {foreach $Data.values|array_chunk:$perPage as $suppliers}
        {foreach $suppliers as $supplier}
            <div class="slide">
                <a href="{$supplier.link}" title="{$supplier.name}" class="image-wrapper{if !$supplier.image} text{/if}">
                    {if $supplier.image}
                        <img src="{$supplier.image}" alt="{$supplier.name}" />
                    {else}
                        {$supplier.name}
                    {/if}
                </a>
            </div>
        {/foreach}
    {/foreach}
</div>