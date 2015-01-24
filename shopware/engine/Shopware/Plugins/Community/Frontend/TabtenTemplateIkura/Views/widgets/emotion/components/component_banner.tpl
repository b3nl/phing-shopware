<div class="mapping">
    {if $Data.link}
        <a href="{$Data.link}">
            <img src="{link file=$Data.file}" />
        </a>
    {else}
        <img src="{link file=$Data.file}"{if $Data.bannerMapping} class="mapping_image"{/if} />
    {/if}
    {if $Data.bannerMapping}
        <script>
            var baseWidth_{$Data.objectId} = {$sElementWidth};
        </script>
        <div class="banner-mapping" style="height: {$sElementHeight}px;width: {$sElementWidth}px">
			{foreach $Data.bannerMapping as $mapping}
                <a href="{$mapping.link}"{if $mapping.linkLocation eq "external"} target="_blank"{/if} class="emotion-banner-mapping emotion-banner-mapping-{$mapping.resizerIndex}" style="width:{$mapping.width}px;height:{$mapping.height}px;left:{$mapping.x}px;top:{$mapping.y}px"{if $mapping.title} title="{$mapping.title}"{/if}></a>
                {if $mapping.as_tooltip === 1 && $mapping.title}
                    <div class="banner-mapping-tooltip bmt-{$mapping.resizerIndex}" style="width:{$mapping.width}px;left:{$mapping.x}px;top:{$mapping.y + $mapping.height - ($mapping.height / 2)}px">
                        <span>{$mapping.title}</span>
                    </div>
                {/if}
            {/foreach}
        </div>

    {/if}
</div>

{if $Data.bannerMapping}
    <script>
        {foreach $Data.bannerMapping as $mapping}
        var resizeEmotionBannerMappings_{$mapping.resizerIndex} = function () {

            if($('.mapping img').length){
                var bannerMap = $('.mapping_image'),
                    percentage = bannerMap.width() * 100 / baseWidth_{$Data.objectId},
                    biNewWidth = Math.round( ({$mapping.width} / 100) * percentage),
                    biNewHeight = Math.round( ({$mapping.height} / 100) * percentage),
                    biNewTop = Math.round( ({$mapping.y}/ 100) * percentage),
                    biNewLeft = Math.round( ({$mapping.x}/ 100) * percentage);

                $(".emotion-banner-mapping-{$mapping.resizerIndex}").css({
                    'width' : biNewWidth+'px' ,
                    'height' : biNewHeight+'px',
                    'top' : biNewTop+'px',
                    'left' : biNewLeft+'px'
                });

                {if $mapping.as_tooltip === 1 && $mapping.title}
                $(".bmt-{$mapping.resizerIndex}").css({
                    'top' : biNewTop-10 + 'px',
                    'left' : biNewLeft-10 +'px'
                });
                {/if}
            }
        }
        {/foreach}
    </script>

    <script>
        (function($,sr){
            var debounce = function (func, threshold, execAsap) {
                var timeout;

                return function debounced () {
                    var obj = this, args = arguments;
                    function delayed () {
                        if (!execAsap)
                            func.apply(obj, args);
                        timeout = null;
                    };

                    if (timeout)
                        clearTimeout(timeout);
                    else if (execAsap)
                        func.apply(obj, args);

                    timeout = setTimeout(delayed, threshold || 100);
                };
            }
            // smartresize
            jQuery.fn[sr] = function(fn){  return fn ? this.bind('resize', debounce(fn)) : this.trigger(sr); };

        })(jQuery,'smartresize');
    </script>
    <script>
        $(window).load( function(){
            {foreach $Data.bannerMapping as $mapping}
                resizeEmotionBannerMappings_{$mapping.resizerIndex}();
            {/foreach}
            $(window).smartresize(function(){
                {foreach $Data.bannerMapping as $mapping}
                    resizeEmotionBannerMappings_{$mapping.resizerIndex}();
                {/foreach}
            });
        });
    </script>
{/if}
{*<p>{$emotion.elements[0].data|@print_r}</p>*}



