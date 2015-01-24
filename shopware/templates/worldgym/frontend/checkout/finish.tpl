{extends file="frontend/checkout/confirm.tpl"}

{block name='frontend_index_content_top'}{/block}
{block name='frontend_index_content_left'}{/block}

{* Main content *}
{block name="frontend_index_content"}
<div class="finish" id="center">
	{block name='frontend_checkout_finish_teaser'}

	<div class="cat_text">
        <div class="inner">
            <h2>{se name="FinishHeaderThankYou"}{/se}{$sShopname}!</h2>
            <p>
                {se name="FinishInfoConfirmationMail"}{/se}<br />{s name="FinishInfoPrintOrder"}{/s}
            </p>
            <a href="#" class="btn" onclick="self.print()" title="{s name='FinishLinkPrint'}{/s}">
                {s name="FinishLinkPrint"}{/s}
            </a>
        </div>
	</div>

    <div class="inner">
        {* Trusted shops form *}
        {if {config name=TSID}}
            {include file="frontend/plugins/trusted_shops/form.tpl"}
        {/if}

        {/block}

        {block name='frontend_checkout_finish_header_items'}
            <h2>{se name="FinishHeaderItems"}{/se}</h2>
        {/block}

        <div id="finished">

            {if $sOrderNumber || $sTransactionumber}
                <div class="orderdetails">
                    {* Invoice number *}
                    {block name='frontend_checkout_finish_invoice_number'}
                        {if $sOrderNumber}
                            <p>{se name="FinishInfoId"}{/se} {$sOrderNumber}</p>
                        {/if}
                    {/block}

                    {* Transaction number *}
                    {block name='frontend_checkout_finishs_transaction_number'}
                        {if $sTransactionumber}
                            <p>{se name="FinishInfoTransaction"}{/se} {$sTransactionumber}</p>
                        {/if}
                    {/block}
                </div>
            {/if}

            <div class="table">
                {* Table header *}
                {include file="frontend/checkout/finish_header.tpl"}

                {* Article items *}
                {foreach name=basket from=$sBasket.content item=sBasketItem key=key}
                    {block name='frontend_checkout_finish_item'}
                        {include file='frontend/checkout/finish_item.tpl'}
                    {/block}
                {/foreach}

                {* Table footer *}
                {include file="frontend/checkout/finish_footer.tpl"}
            </div>
        </div>

        <div class="row">
            {if $sBasket.sLastActiveArticle.link}
                {block name="frontend_checkout_actions_link_last"}
                    <a href="{$sBasket.sLastActiveArticle.link}" title="{s name='CheckoutActionsLinkLast'}{/s}" class="btn icon_link back">
                        {se name="CheckoutActionsLinkLast"}{/se}
                    </a>
                {/block}
            {/if}
            <a href="{url controller='index'}" class="btn neutral logout">
                {se name="AccountLinkLogout"}Logout{/se}
            </a>
        </div>
    </div>

</div>
{/block}
