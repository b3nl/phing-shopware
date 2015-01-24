<div class="ajax_modal_custom">
	{block name='frontend_custom_ajax_action_buttons'}
	<div class="heading">
		<h2>{$sCustomPage.description}</h2>
	</div>

	{/block}
	{* Article content *}
	{block name='frontend_custom_ajax_article_content'}
		<div class="inner_container">
            <div class="middle">
                {$sContent}
            </div>
		</div>
	{/block}

    {* Close button *}
    <a href="#" class="modal_close btn_close" title="{s name='LoginActionClose'}{/s}">
        <p>{s name='LoginActionClose'}{/s}</p>
        <span aria-hidden="true" class="icon" data-icon="&#xf057"></span>
    </a>
</div>