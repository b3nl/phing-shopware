{* Footer menu *}
<div class="footer_menu row">
	
	<div class="col four">
		<span class="head">{s name="sFooterServiceHotlineHead"}Service Hotline{/s}</span>
		<p>{s name="sFooterServiceHotline"}Telefonische Unterst&uuml;tzung und Beratung unter:<br /><br /><strong>0180 - 000000</strong><br/>Mo-Fr, 09:00 - 17:00 Uhr{/s}</p>
        {if {config name=TSID}}
        <a class="trusted_shops row" href="https://www.trustedshops.com/shop/certificate.php?shop_id={config name=TSID}" title="{s name='WidgetsTrustedLogo' namespace='frontend/plugins/trusted_shops/logo'}{/s}" target="_blank">
            <img src="{link file='frontend/_resources/images/logo_trusted_shop_top.png'}" alt="{s name='WidgetsTrustedLogo' namespace='frontend/plugins/trusted_shops/logo'}{/s}" />
            <span>{s name='WidgetsTrustedLogoText2'}<span><strong>Sicher</strong> einkaufen</span><br/>Trusted Shops zertifiziert{/s}</span>
        </a>
        {/if}
	</div>
	
	<div class="col four">
		<span class="head">{s name="sFooterShopNavi1"}Shop Service{/s}</span>
        <nav>
            <ul>
                {foreach from=$sMenu.gBottom item=item  key=key name="counter"}
                    <li>
                        <a href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description}" {if $item.target}target="{$item.target}"{/if}>
                            {$item.description}
                        </a>
                    </li>
                {/foreach}
            </ul>
        </nav>
	</div>
	<div class="col four">
		<span class="head">{s name="sFooterShopNavi2"}Informationen{/s}</span>
        <nav>
            <ul>
                {foreach from=$sMenu.gBottom2 item=item key=key name="counter"}
                    <li>
                        <a href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description}" {if $item.target}target="{$item.target}"{/if}>
                            {$item.description}
                        </a>
                    </li>
                {/foreach}
            </ul>
        </nav>
	</div>
	<div class="col four">
		<span class="head">{s name="sFooterNewsletterHead"}Newsletter{/s}</span>
		<p>
			{s name="sFooterNewsletter"}Abonnieren Sie den kostenlosen DemoShop Newsletter und verpassen Sie keine Neuigkeit oder Aktion mehr aus dem DemoShop.{/s}
		</p>

		<form action="{url controller='newsletter'}" method="post" class="form newsletter">
			<input type="hidden" value="1" name="subscribeToNewsletter" />
			<div class="fieldset">
				<input type="text" name="newsletter" id="newsletter_input" value="{s name="IndexFooterNewsletterValue"}Ihre E-Mail Adresse{/s}" />
				<input type="submit" class="submit" id="newsletter" value="{s name='IndexFooterNewsletterSubmit'}Newsletter abonnieren{/s}" />
                <span class="icon" data-icon="&#xf003;" aria-hidden="true"></span>
			</div>
		</form>
	</div>
	
</div>