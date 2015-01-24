{* Article navigation *}
{block name='frontend_detail_menu_top'}
	
	{* Breadcrumb *}
	<nav id="breadcrumb" class="detail">
        <div class="inner">
            {if !{config name=disableArticleNavigation}}
                <a class="back_to_overview" href="{$sArticle.sNavigation.sCurrent.sCategoryLink|rewrite:$sArticle.sNavigation.sCurrent.sCategoryName}" title="{$sArticle.sNavigation.sCurrent.sCategoryName}"><span aria-hidden="true" class="icon" data-icon="&#xf104;"></span> {s name='DetailNavIndex'}{/s}</a>
            {/if}

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
{/block}
