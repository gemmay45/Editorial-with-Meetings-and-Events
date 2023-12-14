<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en">
<head>
    <script src="/static-assets/js/jquery-3.5.1.min.js?site=${siteContext.siteName}"></script>
    <script src="/static-assets/js/uikit.min.js"></script>

    <#include "/templates/web/fragments/head.ftl">
    <@crafter.head/>
</head>
<body id="grand" class="default-device bodyclass">
<@crafter.body_top/>
<!-- Wrapper -->
<div id="wrapper">

    <div id="main">
    	<!-- Main -->
        <main>
            <div class="inner">
    
            <!-- Header -->
            <#--<@renderComponent component=contentModel.header_o.item />-->

    <#--<@crafter.section $model=contentModel>-->
                <#--<@crafter.renderComponentCollection $field="pageSections_o" $model=contentModel/>-->
    <#--</@crafter.section>-->
    
                <!-- alternate approach to avoid share component being removed -->
                <#if contentModel.pageSections_o?? && contentModel.pageSections_o.items??>
                    <@crafter.forEach contentModel.pageSections_o; listItem, index>
    					<#if listItem.component??>
    						<#assign item = listItem.component />
    						<@crafter.div $field="pageSections_o" $index=index>
    						    <@renderComponent component=listItem />
    					    </@crafter.div>
    					<#else>
    						<#assign item =  siteItemService.getSiteItem(listItem.key)?? />
    					<#if siteItemService.getSiteItem(listItem.key)??>
    					<@crafter.div $field="pageSections_o" $index=index>
    						<@renderComponent component=listItem />
    					</@crafter.div>
    					</#if>
    					</#if>
                    </@crafter.forEach>
                <#else>
                    <@crafter.div class="craftercms-empty-collection" $model=ContentModel $field="pageSections_o"></@crafter.div>
                </#if>
                
            </div>
        </main>
    </div>
    
  <!-- Left Rail -->
  <@renderComponent component=contentModel.left_rail_o.item />

</div>

<#include "/templates/web/fragments/footer.ftl">

<#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>
</body>
</html>
