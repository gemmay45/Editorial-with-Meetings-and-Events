<#import "/templates/system/common/crafter.ftl" as crafter />


<div class="component exp-selection experience-selection property-homepage need-to-control-bg col-12">
        <div class="component-content">


<div class="image-wrapper" data-bg-color="">
    <img data-src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/dessert-buffet-table---wide-shot_600x900.jpg?rev=2d30de0d002d4ae1b2185a42c0b7fde2" class="lazyload-img image" alt="" src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/dessert-buffet-table---wide-shot_600x900.jpg?rev=2d30de0d002d4ae1b2185a42c0b7fde2">
</div>
<div class="desc">
    <@crafter.h2 $field="title_s" class="desc-title"><font color="#817456">${contentModel.title_s!""}</font></@crafter.h2>
    <h3 class="desc-subtitle"></h3>
    <div class="horizontal-line"></div>
    <@crafter.div class="desc-body" $field="description_html">
        <div>
        ${contentModel.description_html}
        </div>
    </@crafter.div>
</div>


        </div>
    </div>