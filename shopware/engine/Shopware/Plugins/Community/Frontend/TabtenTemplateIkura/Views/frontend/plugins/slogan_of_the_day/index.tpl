{block name="frontend_index_logo"}
    <div style="padding-top: 10px">
        <h2>{$slogan}</h2>
    </div>
    <a id="logo" href="{url controller='index'}" title="{$sShopname} - {s name='IndexLinkDefault'}{/s}">
        {*{$sShopname}*}
        <img src="media/image/page-logo.jpg" title="{$sShopname}" alt="{$sShopname}" />
    </a>
{/block}