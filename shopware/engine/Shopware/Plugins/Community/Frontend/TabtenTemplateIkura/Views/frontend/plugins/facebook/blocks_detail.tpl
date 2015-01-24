{block name="frontend_detail_index_actions" append}
{if !$hideFacebook}
<div class="swag_plugin_facebook">
<script src="http://connect.facebook.net/{$Locale}/all.js#xfbml=1"></script><fb:like href="{url sArticle=$sArticle.articleID}" send="false" layout="button_count" width="250" show_faces="false"></fb:like>
</div>
{/if}
{/block}
