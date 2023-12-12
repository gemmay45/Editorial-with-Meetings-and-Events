<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component OPM menu-information-wrapper col-12 need-to-control-bg" style="background: rgba(175, 162, 133, 0.2);">
        <div class="component-content">
<div class="menu-information-top-wrapper">
  <h2 class="menu-information-title"><@crafter.tag $tag="font" color="#817456" $model=tenant $field="title_s" >${contentModel.title_s!""}</@crafter.tag></h2>
  <div class="menu-information-desc"></div>
</div>


<div class="menu-information-bottom-wrapper" data-bg-color="rgba(175, 162, 133, 0.2)">
        <@crafter.renderRepeatGroup
          $field="menus_o"
          $containerTag="div"
          $containerAttributes={'class': 'menu-information-left-part'}
          $itemTag="div"
          $itemAttributes={'class': 'menu-information-expand-wrapper'};
          item, index
        >

            <div class="menu-information-expand-content-wrapper">
              <div class="menu-information-expand-content">
                  <div class="menu-information-expand-operate">
                      <#--<@crafter.h5 class="menu-information-expand-operate-text">${item.name_s}</@crafter.h5>-->
                      <span class="menu-information-expand-operate-icon icon--cross"></span>
                  </div>
                  <div class="menu-information-expand-full-detail-wrapper" style="">
                      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-mobile uk-slider uk-slider-container">
                          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="0">
                              <#--
                              <#if item.image1_s?hasContent>
                                <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <@crafter.img $model=item $field="image1_s" src="${item.image1_s}" class="m-image" alt="" width="609" height="376" />
                                          </div>
                                      </div>
                                  </li>
                                  
                                    <#if item.image2_s?hasContent>
                                    <li tabindex="-1" class="uk-active">
                                        <div class="uk-card uk-card-default custom-slider-card">
                                            <div class="uk-card-media-top custom-slider-card-media-top">
                                                <@crafter.img $model=item $field="image2_s" src="${item.image2_s}" class="m-image" alt="" width="609" height="376" />
                                            </div>
                                        </div>
                                    </li>
                                    </#if>
                                 </ul>
                            </#if>
                            -->
                              <div class="custom-slider-bottom-operate" > <#--style="display: none;"-->
                                  <div class="custom-slider-arrow-wrapper">
                                      <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-hidden uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                                      <span class="custom-slider-item-num">01/01</span>
                                      <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav uk-hidden uk-invisible" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <#--
                      <div class="menu-information-expand-content-detail">
                          <div class="menu-information-expand-content-time"></div>
                          <@crafter.div $field="description_html" class="menu-information-expand-content-desc">${item.description_html}</@crafter.div>
                          <#if item.PDFMenu_o?? && item.PDFMenu_o.item??>
                              <div class="menu-information-expand-links">
                                  <@crafter.a $model=PDFMenu_o href="${item.PDFMenu_o.item[0].key}" rel="noopener noreferrer" class="menu-information-expand-link" target="_blank">View menu</@crafter.a>
                                  
                              </div>
                          </#if>
                          <div class="menu-information-expand-icons">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                          </div>
                      </div>
                      -->
                  </div>
              </div>
            </div>
        </@crafter.renderRepeatGroup>      

        <@crafter.renderRepeatGroup
          $field="menus_o"
          $containerTag="div"
          $containerAttributes={'class': 'menu-information-right-part for-desktop-tablet'}
          $itemTag="div";
          item, index
        >
            <#if index == 0>
                <#assign styleAttr = '' />
            <#else>
                <#assign styleAttr = 'display: none;' />
            </#if>
        
            <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-desktop-tablet uk-slider uk-slider-container" style="${styleAttr}">
    
              <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
                <#--
                <#if item.image1_s?hasContent>
                  <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                      
                      <li tabindex="-1" class="uk-active">
                          <div class="uk-card uk-card-default custom-slider-card">
                              <div class="uk-card-media-top custom-slider-card-media-top">
                                  <@crafter.img $model=item $field="image1_s" src="${item.image1_s}" class="m-image" alt="" width="609" height="376" />
                              </div>
                          </div>
                      </li>
                    <#if item.image2_s?hasContent>
                      <li tabindex="-1" class="uk-active">
                          <div class="uk-card uk-card-default custom-slider-card">
                              <div class="uk-card-media-top custom-slider-card-media-top">
                                  <@crafter.img $model=item $field="image2_s" src="${item.image2_s}" class="m-image" alt="" width="609" height="376" />
                              </div>
                          </div>
                      </li>
                    </#if>

                  </ul>
                  </#if>
                  -->
                  <div class="custom-slider-bottom-operate">
                      <div class="custom-slider-arrow-wrapper">
                          <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-hidden uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                          <span class="custom-slider-item-num">01/01</span>
                          <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav uk-hidden uk-invisible" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                      </div>
                  </div>
              </div>
          </div>
        </@crafter.renderRepeatGroup> 

</div>


    <script src="/static-assets/js/menuInformation.js"></script>
         </div>
    </div>