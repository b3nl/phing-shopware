{extends file="frontend/index/index.tpl"}

{* Main content *}
{block name="frontend_index_content"}
	<div class="tellafriend" id="center">

		{if $sSuccess}
		    <div class="success">
		        <strong>{s name='TellAFriendHeaderSuccess'}{/s}</strong>
		    </div>
		{else}
			{if $sError}
			    <div class="error">
			        <strong>{s name='TellAFriendInfoFields'}{/s}</strong>
			    </div>
			{/if}
		{/if}

        {if !$sSuccess}

        {* Validation errors *}
            {if $error}
                <div class="error">
                    <h2>{foreach from=$error item=error_item}{$error_item}</h2>{/foreach}
                </div>
            {/if}

            <h2>
                <a href="{$sArticle.linkDetails}" title="{$sArticle.articleName}">{$sArticle.articleName}</a> {s name='TellAFriendHeadline'}{/s}
            </h2>

		<form name="mailtofriend" action="" method="post" class="form share">
			<input type="hidden" name="sMailTo" value="1" />
			<input type="hidden" name="sDetails" value="{$sArticle.articleID}" />

			<fieldset>
			   <div class="form_row">
			    	<label>{s name='TellAFriendLabelName'}{/s}*:</label>
			    	<input name="sName" type="text" id="txtName" class="text" value="{$sName|escape}" />
			    </div>
			    <div class="form_row">
			    	<label>{s name='TellAFriendLabelMail'}{/s}</label>
			    	<input name="sMail" type="text" id="txtMail" class="text" value="{$sMail|escape}" />
			    </div>
			    <div class="form_row">
			    	<label>{s name='TellAFriendLabelFriendsMail'}{/s}*:</label>
			    	<input name="sRecipient" type="text" id="txtMailTo" class="text" value="{$sRecipient|escape}" />
			    </div>
			    <div class="textarea form_row">
			    	<label for="comment">{s name='TellAFriendLabelComment'}{/s}</label>
			    	<textarea name="sComment" id="comment">{$sComment|escape}</textarea>
				</div>

				<div class="captcha form_row row">
                    <div class="captcha-placeholder" data-src="{url module=widgets controller=Captcha action=refreshCaptcha}"></div>
                    <div class="code">
                        <label for="sCaptcha">{s name='TellAFriendLabelCaptcha'}{/s}</label>
                        <input type="text" name="sCaptcha" class="text{if $sErrorFlag.sCaptcha} instyle_error{/if}" />
                    </div>
				</div>

				<div class="buttons form_row">
					<a href="{$sArticle.linkDetails}" class="btn neutral back">{s name='TellAFriendLinkBack'}{/s}</a>
					<input type="submit" value="{s name='TellAFriendActionSubmit'}{/s}" class="btn send" />
				</div>
			</fieldset>
		</form>{/if}
	</div>
{/block}

{* Empty right sidebar *}
{block name='frontend_index_content_right'}{/block}
