{extends file='frontend/index/index.tpl'}

{block name="frontend_index_content_left"}
    <div class="inner inneraside">
        <div id="aside_toggle"></div>
        <aside id="left_sidebar">
            {include file="frontend/account/content_right.tpl"}
        </aside>
        <div id="navi_hint">
            {s name='AccountNavigationHint'}Account Navigation{/s}
            <div class="close_navihint"></div>
        </div>
    </div>
{/block}

 {*Breadcrumb *}
{block name='frontend_index_breadcrumb'}
    <nav id="breadcrumb" class="account">
        <div class="inner">
        {se name='AccountHeaderWelcome'}{/se}, <strong style="font-weight:bold;">{$sUserData.billingaddress.firstname} {$sUserData.billingaddress.lastname}</strong>
        </div>
    </nav>
{/block}

{block name='frontend_index_content'}
    <div class="account" id="center">
        <div class="cat_text">
            <div class="inner">
                <h1>{se name='AccountHeaderWelcome'}{/se}, {$sUserData.billingaddress.firstname} {$sUserData.billingaddress.lastname}</h1>
                <p>
                    {se name='AccountHeaderInfo'}{/se}
                </p>
            </div>
        </div>

        <div class="inner">
            {* Success messages *}
            {block name="frontend_account_index_success_messages"}
                {include file="frontend/account/success_messages.tpl"}
            {/block}

            {* Error messages *}
            {block name='frontend_account_index_error_messages'}
                {if $sErrorMessages}
                    <div class="error_msg">
                        {include file="frontend/register/error_message.tpl" error_messages=$sErrorMessages}
                    </div>
                {/if}
            {/block}

            <div class="row">
                {* General user informations *}
                {block name="frontend_account_index_info"}
                    <div id="userinformations" class="col two">
                        <h2>{se name="AccountHeaderBasic"}{/se}</h2>
                        <div class="padbox">
                            <p>
                                {$sUserData.billingaddress.firstname} {$sUserData.billingaddress.lastname}<br />
                                {$sUserData.additional.user.email}
                            </p>

                            <a href="#" class="btn neutral change_password hide_script">{se name="AccountLinkChangePassword"}{/se}</a>
                            <a href="#" class="btn neutral change_mail hide_script">{se name='AccountLinkChangeMail'}{/se}</a>
                        </div>

                        {* Set new password *}
                        <div class="password{if $sErrorFlag.password || $sErrorFlag.passwordConfirmation} displayblock{/if}">
                            {block name="frontend_account_index_change_password"}
                                <h4>{se name='AccountLinkChangePassword'}{/se}</h4>
                                <form method="post" action="{url action=saveAccount}">
                                    <div class="form">
                                        {if {config name=accountPasswordCheck}}
                                            <div class="form_row">
                                                <label for="currentPassword">{se name="AccountLabelCurrentPassword"}Ihr aktuelles Passwort*:{/se}</label>
                                                <input name="currentPassword" type="password" id="currentPassword" class="btn neutral {if $sErrorFlag.currentPassword}instyle_error{/if}" />
                                            </div>
                                        {/if}
                                        {* New password *}
                                        <div class="form_row">
                                            <label for="newpwd">{se name="AccountLabelNewPassword"}{/se}</label>
                                            <input name="password" type="password" id="newpwd" class="btn neutral {if $sErrorFlag.password}instyle_error{/if}" />
                                        </div>

                                        {* Repeat new Password *}
                                        <div class="form_row">
                                            <label for="newpwdrepeat">{se name="AccountLabelRepeatPassword"}{/se}</label>
                                            <input name="passwordConfirmation" id="newpwdrepeat" type="password" class="text {if $sErrorFlag.passwordConfirmation}instyle_error{/if}" />
                                        </div>
                                        <div class="form_row">
                                            <input type="submit" value="{s name='AccountLinkChangePassword'}{/s}" class="btn neutral" />
                                        </div>
                                    </div>
                                </form>
                            {/block}
                        </div>

                        {* Edit mail address *}
                        <div class="email{if $sErrorFlag.email || $sErrorFlag.emailConfirmation} displayblock{/if}">
                            {block name="frontend_account_index_change_email"}
                                <h4>{se name='AccountLinkChangeMail'}{/se}</h4>
                                <form method="post" action="{url action=saveAccount}">
                                    <div class="form">
                                        {if {config name=accountPasswordCheck}}
                                            <div class="form_row">
                                                <label for="emailPassword">{se name="AccountLabelCurrentPassword"}Ihr aktuelles Passwort*:{/se}</label>
                                                <input name="currentPassword" type="password" id="emailPassword" class="text {if $sErrorFlag.currentPassword}instyle_error{/if}" />
                                            </div>
                                        {/if}
                                        <div class="form_row">
                                            <label for="newmail">{se name="AccountLabelNewMail"}{/se}*:</label>
                                            <input name="email" type="text" id="newmail" class="text {if $sErrorFlag.email}instyle_error{/if}" />
                                        </div>
                                        <div class="form_row">
                                            <label for="newmailrepeat">{se name="AccountLabelMail"}{/se}*:</label>
                                            <input name="emailConfirmation" id="neweailrepeat" type="text" class="text {if $sErrorFlag.emailConfirmation}instyle_error{/if}" />
                                        </div>
                                        <div class="form_row">
                                            <input type="submit" value="{s name='AccountLinkChangeMail'}{/s}" class="btn neutral" />
                                        </div>
                                    </div>
                                </form>
                            {/block}
                        </div>
                    </div>
                {/block}

                {* Payment informations *}
                {block name="frontend_account_index_payment_method"}
                    <div class="col two" id="selected_payment">
                        <h2>{se name="AccountHeaderPayment"}{/se}</h2>
                        <div class="padbox">
                            <p>
                                <strong>{$sUserData.additional.payment.description}</strong><br />

                                {if !$sUserData.additional.payment.esdactive}
                                    {se name="AccountInfoInstantDownloads"}{/se}
                                {/if}
                            </p>

                            <div class="change">
                                <a href="{url controller='account' action='payment'}" title="{s name='AccountLinkChangePayment'}{/s}" class="btn neutral">
                                    {se name='AccountLinkChangePayment'}{/se}
                                </a>
                            </div>
                        </div>
                    </div>
                {/block}
            </div>

            {* Addresses *}
            <div class="row">
                {block name="frontend_account_index_primary_billing"}
                    <div class="billing col two">
                        <h2>{se name="AccountHeaderPrimaryBilling"}{/se}</h2>
                        <div class="inner_container">
                            {if $sUserData.billingaddress.company}
                                <p>
                                    {$sUserData.billingaddress.company}{if $sUserData.billingaddress.department} - {$sUserData.billingaddress.department}{/if}
                                </p>
                            {/if}
                            <p>
                                {if $sUserData.billingaddress.salutation eq "mr"}{se name="AccountSalutationMr"}{/se}{else}{se name="AccountSalutationMs"}{/se}{/if}
                                {$sUserData.billingaddress.firstname} {$sUserData.billingaddress.lastname}<br />
                                {$sUserData.billingaddress.street} {$sUserData.billingaddress.streetnumber}<br />
                                {$sUserData.billingaddress.zipcode} {$sUserData.billingaddress.city}<br />
                                {$sUserData.additional.country.countryname}
                            </p>
                            <div class="change">
                                <a href="{url action=selectBilling}" title="{s name='AccountLinkSelectBilling'}{/s}" class="btn neutral">
                                    {se name="AccountLinkSelectBilling"}{/se}
                                </a>
                                <a href="{url action=billing}" title="{s name='AccountLinkChangeBilling'}{/s}" class="btn neutral">
                                    {se name="AccountLinkChangeBilling"}{/se}
                                </a>
                            </div>
                        </div>
                    </div>
                {/block}

                {block name="frontend_account_index_primary_shipping"}
                    <div class="shipping col two">
                        <h2>{se name="AccountHeaderPrimaryShipping"}{/se}</h2>
                        {if $sUserData.shippingaddress.company}
                            <p>
                                {$sUserData.shippingaddress.company}{if $sUserData.shippingaddress.department} - {$sUserData.shippingaddress.department}{/if}
                            </p>
                        {/if}
                        <p>
                            {if $sUserData.shippingaddress.salutation eq "mr"}{se name="AccountSalutationMr"}{/se}{else}{se name="AccountSalutationMs"}{/se}{/if}
                            {$sUserData.shippingaddress.firstname} {$sUserData.shippingaddress.lastname}<br />
                            {$sUserData.shippingaddress.street} {$sUserData.shippingaddress.streetnumber}<br />
                            {$sUserData.shippingaddress.zipcode} {$sUserData.shippingaddress.city}<br />
                            {$sUserData.additional.countryShipping.countryname}
                        </p>

                        <div class="change">
                            <a href="{url action=selectShipping}" title="{s name='AccountLinkSelectShipping'}{/s}" class="btn neutral">
                                {se name="AccountLinkSelectShipping"}{/se}
                            </a>
                            <a href="{url action=shipping}" title="{s name='AccountLinkChangeShipping'}{/s}" class="btn neutral">
                                {se name="AccountLinkChangeShipping"}{/se}
                            </a>
                        </div>
                    </div>
                {/block}
            </div>
            {* Newsletter settings *}
            {block name='frontend_account_index_newsletter_settings'}
                <div class="row">
                    <div class="newsletter col">
                        <form name="frmRegister" method="post" action="{url action=saveNewsletter}">
                            <h2>{se name="AccountHeaderNewsletter"}{/se}</h2>
                            <div class="form">
                                <fieldset>
                                    <div class="form_row">
                                        <input class="auto_submit" type="checkbox" name="newsletter" value="1" id="newsletter" {if $sUserData.additional.user.newsletter}checked="checked"{/if} class="chkbox" />
                                        <label for="newsletter" class="chklabel">
                                            {se name="AccountLabelWantNewsletter"}{/se}
                                        </label>
                                    </div>
                                </fieldset>
                            </div>
                        </form>
                    </div>
                </div>
            {/block}
        </div>
    </div>
{/block}
