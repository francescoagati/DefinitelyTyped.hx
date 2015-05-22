typedef SplitWindow = {
	>Ti.UI.Window,
	var detailView : Ti.UI.View;
	var masterView : Ti.UI.View;
	var showMasterInPortrait : Bool;
	function getDetailView():Ti.UI.View;
	function getMasterView():Ti.UI.View;
	function getShowMasterInPortrait():Bool;
	function setShowMasterInPortrait(showMasterInPortrait:Bool):Void;
};
typedef DocumentViewer = {
	>Ti.UI.View,
	function setUrl(url:String):Void;
	function show():Void;
};
typedef Popover = {
	>Ti.Proxy,
	var arrowDirection : Float;
	var contentView : Ti.UI.View;
	var height : Dynamic;
	var leftNavButton : Dynamic;
	var passthroughViews : Array<Ti.UI.View>;
	var rightNavButton : Dynamic;
	var title : String;
	var width : Dynamic;
	function add():Void;
	function getArrowDirection():Float;
	function getContentView():Ti.UI.View;
	function getHeight():Dynamic;
	function getLeftNavButton():Dynamic;
	function getPassthroughViews():Array<Ti.UI.View>;
	function getRightNavButton():Dynamic;
	function getTitle():String;
	function getWidth():Dynamic;
	function hide(options:PopoverParams):Void;
	function remove():Void;
	function setArrowDirection(arrowDirection:Float):Void;
	function setContentView(contentView:Ti.UI.View):Void;
	@:overload(function(height:String):Void { })
	function setHeight(height:Float):Void;
	function setLeftNavButton(leftNavButton:Dynamic):Void;
	function setPassthroughViews(passthroughViews:Array<Ti.UI.View>):Void;
	function setRightNavButton(rightNavButton:Dynamic):Void;
	function setTitle(title:String):Void;
	@:overload(function(width:String):Void { })
	function setWidth(width:Float):Void;
	function show(params:PopoverParams):Void;
};
extern class IPadTopLevel {
	static var POPOVER_ARROW_DIRECTION_ANY : Float;
	static var POPOVER_ARROW_DIRECTION_DOWN : Float;
	static var POPOVER_ARROW_DIRECTION_LEFT : Float;
	static var POPOVER_ARROW_DIRECTION_RIGHT : Float;
	static var POPOVER_ARROW_DIRECTION_UNKNOWN : Float;
	static var POPOVER_ARROW_DIRECTION_UP : Float;
	static var apiName : String;
	static var bubbleParent : Bool;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function createDocumentViewer(?parameters:Dictionary<Ti.UI.iPad.DocumentViewer>):Ti.UI.iPad.DocumentViewer;
	static function createPopover(?parameters:Dictionary<Ti.UI.iPad.Popover>):Ti.UI.iPad.Popover;
	static function createSplitWindow(?parameters:Dictionary<Ti.UI.iPad.SplitWindow>):Ti.UI.iPad.SplitWindow;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getBubbleParent():Bool;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
}
