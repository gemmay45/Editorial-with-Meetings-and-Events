<#import "/templates/system/common/crafter.ftl" as crafter />


<div class="component fwec-card full-width-experience-callout need-to-control-bg">
    <div class="component-content">

        <div class="image-wrapper" data-bg-color="">
            <@crafter.img $field="image_s" class="image lazyload-img" alt="" src=(contentModel.image_s!"") />
        </div>
        <div class="desc-wrapper">
            <div class="desc">
                <@crafter.h2 $field="title_s" class="title"><span style="color: #817456;">${contentModel.title_s}</span></@crafter.h2>
                <@crafter.div $field="description_s" class="body">${contentModel.description_s!""}</@crafter.div>
                <#if contentModel.link_s?hasContent>
                    <@crafter.a $field="CTAName_s" class="explore-more-btn" href="${contentModel.link_s}">${contentModel.CTAName_s}</@crafter.a>
                </#if>
            </div>
        </div>

    </div>
</div>