<div id="page_header_topbar" class="row">
    {block name="frontend_index_checkout_actions_my_options"}
        <div class="my_options">
            <div class="sub_options">
                <div id="sub_option_toggle"></div>
                {* Language and Currency bar *}
                {block name='frontend_index_actions'}
                    {action module=widgets controller=index action=shopMenu}
                {/block}

                {block name="frontend_index_checkout_actions_notepad"}
                    <a href="{url controller='note'}" title="{s namespace='frontend/index/checkout_actions' name='IndexLinkNotepad'}{/s}" class="note sub_opt_btn">
                        <span class="btn_text">{s namespace='frontend/index/checkout_actions' name='IndexLinkNotepad'}{/s}</span> {if $sNotesQuantity > 0}<span class="notes_quantity">{$sNotesQuantity}</span>{/if}
                    </a>
                {/block}

                {block name="frontend_index_checkout_actions_service_menu"}
                    <div class="service sub_opt_btn">
                        <span class="button">
                            <span class="btn_text">{s name='IndexLinkService'}Service/Hilfe{/s}</span>
                            {action module=widgets controller=index action=menu group=gLeft}
                        </span>
                    </div>
                {/block}
            </div>

            {block name="frontend_index_checkout_actions_account"}
                <a href="{url controller='account'}" title="{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}" class="account">
                    <span aria-hidden="true" class="icon" data-icon="&#xf007;"></span>
                    <span class="btn_text">{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}</span>
                </a>
            {/block}
        </div>
    {/block}

    <div id="shopnavi">
        {block name="frontend_index_checkout_actions_cart"}
            <div class="newbasket{if $sBasketQuantity} active{/if}">

                <div class="ajax_basket_container hide_script">
                    <div class="ajax_basket">
                        <span aria-hidden="true" class="icon" data-icon="&#xf07a;"></span>
                        <span class="btn_text">{s name='IndexActionShowPositions'}{/s}</span>
                        {*<span class="amount">{$sBasketAmount|currency}*</span>*}
                    </div>
                    {* Ajax loader *}
                    <div class="ajax_loader">&nbsp;</div>
                </div>

                {if $sBasketQuantity > 0}
                    <a href="{url controller='checkout' action='cart'}" class="quantity">{$sBasketQuantity}</a>
                {/if}
            </div>
        {/block}

        {block name="frontend_index_checkout_actions_inner"}{/block}
    </div>
</div>
