<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component events-card-wrapper col-12 with-icon-and-desc">
        <div class="component-content">
        <div class="component sclwg-list module-component events-card-wrapper with-icon-and-desc">
            <div class="component-content">
               	
                <div uk-slider="center: true; finite: true;" class="events-card-slider-wrapper uk-slider uk-slider-container">
                    <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
                        <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
							
							
                            <li tabindex="-1" class="uk-active">
                                <div class="uk-card uk-card-default custom-slider-card">
                                    <div class="uk-card-media-top custom-slider-card-media-top">
                                        <@crafter.img $field="image_s" src=(contentModel.image_s!"") class="m-image" alt="" width="609" height="376" alt="" />
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
				

                <div class="events-card-content-wrapper">
                    <@crafter.h2 $field="title_s" class="events-card-content-title">${contentModel.title_s}</@crafter.h2>
 
                    <@crafter.div class="events-card-content" $field="description_html">
                        <div>
                        ${contentModel.description_html}
                        </div>
                    </@crafter.div>


                    <div class="events-card-content-logos-wrapper">
						
                        <#if contentModel.area_s?hasContent>
                            <div class="events-card-content-logo">
                                <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/room/ninahospitality-roomsize-icon.png?rev=3d95a6297f2f4dd8bc3dc7541e77ced6" alt="">
                                <@crafter.span $field="area_s">${contentModel.area_s}</@crafter.span>
                            </div>
                        </#if>
						
                        <#if contentModel.seatings_s?hasContent>
                            <div class="events-card-content-logo">
                                    <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/nhg-features/ninahospitality-clubhouse-icon.svg?rev=41be2099aecb4a95adc122638c30a8b1" alt="">
                                    <@crafter.span $field="seatings_s">${contentModel.seatings_s}</@crafter.span>
                            </div>
                        </#if>						
                    </div>

                    <div class="events-card-content-links">
						<#if contentModel.reserveLink_s?hasContent>
						    <a href="${contentModel.reserveLink_s}" rel="noopener noreferrer" class="reserve-now-btn">Reserve now</a> 
						</#if>
						                        
						<#if contentModel.link_s?hasContent>
                            <@crafter.a $field="CTAName_s" class="explore-more-btn" href="${contentModel.link_s}" rel="noopener noreferrer" class="explore-more-btn">${contentModel.CTAName_s}</@crafter.a>
                        </#if>
                    </div>
                </div>
            </div>
        </div>

    <script src="/scripts/nina/eventsCard.js"></script>        </div>
    </div>