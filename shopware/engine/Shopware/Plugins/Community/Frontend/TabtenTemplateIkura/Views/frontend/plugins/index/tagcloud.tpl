{if $sCloud}
<div class="row">
    <h2>{s name="TagcloudHead"}{/s}</h2>
    <div class="tagcloud">
        {foreach from=$sCloud item=sCloudItem}
            <a href="{$sCloudItem.link|rewrite:$sCloudItem.name}" title="{$sCloudItem.name}" class="{$sCloudItem.class}">
                {$sCloudItem.name|truncate:15:"":false}
            </a>
        {/foreach}
    </div>
</div>
{/if}