{function name=categories_top level=0}
<ul class="{if !$level}dropdown{else}droplevel{/if} droplevel{$level}">
{foreach from=$categories item=category}
{if !$category.hidetop}
    <li{if !empty($category.flag)} class="active"{/if}{if $category.sub} class="sub"{/if}>
     	<a href="{$category.link}" class="{if !empty($category.flag)} active{/if}">
            {$category.name}
        </a>
    	{if $category.sub}
	     	{call name=categories_top categories=$category.sub level=$level+1}
	    {/if}
    </li>
{/if}
{/foreach}
</ul>
{/function}

<nav id="main_navigation">
    <div class="inner">
        <ul class="firstlevel">
            <li{if $sCategoryCurrent eq $sCategoryStart} class="active"{/if}>
                <a href="{url controller='index'}" title="{s name='IndexLinkHome'}Home{/s}" class="first{if $sCategoryCurrent eq $sCategoryStart} active{/if}">
                    {se name='IndexLinkHome'}{/se}
                    {*<span aria-hidden="true" class="icon" data-icon="&#xf015"></span>*}
                </a>
            </li>
            {foreach from=$sAdvancedMenu item=sCategory}
                {if !$sCategory.hidetop}
                    <li{if !empty($sCategory.flag)} class="active"{/if} {if $sCategory.sub} class="dropactive"{/if}>
                        <a href="{$sCategory.link}" title="{$sCategory.description}" {if !empty($sCategory.flag)} class="active"{/if}>
                            {$sCategory.description}
                        </a>
                        {if $sCategory.sub}
                            {call name=categories_top categories=$sCategory.sub}
                        {/if}
                    </li>
                {/if}
            {/foreach}
        </ul>
    </div>
</nav>