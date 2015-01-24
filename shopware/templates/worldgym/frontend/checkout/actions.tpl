<div class="row">
    {* Contiune shopping *}
    {*{if $sBasket.sLastActiveArticle.link}*}
    	{block name="frontend_checkout_actions_link_last"}
    	 <a href="javascript:history.back()" title="{s name='CheckoutActionsLinkLast'}{/s}" class="btn icon_link back">
    	 	{se name="CheckoutActionsLinkLast"}{/se}
    	 </a>
    	 {/block}
    {*{/if}	*}
    
    {if !$sMinimumSurcharge && ($sInquiry || $sDispatchNoOrder)}
    	{block name="frontend_checkout_actions_inquiry"}
		<a href="{$sInquiryLink}" title="{s name='CheckoutActionsLinkOffer'}{/s}" class="btn neutral">
			{se name="CheckoutActionsLinkOffer"}{/se}
		</a>
		{/block}
	{/if}
	
	{* Checkout *}
	{if !$sMinimumSurcharge && !$sDispatchNoOrder}
		{block name="frontend_checkout_actions_confirm"}
        <a href="{url action=confirm}" title="{s name='CheckoutActionsLinkProceed'}{/s}" class="btn checkout icon_link" >
			{se name="CheckoutActionsLinkProceed"}{/se}
        </a>
        {/block}
    {/if}
</div>