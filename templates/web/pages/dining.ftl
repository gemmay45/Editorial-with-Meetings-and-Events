<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en">
<head>
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

    <@crafter.section $model=contentModel>
            <@crafter.renderComponentCollection $field="pageSections_o" $model=contentModel/>
    </@crafter.section>
    
            </div>
      </main>
    </div>
  <!-- Left Rail -->
  <@renderComponent component=contentModel.left_rail_o.item />

</div>

<#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>
</body>
