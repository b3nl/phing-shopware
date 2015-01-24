{if $sSearchResults.sResults}
	<div class="searchresult_inner">
		<ul>
		{foreach $sSearchResults.sResults as $search_result}
			<li class="searchresult">
                <a href="{$search_result.link}" title="{$search_result.name}">
                    {if $search_result.thumbNails.1}
                        <figure>
                            <img src="{$search_result.thumbNails.1}">
                        </figure>
                    {else}
                        {if !isset($sArticle.image.src)}
                            <figure>
                                <img src="{link file='frontend/_resources/images/no_picture.jpg'}" alt="{s name='ListingBoxNoPicture'}{/s}" />
                            </figure>
                        {/if}
                    {/if}
                    <div class="searchdescription">
                        <h3>{$search_result.name}</h3>
                        <p>{$search_result.description|strip_tags|truncate:100}</p>
                    </div>
                    <span aria-hidden="true" class="icon" data-icon="&#xf105"></span>
                </a>
			</li>
		{/foreach}
		</ul>
        <a href="{url controller='search' sSearch=$sSearchRequest.sSearch}" class="resultall">
            {s name='SearchAjaxLinkAllResults'}Alle Ergebnisse anzeigen{/s}
            <span class="result_number">({$sSearchResults.sArticlesCount} {s name='SearchAjaxInfoResults'}Treffer{/s})</span>
        </a>
		</li>
	</div>
{/if}