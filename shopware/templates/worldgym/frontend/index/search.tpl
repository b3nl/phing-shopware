{extends file='parent:frontend/index/search.tpl'}

{* Search container *}
{block name='frontend_index_search_container'}
<div id="searchcontainer" >
	<div class="inner_searchcontainer">

        <div class="form">
            {* Ajax loader *}
            <div class="ajax_loader">&nbsp;</div>
            <form action="{url controller='search' fullPath=false}" method="get" id="searchform">
                {block name="frontend_index_search_innerform"}{/block}
                <input type="text" name="sSearch" id="searchfield" autocomplete="off" value="{s name="IndexSearchFieldValue"}Suche:{/s}" maxlength="30"  />
                <input type="submit" id="submit_search_btn" value="Suchen" />
                <span aria-hidden="true" class="icon" data-icon="&#xf002;"></span>
            </form>
        </div>
	</div>
</div>
{/block}