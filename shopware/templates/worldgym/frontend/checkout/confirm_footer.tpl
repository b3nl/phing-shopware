{extends file='frontend/checkout/cart_footer.tpl'}

{block name='frontend_checkout_cart_footer_left'}
<div class="col two">&nbsp;</div>
{/block}

{block name='frontend_checkout_cart_footer_tax_information'}
    {if !$sUserData.additional.charge_vat && {config name=nettonotice}}
        <div class="notice">{se name='CheckoutFinishTaxInformation'}{/se}</div>
    {/if}
{/block}

{block name='frontend_checkout_cart_footer_tax_rates'}
    {if $sUserData.additional.charge_vat}
        {foreach $sBasket.sTaxRates as $rate=>$value}
            <div>
                <p class="textright">
                    <strong>{$value|currency}</strong>
                </p>
            </div>
        {/foreach}
    {/if}
    </div>

    {if {config name=countrynotice} && $sCountry.notice && {include file="string:{$sCountry.notice}"} !== ""}
        <div class="emotion-country_notice">
        {* Include country specific notice message *}
        <p>{include file="string:{$sCountry.notice}"}</p>
        </div>
    {/if}
{/block}