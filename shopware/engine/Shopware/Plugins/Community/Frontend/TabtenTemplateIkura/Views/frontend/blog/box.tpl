<div class="blogbox">
    {block name='frontend_blog_col_blog_entry'}
        <div class="blogbox_header">
            {* Article name *}
            {block name='frontend_blog_col_article_name'}
                <h2>
                    <a href="{url controller=blog action=detail sCategory=$sArticle.categoryId blogArticle=$sArticle.id}" title="{$sArticle.title}">{$sArticle.title}</a>
                </h2>
            {/block}

            {* Meta data *}
            {block name='frontend_blog_col_meta_data'}
                <p class="post_metadata">
                    {if $sArticle.author.name}
                        <span class="first">
                        {s name="BlogInfoFrom"}{/s} {$sArticle.author.name}
                    </span>
                    {/if}

                    {if $sArticle.displayDate}
                        <span {if !$sArticle.author.name} class="first"{/if}>
                        {$sArticle.displayDate|date_format:"%d.%m.%Y %H:%M"}
                    </span>
                    {/if}
                    {if $sArticle.categoryInfo.description}<span>{if $sArticle.categoryInfo.linkCategory}<a href="{$sArticle.categoryInfo.linkCategory}" title="{$sArticle.categoryInfo.description}">{$sArticle.categoryInfo.description}</a>{else}{$sArticle.categoryInfo.description}{/if}</span>{/if}
                    <span {if $sArticle.sVoteAverage|round ==0}class="last"{/if}><a href="{url controller=blog action=detail sCategory=$sArticle.categoryId blogArticle=$sArticle.id}#commentcontainer" title="{$sArticle.articleName}">{if $sArticle.numberOfComments}{$sArticle.numberOfComments}{else}0{/if} {s name="BlogInfoComments"}{/s}</a></span>
                    {if $sArticle.sVoteAverage|round !=0}
                        <span class="last star star{$sArticle.sVoteAverage|round}">{se name="BlogInfoRating"}{/se}</span>
                    {/if}
                </p>
            {/block}

        </div>

        <div class="blogbox_content">
            {* Blog Article pictures *}
            {if $sArticle.preview.thumbNails.3}
                <div class="blog_picture">
                    {block name='frontend_blog_col_article_picture'}
                        <a href="{url controller=blog action=detail sCategory=$sArticle.categoryId blogArticle=$sArticle.id}" title="{$sArticle.title}" class="main_image">
                            <figure>
                                <img class="lazy" src="{link file="frontend/_resources/images/bg.gif"}" data-src="{link file=$sArticle.preview.thumbNails.3}" alt="{$sArticle.title}"/>
                            </figure>
                        </a>
                    {/block}
                </div>
            {/if}


            {* Article Description *}
            {block name='frontend_blog_col_description'}
                <p>
                    {$sArticle.shortDescription|truncate:150|strip_tags}
                </p>
            {/block}

            {* Read more button *}
            {block name='frontend_blog_col_read_more'}
                <div class="blog_tags">
                    {if $sArticle.tags|@count > 1}
                        <strong>{s name="BlogInfoTags"}Tags:{/s}</strong>
                        {foreach $sArticle.tags as $tag}
                            <a href="{$tag.link}" title="{$tag.name}">{$tag.name}</a>{if !$tag@last}, {/if}
                        {/foreach}
                    {/if}
                </div>
                <a href="{url controller=blog action=detail sCategory=$sArticle.categoryId blogArticle=$sArticle.id}" title="{$sArticle.title}" class="btn neutral">{se name="BlogLinkMore"}{/se}</a>
            {/block}
        </div>
    {/block}
</div>