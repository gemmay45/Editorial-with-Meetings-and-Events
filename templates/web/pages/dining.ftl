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
            <#attempt>
                <@crafter.renderComponentCollection $field="pageSections_o" $model=contentModel/>
            </#attempt>
    <#--</@crafter.section>-->
    
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
