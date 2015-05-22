typedef INavigationOptions = {
	@:optional
	var assetId : String;
	@:optional
	var siteTitle : String;
	@:optional
	var siteUrl : String;
	@:optional
	var appTitle : String;
	@:optional
	var appTitleIconUrl : String;
	@:optional
	var rightToLeft : Bool;
	@:optional
	var appStartPage : String;
	@:optional
	var appIconUrl : String;
	@:optional
	var appHelpPageUrl : String;
	@:optional
	var appHelpPageOnClick : String;
	@:optional
	var settingsLinks : Array<ISettingsLink>;
	@:optional
	var language : String;
	@:optional
	var clientTag : String;
	@:optional
	var appWebUrl : String;
	@:optional
	var onCssLoaded : String;
	@:optional
	var bottomHeaderVisible : Bool;
	@:optional
	var topHeaderVisible : Bool;
};
extern class NavigationOptions {

}
typedef ISettingsLink = {
	var linkUrl : String;
	var displayName : String;
};
extern class SettingsLink {
	var linkUrl : String;
	var displayName : String;
}
extern class Navigation {
	function new(placeholderDOMElementId:String, options:INavigationOptions):Void;
	function get_assetId():String;
	function get_siteTitle():String;
	function get_siteUrl():String;
	function get_appTitle():String;
	function set_appTitle(value:String):String;
	function get_appTitleIconUrl():String;
	function set_appTitleIconUrl(value:String):String;
	function get_rightToLeft():Bool;
	function set_rightToLeft(value:Bool):Bool;
	function get_appStartPage():String;
	function set_appStartPage(value:String):String;
	function get_appIconUrl():String;
	function set_appIconUrl(value:String):String;
	function get_appHelpPageUrl():String;
	function set_appHelpPageUrl(value:String):String;
	function get_appHelpPageOnClick():String;
	function set_appHelpPageOnClick(value:String):String;
	function get_settingsLinks():Array<ISettingsLink>;
	function set_settingsLinks(value:Array<ISettingsLink>):Array<ISettingsLink>;
	function setVisible(value:Bool):Void;
	function setTopHeaderVisible(value:Bool):Void;
	function setBottomHeaderVisible(value:Bool):Void;
	function remove():Void;
	static function getVersionedLayoutsUrl(pageName:String):String;
}
extern class ControlManager {
	static function getControl(placeHolderId:String):Dynamic;
}
