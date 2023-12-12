<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component OPM menu-information-wrapper col-12 need-to-control-bg" style="background: rgba(175, 162, 133, 0.2);">
        <div class="component-content">
<div class="menu-information-top-wrapper">
  <h2 class="menu-information-title"><@crafter.tag $tag="font" color="#817456" $model=tenant $field="title_s" >${contentModel.title_s!""}</@crafter.tag></h2>
  <div class="menu-information-desc"></div>
</div>


<div class="menu-information-bottom-wrapper" data-bg-color="rgba(175, 162, 133, 0.2)">


</div>


    <script src="/static-assets/js/menuInformation.js"></script>
         </div>
    </div>