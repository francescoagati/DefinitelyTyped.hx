typedef OnClickData = {
	@:optional
	var selectionText : String;
	@:optional
	var checked : Bool;
	var menuItemId : Dynamic;
	@:optional
	var frameUrl : String;
	var editable : Bool;
	@:optional
	var mediaType : String;
	@:optional
	var wasChecked : Bool;
	var pageUrl : String;
	@:optional
	var linkUrl : String;
	@:optional
	var parentMenuItemId : Dynamic;
	@:optional
	var srcUrl : String;
};
typedef CreateProperties = {
	@:optional
	var documentUrlPatterns : Array<String>;
	@:optional
	var checked : Bool;
	@:optional
	var title : String;
	@:optional
	var contexts : Array<String>;
	@:optional
	var enabled : Bool;
	@:optional
	var targetUrlPatterns : Array<String>;
	@:optional
	var onclick : OnClickData -> chrome.tabs.Tab -> Void;
	@:optional
	var parentId : Dynamic;
	@:optional
	var type : String;
	@:optional
	var id : String;
};
typedef UpdateProperties = {
	@:optional
	var documentUrlPatterns : Array<String>;
	@:optional
	var checked : Bool;
	@:optional
	var title : String;
	@:optional
	var contexts : Array<String>;
	@:optional
	var enabled : Bool;
	@:optional
	var targetUrlPatterns : Array<String>;
	@:optional
	var onclick : haxe.Constraints.Function;
	@:optional
	var parentId : Dynamic;
	@:optional
	var type : String;
};
typedef MenuClickedEvent = {
	>chrome.events.Event,
	function addListener(callback:OnClickData -> ?chrome.tabs.Tab -> Void):Void;
};
extern class Chrome.contextMenusTopLevel {
	static function removeAll(?callback:haxe.Constraints.Function):Void;
	static function create(createProperties:CreateProperties, ?callback:haxe.Constraints.Function):Void;
	static function update(id:Dynamic, updateProperties:UpdateProperties, ?callback:haxe.Constraints.Function):Void;
	static function remove(menuItemId:Dynamic, ?callback:haxe.Constraints.Function):Void;
	static var onClicked : MenuClickedEvent;
}
