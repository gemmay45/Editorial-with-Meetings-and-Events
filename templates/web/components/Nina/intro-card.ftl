<#import "/templates/system/common/crafter.ftl" as crafter />


<div class="component fwec-card brand-intro  need-to-control-bg">
    <div class="component-content">

        <div data-bg-color="" class="brand-intro-content">
    
            <@crafter.h2 class="title" $field="title_s">${contentModel.title_s}</@crafter.h2>
            <div class="horizontal-line"></div>
            <div class="body">
                <span style="background-color: #ffffff; text-align: center; letter-spacing: 0.18px; color: #000000;">${bodyContent_html}</span>
                <div id="gtx-trans" style="position: absolute; left: -50px; top: -25px;">
                    <div class="gtx-trans-icon">&nbsp;</div>
                </div> 
            </div>
        </div>
    </div>
</div>