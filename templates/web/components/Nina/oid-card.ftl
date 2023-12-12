<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="component oid-card consolidation col-12 need-to-control-bg col-12">
        <div class="component-content">


<div class="consolidation-offers" data-bg-color="" style="height: 74px;">
    <div class="consolidation-title">
        <span>
            View Details
            <i class="consolidation-icon"></i>
        </span>
        <span></span>
    </div>
    <div class="consolidation-content" style="display: block;">
        
        
        <div class="consolidation-pf">
            
            
            <#if contentModel.openingHours_html?hasContent>
                <div class="consolidation-subtitle">
                    <p><strong>Opening Hours:</strong></p>
                        <@crafter.span>${contentModel.openingHours_html}</@crafter.span>
                </div>
            </#if>
            
        </div>
        
        
        
        <div class="consolidation-pf">
            
            
            <#if contentModel.address_html?hasContent>
                <@crafter.div class="consolidation-contents">
                    
                    ${contentModel.address_html}
                    
                </@crafter.div>
            </#if>
            
            
            <#if contentModel.mapLink_s?hasContent>
                <div class="contact-link">
                    <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/contact/ninahospitality-location-icon.svg?rev=93e856e3400845d6a82a0b5cf9acc1d5" class="consolidation-link-img" alt="Nina Hospitality location">
                    <@crafter.a href="${contentModel.mapLink_s}" rel="noopener noreferrer" class="consolidation-link">Open in Maps</@crafter.a>
                </div>
            </#if>
            
        </div>
        
        
        
        <div class="consolidation-aside">
            <div data-card-color="" class="contactUs">
                <span></span>
                <span></span>
                <span></span>
                
                <#if contentModel.contentNumber_s?hasContent>
                    <#assign phoneLink = "http://tel:+852" + ${contentModel.contentNumber_s!""} />
                    ${phoneLink}
                    <div class="contact-link">
                        <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/contact/ninahospitality-phoneandwhatsapp-icon.svg?rev=e460371c6bbb4f6193c575d99b810334" class="consolidation-link-img" alt="Nina Hospitality Phone and Whatsapp">
                        <@crafter.a $field="contentNumber_s" href="http://tel:+85222802868" rel="noopener noreferrer" class="consolidation-link">${contentModel.contentNumber_s}</@crafter.a>
                    </div>
                </#if>
                
                <#if contentModel.email_s?hasContent>
                    <div class="contact-link">
                        <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/contact/ninahospitality-email-icon.svg?rev=6f41cbf9a8584c93b4baa77755ca2158" class="consolidation-link-img" alt="Nina Hospitality email">
                        <@crafter.a $field="email_s" href="mailto:cafecircles@ninahotelgroup.com" rel="noopener noreferrer" class="consolidation-link">${contentModel.email_s}</@crafter.a>
                    </div>
                </#if>
                
                <#if contentModel.whatsAppNumber_s?hasContent>
                    <div class="contact-link">
                        <img src="https://mc-1ba1fb3b-6c1c-4deb-94a0-831522-cdn-endpoint.azureedge.net/-/media/01---website-imagery/nina-hotels/icons/contact/ninahospitality-phoneandwhatsapp-icon.svg?rev=e460371c6bbb4f6193c575d99b810334" class="consolidation-link-img" alt="Nina Hospitality Phone and Whatsapp">
                        <@crafter.a $field="whatsAppNumber_s" href="https://wa.me/85259700551" rel="noopener noreferrer" class="consolidation-link">${contentModel.whatsAppNumber_s}</@crafter.a>
                    </div>
                </#if>
                
            </div>
        </div>
        
        
    </div>
</div>

<script src="/static-assets/js/consolidationOffers.js"></script>

        </div>
    </div>