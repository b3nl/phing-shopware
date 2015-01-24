<footer id="page_footer">
    <div class="inner">
        {block name='frontend_index_footer_menu'}
            {include file='frontend/index/menu_footer.tpl'}
        {/block}

        {block name='frontend_index_footer_vatinfo'}
            <div class="footer_info">
                {if $sOutputNet}
                    <p>{s name='FooterInfoExcludeVat'}&nbsp;{/s}</p>
                {else}
                    <p>{s name='FooterInfoIncludeVat'}&nbsp;{/s}</p>
                {/if}
            </div>
        {/block}
    </div>
</footer>


