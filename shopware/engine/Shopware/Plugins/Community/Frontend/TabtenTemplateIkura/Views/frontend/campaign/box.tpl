{block name='frontend_campaign_box'}
{if $campaignsData && !$sCategoryCampaigns}
	{foreach from=$campaignsData item=campaign}
            {block name='frontend_campaign_box_image_link'}
                <div class="campaing-outer-container">
                    <div class="inner">
                        <a href="{url controller=campaign emotionId=$campaign.id sCategory=$campaign.categoryId}" class="campaign_box" title="{$campaign.name}">
                            <img src="{$campaign.landingPageTeaser}" alt="{$campaign.name}" />
                        </a>
                    </div>
                </div>
            {/block}
	{/foreach}
{/if}
{/block}