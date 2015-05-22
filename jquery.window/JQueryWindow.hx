typedef Window = {
	function getWindowId():String;
	function getCaller():JQuery;
	function getContainer():JQuery;
	function getHeader():JQuery;
	function getFrame():JQuery;
	function getFooter():JQuery;
	function alignCenter():Void;
	function alignHorizontalCenter():Void;
	function alignVerticalCenter():Void;
	function select():Void;
	function unselect():Void;
	function move(x:Float, y:Float, bShift:Bool):Void;
	function resize(width:Float, height:Float):Void;
	function maximize():Void;
	function minimize():Void;
	function restore():Void;
	function close(quiet:Bool):Void;
	function hide():Void;
	function show():Void;
	function setTitle(title:String):Void;
	function setUrl(url:String):Void;
	function setContent(content:haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, HTMLElement>>):Void;
	function setFooterContent(content:haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, HTMLElement>>):Void;
	function getTitle():String;
	function getUrl():String;
	function getContent():String;
	function getFooterContent():String;
	function isMaximized():Bool;
	function isMinimized():Bool;
	function isSelected():Bool;
	function setIcon(iconUrl:String):Void;
	function showIcon():Void;
	function hideIcon():Void;
};
typedef Static = {
	function prepare(?options:StaticOptions):Void;
	function closeAll(?quiet:Bool):Void;
	function hideAll():Void;
	function showAll():Void;
	function getAll():Array<JQueryWindow.Window>;
	function getWindow(windowId:String):JQueryWindow.Window;
	function getSelectedWindow():JQueryWindow.Window;
};
typedef StaticOptions = {
	@:optional
	var dock : String;
	@:optional
	var dockArea : haxe.extern.EitherType<JQuery, HTMLElement>;
	@:optional
	var animationSpeed : Float;
	@:optional
	var minWinNarrow : Float;
	@:optional
	var minWinLong : Float;
	@:optional
	var handleScrollbar : Bool;
	@:optional
	var showLog : Bool;
};
typedef WindowOptions = {
	@:optional
	var icon : String;
	var title : String;
	@:optional
	var url : String;
	@:optional
	var content : haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, HTMLElement>>;
	@:optional
	var footerContent : haxe.extern.EitherType<String, haxe.extern.EitherType<JQuery, HTMLElement>>;
	@:optional
	var containerClass : String;
	@:optional
	var headerClass : String;
	@:optional
	var frameClass : String;
	@:optional
	var footerClass : String;
	@:optional
	var selectedHeaderClass : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var z : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var showModal : Bool;
	@:optional
	var modalOpacity : Float;
	@:optional
	var showFooter : Bool;
	@:optional
	var showRoundCorner : Bool;
	@:optional
	var closable : Bool;
	@:optional
	var minimizable : Bool;
	@:optional
	var maximizable : Bool;
	@:optional
	var bookmarkable : Bool;
	@:optional
	var draggable : Bool;
	@:optional
	var resizable : Bool;
	@:optional
	var scrollable : Bool;
	@:optional
	var checkBoundary : Bool;
	@:optional
	var withinBrowserWindow : Bool;
	@:optional
	var custBtns : Array<JQueryWindow.Button>;
	@:optional
	var onOpen : JQueryWindow.Window -> Void;
	@:optional
	var onShow : JQueryWindow.Window -> Void;
	@:optional
	var onClose : JQueryWindow.Window -> Void;
	@:optional
	var onSelect : JQueryWindow.Window -> Void;
	@:optional
	var onUnselect : JQueryWindow.Window -> Void;
	@:optional
	var onDrag : JQueryWindow.Window -> Void;
	@:optional
	var afterDrag : JQueryWindow.Window -> Void;
	@:optional
	var onResize : JQueryWindow.Window -> Void;
	@:optional
	var afterResize : JQueryWindow.Window -> Void;
	@:optional
	var onMinimize : JQueryWindow.Window -> Void;
	@:optional
	var afterMinimize : JQueryWindow.Window -> Void;
	@:optional
	var onMaximize : JQueryWindow.Window -> Void;
	@:optional
	var afterMaximize : JQueryWindow.Window -> Void;
	@:optional
	var onCascade : JQueryWindow.Window -> Void;
	@:optional
	var afterCascade : JQueryWindow.Window -> Void;
	@:optional
	var onIframeStart : JQueryWindow.Window -> Void;
	@:optional
	var onIframeEnd : JQueryWindow.Window -> Void;
	@:optional
	var iframeRedirectCheckMsg : String;
	@:optional
	var createRandomOffset : { var x : Float; var y : Float; };
};
typedef Button = {
	var id : String;
	@:optional
	var title : String;
	@:optional
	var clazz : String;
	@:optional
	var style : String;
	var image : String;
	var callback : JQueryWindow.Button -> JQueryWindow.Window -> Void;
};
typedef JQuery = {
	function window(options:JQueryWindow.WindowOptions):JQueryWindow.Window;
};
typedef JQueryStatic = {
	var window : JQueryWindow.Static;
};
