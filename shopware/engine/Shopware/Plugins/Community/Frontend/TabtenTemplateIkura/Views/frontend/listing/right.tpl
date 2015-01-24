{* Properties filter *}
{block name='frontend_listing_right_filter_properties'}
    {if $sPropertiesOptionsOnly|@count or $sSuppliers|@count>1 && $sCategoryContent.parent != 1}
    <div class="inner inneraside">
        <div id="aside_toggle"></div>
        <aside id="left_sidebar">
            <div class="inner">
                <div class="filter_properties">
                    <h2 class="filter_properties">{s name='FilterHeadline'}Filtern nach:{/s}</h2>
                    <div class="supplier_filter">
                        {* Properties filter *}
                        {if $sPropertiesOptionsOnly|@count}
                            {include file='frontend/listing/filter_properties.tpl'}
                        {/if}
                        {block name='frontend_listing_right_filter_supplier'}
                            {* Supplier filter *}
                            {if $sSuppliers|@count>1 && $sCategoryContent.parent != 1}
                                {include file='frontend/listing/filter_supplier.tpl'}
                            {/if}
                        {/block}
                    </div>
                </div>
            </div>
        </aside>
        <div id="navi_hint">
            {s name='ListingNavigationHint'}Filter{/s}
            <div class="close_navihint"></div>
        </div>
    </div>
    {/if}

{/block}

{* Topseller *}
{block name='frontend_listing_right_topseller'}{/block}
