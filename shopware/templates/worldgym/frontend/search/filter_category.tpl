{* Search filter options *}
{block name='frontend_search_filter_category_box'}
<div class="category_filter">

	{* Headline *}
	<h3>{se name='SearchFilterCategoryHeading'}Suchergebnis nach Kategorien einschr&auml;nken{/se}</h3>
	
	<div class="categories">
        <div class="row">
            {foreach from=$sCategoriesTree key=sKey item=sCategorie}
                {if $sKey != $sSearchResults.sLastCategory}
                    <a href="{$sLinks.sFilter.category}&sFilter_category={$sCategorie.id}" class="active">
                        {$sCategorie.description}
                    </a>

                {else}
                    <span>{$sCategorie.description}</span>
                {/if}
            {/foreach}
        </div>

	    <div class="row">
            {if $sSearchResults.sCategories.0}
                {partition assign=sCategoriesParts array=$sSearchResults.sCategories parts=2}

                {foreach from=$sCategoriesParts item=sCategories}
                    <ul>
                        {foreach from=$sCategories item=sCategorie}
                            {if $sCategorie.count!=""}
                                <li>
                                    <a href="{$sLinks.sFilter.category}&sFilter_category={$sCategorie.id}">
                                        {$sCategorie.description} ({$sCategorie.count})
                                    </a>
                                </li>
                            {/if}
                        {/foreach}
                    </ul>
                {/foreach}
            {/if}
	    </div>

        <div class="row">
            {if $sRequests.sFilter.category}
                <a href="{$sLinks.sFilter.category}" class="showall">{se name='SearchFilterLinkDefault'}{/se}</a>
            {/if}
        </div>
    </div>
</div>
{/block}
