{* Compare Description *}
<div class="col four">
	
	<div class="picture row">
		{block name='frontend_article_picture'}
			{se name="CompareColumnPicture"}{/se}
		{/block}
	</div>
	
	<div class="name row">
		{block name='frontend_compare_article_name'}
			{se name="CompareColumnName"}{/se}
		{/block}
	</div>
	
	<div class="votes row">
		{block name='frontend_compare_votings'}
			{se name="CompareColumnRating"}{/se}
		{/block}
	</div>
	
	<div class="desc row">
		{block name='frontend_compare_description'}
			{se name="CompareColumnDescription"}{/se}
		{/block}
	</div>
	
	<div class="price row">
		{block name='frontend_compare_price'}
			{se name="CompareColumnPrice"}{/se}
		{/block}
	</div>
	
	{foreach from=$sComparisonsList.properties item=property}
		{block name='frontend_compare_properties'}
		<div class="property row">
			{if $property}{$property}:{/if}
		</div>
		{/block}
	{/foreach}
	
</div>