<nav id="main_navigation" class="page_navigation">
    <div class="inner">
        <ul>
            <li{if $sCategoryCurrent eq $sCategoryStart} class="active"{/if}>
                <a href="{url controller='index'}" title="{s name='IndexLinkHome'}{/s}" class="first{if $sCategoryCurrent eq $sCategoryStart} active{/if}">
                    {se name='IndexLinkHome'}Home{/se}
                </a>
            </li>
            {foreach from=$sMainCategories item=sCategory}
                {if !$sCategory.hidetop}
                    <li{if $sCategory.flag} class="active"{/if}>
                        <a href="{$sCategory.link}" title="{$sCategory.description}" {if $sCategory.flag} class="active"{/if}>
                            <span>{$sCategory.description}</span>
                        </a>
                    </li>
                {/if}
            {/foreach}
        </ul>
    </div>
</nav>