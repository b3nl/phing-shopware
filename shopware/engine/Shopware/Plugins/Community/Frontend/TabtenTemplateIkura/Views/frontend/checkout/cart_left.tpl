{if !$sUserData.additional.user.id}
<div class="col one cart_left">
    {include file="frontend/checkout/shipping_costs.tpl"}
</div>
{else}
<div class="col two">
    <div class="cart_left">
	    {include file="frontend/checkout/confirm_left.tpl"}
    </div>
</div>
{/if}