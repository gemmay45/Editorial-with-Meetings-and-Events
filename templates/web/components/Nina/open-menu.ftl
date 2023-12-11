<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component OPM menu-information-wrapper col-12 need-to-control-bg" style="background: rgba(175, 162, 133, 0.2);">
        <div class="component-content">
<div class="menu-information-top-wrapper">
  <h2 class="menu-information-title"><@crafter.tag $tag="font" color="#817456" $model=tenant $field="title_s" >${contentModel.title_s!""}</@crafter.tag></h2>
  <div class="menu-information-desc"></div>
</div>


<div class="menu-information-bottom-wrapper" data-bg-color="rgba(175, 162, 133, 0.2)">

        <#assign menuIndex = "0" />
        
        <@crafter.renderRepeatGroup
          $field="menus_o"
          $containerTag="div"
          $containerAttributes={'class': 'menu-information-left-part'}
          $itemTag="div"
          $itemAttributes={'class': 'menu-information-expand-wrapper', 'data-index':'${item?index}'};
          item, index
        >

            <#assign menuIndex = index />

            <div class="menu-information-expand-content-wrapper" style="height: 28px;">
              <div class="menu-information-expand-content">
                  <div class="menu-information-expand-operate">
                      <@crafter.h5 class="menu-information-expand-operate-text">${item.name_s}</@crafter.h5>
                      <span class="menu-information-expand-operate-icon icon--cross"></span>
                  </div>
                  <div class="menu-information-expand-full-detail-wrapper" style="">
                      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-mobile uk-slider uk-slider-container">
                          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="0">
                              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/tww_dining_cafe-circles_breakfast-buffet.jpg?rev=be88754667634dad94fc5b3a8ea7c34c" class="m-image" alt="" width="609" height="376">
                                          </div>
                                      </div>
                                  </li>
                                  
                              </ul>
                              <div class="custom-slider-bottom-operate"> <#--style="display: none;"-->
                                  <div class="custom-slider-arrow-wrapper">
                                      <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-hidden uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                                      <span class="custom-slider-item-num">01/01</span>
                                      <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav uk-hidden uk-invisible" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="menu-information-expand-content-detail">
                          <div class="menu-information-expand-content-time"></div>
                          <@crafter.div class="menu-information-expand-content-desc">${item.description_html}</@crafter.div>
                          <div class="menu-information-expand-links">
                              <a href="/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231003_cc-breakfast-alc-menu.pdf?rev=72c8f834c6a84f6497d9f7d2633bf4a0&amp;hash=618328F2C429EFB2ACDD85FEC351A1D1" rel="noopener noreferrer" class="menu-information-expand-link" target="_blank">View menu</a>
                              
                          </div>
                          <div class="menu-information-expand-icons">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                          </div>
                      </div>
                  </div>
              </div>
            </div>
        </@crafter.renderRepeatGroup>      
      
      <!--
      <div class="menu-information-expand-wrapper " data-index="0">
          <div class="menu-information-expand-content-wrapper open" style="height: 297px;">
              <div class="menu-information-expand-content">
                  <div class="menu-information-expand-operate">
                      <h5 class="menu-information-expand-operate-text">Breakfast </h5>
                      <span class="menu-information-expand-operate-icon icon--cross"></span>
                  </div>
                  <div class="menu-information-expand-full-detail-wrapper" style="">
                      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-mobile uk-slider uk-slider-container">
                          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="0">
                              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/tww_dining_cafe-circles_breakfast-buffet.jpg?rev=be88754667634dad94fc5b3a8ea7c34c" class="m-image" alt="" width="609" height="376">
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
                      <div class="menu-information-expand-content-detail">
                          <div class="menu-information-expand-content-time"></div>
                          <div class="menu-information-expand-content-desc"><p><strong>Breakfast Buffet</strong></p>
