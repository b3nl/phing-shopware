{extends file='frontend/checkout/confirm_footer.tpl'}
{block name="frontend_checkout_cart_footer_left"}
<div class="col two">&nbsp;</div>
{/block}
{block name='frontend_checkout_cart_footer_tax_information'}
{if !$sUserData.additional.charge_vat}
<div class="grid_15 notice push_2">{se name='CheckoutFinishTaxInformation'}{/se}</div>
{/if}
{/block}