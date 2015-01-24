<div class="ajax_basket_container">
    <div class="ajax_basket">
        <span class="icon" data-icon="&#xf07a;" aria-hidden="true"></span>
        <span class="btn_text">{s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}</span>
        <span class="amount">{$sBasketAmount|currency}*</span>
    </div>
    {* Ajax loader *}
    <div class="ajax_loader">&nbsp;</div>
</div>

{if $sBasketQuantity > 0}
    <a href="{url controller='checkout' action='cart'}" class="quantity">{$sBasketQuantity}</a>
{/if}