<p>7:00am -10:30am Daily (75 minutes from the time of seating)&nbsp;</p>
<p>HK$168* (Adult) | HK$108* (Child, 3 - 11 years old)</p>
<p><strong>&nbsp;</strong></p>
<p><strong>
Breakfast Set</strong></p>
<p>7:30am - 10:30am Daily&nbsp;</p>
<p>&nbsp;</p>
<p>*All prices are subject to 10% service charge</p></div>
                          <div class="menu-information-expand-links">
                              <a href="/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231003_cc-breakfast-alc-menu.pdf?rev=72c8f834c6a84f6497d9f7d2633bf4a0&amp;hash=618328F2C429EFB2ACDD85FEC351A1D1" rel="noopener noreferrer" class="menu-information-expand-link" target="_blank">View menu</a>
                              
                          </div>
                          <div class="menu-information-expand-icons">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      
      
      
      
      <div class="menu-information-expand-wrapper " data-index="1">
          <div class="menu-information-expand-content-wrapper" style="height: 28px;">
              <div class="menu-information-expand-content">
                  <div class="menu-information-expand-operate">
                      <h5 class="menu-information-expand-operate-text">Lunch </h5>
                      <span class="menu-information-expand-operate-icon icon--cross"></span>
                  </div>
                  <div class="menu-information-expand-full-detail-wrapper" style="">
                      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-mobile uk-slider uk-slider-container">
                          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
                              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230815_cafe-circles_crab-fiesta_02_540x500.jpg?rev=dc5a9233b50543a2bb55cd94784553a1" class="m-image" alt="" width="609" height="376">
                                          </div>
                                      </div>
                                  </li>
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231013_cc_xmas-buffet_03_540x400.jpg?rev=9f41fe3d262445a8aec7de4531b4aac5" class="m-image" alt="" width="609" height="376">
                                          </div>
                                      </div>
                                  </li>
                                  
                              </ul>
                              <div class="custom-slider-bottom-operate">
                                  <div class="custom-slider-arrow-wrapper">
                                      <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                                      <span class="custom-slider-item-num">01/02</span>
                                      <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="menu-information-expand-content-detail">
                          <div class="menu-information-expand-content-time"></div>
                          <div class="menu-information-expand-content-desc"><p><strong>Crab Fiesta (Sep 1 - Dec 10)</strong></p>
<p><strong>Joyous Festive Buffet (Dec 11 - Jan 1)</strong></p>
<p>Serving time:  12:00pm - 2:30pm</p>
<p>&nbsp;</p>
<p>Monday to Friday: from HK$398 (Adult) | from HK$318 (3 - 11 years old Child / Senior aged 65 years or above)*</p>
<p>Saturday, Sunday and Public Holidays : from HK$488 (Adult) | from HK$408 (3 - 11 years old Child / Senior aged 65 years or above)*</p>
<p>&nbsp;</p>
<p>Click&nbsp;<a rel="noopener noreferrer" href="https://ninaboutique.com/en/restaurant-offers-cafe-circles" target="_blank"><span style="text-decoration-line: underline; font-size: 18px;">here</span></a>&nbsp;to order at Nina Boutique could enjoy up to 25% discount.</p>
<p>&nbsp;</p>
<p>Booking and enquiry:&nbsp;2280 2868 / 5970 0551 (WhatsApp)</p>
<br>
*Subject to 10% of service charge<br>
<br>
<p>&nbsp;</p>
<p>À La Carte Menu is also available&nbsp;</p></div>
                          <div class="menu-information-expand-links">
                              <a href="/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231001_cc-alc-menu.pdf?rev=4522e8821fa744789e78199ff8a2516b&amp;hash=6F430431F4BBAA72BF42A76156A2FB8E" rel="noopener noreferrer" class="menu-information-expand-link" target="_blank">View À La Carte Menu</a>
                              
                          </div>
                          <div class="menu-information-expand-icons">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      
      
      
      
      <div class="menu-information-expand-wrapper " data-index="2">
          <div class="menu-information-expand-content-wrapper" style="height: 28px;">
              <div class="menu-information-expand-content">
                  <div class="menu-information-expand-operate">
                      <h5 class="menu-information-expand-operate-text">Weekend Afternoon Tea Buffet</h5>
                      <span class="menu-information-expand-operate-icon icon--cross"></span>
                  </div>
                  <div class="menu-information-expand-full-detail-wrapper" style="">
                      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-mobile uk-slider uk-slider-container">
                          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
                              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230918_cafe-circles_matcha-x-sweet-potato_02_540x400.jpg?rev=3bd7f5940f0146deb18e4ff1ad9e99f7" class="m-image" alt="" width="609" height="376">
                                          </div>
                                      </div>
                                  </li>
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230918_cafe-circles_matcha-x-sweet-potato_03_540x400.jpg?rev=ddcfacb4ec1c43199c7439466c91e0ed" class="m-image" alt="" width="609" height="376">
                                          </div>
                                      </div>
                                  </li>
                                  
                              </ul>
                              <div class="custom-slider-bottom-operate">
                                  <div class="custom-slider-arrow-wrapper">
                                      <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                                      <span class="custom-slider-item-num">01/02</span>
                                      <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="menu-information-expand-content-detail">
                          <div class="menu-information-expand-content-time"></div>
                          <div class="menu-information-expand-content-desc"><p><strong>Fall in love with Matcha x Sweet Potato Afternoon Tea Buffet (Oct 7 - Dec 10)</strong></p>
