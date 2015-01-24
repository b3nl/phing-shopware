{* Breadcrumb *}
<nav id="breadcrumb">
    <div class="inner">
        {if $sShopname}
            <a href="{url controller='index'}">
                {$sShopname}
            </a>
        {/if}
        {foreach name=breadcrumb from=$sBreadcrumb item=breadcrumb}
            {if $breadcrumb.name}
                {if $smarty.foreach.breadcrumb.last}
                    <span aria-hidden="true" class="icon" data-icon="&#xf105;"></span>
                    <a href="{if $breadcrumb.link}{$breadcrumb.link}{else}#{/if}" title="{$breadcrumb.name}" class="last">
                        {$breadcrumb.name}
                    </a>
                {else}
                    <span aria-hidden="true" class="icon" data-icon="&#xf105;"></span>
                    <a href="{if $breadcrumb.link}{$breadcrumb.link}{else}#{/if}" title="{$breadcrumb.name}">
                        {$breadcrumb.name}
                    </a>
                {/if}
            {/if}
        {/foreach}
    </div>
</nav>