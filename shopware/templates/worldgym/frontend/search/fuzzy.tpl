{extends file='frontend/index/index.tpl'}

{* Sidebar left *}
{block name='frontend_index_content_left'}
	{if $sSearchResults.sArticles}
		{include file='frontend/search/fuzzy_left.tpl'}
	{else}
		{$smarty.block.parent}
	{/if}
{/block}

{* Main content *}
{block name='frontend_index_content'}
<div class="fuzzy" id="center">
    <div class="inner">
        {if !$sSearchResults.sArticles}
            {if $sRequests.sSearchOrginal}
                {* No results found *}
                {block name='frontend_search_fuzzy_empty'}
                    <div class="error">
                        <strong>{se name='SearchFuzzyHeadlineEmpty'}{/se}</strong>
                    </div>
                {/block}
            {else}

                {* Given search term is too short *}
                {block name='frontend_search_fuzzy_shortterm'}
                    <div class="error">
                        <strong>{se name='SearchFuzzyInfoShortTerm'}{/se}</strong>
                    </div>
                {/block}
            {/if}
        {/if}
        {if $sSearchResults.sArticles}
            {block name='frontend_search_fuzzy_result'}

                <h2>
                    {s name='SearchHeadline'}Zu "{$sRequests.sSearch}" wurden {$sSearchResults.sArticlesCount} Artikel gefunden!{/s}
                </h2>

                {include file='frontend/search/filter_category.tpl'}


                {* Listing Actions *}
                {include file='frontend/search/paging.tpl' sTemplate='listing'}

                {* Actual listing *}
                <div class="listing" id="listing">
                    {foreach from=$sSearchResults.sArticles item=sArticle key=key name=list}
                        {include file='frontend/listing/box_article.tpl' sTemplate='listing'}
                    {/foreach}
                </div>

                {* Pagination *}
                {include file='./frontend/search/paging.tpl'}

            {/block}

        {/if}
    </div>
</div>
{/block}
