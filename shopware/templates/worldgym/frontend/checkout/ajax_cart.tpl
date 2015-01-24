<div class="inner_cart">
	{if $sBasket.content}
		{foreach name=ajaxbasket from=$sBasket.content item=sBasketItem}
			
			{block name='frontend_checkout_ajax_cart_row'}
			
			<div class="row{if $sBasketItem.modus == 1} premium{elseif $sBasketItem.modus == 10} bundle{/if}{if $smarty.foreach.ajaxbasket.last} last{/if}">
                <a href="{$sBasketItem.linkDetails}" title="{$sBasketItem.articlename|strip_tags}">
                    {if $sBasketItem.image.src.0}
                    <div class="thumbnail">
                        <img src="{$sBasketItem.image.src.0}" alt="{$sBasketItem.articlename|strip_tags}" />
                    </div>
                    {/if}

                    {* Article name *}
                    {block name='frontend_checkout_ajax_cart_articlename'}
                    <span class="title">
                        <strong>{$sBasketItem.quantity}x</strong>
                        <span>{if $sBasketItem.modus == 10}{se name='AjaxCartInfoBundle'}{/se}{else}{$sBasketItem.articlename|truncate:30}{/if}</span>

                    </span>
                    {/block}

                    {block name='frontend_checkout_ajax_cart_price'}
                    {* Article price *}
                    <strong class="price">{if $sBasketItem.amount}{$sBasketItem.amount|currency}{else}{se name="AjaxCartInfoFree"}{/se}{/if}*</strong>
                    {/block}
                    <span aria-hidden="true" class="icon" data-icon="&#xf105"></span>
                </a>
			</div>
			{/block}
		{/foreach}
	{else}
		{block name='frontend_checkout_ajax_cart_empty'}
		<div class="row{if !$sBasket.content} last{/if}">
			<a href="#" class="modal_close">{se name='AjaxCartInfoEmpty'}{/se}</a>
		</div>
		{/block}
	{/if}
</div>
{* Basket link *}
{block name='frontend_checkout_ajax_cart_open_basket'}
<div class="inner_cart_bottom row">
	<a href="{url controller='checkout' action='cart'}" class="btn" title="{s name='AjaxCartLinkBasket'}{/s}">
		{se name='AjaxCartLinkBasket'}{/se}
	</a>

    <a href="{url controller='checkout' action='confirm'}" class="btn checkout" title="{s name='AjaxCartLinkConfirm'}{/s}">
        {se name='AjaxCartLinkConfirm'}{/se}
    </a>
</div>
{/block}