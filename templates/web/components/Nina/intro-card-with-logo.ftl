<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component dsb-intro offersContent need-to-control-bg col-12">
        <div class="component-content">

    <div class="offersContent-section" data-bg-color="">
        <#if contentModel.logo_s?hasContent>
            <@crafter.img $field="logo_s" class="offersContent-section-new" style="margin:auto;" src=(contentModel.logo_s) alt="" />
        <#else>
            <@crafter.img $field="logo_s" class="offersContent-section-new" style="margin:auto;width:180px" src="/static-assets/images/placeholder.png" alt="" />
        </#if>
        <div class="offersContent-section-share">
        <script>
            (function () {
                $(".share-social").each(function (_, item) {
                    var url = $(item).attr("data-templateurl") + window.location.href;
                    $(item).attr("href", url);
                })
            })();
        </script>
    </div>
    <div class="offersContent-section-text" $field="bodyContent_html">
        ${contentModel.bodyContent_html!""}
        <span class="offersContent-section-subtitle"></span>
    </div>
</div>

        </div>
    </div>