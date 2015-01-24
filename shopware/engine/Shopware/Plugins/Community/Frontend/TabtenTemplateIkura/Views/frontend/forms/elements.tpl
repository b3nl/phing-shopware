{block name='frontend_forms_elements'}
<form id="support" name="support" class="form support {$sSupport.class}" method="post" action="{url controller='ticket' action='index' id=$id}" enctype="multipart/form-data">
    <input type="hidden" name="forceMail" value="{$forceMail|escape}" >
    {/block}
    {if $sSupport.sErrors.e || $sSupport.sErrors.v}
        <div class="error">
            {if $sSupport.sErrors.v}
                {foreach from=$sSupport.sErrors.v key=sKey item=sError}
                    {if $sKey !=0&&$sSupport.sElements.$sError.error_msg}<br />{/if}
                    {$sSupport.sElements.$sError.error_msg}
                {/foreach}
                {if $sSupport.sErrors.e}<br />{/if}
            {/if}
            {if $sSupport.sErrors.e}
                {s name='SupportInfoFillRedFields'}{/s}
            {/if}
        </div>
    {/if}

    <div class="supportrequest">
        <fieldset>
            {foreach from=$sSupport.sElements item=sElement key=sKey}
                {if $sSupport.sFields[$sKey]||$sElement.note}
                    <div class="form_row {if $sSupport.sElements[$sKey].typ eq 'textarea'} textarea{elseif $sSupport.sElements[$sKey].typ eq 'checkbox'} checkbox{/if}">
                        {$sSupport.sLabels.$sKey}
                        {eval var=$sSupport.sFields[$sKey]}
                    </div>
                    {if $sElement.note}
                        <p class="description">
                            {eval var=$sElement.note}
                        </p>
                    {/if}
                {/if}
            {/foreach}
            <div class="captcha">
                <div class="captcha-placeholder" data-src="{url module=widgets controller=Captcha action=refreshCaptcha}"></div>
                <div class="code">
                    <label>{s name='SupportLabelCaptcha'}{/s}</label>
                    <input type="text" name="sCaptcha" class="{if $sSupport.sErrors.e.sCaptcha} instyle_error{/if}" />
                </div>
            </div>
        </fieldset>

        <p class="requiredfields">{s name='SupportLabelInfoFields'}{/s}</p>
        <p class="buttons">
            <input class="btn full send" type="submit" name="Submit" value="{s name='SupportActionSubmit'}{/s}" />
        </p>
    </div>
</form>
