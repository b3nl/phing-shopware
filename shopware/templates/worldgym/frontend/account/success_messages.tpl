{if $sSuccessAction}
	<div class="success">
		{if $sSuccessAction == 'billing'}
			{se name='AccountBillingSuccess'}{/se}
		{elseif $sSuccessAction == 'shipping'}
			{se name='AccountShippingSuccess'}{/se}
		{elseif $sSuccessAction == 'payment'}
			{se name='AccountPaymentSuccess'}{/se}
		{elseif $sSuccessAction == 'account'}
			{se name='AccountAccountSuccess'}{/se}
		{elseif $sSuccessAction == 'newsletter'}
			{se name='AccountNewsletterSuccess'}{/se}
		{/if}
        <span aria-hidden="true" class="icon" data-icon="&#xf00c;"></span>
	</div>
{/if}