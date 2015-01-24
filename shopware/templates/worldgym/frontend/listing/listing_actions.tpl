{if !$sOffers}

{block name="frontend_listing_actions_class"}
<div class="listing_actions{if !$sPages || $sPages.numbers|@count <= 1 || $sNumberPages <= 1} normal{/if} row">
{/block}
{block name='frontend_listing_actions_top'}
	<div class="top">
		{* Sort filter *}
		{block name='frontend_listing_actions_sort'}
            <div class="col">
                <form method="get" action="{url controller=cat sCategory=$sCategoryContent.id}">
                    {foreach from=$categoryParams key=key item=value}
                        {if $key == 'sSort'}
                            {continue}
                        {/if}
                        <input type="hidden" name="{$key}" value="{$value}">
                    {/foreach}
                    <input type="hidden" name="sPage" value="1">
                    <div class="sort-filter">
                        <label>{s name='ListingLabelSort'}{/s}</label>
                        <select name="sSort" class="auto_submit">
                            <option value="1"{if $sSort eq 1} selected="selected"{/if}>{s name='ListingSortRelease'}{/s}</option>
                            <option value="2"{if $sSort eq 2} selected="selected"{/if}>{s name='ListingSortRating'}{/s}</option>
                            <option value="3"{if $sSort eq 3} selected="selected"{/if}>{s name='ListingSortPriceLowest'}{/s}</option>
                            <option value="4"{if $sSort eq 4} selected="selected"{/if}>{s name='ListingSortPriceHighest'}{/s}</option>
                            <option value="5"{if $sSort eq 5} selected="selected"{/if}>{s name='ListingSortName'}{/s}</option>
                            {block name='frontend_listing_actions_sort_values'}{/block}
                        </select>
                    </div>
                </form>
            </div>
		{/block}

		{* Article per page *}
		{block name='frontend_listing_actions_items_per_page'}
		{if $sPerPage}
        <div class="col">
			<form method="get" action="{url controller=cat sCategory=$sCategoryContent.id}">
            {foreach from=$categoryParams key=key item=value}
                {if $key == 'sPerPage'}
                    {continue}
                {/if}
                <input type="hidden" name="{$key}" value="{$value}">
            {/foreach}
            <input type="hidden" name="sPage" value="1">
            <div class="articleperpage{if $sCategoryContent.noViewSelect} rightalign{/if}">
				<label>{s name='ListingLabelItemsPerPage'}{/s}</label>
                <select name="sPerPage" class="auto_submit">
                    {foreach from=$sPerPage item=perPage}
                        <option value="{$perPage.value}" {if $perPage.markup}selected="selected"{/if}>{$perPage.value}</option>
                    {/foreach}
                </select>
			</div>
			</form>
        </div>
		{/if}
		{/block}

		{* Change layout *}
		{block name="frontend_listing_actions_change_layout"}
		{if !$sCategoryContent.noViewSelect}
        <div class="col">
			<div class="list-settings">
                <label>{s name='ListingActionsSettingsTitle'}Darstellung:{/s}</label>
                <a href="{url params=$categoryParams sViewport='cat' sCategory=$sCategoryContent.id sPage=1 sTemplate='table'}" class="change-view {if $sBoxMode=='table'}active{/if}" title="{s name='ListingActionsSettingsTable'}Tabellen-Ansicht{/s}">
                    <span aria-hidden="true" class="icon" data-icon="&#xf00a;"></span>
                </a>
                <a href="{url params=$categoryParams sViewport='cat' sCategory=$sCategoryContent.id sPage=1 sTemplate='list'}" class="change-view {if $sBoxMode=='list'}active{/if}" title="{s name='ListingActionsSettingsList'}Listen-Ansicht{/s}">
                    <span aria-hidden="true" class="icon" data-icon="&#xf00b;"></span>
                </a>
            </div>
        </div>
		{/if}
		{/block}

		<noscript>
			<input type="submit" class="buttonkit green small rounded" value="OK" />
		</noscript>
	</div>
{/block}
{block name='frontend_listing_actions_paging'}
	{if $sNumberPages && $sNumberPages > 1}
	<div class="bottom">
		{* Paging *}
		<div class="paging">
			<label>{s name='ListingPaging'}{/s}</label>
			{if $sPages.previous}
				<a href="{$sPages.previous|rewrite:$sCategoryInfo.name}" title="{s name='ListingLinkPrevious'}{/s}" class="navi prev"><span aria-hidden="true" class="icon" data-icon="&#xf104;"></span></a>
			{/if}

			{* Articles per page *}
			{foreach from=$sPages.numbers item=page}
				{if $page.value<$sPage+2 AND $page.value>$sPage-2}
					{if $page.markup AND (!$sOffers OR $sPage)}
						<a title="{$sCategoryInfo.name}" class="navi on">{$page.value}</a>
					{else}
						<a href="{$page.link|rewrite:$sCategoryInfo.name}" class="navi">{$page.value}</a>
					{/if}
				{elseif $page.value==$sPage+3 OR $page.value==$sPage-3}
					<div class="dots">...</div>
				{/if}
			{/foreach}
			{if $sPages.next}
				<a href="{$sPages.next|rewrite:$sCategoryInfo.name}" title="{s name='ListingLinkNext'}{/s}" class="navi more"><span aria-hidden="true" class="icon" data-icon="&#xf105;"></span></a>
			{/if}
		</div>

		{block name='frontend_listing_actions_count'}
		{* Count sites *}
		<div class="display_sites">
			{se name="ListingTextSite"}Seite{/se} <strong>{$sPage}</strong> {se name="ListingTextFrom"}von{/se} <strong>{$sNumberPages}</strong>
		</div>
		{/block}
	</div>
	{/if}
{/block}
{block name="frontend_listing_actions_close"}
</div>
{/block}
{else}
	{if $sCategoryContent.parent != 1}
	<div class="listing_actions normal">
		<div class="top">
			<a class="offers" href="{url controller='cat' sPage=1 sCategory=$sCategoryContent.id}">
				{s name="ListingActionsOffersLink"}Weitere Artikel in dieser Kategorie &raquo;{/s}
			</a>
		</div>
	</div>
	{/if}
{/if}
