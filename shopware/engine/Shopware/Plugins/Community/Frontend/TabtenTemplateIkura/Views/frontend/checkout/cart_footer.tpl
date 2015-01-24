<div class="table_foot row">
	{block name='frontend_checkout_cart_footer_tax_information'}{/block}

	{block name='frontend_checkout_cart_footer_left'}
		{include file='frontend/checkout/cart_footer_left.tpl'}
	{/block}
							
	{* Field labels *}
	{block name='frontend_checkout_cart_footer_field_labels'}
	<div id="aggregation_left" class="col four right">
		<p class="row">
			{se name="CartFooterSum"}{/se}
		</p>
		<div class="doubleborder row">
            <p>
                {se name="CartFooterShipping"}{/se}
            </p>
		</div>
		<div class="totalamount row">
			<p>
				<strong>{se name="CartFooterTotal"}{/se}</strong>
			</p>
		</div>
		{if $sUserData.additional.charge_vat}
		<div class="tax row">
            <p>
                {se name="CartFooterTotalNet"}{/se}
            </p>
		</div>
		{foreach $sBasket.sTaxRates as $rate=>$value}
            <div class="row">
                <p>
                    {se name="CartFooterTotalTax"}{/se}
                </p>
            </div>
		{/foreach}
		{/if}
	</div>
	{/block}
	
	{* Aggregation *}
	<div id="aggregation" class="col four">
		
		{* Basket sum *}
		{block name='frontend_checkout_cart_footer_basket_sum'}
            <div class="row">
                <p class="textright">
                    {$sBasket.Amount|currency}*
                </p>
            </div>
		{/block}

		{* Shipping costs *}
		{block name='frontend_checkout_cart_footer_shipping_costs'}
		<div class="doubleborder row">
			<p class="textright">
				{$sShippingcosts|currency}*
			</p>
		</div>
		{/block}
		
		{* Total sum *}
		{block name='frontend_checkout_cart_footer_total_sum'}
		<div class="totalamount row">
			<p class="textright">
                <strong>{if $sAmountWithTax && $sUserData.additional.charge_vat}{$sAmountWithTax|currency}{else}{$sAmount|currency}{/if}</strong>
			</p>
		</div>
		{/block}

		{* Total net *}
		{block name='frontend_checkout_cart_footer_total_net'}
		{if $sUserData.additional.charge_vat}
            <div class="tax row">
                <p class="textright">
                    {$sAmountNet|currency}
                </p>
            </div>
		{/if}
		{/block}

		{* Total tax *}
		{block name='frontend_checkout_cart_footer_tax_rates'}
		{if $sUserData.additional.charge_vat}
			{foreach $sBasket.sTaxRates as $rate=>$value}
                <div class="row">
                    <p class="textright">
                        {$value|currency}
                    </p>
                </div>
			{/foreach}
		{/if}
		{/block}
	</div>
</div>