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
            <div class="component did-list aboutus-twocards  need-to-control-bg" style="background: rgba(175, 162, 133, 0.2);">
                <div class="component-content">
            
                    <div $model=contentModel class="aboutus-twocards-padding" data-bg-color="rgba(175, 162, 133, 0.2)">
                    	
                        <h3 class="title"> Our Restaurants</h3>
                        <#if tenants??>
                                                <#list tenants as tenant>
                                                xxx
                                                                        </#list>
                        </#if>

                        <#--
                        <#list tenants as tenant>
                            <@crafter.article $model=tenant>
                                <a href="${tenant.url}" class="image">
                                <@crafter.img
                                  $model=tenant
                                  $field="images_o"
                                  src=tenant.image???then(tenant.image, "/static-assets/images/placeholder.png")
                                  alt="" width="320px"
                                />
                                </a>
                                    
                                <#list tenant.categories as category>
                                    [<@crafter.span $model=tenant $field="categories_o">${category}</@crafter.span>]
                                </#list>
                                
                                <h3>
                                    <@crafter.a $model=tenant $field="name_s" href="${tenant.url}">
                                        ${tenant.title}
                                    </@crafter.a>
                                </h3>
                            
                            </@crafter.article>
                        </#list>
                        -->

                        <!--
                        <div class="card-list">
                            
                            <div class="card-item">
                                <div class="image-wrapper">
                                    <img data-src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/lhotel-nina-et-convention-centrefbcafe-circleslong-table-final540x540/tww_cafecircles_food.jpg?rev=-1" class="image lazyload-img" alt="" src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/lhotel-nina-et-convention-centrefbcafe-circleslong-table-final540x540/tww_cafecircles_food.jpg?rev=-1">
                                </div>
                    	
                    	     <h4 class="card-item-title"><font color="#817456">Café Circles</font></h4>
                    	 
                                <p class="card-item-desc">Choose from tasty international and Asian dishes in the all-day dining café, accompanied with high ceilings, elegant modern décor, generous seating and expansive sea and city views. The café attracts patrons from all corners of Hong Kong with the international cuisine buffet, a major draw for food lovers of all ages. The palatable dishes, grand-looking restaurant layout with seating for 200 people make the café a great place for businesses and families to hold dinners and parties of all occasions.</p>
                                <a href="/en/nina-hotel-tsuen-wan-west/dining/cafe-circles" rel="noopener noreferrer" class="explore-more-btn">Learn more</a>
                            </div>
                            
                            
                            <div class="card-item">
                                <div class="image-wrapper">
                                    <img data-src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/221223_new-ru_group-shot_500x500.jpg?rev=90eaaa6d324b493f9e138da4a1d97b6d" class="image lazyload-img" alt="" src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/221223_new-ru_group-shot_500x500.jpg?rev=90eaaa6d324b493f9e138da4a1d97b6d">
                                </div>
                    	
                    	     <h4 class="card-item-title"><font color="#817456">RÚ</font></h4>
                                <p class="card-item-desc">RÚ celebrates authentic Chinese culinary arts in tasteful modern elegance. Reimagined by our master chefs, classic Cantonese specialities are turned into award-winning dishes with vibrant seasonal flavours. </p>
                                <a href="/en/nina-hotel-tsuen-wan-west/dining/ru" rel="noopener noreferrer" class="explore-more-btn">Learn more</a>
                            </div>
                        
                        </div>
                        -->

                    </div>
                </div>
            </div>

            <!-- end dinsing list -->
    
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
