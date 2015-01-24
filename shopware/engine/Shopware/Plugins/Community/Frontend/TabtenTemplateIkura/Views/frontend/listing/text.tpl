{* Categorie headline *}
{block name="frontend_listing_text"}
{if $sCategoryContent.cmsheadline}
    <div class="category_text">
        <div class="inner">
            <div class="cat_text">
                <div class="inner_container">
                    <h1>{$sCategoryContent.cmsheadline}</h1>

                    {if $sCategoryContent.cmstext}
                        {$sCategoryContent.cmstext}
                    {/if}
                </div>
            </div>
        </div>
    </div>
{/if}
{/block}