<div class="page-hero-banner-container">
    <div class="component hero-carousel module-component container-fluid banner-wrapper contact-banner-wrapper">
        <div class="component-content">
 
<div class="for-tablet for-desktop">
<@crafter.img $field="imageforDesktop_s" src=(contentModel.imageforDesktop_s) alt="">
</div>

<#if ${imageforMobile_s}!="">
<div class="for-mobile"><@crafter.img $field="imageforMobile_s" src=(contentModel.imageforMobile_s) alt=""></div>

 <div class="row"></div>
 <@crafter.h1 class="common-header layout--center" $field=(title_t!"")>
          </div>
    </div>
</#if>    
</div>