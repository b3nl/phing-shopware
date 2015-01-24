{extends file='frontend/checkout/cart_header.tpl'}

{* Article price *}
{block name='frontend_checkout_cart_header_price'}<div class="col">&nbsp;</div>{/block}

{* Delivery informations *}
{block name='frontend_checkout_cart_header_availability'}<div class="col">&nbsp;</div>{/block}

{* Article amount *}
{block name='frontend_checkout_cart_header_quantity'}<div class="col">&nbsp;</div>{/block}

{* Article total sum *}
{block name='frontend_checkout_cart_header_total'}
<div class="col">
	<div class="textright">
		{s name="CartColumnTotal"}{/s}
	</div>
</div>
{/block}