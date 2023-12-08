<#import "/templates/system/common/crafter.ftl" as crafter />


<div class="component fwec-card full-width-experience-callout need-to-control-bg">
    <div class="component-content">

        <div class="image-wrapper" data-bg-color="">
            <@crafter.img $field="image_s" class="image lazyload-img" alt="" src=(contentModel.image_s!"") />
        </div>
        <div class="desc-wrapper">
            <div class="desc">
                <@crafter.h2 $field="title_s" class="title"><span style="color: #817456;">${contentModel.title_s}</span></@crafter.h2>
                <@crafter.div $field="bodyContent_t" class="body"><p style="color: #000000; background-color: #ffffff; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px;">${contentModel.bodyContent_t}</p> </@crafter.div>
                <#if contentModel.link_s?hasContent>
                    <@crafter.a class="explore-more-btn" href="/en/nina-hotel-tsuen-wan-west/offers/meeting-package">${contentModel.cts-name_s}</@crafter.a>
                </#if>
            </div>
        </div>

    </div>
</div>