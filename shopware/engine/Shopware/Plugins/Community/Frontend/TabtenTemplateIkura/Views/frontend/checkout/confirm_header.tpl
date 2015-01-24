{extends file='frontend/checkout/cart_header.tpl'}

{* Article tax *}
{block name='frontend_checkout_cart_header_price'}{/block}

{* Article tax *}
{block name='frontend_checkout_cart_header_tax'}
<div class="col charge_vat">
{if $sUserData.additional.charge_vat && !$sUserData.additional.show_net}
	<div class="textright">{se name='CheckoutColumnExcludeTax'}{/se}</div>
{elseif $sUserData.additional.charge_vat}
    <div class="textright">{se name='CheckoutColumnTax'}{/se}</div>
{else}&nbsp;{/if}
</div>
{/block}

{block name='frontend_checkout_cart_header_total'}
<div class="col">
	<div class="textright">
		{se name="CartColumnTotal"}{/se}
	</div>
</div>
{/block}