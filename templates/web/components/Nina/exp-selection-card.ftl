<#import "/templates/system/common/crafter.ftl" as crafter />


<div class="component exp-selection experience-selection property-homepage need-to-control-bg col-12">
        <div class="component-content">


<div class="image-wrapper" data-bg-color="">
    <@crafter.img $field="image_s" src=(contentModel.image_s!"") class="lazyload-img image" alt="" width="609" height="376" alt="" />
</div>
<div class="desc">
    <@crafter.h2 $field="title_s" class="desc-title"><font color="#817456">${contentModel.title_s!""}</font></@crafter.h2>
    <h3 class="desc-subtitle"></h3>
    <div class="horizontal-line"></div>
    <#if contentModel.description_html?hasContent>
        <@crafter.div class="desc-body" $field="description_html">
            <div>
            ${contentModel.description_html}
            </div>
        </@crafter.div>
    </#if>
</div>


        </div>
    </div>