<p><strong>Joyous Festive Tea Buffet<strong>&nbsp;(Dec 11 - Jan 1)</strong></strong></p>
<p>Serving time:&nbsp; Every Saturday and Sunday, 3:15pm - 5:15pm</p>
<p>&nbsp;</p>
<p>From HK$318* (Adult) | From HK$258* (Child / Senior)</p>
<p>&nbsp;</p>
<p>Click&nbsp;<a rel="noopener noreferrer" href="https://ninaboutique.com/en/restaurant-offers-cafe-circles" target="_blank"><span style="text-decoration-line: underline; font-size: 18px;">here</span></a>&nbsp;to order at Nina Boutique could enjoy up to 20% discount. </p>
<p>&nbsp;</p>
<p>Booking and enquiry: 2280 2868 / 5970 0551 (WhatsApp)<br>
<br>
<br>
*Subject to 10% of service charge</p></div>
                          <div class="menu-information-expand-links">
                              <a rel="noopener noreferrer" class="menu-information-expand-link">Learn More</a>
                              
                          </div>
                          <div class="menu-information-expand-icons">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      
      
      
      
      <div class="menu-information-expand-wrapper " data-index="3">
          <div class="menu-information-expand-content-wrapper" style="height: 28px;">
              <div class="menu-information-expand-content">
                  <div class="menu-information-expand-operate">
                      <h5 class="menu-information-expand-operate-text">Christmas Wonderland Afternoon Tea</h5>
                      <span class="menu-information-expand-operate-icon icon--cross"></span>
                  </div>
                  <div class="menu-information-expand-full-detail-wrapper" style="">
                      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-mobile uk-slider uk-slider-container">
                          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
                              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231107_nptww_xmas-afternoon-tea_01_540x400.jpg?rev=39573fdeb4b74830ba9a911af84cf17b" class="m-image" alt="" width="609" height="376">
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
                      <div class="menu-information-expand-content-detail">
                          <div class="menu-information-expand-content-time"></div>
                          <div class="menu-information-expand-content-desc"><p>Serving Period: 20 November - 31 December, 2023<br>
<br>
Serving Time: 2:30pm - 5:30pm<br>
<br>
Price: HK$468* for 2 persons</p>
<p>Booking and Enquiry: (852) 2280 2868<br>
<br>
<br>
*Subject to 10% service charge on original prices | 3 days advance booking is required. Photos are for reference only.&nbsp;</p></div>
                          <div class="menu-information-expand-links">
                              <a href="/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231107_cc_xmas-afternoon-tea-menu.pdf?rev=c80819987cda4851abbb9850fc027693&amp;hash=E02870AA8AD3802DE37BAE91DEEE6D66" rel="noopener noreferrer" class="menu-information-expand-link">Learn More</a>
                              
                          </div>
                          <div class="menu-information-expand-icons">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      
      
      
      
      <div class="menu-information-expand-wrapper " data-index="4">
          <div class="menu-information-expand-content-wrapper" style="height: 28px;">
              <div class="menu-information-expand-content">
                  <div class="menu-information-expand-operate">
                      <h5 class="menu-information-expand-operate-text">Dinner</h5>
                      <span class="menu-information-expand-operate-icon icon--cross"></span>
                  </div>
                  <div class="menu-information-expand-full-detail-wrapper" style="">
                      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-mobile uk-slider uk-slider-container">
                          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
                              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230815_cafe-circles_crab-fiesta_04_540x500.jpg?rev=3db179ab405d4009a88ae0143c3a3f45" class="m-image" alt="" width="609" height="376">
                                          </div>
                                      </div>
                                  </li>
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231013_cc_xmas-buffet_01_540x400.jpg?rev=b8ea6258efa24e0ea8e08a538b921e0a" class="m-image" alt="" width="609" height="376">
                                          </div>
                                      </div>
                                  </li>
                                  
                              </ul>
                              <div class="custom-slider-bottom-operate">
                                  <div class="custom-slider-arrow-wrapper">
                                      <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                                      <span class="custom-slider-item-num">01/02</span>
                                      <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="menu-information-expand-content-detail">
                          <div class="menu-information-expand-content-time"></div>
                          <div class="menu-information-expand-content-desc"><p><strong>Crab Fiesta (Sep 1 - Dec 10)</strong></p>
