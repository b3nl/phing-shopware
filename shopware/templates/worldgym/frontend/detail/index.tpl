{extends file='parent:frontend/detail/index.tpl'}

{* Breadcrumb *}
{block name='frontend_index_breadcrumb'}
	{include file='frontend/detail/navigation.tpl'}
{/block}

{* Sidebar left *}
{block name='frontend_index_content_left'}{/block}

{block name="frontend_detail_index_navigation"}{/block}


{block name='frontend_index_content'}
	<div id="detail" itemscope itemtype="http://data-vocabulary.org/Product">
		
		{* General detailbox *}
		<div id="detailbox" class="row">
            <div class="inner">
                <div class="articlenav">
                    {* Previous article *}
                    {block name='frontend_detail_article_back'}
                        {if $sArticle.sNavigation.sPrevious}
                            <div class="article_back">
                                <a href="{$sArticle.sNavigation.sPrevious.link|rewrite:$sArticle.sNavigation.sPrevious.name}" title="{$sArticle.sNavigation.sPrevious.name}" class="article_back">
                                    <span class="btn_text">{s name='DetailNavPrevious'}Zurück{/s}</span>
                                    <span aria-hidden="true" class="icon" data-icon="&#xf104;"></span>
                                </a>
                            </div>
                        {/if}
                    {/block}

                    {* Next article *}
                    {block name='frontend_detail_article_next'}
                        {if $sArticle.sNavigation.sNext}
                            <div class="article_next">
                                <a href="{$sArticle.sNavigation.sNext.link|rewrite:$sArticle.sNavigation.sNext.name}" title="{$sArticle.sNavigation.sNext.name}" class="article_next">
                                    <span class="btn_text">{s name='DetailNavNext'}Vor{/s}</span>
                                    <span aria-hidden="true" class="icon" data-icon="&#xf105;"></span>

                                </a>
                            </div>
                        {/if}
                    {/block}
                </div>

                <div class="detailimage col two">
                    <div id="img">
                        {include file="frontend/detail/image.tpl"}
                    </div>
                </div>

                <div class="detailtext col two">
                    {* Article name *}
                    {block name='frontend_detail_index_name'}
                        <h1>{$sArticle.articleName}</h1>
                    {/block}

                    <div class="padbox">
                        {* Supplier name *}
                        {if $sArticle.supplierName}
                            {block name='frontend_detail_index_supplier'}
                                <h3 class="supplier">{se name="DetailFromNew"}Hersteller:{/se} {$sArticle.supplierName}</h3>
                            {/block}
                        {/if}

                        {* Article comments - small overview *}
                        {block name="frontend_detail_comments_overview"}
                            {if !{config name=VoteDisable}}
                                <div class="detail_comments">
                                    <span class="star star{$sArticle.sVoteAverange.averange}">Star Rating</span>
                                    <span class="comment_numbers">(<a href="#write_comment" class="write_comment" rel="nofollow" title="{s name='DetailLinkReview'}{/s}">{$sArticle.sVoteAverange.count}</a>)</span>
                                </div>
                            {/if}
                        {/block}

                        {* Configurator table // div buybox *}
                        {if $sArticle.sConfigurator && $sArticle.sConfiguratorSettings.type==2}
                        <div id="buybox">{else}<div id="buybox">{/if}
                                <div id="detail_more"></div>

                                {* Configurator drop down menu *}
                                {block name="frontend_detail_index_configurator"}
                                    {if $sArticle.sConfigurator}
                                        {if $sArticle.sConfiguratorSettings.type eq 1}
                                            {include file="frontend/detail/config_step.tpl"}
                                        {elseif $sArticle.sConfiguratorSettings.type != 2}
                                            {include file="frontend/detail/config_upprice.tpl"}
                                        {/if}
                                    {/if}
                                {/block}

                                {* Caching article details for future use *}
                                {if $sArticle.sBundles || $sArticle.sRelatedArticles && $sArticle.crossbundlelook || $sArticle.sVariants}
                                    <div id="{$sArticle.ordernumber}" class="displaynone">
                                        {include file="frontend/detail/data.tpl" sArticle=$sArticle}
                                    </div>
                                {/if}

                                {* Caching variant article details *}
                                {if $sArticle.sVariants}

                                    {foreach name=line from=$sArticle.sVariants item=sVariant}
                                        <div id="{$sVariant.ordernumber}" class="displaynone">
                                            {include file="frontend/detail/data.tpl" sArticle=$sVariant}
                                        </div>
                                    {/foreach}
                                {/if}


                                {* Article data *}
                                {block name='frontend_detail_index_data'}
                                    {include file="frontend/detail/data.tpl" sArticle=$sArticle sView=1}
                                {/block}
                                {block name='frontend_detail_index_after_data'}{/block}


                                {* Include buy button and quantity box *}
                                {block name="frontend_detail_index_buybox"}
                                    {include file="frontend/detail/buy.tpl"}
                                {/block}

                            </div><!-- //buybox -->

                            {* Article notification *}
                            {block name="frontend_detail_index_notification"}
                                {if $sArticle.notification && ($sArticle.instock <= 0 || $sArticle.sVariants) && $ShowNotification}
                                    {include file="frontend/plugins/notification/index.tpl"}
                                {/if}
                            {/block}

                            {* Additional links *}
                            {block name="frontend_detail_index_actions"}
                                {include file="frontend/detail/actions.tpl"}
                            {/block}

                            {if $TabtenTemplateIkura->ikuraShowSocialJustShare}
                                {include file="frontend/plugins/tabten_plugins/socialjustshare.tpl"}
                            {/if}
                        </div><!-- //Right -->
                    </div>
            </div>
		</div> <!-- //detailbox -->
		

		{* Detailinfo *}
		{block name="frontend_detail_index_detail"}
			<div id="detailinfo" class="row">
                <div class="inner">
                    {* Bundle *}
                    {block name="frontend_detail_index_bundle"}
                        {include file='frontend/detail/bundle/include.tpl'}
                    {/block}

                    {block name="frontend_detail_index_tabs"}
                        {* Tabs *}
                        <div id="tabs">
                            {* Tabsnavigation *}
                            {include file="frontend/detail/tabs.tpl"}

                            {block name="frontend_detail_index_outer_tabs"}
                                <div class="inner_tabs">

                                    {block name="frontend_detail_index_inner_tabs"}
                                        {block name='frontend_detail_index_before_tabs'}{/block}

                                        {* Article description *}
                                        {block name="frontend_detail_index_tabs_description"}
                                            {include file="frontend/detail/description.tpl"}
                                        {/block}

                                        {* Article rating *}
                                        {if !{config name=VoteDisable}}
                                            {block name="frontend_detail_index_tabs_rating"}
                                                {include file="frontend/detail/comment.tpl"}
                                            {/block}
                                        {/if}

                                        {* Related articles *}
                                        {block name="frontend_detail_index_tabs_related"}
                                            {include file="frontend/detail/related.tpl"}
                                        {/block}

                                        {block name='frontend_detail_index_after_tabs'}{/block}
                                    {/block}
                                </div>
                            {/block}
                        </div>

                        {* Similar articles *}
                        {include file='frontend/detail/similar.tpl'}

                    {/block}
                </div>

			</div>

            {* "Customers bought also" slider *}
            {block name="frontend_detail_index_also_bought_slider"}
                {if {config name=alsoBoughtShow}}
                    {action module=widgets controller=recommendation action=bought articleId=$sArticle.articleID}
                {/if}
            {/block}

            {* "Customers similar viewed slider *}
            {block name="frontend_detail_index_similar_viewed_slider"}
                {if {config name=similarViewedShow}}
                    {action module=widgets controller=recommendation action=viewed articleId=$sArticle.articleID}
                {/if}
            {/block}
		{/block}
	</div>
{/block}

