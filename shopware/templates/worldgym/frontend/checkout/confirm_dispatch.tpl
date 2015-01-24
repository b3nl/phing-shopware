{if $sDispatches}
<div class="dispatch-methods form col two">
	<form method="POST" action="{url action='calculateShippingCosts' sTargetAction=$sTargetAction}" class="payment">

		<h3>{s name='CheckoutDispatchHeadline'}Versandart{/s}</h3>

		{if $sDispatches|count>1}
			{foreach from=$sDispatches item=dispatch}
				<div class="method">
					{block name='frontend_checkout_dispatch_fieldset_input_radio'}
						<input id="confirm_dispatch{$dispatch.id}" type="radio" class="radio auto_submit" value="{$dispatch.id}" name="sDispatch" {if $dispatch.id eq $sDispatch.id}checked="checked"{/if} />
						<label class="description" for="confirm_dispatch{$dispatch.id}">{$dispatch.name}</label>
					{/block}

					{block name='frontend_checkout_dispatch_fieldset_description'}
                        {if $dispatch.description}
                            <p>
                                {$dispatch.description}
                            </p>
                        {/if}
					{/block}
				</div>
			{/foreach}

			{block name="frontend_checkout_shipping_action_buttons"}
                {if !{config name='IgnoreAGB'}}
                    <input type="hidden" class="agb-checkbox" name="sAGB" value="{if $sAGBChecked}1{else}0{/if}" />
                {/if}
				<div class="buttons">
					<input type="submit" value="{s name='CheckoutDispatchLinkSend'}Ändern{/s}" class="btn neutral" />
				</div>
			{/block}
		{else}
			<div class="">
				{block name='frontend_checkout_dispatch_fieldset_input_radio'}
					<label class="description">{$sDispatch.name}</label>
				{/block}

				{block name='frontend_checkout_dispatch_fieldset_description'}
				{if $sDispatch.description}
				<p>
					{$sDispatch.description}
				</p>
				{/if}
				{/block}
			</div>
		{/if}
	</form>
</div>
{/if}
