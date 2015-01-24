{if $Data}
    <div class="teaser_box">
        <a href="{if $Data.blog_category}{url controller=blog action=index sCategory=$Data.category_selection}{else}{url controller=cat action=index sCategory=$Data.category_selection}{/if}" title="{$Data.categoryName|strip_tags}">
            {* teaser image *}
            {*<div class="teaser_img"{if $Data.image} style="background:url({link file=$Data.image}) no-repeat center center"{/if}>&nbsp;</div>*}
            <img class="lazy" src="{link file="frontend/_resources/images/bg.gif"}" data-src="{link file=$Data.image}" alt="{$Data.categoryName|strip_tags}" />

            {* teaser headline *}
            <div class="teaser_headline">
                <h3>{$Data.categoryName}</h3>
            </div>
        </a>
    </div>
{/if}

{*<p>{$emotion.elements[0].data|@print_r}</p>*}