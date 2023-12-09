<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component scwl-promo module-component single-card-wrapper need-to-control-bg col-12" style="background:"${contentModel.theme}>
        <div class="component-content">


<div class="single-card-top-wrapper" data-bg-color="">
    <@crafter.h2 $field="title_s" class="single-card-top-title">${contentModel.title_s!""}</@crafter.h2>
    <#if contentModel.subtitle_s?hasContent>
        <@crafter.span $field="subtitle_s" class="single-card-top-subtitle">${contentModel.subtitle_s!""}</@crafter.span>
    </#if>
</div>
<div class="single-card-bottom-wrapper">
    
    <div uk-slider="center: true; finite: true;" class="single-card-layout-slider-wrapper uk-slider uk-slider-container">
        <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
            <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                
                
                <li tabindex="-1" class="uk-active">
                    <div class="uk-card uk-card-default custom-slider-card">
                        <div class="uk-card-media-top custom-slider-card-media-top">
                            <@crafter.img class="m-image lazyload-img" alt="" width="609" height="376" src=(contentModel.image_s!"") />
                        </div>
                    </div>
                </li>
                
                
            </ul>
            <div class="custom-slider-bottom-operate" style="display: none;">
                <div class="custom-slider-arrow-wrapper">
                    <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-hidden uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                    <span class="custom-slider-item-num">01/01</span>
                    <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav uk-hidden uk-invisible" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                </div>
            </div>
        </div>
    </div>
    
    <div class="single-card-content-wrapper">
        <h3 class="single-card-content-title"></h3>
        <p class="single-card-content"></p>
        <@crafter.span $field="description_html">${contentModel.description_html!""}</@crafter.span>
        
    </div>
</div>
<script src="/scripts/nina/singleCardLayout.js"></script>
<script src="/scripts/nina/playVideo.js"></script>

        </div>
    </div>