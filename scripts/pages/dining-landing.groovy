import org.craftercms.sites.editorial.TenantSearchHelper
import org.craftercms.sites.editorial.ProfileUtils

/*def categories = []
def categoryItems = contentModel.categories_o.item
categoryItems.each { item ->
    def category = item.key.text
        
    categories << category
}
*/

def segment = ProfileUtils.getSegment(profile, siteItemService)
def maxTenants = contentModel.maxTenants_i
def searchHelper = new TenantSearchHelper(searchClient, urlTransformationService)
def tenants = searchHelper.searchTenants(false, null, segment, 0, maxTenants)

println(tenants)

templateModel.tenants = tenants
/*templateModel.categories = categories*/