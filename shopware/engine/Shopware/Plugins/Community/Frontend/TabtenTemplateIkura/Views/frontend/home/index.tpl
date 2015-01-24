{*DEFAULT*}
{extends file='frontend/index/index.tpl'}

{* Breadcrumb *}
{block name='frontend_index_breadcrumb'}{/block}

{* Sidebar left *}
{block name='frontend_index_content_left'}{/block}

{* Sidebar right *}
{block name='frontend_index_content_right'}{/block}



{block name="frontend_index_content_top"}{/block}

{* Main content *}
{block name='frontend_index_content'}
    <div id="center">
        <div class="inner">
            {block name='frontend_home_index_banner'}
                {* Banner *}
                {include file='frontend/listing/banner.tpl'}
            {/block}

            {block name='frontend_home_index_liveshopping'}
                {* Liveshopping *}
                {include file='frontend/listing/liveshopping.tpl'}
            {/block}

            {* Category text *}
            {block name='frontend_home_index_text'}
                {if !$hasEmotion}
                    {$smarty.block.parent}
                {/if}
            {/block}

            {* Promotion *}
            {block name='frontend_home_index_promotions'}
                {action module=widgets controller=emotion action=index categoryId=$sCategoryContent.id controllerName=$Controller}
            {/block}

            {block name='frontend_home_index_blog'}
                {* Blog Articles *}
                {if $sBlog.sArticles|@count}
                    <div class="listing_box">
                        <h2 class="headingbox_nobg largesize">{se name='WidgetsBlogHeadline'}{/se}:</h2>
                        {foreach from=$sBlog.sArticles item=article key=key name="counter"}
                            {include file="frontend/blog/box.tpl" sArticle=$article key=$key homepage=true}
                        {/foreach}
                    </div>
                {/if}
            {/block}
        </div>


        {* Tagcloud *}
        {block name="frontend_home_index_tagcloud"}
        <div class="tcloud">
            <div class="inner">
            {if {config name=show namespace=TagCloud } && !$isEmotionLandingPage}
                {action module=widgets controller=listing action=tag_cloud}
            {/if}
            </div>
        </div>
        {/block}
    </div>
{/block}

{* Sidebar right *}
{block name='frontend_index_content_right'}
    {include file='frontend/home/right.tpl'}
{/block}