<p><strong>Joyous Festive Buffet (Dec 11 - Jan 1)</strong></p>
<p>Serving time: 6:30pm - 9:30pm</p>
<p>A la carte menu last order time: 9:00pm</p>
<p>&nbsp;</p>
<p>Monday to Thursday: From HK$618* (Adult) | From HK$518* (3 - 11 years old Child / Senior aged 65 years or above)</p>
<p>Friday to Sunday and Public Holiday: From HK$698* (Adult) | From HK$598* (3 - 11 years old Child / Senior aged 65 years or above)</p>
<p>&nbsp;</p>
<p>Click&nbsp;<a rel="noopener noreferrer" href="https://ninaboutique.com/en/restaurant-offers-cafe-circles" target="_blank"><span style="text-decoration-line: underline; font-size: 18px;">here</span></a>&nbsp;to order at Nina Boutique could enjoy up to 20% discount.</p>
<p>&nbsp;</p>
<p>Booking and enquiry: 2280 2868 / 5970 0551 (WhatsApp)</p>
<p>
<br>
*Subject to 10% of service charge</p></div>
                          <div class="menu-information-expand-links">
                              <a href="/en/nina-hotel-tsuen-wan-west/offers/crab-fiesta-buffet" rel="noopener noreferrer" class="menu-information-expand-link">Learn more </a>
                              
                          </div>
                          <div class="menu-information-expand-icons">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      
      
      
      
      <div class="menu-information-expand-wrapper " data-index="5">
          <div class="menu-information-expand-content-wrapper" style="height: 28px;">
              <div class="menu-information-expand-content">
                  <div class="menu-information-expand-operate">
                      <h5 class="menu-information-expand-operate-text">Halal menu</h5>
                      <span class="menu-information-expand-operate-icon icon--cross"></span>
                  </div>
                  <div class="menu-information-expand-full-detail-wrapper" style="">
                      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-mobile uk-slider uk-slider-container">
                          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
                              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                                  
                                  <li tabindex="-1" class="uk-active">
                                      <div class="uk-card uk-card-default custom-slider-card">
                                          <div class="uk-card-media-top custom-slider-card-media-top">
                                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230714_cafe-circles-interior_540x400.jpg?rev=3383f1243fbe4dfe9a21253eb51df048" class="m-image" alt="" width="609" height="376">
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
                      <div class="menu-information-expand-content-detail">
                          <div class="menu-information-expand-content-time"></div>
                          <div class="menu-information-expand-content-desc"><p>Halal menu is available upon request in advance.</p>
