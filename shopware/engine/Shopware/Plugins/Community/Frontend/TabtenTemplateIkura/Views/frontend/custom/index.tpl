{extends file='parent:frontend/custom/index.tpl'}

{block name='frontend_index_content'}

    <div id="center" class="custom">
        <div class="inner">
            <h1>{$sCustomPage.description}</h1>

            {* Article content *}
            {block name='frontend_custom_article_content'}
                {$sContent}
            {/block}
        </div>
    </div>

    {if $sCustomPage.subPages}
        {$pages = $sCustomPage.subPages}
    {elseif $sCustomPage.siblingPages}
        {$pages = $sCustomPage.siblingPages}
    {/if}
    {if $pages}
    <div class="inner inneraside">
        <div id="aside_toggle"></div>
        <aside id="left_sidebar">
            <nav class="sidebar_nav">
                {if $pages}
                    <ul>
                        {foreach $pages as $subPage}
                            <li><a href="{url controller=custom sCustom=$subPage.id}" title="{$subPage.description}" {if $subPage.active} class="active"{/if}>
                                    {$subPage.description}
                                </a></li>
                        {/foreach}
                    </ul>
                {/if}
            </nav>
        </aside>
        <div id="navi_hint">
            {s name='CustomNavigationHint'}Navigation{/s}
            <div class="close_navihint"></div>
        </div>
    </div>

    {/if}
{/block}

{* Sidebar right *}
{block name='frontend_index_content_right'}{/block}

{* Sidebar left *}
{block name='frontend_index_content_left'}{/block}