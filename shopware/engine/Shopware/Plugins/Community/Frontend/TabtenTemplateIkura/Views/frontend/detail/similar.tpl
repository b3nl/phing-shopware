<div class="similar">
	<div class="content">
		{if $sArticle.sSimilarArticles}    
	        <h2>{s name='DetailSimilarHeader'}{/s}</h2>
	        {foreach name=line from=$sArticle.sSimilarArticles item=sSimilarArticle key=key name="counter"}
	        	{include file="frontend/listing/box_similar.tpl" sArticle=$sSimilarArticle}
	        {/foreach}
	    {/if}
    </div>
</div>