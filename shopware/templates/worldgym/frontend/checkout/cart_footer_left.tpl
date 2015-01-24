<div class="col two">
	{* Add voucher *}
	{block name='frontend_checkout_table_footer_left_add_voucher'}
	<div class="vouchers form">
		<form method="post" action="{url action='addVoucher' sTargetAction=$sTargetAction}">
			<label for="basket_add_voucher">{s name="CheckoutFooterLabelAddVoucher"}{/s}</label>
			<input type="text" class="text" id="basket_add_voucher" name="sVoucher" onfocus="this.value='';" value="{s name='CheckoutFooterAddVoucherLabelInline'}{/s}" />
			<input type="submit" value="{s name='CheckoutFooterActionAddVoucher'}{/s}" class="btn neutral" />
		</form>
	</div>
	{/block}
	{* Add article with order number *}
    {*who does that? , if you want this feature uncommend lines below *}
	{block name='frontend_checkout_table_footer_left_add_article'}
	{*<div class="add_article form">*}
		{*<form method="post" action="{url action='addArticle' sTargetAction=$sTargetAction}">*}
			{*<label for="basket_add_article">{s name='CheckoutFooterLabelAddArticle'}{/s}:</label>*}
			{*<input id="basket_add_article" name="sAdd" type="text" value="{s name='CheckoutFooterIdLabelInline'}{/s}" onfocus="this.value='';" class="ordernum text" />*}
			{*<input type="submit" class="btn neutral" value="{s name='CheckoutFooterActionAdd'}{/s}" />*}
		{*</form>*}
	{*</div>*}
	{/block}
</div>