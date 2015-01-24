{extends file='frontend/index/index.tpl'}

{* Breadcrumb *}
{block name='frontend_index_start' append}
	{$sBreadcrumb = [['name'=>"{s name='AccountLoginTitle'}{/s}", 'link'=>{url}]]}
{/block}

{* Main content *}
{block name='frontend_index_content'}

<div id="login">
    <div class="inner">
        {* Error messages *}
        {block name='frontend_account_login_error_messages'}
            {include file="frontend/register/error_message.tpl" error_messages=$sErrorMessages}
        {/block}
        {* New customer *}
        {block name='frontend_account_login_new'}
            <div class="col two">
                <h2>{se name="LoginHeaderNew"}{/se} {$sShopname}</h2>
                <div class="form">
                    <p>{se name="LoginInfoNew"}{/se}</p>
                    <form method="post" name="new_customer" class="new_customer_form" action="{url controller='register'}">
                        {if !{config name=NoAccountDisable}}
                            <div class="form_row">
                                <input type="checkbox" class="chk_noaccount" name="skipLogin" value="1" />
                                <strong>{s name="LoginLabelNoAccount"}Kein Kundenkonto erstellen{/s}</strong>
                            </div>
                        {/if}
                        <div class="form_row">
                            <input type="submit" class="btn neutral" value="{s name='LoginLinkRegister'}{/s}" />
                        </div>
                    </form>
                </div>
            </div>
        {/block}
        {* Existing customer *}
        {block name='frontend_account_login_customer'}
            <div class="col two">
                <h2>{se name="LoginHeaderExistingCustomer"}{/se}</h2>
                <div class="form">
                    <p>{se name="LoginHeaderFields"}{/se}</p>
                    <form name="sLogin" method="post" action="{url action=login}">
                        {if $sTarget}<input name="sTarget" type="hidden" value="{$sTarget|escape}" />{/if}
                        <fieldset>
                            <div class="form_row">
                                <label for="email">{se name='LoginLabelMail'}{/se}</label>
                                <input name="email" type="text" tabindex="1" value="{$sFormData.email|escape}" id="email" class="text {if $sErrorFlag.email}instyle_error{/if}" />
                            </div>
                            <div class="form_row">
                                <label for="passwort">{se name="LoginLabelPassword"}{/se}</label>
                                <input name="password" type="password" tabindex="2" id="passwort" class="text {if $sErrorFlag.password}instyle_error{/if}" />
                                <a class="lostpassword" href="{url action=password}" title="{s name='LoginLinkLostPassword'}{/s}">
                                    {se name="LoginLinkLostPassword"}{/se}
                                </a>
                            </div>
                            <div class="form_row">
                                <div class="action">
                                    <input class="btn" type="submit" value="{s name='LoginLinkLogon'}{/s}" name="Submit"/>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        {/block}
    </div>
</div>
{/block}

{* Empty sidebar left *}
{block name='frontend_index_content_left'}{/block}

{* Empty sidebar right *}
{block name='frontend_index_content_right'}{/block}