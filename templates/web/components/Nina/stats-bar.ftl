<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component nina-stat-bar need-to-control-bg col-12" style="background: rgb(255, 255, 255);">
        <div class="component-content">


<div class="stats-bar-wrapper" data-bg-color="#fff">

    <h2 class="stats-bar-title" ><@crafter.tag $tag="font" color="#817456" $field="title_s">${contentModel.title_s!""}</@crafter.tag></h2>

    <div class="stats-bar-detail-wrapper">

<@crafter.renderRepeatGroup
              $field="statsItems_o"
              $containerTag="div"
              $containerAttributes={"class":"stats-bar-detail-list"}
              $itemAttributes={"class":"stats-bar-detail-item"}
              $itemTag="div";
              item, index
            >
            
                <@crafter.img $field="statsItems_o" class="image lazyload-img" src="${item.icon_s}" />
                <@crafter.p $field="statsItems_o" class="stats-bar-detail-desc">${item.name_s}</@crafter.p>

</@crafter.renderRepeatGroup>
        
    </div>
</div>


        </div>
    </div>