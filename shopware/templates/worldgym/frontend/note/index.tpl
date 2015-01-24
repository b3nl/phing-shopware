{extends file='frontend/index/index.tpl'}

{* Breadcrumb *}
{block name='frontend_index_start' prepend}
	{$sBreadcrumb = [['name'=>"{s name='NoteTitle'}{/s}", 'link'=>{url}]]}
{/block}

{* Main content *}
{block name="frontend_index_content"}
	<div id="center" class="notes">
        <div class="inner">
            {* Infobox *}
            <div class="cat_text">
                <h1>{s name='NoteHeadline'}{/s}</h1>
                <p>
                    {s name='NoteText'}{/s}
                </p>
                <p>
                    {s name='NoteText2'}{/s}
                </p>
            </div>

            <div class="row">

                {if $sNotes}
                    <div class="table">
                        {* Table head *}
                        <div class="table_head row">

                            {* Article informations *}
                            <div class="col">
                                {s name='NoteColumnName'}{/s}
                            </div>

                            {* Unit price *}
                            <div class="col unitprice">
                                {s name='NoteColumnPrice'}{/s}
                            </div>
                            {block name="frontend_note_index_columns"}{/block}
                        </div>

                        {foreach from=$sNotes item=sBasketItem name=noteitems}
                            {if $smarty.foreach.noteitems.last}
                                {assign var=lastrow value=1}
                            {else}
                                {assign var=lastrow value=0}
                            {/if}

                            {include file="frontend/note/item.tpl" lastrow=$lastrow}

                        {/foreach}
                    </div>
                {/if}
            </div>
        </div>
</div>
{/block}

{block name='frontend_index_content_left'}
    {if $sUserLoggedIn}
        <div class="inner inneraside">
            <div id="aside_toggle"></div>
            <aside id="left_sidebar">
                {include file="frontend/account/content_right.tpl"}
            </aside>
            <div id="navi_hint">
                {s name='NoteNavigationHint'}Navigation{/s}
                <div class="close_navihint"></div>
            </div>
        </div>
    {/if}
{/block}

{* Sidebar right *}
{block name="frontend_index_content_right"}
{*{if $sUserLoggedIn}*}
	{*<div id="right_account" class="grid_4 last">*}
		{*{include file="frontend/account/content_right.tpl"}*}
	{*</div>*}
{*{/if}*}
{/block}