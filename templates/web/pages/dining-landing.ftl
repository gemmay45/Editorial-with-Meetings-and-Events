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
    
    
            <@crafter.renderComponentCollection $field="pageSections_o" $model=contentModel/>
            
            <!-- dining list -->
            <#list tenants as tenant>

                <#assign mod = tenant?index % 2 />
            
                <#if mod == 0>
                <div class="component did-list aboutus-twocards  need-to-control-bg" style="background: rgba(175, 162, 133, 0.2);">
                    <div class="component-content">
                
                        <div $model=contentModel class="aboutus-twocards-padding" data-bg-color="rgba(175, 162, 133, 0.2)">
                        	
                            <h3 class="title"> Our Restaurants</h3>
                            
                            <div class="card-list">

                                <div class="card-item">
                                    <div class="image-wrapper">
                                        <@crafter.img $model=tenant $field="image_s" class="image lazyload-img" src=tenant.image???then(tenant.image, "/static-assets/images/placeholder.png") />
                                    </div>
                        	
                        	        <h4 class="card-item-title"><@crafter.tag $tag="font" color="#817456" $model=tenant $field="name_s" >${tenant.title}</@crafter.tag></h4>
                        	 
                                    <@crafter.p class="card-item-desc">${tenant.teaserDescription}</@crafter.p>
                                    <@crafter.a href="${tenant.url}" rel="noopener noreferrer" class="explore-more-btn">Learn more</@crafter.a>
                                </div>
                <#else>
                                <div class="card-item">
                                    <div class="image-wrapper">
                                        <@crafter.img $model=tenant $field="image_s" class="image lazyload-img" src=tenant.image???then(tenant.image, "/static-assets/images/placeholder.png") />
                                    </div>
                        	
                        	        <h4 class="card-item-title"><@crafter.tag $tag="font" color="#817456" $model=tenant $field="name_s" >${tenant.title}</@crafter.tag></h4>
                        	 
                                    <@crafter.p class="card-item-desc">${tenant.teaserDescription}</@crafter.p>
                                    <@crafter.a href="${tenant.url}" rel="noopener noreferrer" class="explore-more-btn">Learn more</@crafter.a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </#if>
            </#list>

            <!-- end dining list -->
    
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
