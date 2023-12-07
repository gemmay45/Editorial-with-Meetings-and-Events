<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component nina-stat-bar need-to-control-bg col-12" style="background: rgb(255, 255, 255);">
        <div class="component-content">


<div class="stats-bar-wrapper" data-bg-color="#fff">

    <div class="stats-bar-detail-wrapper">

        <h2 class="stats-bar-title" ><@crafter.tag $tag="font" color="#817456" $field="title_s">${contentModel.title_s!""}</@crafter.tag></h2>

<@crafter.renderRepeatGroup
              $field="statsItems_o"
              $containerTag="div"
              $containerAttributes={"class":"stats-bar-detail-list"}
              $itemTag="div";
              item, index
            >
            
        <div class="stats-bar-detail-list">
            <@crafter.div class="stats-bar-detail-item">
                <@crafter.img $field="statsItems_o" class="image lazyload-img" data-src="${item.icon_s}" />
                <@crafter.p $field="statsItems_o" class="stats-bar-detail-desc">${item.name_s}</@crafter.p>
            </@crafter.div>

            
            <#--<div class="stats-bar-detail-item">
                <img class="image lazyload-img" data-src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/meetings-and-weddings/ninahospitality-audiosoundsystem-icon.svg?rev=6cbb94d6bfaa49269f9e4c35ac6af9a1" alt="Nina Hospitality audio sound system" src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/meetings-and-weddings/ninahospitality-audiosoundsystem-icon.svg?rev=6cbb94d6bfaa49269f9e4c35ac6af9a1">
                <p class="stats-bar-detail-desc">Audio &amp; Visual Equipment</p>
            </div>
            
            <div class="stats-bar-detail-item">
                <img class="image lazyload-img" data-src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/room/ninahospitality-minibar-icon.svg?rev=105419bc1388411889e9ad759c525caf" alt="Nina Hospitality Minibar" src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/room/ninahospitality-minibar-icon.svg?rev=105419bc1388411889e9ad759c525caf">
                <p class="stats-bar-detail-desc">Food &amp; Beverage</p>
            </div>
            -->
        </div>
</@crafter.renderRepeatGroup>
        
    </div>
</div>


        </div>
    </div>