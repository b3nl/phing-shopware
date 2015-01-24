{* Heading *}
<div class="ajax_login_form">
    <div class="heading">
        <h2>{se name='AccountLogoutHeader'}{/se}</h2>
    </div>
    <fieldset>
        <div class="logout">
            {block name='frontend_account_ajax_logout_box'}
                <h3>
                    {se name='AccountLogoutText'}{/se}
                </h3>
                <a class="btn" href="{url controller='index'}" title="{s name='AccountLogoutButton'}{/s}">{se name="AccountLogoutButton"}{/se}</a>
            {/block}
        </div>
    </fieldset>

    {* Close button *}
    <a href="/account" class="modal_close btn_close" title="{s name='LoginActionClose'}{/s}">
        <p>{s name='LoginActionClose'}{/s}</p>
        <span aria-hidden="true" class="icon" data-icon="&#xf057"></span>
	</a>
</div>