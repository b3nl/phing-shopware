{extends file='frontend/account/index.tpl'}

{* Breadcrumb *}
{block name='frontend_index_start' append}
	{$sBreadcrumb[] = ['name'=>"{s name='MyOrdersTitle'}{/s}", 'link'=>{url}]}
{/block}

{* Main content *}
{block name='frontend_index_content'}

{* Orders overview *}
<div class="orders" id="center">
    <div class="inner">
        {if !$sOpenOrders}
            {block name="frontend_account_orders_info_empty"}
                <fieldset>
                    <div class="notice center bold">
                        {se name="OrdersInfoEmpty"}{/se}
                    </div>
                </fieldset>
            {/block}
        {else}
            <h1>{se name="OrdersHeader"}{/se}</h1>
            <div class="orderoverview_active">

                <div class="table">
                    {block name="frontend_account_orders_table_head"}
                        <div class="table_head row">

                            <div class="col">
                                {se name="OrderColumnDate"}{/se}
                            </div>

                            <div class="col">
                                {se name="OrderColumnId"}{/se}
                            </div>
                            <div class="col">
                                {se name="OrderColumnDispatch"}{/se}
                            </div>

                            <div class="col">
                                {se name="OrderColumnStatus"}{/se}
                            </div>

                            <div class="col textright">
                                <div class="textright">
                                    {se name="OrderColumnActions"}{/se}
                                </div>
                            </div>
                        </div>
                    {/block}
                    {foreach name=orderitems from=$sOpenOrders item=offerPosition}
                        {if $smarty.foreach.orderitems.last}
                            {assign var=lastitem value=1}
                        {else}
                            {assign var=lastitem value=0}
                        {/if}
                        {include file="frontend/account/order_item.tpl" lastitem=$lastitem}
                    {/foreach}
                </div>
            </div>
        {/if}
    </div>
</div>
{/block}