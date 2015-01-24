{* Heading *}
<div class="ajax_login_form">
    <div class="heading">
        <h2>{se name='LoginHeader'}{/se}</h2>
    </div>

    <div class="form inner_container">
        {* Error messages *}
        {block name='frontend_account_ajax_login_error_messages'}
            {include file="frontend/register/error_message.tpl" error_messages=$sErrorMessages}
        {/block}

        <div class="existing_customer">
            <form method="post" name="existing_customer" action="{url action=login}">

                {*<h3>{se name="LoginLabelExisting"}{/se}</h3>*}
                <input type="hidden" name="accountmode" value="2" />

                {*<p>{se name="LoginTextExisting"}{/se}</p>*}

                {block name='frontend_account_ajax_login_input_email'}
                    <div class="form_row">
                        <label for="email">{se name="LoginLabelMail"}{/se}</label>
                        <input name="email" type="text" tabindex="1" value="{$sFormData.email|escape}" id="email" class="text {if $sErrorFlag.email}instyle_error{/if}" />
                    </div>
                {/block}

                {block name='frontend_account_ajax_login_input_password'}
                    <div class="form_row">
                        <label for="ajax_login_password">{se name="LoginLabelPassword"}Ihr Password{/se}</label>
                        <input name="password" type="password" tabindex="2" id="ajax_login_password" class="text password {if $sErrorFlag.password}instyle_error{/if}" /><br />
                        <a class="lostpassword" href="{url action=password}" title="{s name='LoginLinkLostPassword'}{/s}">{se name='LoginLinkLostPassword'}{/se}</a>
                    </div>
                {/block}

                {block name='frontend_account_ajax_login_action_buttons'}
                    <div class="form_row">
                        <input type="submit" class="btn" id="checkout_button" value="{s name='LoginActionNext'}Einloggen{/s}" name="Submit" />
                    </div>
                {/block}


            </form>
        </div>

        <div class="new_customer">
            <h3>{se name="LoginLabelNew"}{/se}</h3>

            <form method="post" name="new_customer" class="new_customer_form" action="{url controller='register'}">
                <p>
                    {se name="LoginInfoNew"}{/se}
                </p>

                {if !{config name=NoAccountDisable}}
                <div class="form_row">
                    <input type="checkbox" class="chk_noaccount" id="skipLogin" name="skipLogin" value="1" />
                    <label class="chklabel" for="skipLogin">{se name="LoginLabelNoAccount"}Kein Kundenkonto erstellen{/se}</label>
                </div>
                {/if}
                <div class="form_row">
                    <input type="submit" class="btn neutral" value="{s name='LoginActionCreateAccount'}Weiter{/s}" />
                </div>
            </form>
        </div>
    </div>

    {* Close button *}
    <span class="modal_close btn_close" title="{s name='LoginActionClose'}{/s}">
        <p>{s name='LoginActionClose'}{/s}</p>
        <span aria-hidden="true" class="icon" data-icon="&#xf057"></span>
	</span>
</div>