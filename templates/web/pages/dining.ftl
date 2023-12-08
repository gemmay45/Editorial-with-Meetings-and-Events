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
<body>
<@crafter.body_top/>

<!-- Wrapper -->
<div id="wrapper">
	<!-- Main -->
	<div id="main">
	<main>
        <div id="content" class="">
            <div class="row">

    			<!-- Header -->
    			<@renderComponent component = contentModel.header_o.item />
    
    			<!-- Content -->
                <@crafter.renderComponentCollection $field="pageSections_o" $model=contentModel/>
            </div>
		</div>
	</div>

	<#assign articleCategories = contentModel.queryValues("//categories_o/item/key")/>
	<#assign articlePath = contentModel.storeUrl />
	<#assign additionalModel = {"articleCategories": articleCategories, "articlePath": articlePath }/>

	<!-- Left Rail -->
	<@renderComponent component = contentModel.left_rail_o.item additionalModel = additionalModel />
    </main>
</div>

<#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>
</body>
</html>
