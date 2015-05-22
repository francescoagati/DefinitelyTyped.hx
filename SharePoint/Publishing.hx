extern class PublishingWeb extends ClientObject {
	static function getPublishingWeb(context:ClientContext, web:Web):PublishingWeb;
	function get_web():Web;
	function addPublishingPage(pageInformation:PublishingPageInformation):PublishingPage;
}
extern class PublishingPageInformation extends ClientValueObject {
	function get_folder():Folder;
	function set_folder(value:Folder):Folder;
	function get_name():String;
	function set_name(value:String):String;
	function get_pageLayoutListItem():ListItem;
	function set_pageLayoutListItem(value:ListItem):ListItem;
}
extern class PublishingPage extends ScheduledItem {
	static function getPublishingPage(context:ClientContext, sourceListItem:ListItem):PublishingPage;
	function addFriendlyUrl(friendlyUrlSegment:String, editableParent:Navigation.NavigationTermSetItem, doAddToNavigation:Bool):StringResult;
}
extern class ScheduledItem extends ClientObject {
	function get_listItem():ListItem;
	function get_startDate():Date;
	function set_startDate(value:Date):Date;
	function get_endDate():Date;
	function set_endDate(value:Date):Date;
	function schedule(approvalComment:String):Void;
}
extern class PublishingSite extends ClientObject {
	static function createPageLayout(context:ClientContext, parameters:PageLayoutCreationInformation):Void;
}
extern class PageLayoutCreationInformation extends ClientValueObject {
	function get_web():Web;
	function set_web(value:Web):Web;
	function get_associatedContentTypeId():String;
	function set_associatedContentTypeId(value:String):String;
	function get_masterPageUrl():String;
	function set_masterPageUrl(value:String):String;
	function get_newPageLayoutNameWithoutExtension():String;
	function set_newPageLayoutNameWithoutExtension(value:String):String;
	function get_newPageLayoutEditablePath():String;
	function set_newPageLayoutEditablePath(value:String):String;
}
extern class SiteServicesAddins {
	static function getSettings(context:ClientContext, addinId:Guid):AddinSettings;
	static function setSettings(context:ClientContext, addin:AddinSettings):Void;
	static function deleteSettings(context:ClientContext, addinId:Guid):Void;
	static function getPlugin(context:ClientContext, pluginName:String):AddinPlugin;
	static function setPlugin(context:ClientContext, addin:AddinPlugin):Void;
	static function deletePlugin(context:ClientContext, pluginName:String):Void;
}
extern class AddinSettings extends ClientObject {
	function new(ctx:ClientContext, id:Guid):Void;
	function get_id():Guid;
	function get_title():String;
	function set_title(value:String):String;
	function get_description():String;
	function set_description(value:String):String;
	function get_enabled():Bool;
	function set_enabled(value:Bool):Bool;
	function get_namespace():Bool;
	function set_namespace(value:Bool):Bool;
	function get_headScript():String;
	function set_headScript(value:String):String;
	function get_htmlStartBody():String;
	function set_htmlStartBody(value:String):String;
	function get_htmlEndBody():String;
	function set_htmlEndBody(value:String):String;
	function get_metaTagPagePropertyMappings():{ };
	function set_metaTagPagePropertyMappings(value:{ }):{ };
}
extern class AddinPlugin extends ClientObject {
	function new(ctx:ClientContext):Void;
	function get_description():String;
	function set_description(value:String):String;
	function get_markup():String;
	function set_markup(value:String):String;
	function get_title():String;
	function set_title(value:String):String;
}
extern class DesignPackage {
	static function install(context:ClientContext, site:Site, info:DesignPackageInfo, path:String):Void;
	static function uninstall(context:ClientContext, site:Site, info:DesignPackageInfo):Void;
	static function apply(context:ClientContext, site:Site, info:DesignPackageInfo):Void;
	static function exportEnterprise(context:ClientContext, site:Site, includeSearchConfiguration:Bool):ClientResult<DesignPackageInfo>;
	static function exportSmallBusiness(context:ClientContext, site:Site, packageName:String, includeSearchConfiguration:Bool):ClientResult<DesignPackageInfo>;
}
extern class DesignPackageInfo extends ClientValueObject {
	function get_packageName():String;
	function set_packageName(value:String):String;
	function get_packageGuid():Guid;
	function set_packageGuid(value:Guid):Guid;
	function get_majorVersion():Float;
	function set_majorVersion(value:Float):Float;
	function get_minorVersion():Float;
	function set_minorVersion(value:Float):Float;
}
extern class SiteImageRenditions {
	static function getRenditions(context:ClientContext):Array<ImageRendition>;
	static function setRenditions(context:ClientContext, renditions:Array<ImageRendition>):Void;
}
extern class ImageRendition extends ClientValueObject {
	function get_id():Float;
	function get_version():Float;
	function get_name():String;
	function set_name(value:String):String;
	function get_width():Float;
	function set_width(value:Float):Float;
	function get_height():Float;
	function set_height(value:Float):Float;
}
extern class Variations extends ClientObject {
	static function getLabels(context:ClientContext):ClientObjectList<VariationLabel>;
	static function getPeerUrl(context:ClientContext, currentUrl:String, labelTitle:String):StringResult;
	static function updateListItems(context:ClientContext, listId:Guid, itemIds:Array<Float>):Void;
}
extern class VariationLabel extends ClientObject {
	function get_displayName():String;
	function set_displayName(value:String):String;
	function get_isSource():Bool;
	function set_isSource(value:Bool):Bool;
	function get_language():String;
	function set_language(value:String):String;
	function get_locale():String;
	function set_locale(value:String):String;
	function get_title():String;
	function set_title(value:String):String;
	function get_topWebUrl():String;
	function set_topWebUrl(value:String):String;
}
extern class CustomizableString extends ClientObject {
	function get_defaultValue():String;
	function get_value():String;
	function set_value(value:String):String;
	function get_usesDefaultValue():Bool;
	function set_usesDefaultValue(value:Bool):Bool;
}
