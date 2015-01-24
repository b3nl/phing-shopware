<div class="table_head row">
{block name='frontend_checkout_cart_header_field_labels'}
	{* Article informations *}
	{block name='frontend_checkout_cart_header_name'}
	<div class="col two">
		{s name="CartColumnName"}{/s}
	</div>
	{/block}
	
	{* Delivery informations *}
	{block name='frontend_checkout_cart_header_availability'}
		<div class="col">
			{if {config name=BasketShippingInfo}}
				{s name="CartColumnAvailability"}{/s}
			{else}
				&nbsp;
			{/if}
		</div>
	{/block}
	
	{* Article amount *}
	{block name='frontend_checkout_cart_header_quantity'}
	<div class="col">
		{s name="CartColumnQuantity"}{/s}
	</div>
	{/block}
	
	{* Unit price *}
	{block name='frontend_checkout_cart_header_price'}
	<div class="col">
		<div class="textright">
			{s name='CartColumnPrice'}{/s}
		</div>
	</div>
	{/block}
	
	{* Article tax *}
	{block name='frontend_checkout_cart_header_tax'}{/block}
	
	{* Article total sum *}
	{block name='frontend_checkout_cart_header_total'}
	<div class="col">
		<div class="textright">
			{s name="CartColumnTotal"}{/s}
		</div>
	</div>
	{/block}
{/block}
</div>