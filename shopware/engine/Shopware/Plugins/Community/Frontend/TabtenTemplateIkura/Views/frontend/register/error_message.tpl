{block name='frontend_register_error_messages'}
{if $error_messages}
	<div class="error">
        <h2>{s name='RegisterErrorHeadline'}{/s}</h2>
        <p>{foreach from=$error_messages item=errorItem}{$errorItem}<br />{/foreach}</p>
	</div>
{/if}
{/block}