<p>Please contact restaurant team for further assistance.</p></div>
                          <div class="menu-information-expand-links">
                              
                              
                          </div>
                          <div class="menu-information-expand-icons">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                              <img class="menu-information-expand-icon" src="" alt="">
                              
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      -->
      
  </div>
  <div class="menu-information-right-part for-desktop-tablet">
      
      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-desktop-tablet uk-slider uk-slider-container">

          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/tww_dining_cafe-circles_breakfast-buffet.jpg?rev=be88754667634dad94fc5b3a8ea7c34c" class="m-image" alt="" width="609" height="376">
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
      
      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-desktop-tablet uk-slider uk-slider-container">

          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230815_cafe-circles_crab-fiesta_02_540x500.jpg?rev=dc5a9233b50543a2bb55cd94784553a1" class="m-image" alt="" width="609" height="376">
                          </div>
                      </div>
                  </li>
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231013_cc_xmas-buffet_03_540x400.jpg?rev=9f41fe3d262445a8aec7de4531b4aac5" class="m-image" alt="" width="609" height="376">
                          </div>
                      </div>
                  </li>
                  
              </ul>
              <div class="custom-slider-bottom-operate">
                  <div class="custom-slider-arrow-wrapper">
                      <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                      <span class="custom-slider-item-num">01/02</span>
                      <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                  </div>
              </div>
          </div>
      </div>
      
      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-desktop-tablet uk-slider uk-slider-container">

          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230918_cafe-circles_matcha-x-sweet-potato_02_540x400.jpg?rev=3bd7f5940f0146deb18e4ff1ad9e99f7" class="m-image" alt="" width="609" height="376">
                          </div>
                      </div>
                  </li>
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230918_cafe-circles_matcha-x-sweet-potato_03_540x400.jpg?rev=ddcfacb4ec1c43199c7439466c91e0ed" class="m-image" alt="" width="609" height="376">
                          </div>
                      </div>
                  </li>
                  
              </ul>
              <div class="custom-slider-bottom-operate">
                  <div class="custom-slider-arrow-wrapper">
                      <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                      <span class="custom-slider-item-num">01/02</span>
                      <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                  </div>
              </div>
          </div>
      </div>
      
      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-desktop-tablet uk-slider uk-slider-container">

          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231107_nptww_xmas-afternoon-tea_01_540x400.jpg?rev=39573fdeb4b74830ba9a911af84cf17b" class="m-image" alt="" width="609" height="376">
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
      
      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-desktop-tablet uk-slider uk-slider-container">

          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230815_cafe-circles_crab-fiesta_04_540x500.jpg?rev=3db179ab405d4009a88ae0143c3a3f45" class="m-image" alt="" width="609" height="376">
                          </div>
                      </div>
                  </li>
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/231013_cc_xmas-buffet_01_540x400.jpg?rev=b8ea6258efa24e0ea8e08a538b921e0a" class="m-image" alt="" width="609" height="376">
                          </div>
                      </div>
                  </li>
                  
              </ul>
              <div class="custom-slider-bottom-operate">
                  <div class="custom-slider-arrow-wrapper">
                      <a class="custom-slider-prev coustom-slider-arrow uk-icon uk-slidenav-previous uk-slidenav uk-invisible" href="#" uk-slidenav-previous="" uk-slider-item="previous"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-previous"><polyline fill="none" stroke="#000" stroke-width="1.4" points="12.775,1 1.225,12 12.775,23 "></polyline></svg></a>
                      <span class="custom-slider-item-num">01/02</span>
                      <a class="custom-slider-next coustom-slider-arrow uk-icon uk-slidenav-next uk-slidenav" href="#" uk-slidenav-next="" uk-slider-item="next"><svg width="14px" height="24px" viewBox="0 0 14 24" xmlns="http://www.w3.org/2000/svg" data-svg="slidenav-next"><polyline fill="none" stroke="#000" stroke-width="1.4" points="1.225,23 12.775,12 1.225,1 "></polyline></svg></a>
                  </div>
              </div>
          </div>
      </div>
      
      <div uk-slider="center: true; finite: true;" class="menu-information-slider-wrapper for-desktop-tablet uk-slider uk-slider-container">

          <div class="uk-position-relative uk-visible-toggle uk-light custom-slider-content" tabindex="-1">
              <ul class="uk-slider-items uk-grid custom-slider-list" style="transform: translate3d(0px, 0px, 0px);">
                  
                  <li tabindex="-1" class="uk-active">
                      <div class="uk-card uk-card-default custom-slider-card">
                          <div class="uk-card-media-top custom-slider-card-media-top">
                              <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/properties/tww/dining/230714_cafe-circles-interior_540x400.jpg?rev=3383f1243fbe4dfe9a21253eb51df048" class="m-image" alt="" width="609" height="376">
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
      
  </div>
</div>


<script src="/scripts/nina/menuInformation.js"></script>         </div>
    </div>