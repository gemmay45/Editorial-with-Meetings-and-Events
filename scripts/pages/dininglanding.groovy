import org.craftercms.sites.editorial.TenantSearchHelper
import org.craftercms.sites.editorial.ProfileUtils

def categories = []
def categoryItems = contentModel.categories_o.item
categoryItems.each { item ->
    def category = item.key.text
        
    categories << category
}

def segment = ProfileUtils.getSegment(profile, siteItemService)
def maxTenants = contentModel.maxTenants_i
def siteLocale = request.getRequestURI().substring(1,3)
def searchHelper = new TenantSearchHelper(searchClient, urlTransformationService, siteLocale)
def tenants = searchHelper.searchTenants(false, categories, segment, 0, maxTenants)

templateModel.tenants = tenants
templateModel.categories = categories