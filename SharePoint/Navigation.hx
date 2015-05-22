@:enum abstract NavigationLinkType(Int) {
	var root = 0;
	var friendlyUrl = 1;
	var simpleLink = 2;
}
@:enum abstract StandardNavigationSource(Int) {
	var unknown = 0;
	var portalProvider = 1;
	var taxonomyProvider = 2;
	var inheritFromParentWeb = 3;
}
extern class NavigationTermSetItem extends ClientObject {
	function get_id():Guid;
	function get_isReadOnly():Bool;
	function get_linkType():NavigationLinkType;
	function set_linkType(value:NavigationLinkType):NavigationLinkType;
	function get_targetUrlForChildTerms():CustomizableString;
	function get_catalogTargetUrlForChildTerms():CustomizableString;
	function get_taxonomyName():String;
	function get_title():CustomizableString;
	function get_terms():NavigationTermCollection;
	function get_view():NavigationTermSetView;
	function createTerm(termName:String, linkType:NavigationLinkType, termId:Guid):Dynamic;
	function getTaxonomyTermStore():Taxonomy.TermStore;
	function getResolvedDisplayUrl(browserQueryString:String):StringResult;
}
extern class NavigationTermCollection extends ClientObjectCollection<NavigationTerm> {

}
extern class NavigationTerm extends NavigationTermSetItem {
	function get_associatedFolderUrl():String;
	function set_associatedFolderUrl(value:String):String;
	function get_catalogTargetUrl():CustomizableString;
	function get_categoryImageUrl():String;
	function set_categoryImageUrl(value:String):String;
	function get_excludedProviders():NavigationTermProviderNameCollection;
	function get_excludeFromCurrentNavigation():Bool;
	function set_excludeFromCurrentNavigation(value:Bool):Bool;
	function get_excludeFromGlobalNavigation():Bool;
	function set_excludeFromGlobalNavigation(value:Bool):Bool;
	function get_friendlyUrlSegment():CustomizableString;
	function get_hoverText():String;
	function set_hoverText(value:String):String;
	function get_isDeprecated():Bool;
	function get_isPinned():Bool;
	function get_isPinnedRoot():Bool;
	function get_parent():NavigationTerm;
	function get_simpleLinkUrl():String;
	function set_simpleLinkUrl(value:String):String;
	function get_targetUrl():CustomizableString;
	function get_termSet():NavigationTermSet;
	function getAsEditable(taxonomySession:Taxonomy.TaxonomySession):NavigationTerm;
	function getWithNewView(newView:NavigationTermSetView):NavigationTerm;
	function getResolvedTargetUrl(browserQueryString:String, remainingUrlSegments:Array<String>):StringResult;
	function getResolvedTargetUrlWithoutQuery():StringResult;
	function getResolvedAssociatedFolderUrl():StringResult;
	function getWebRelativeFriendlyUrl():Dynamic;
	var StringResult : Dynamic;
	function getAllParentTerms():NavigationTermCollection;
	function getTaxonomyTerm():Taxonomy.Term;
	function move(newParent:NavigationTermSetItem):Void;
	function deleteObject():Void;
	static function getAsResolvedByWeb(context:ClientContext, term:Taxonomy.Term, web:Web, siteMapProviderName:String):NavigationTerm;
	static function getAsResolvedByView(context:ClientContext, term:Taxonomy.Term, view:NavigationTermSetView):NavigationTerm;
}
extern class NavigationTermSet extends NavigationTermSetItem {
	function get_isNavigationTermSet():Bool;
	function set_isNavigationTermSet(value:Bool):Bool;
	function get_lcid():Float;
	function get_loadedFromPersistedData():Bool;
	function get_termGroupId():Guid;
	function get_termStoreId():Guid;
	function getAsEditable(taxonomySession:Taxonomy.TaxonomySession):NavigationTermSet;
	function getWithNewView(newView:NavigationTermSetView):NavigationTermSet;
	function getTaxonomyTermSet():Taxonomy.TermSet;
	function getAllTerms():NavigationTermCollection;
	function findTermForUrl(usr:String):NavigationTerm;
	static function getAsResolvedByWeb(context:ClientContext, termSet:Taxonomy.TermSet, web:Web, siteMapProviderName:String):NavigationTermSet;
	static function getAsResolvedByView(context:ClientContext, termSet:Taxonomy.TermSet, view:NavigationTermSetView):NavigationTermSet;
}
extern class NavigationTermProviderNameCollection extends ClientObjectCollection<String> {
	function Add(item:String):Void;
	function Clear():Void;
	function Remove(item:String):BooleanResult;
}
extern class NavigationTermSetView extends ClientObject {
	function new(context:ClientContext, web:Web, siteMapProviderName:String):Void;
	function get_excludeDeprecatedTerms():Bool;
	function set_excludeDeprecatedTerms(value:Bool):Bool;
	function get_excludeTermsByPermissions():Bool;
	function set_excludeTermsByPermissions(value:Bool):Bool;
	function get_excludeTermsByProvider():Bool;
	function set_excludeTermsByProvider(value:Bool):Bool;
	function get_serverRelativeSiteUrl():String;
	function get_serverRelativeWebUrl():String;
	function get_siteMapProviderName():String;
	function set_siteMapProviderName(value:String):String;
	function get_webId():Guid;
	function get_webTitle():String;
	function getCopy():NavigationTermSetView;
	static function createEmptyInstance(context:ClientContext):NavigationTermSetView;
}
extern class TaxonomyNavigation {
	static function getWebNavigationSettings(context:ClientContext, web:Web):WebNavigationSettings;
	static function getTermSetForWeb(context:ClientContext, web:Web, siteMapProviderName:String, includeInheritedSettings:Bool):NavigationTermSet;
	static function setCrawlAsFriendlyUrlPage(context:ClientContext, navigationTerm:Dynamic, crawlAsFriendlyUrlPage:Dynamic):BooleanResult;
	static function getNavigationLcidForWeb(context:ClientContext, web:Web):IntResult;
	static function flushSiteFromCache(context:ClientContext, site:Site):Void;
	static function flushWebFromCache(context:ClientContext, web:Web):Void;
	static function flushTermSetFromCache(context:ClientContext, webForPermissions:Dynamic, termStoreId:Guid, termSetId:Guid):Void;
}
extern class WebNavigationSettings extends ClientObject {
	function new(context:ClientContext, web:Web):Void;
	function get_addNewPagesToNavigation():Bool;
	function set_addNewPagesToNavigation(value:Bool):Bool;
	function get_createFriendlyUrlsForNewPages():Bool;
	function set_createFriendlyUrlsForNewPages(value:Bool):Bool;
	function get_currentNavigation():StandardNavigationSettings;
	function get_globalNavigation():StandardNavigationSettings;
	function update(taxonomySession:Taxonomy.TaxonomySession):Void;
	function resetToDefaults():Void;
}
extern class StandardNavigationSettings extends ClientObject {
	function get_termSetId():Guid;
	function set_termSetId(value:Guid):Guid;
	function get_termStoreId():Guid;
	function set_termStoreId(value:Guid):Guid;
	function get_source():StandardNavigationSource;
	function set_source(value:StandardNavigationSource):StandardNavigationSource;
}
