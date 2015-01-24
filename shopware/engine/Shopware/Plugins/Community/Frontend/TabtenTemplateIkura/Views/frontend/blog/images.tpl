{* Article picture *}
{if $sArticle.preview.thumbNails.2}
	{block name='frontend_blog_images_main_image'}{/block}
    <div id="imgTarget">
        <a href="{$sArticle.preview.media.path}"
           rel="lightbox[photos]"
           title="{if $sArticle.preview.media.description}{$sArticle.preview.media.description}{else}{$sArticle.title}{/if}"
           class="main_image">
            <figure>
                <img src="{$sArticle.preview.thumbNails.2}"
                     alt="{$sArticle.title}"
                     border="0"
                     title="{if $sArticle.preview.media.description}{$sArticle.preview.media.description}{else}{$sArticle.title}{/if}"/>
            </figure>
        </a>
    </div>
    
	{* Thumbnails *}
	{if $sArticle.media}
		{block name='frontend_blog_images_thumbnails'}
		<div class="thumbnail_box">
			{foreach from=$sArticle.media item=sArticleMedia}
				{if !$sArticleMedia.preview}
                    <a href="{link file=$sArticleMedia.media.path}"
                       rel="lightbox"
                       title="{if $sArticleMedia.description}{$sArticleMedia.description}{else}{$sArticle.title}{/if}">
                        <figure>
                            <img src="{link file=$sArticleMedia.thumbNails.0}" alt="{if $sArticleMedia.description}{$sArticleMedia.description}{else}{$sArticle.title}{/if}" />
                        </figure>
                    </a>
			    {/if}
			{/foreach}
	    </div>
	    {/block}
	{/if}
{/if}