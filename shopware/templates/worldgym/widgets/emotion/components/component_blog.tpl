{if $Data}
    <div class="blog-outer-container">
        {foreach $Data.entries as $entry}
			{$image = $entry.media.thumbnails.{$Data.thumbnail_size}}
            <div class="blog-entry" style="width:{"100" / $Data.entries|count -2}%">
                <a href="{url controller=blog action=detail sCategory=$entry.categoryId blogArticle=$entry.id}" title="{$entry.title}">
                   {if $image}
                        <figure>
                            <img class="lazy" src="{link file="frontend/_resources/images/bg.gif"}" data-src="{link file=$image}" alt="{$entry.title}" />
                        </figure>
                   {else}
                        <p>
                            {se name="EmotionBlogPreviewNopic"}Kein Bild vorhanden{/se}
                        </p>
                   {/if}
                <h2>
                    {$entry.title|truncate:40}
                </h2>

                {if $entry.shortDescription}
                    <p>{$entry.shortDescription|truncate:105}</p>
                {else}
                    <p>{$entry.description|strip_tags|truncate:105}</p>
                {/if}
                </a>
            </div>
        {/foreach}
    </div>
{/if}
