<div class="heading">
	{* Headline *}
	<h2>{se name='CompareHeader'}{/se}</h2>
</div>
<div class="inner_container">
	{include file="frontend/compare/col_description.tpl" sArticle=$sComparison.articles sProperties=$sComparison.properties}
	
	{foreach from=$sComparisonsList.articles item=sComparison key=key name="counter"}
		{include file="frontend/compare/col.tpl" sArticle=$sComparison sProperties=$sComparison.properties}
	{/foreach}
</div>

<a href="#close_compare" onclick="$.compare.hideCompareList()" class="modal_close btn_close" title="{s name='LoginActionClose'}{/s}">
    <p>{s name='CompareActionClose'}{/s}</p>
    <span aria-hidden="true" class="icon" data-icon="&#xf057"></span>
</a>
