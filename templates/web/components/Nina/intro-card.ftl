<#import "/templates/system/common/crafter.ftl" as crafter />


<div class="component fwec-card brand-intro  need-to-control-bg">
    <div class="component-content">

        <div data-bg-color="" class="brand-intro-content">
    
            <@crafter.h2 class="title" $field="title_s">${contentModel.title_s!""}</@crafter.h2>
            <div class="horizontal-line"></div>
            <#if contentModel.bodyContent_html?has_content>
                <div class="body">
                    <div id="gtx-trans" style="position: absolute; left: -50px; top: -25px;">
                        <div class="gtx-trans-icon">&nbsp;</div>
                    </div> 
                </div>
            </#if>
        </div>
    </div>
</div>