{*<h2>{se name="AccountHeaderNavigation"}{/se}</h2>*}
<div class="adminbox">
    <nav class="sidebar_nav page_navigation">
        <ul>
            {block name="frontend_account_content_right_overview"}
            {* Overview *}
                <li>
                    <a href="{url controller='account'}" class="link_myaccount">
                        {se name="AccountLinkOverview"}{/se}
                    </a>
                </li>
            {/block}
            {block name="frontend_account_content_right_orders"}
            {* My orders *}
                <li>
                    <a href="{url controller='account' action='orders'}" class="link_myorders">
                        {se name="AccountLinkPreviousOrders"}{/se}
                    </a>
                </li>
            {/block}
            {block name="frontend_account_content_right_downloads"}
            {* My esd articles *}
                <li>
                    <a href="{url controller='account' action='downloads'}" class="link_mydownloads">
                        {se name="AccountLinkDownloads"}{/se}
                    </a>
                </li>
            {/block}
            {block name="frontend_account_content_right_billing"}
            {* Change billing address *}
                <li>
                    <a href="{url controller='account' action='billing'}" class="link_mybilling">
                        {se name="AccountLinkBillingAddress"}{/se}
                    </a>
                </li>
            {/block}
            {block name="frontend_account_content_right_shipping"}
            {* Change shipping address *}
                <li>
                    <a href="{url controller='account' action='shipping'}" class="link_myshipping">
                        {se name="AccountLinkShippingAddress"}{/se}
                    </a>
                </li>
            {/block}
            {block name="frontend_account_content_right_payment"}
            {* Change payment method *}
                <li>
                    <a href="{url controller='account' action='payment'}" class="link_mypayment">
                        {se name="AccountLinkPayment"}{/se}
                    </a>
                </li>
            {/block}
            {block name="frontend_account_content_right_support"}
            {* Supportmanagement *}
                {if $sTicketLicensed}
                    <li>
                        <a href="{url controller='ticket' action='listing'}" class="link_mysupport">
                            {se name="sTicketSysSupportManagement"}{/se}
                        </a>
                    </li>

                    <li class="sub"><a href="{url controller='ticket' action='request'}">{s name='TicketLinkSupport'}{/s}</a></li>
                {/if}
            {/block}
            {block name="frontend_account_content_right_notes"}
            {* Leaflet *}
                <li>
                    <a href="{url controller='note'}" class="link_myleaflet">
                        {se name="AccountLinkNotepad"}{/se}
                    </a>
                </li>
            {/block}
            {block name="frontend_account_content_right_partner_statistic"}
                {action name="partnerStatisticMenuItem" controller="account"}
            {/block}
            {block name="frontend_account_content_right_logout"}
            {* Logout *}
                <li class="last">
                    <a href="{url controller='account' action='logout'}" class="logout link_mylogout">
                        {se name="AccountLinkLogout"}{/se}
                    </a>
                </li>
            {/block}
        </ul>
    </nav>
</div>