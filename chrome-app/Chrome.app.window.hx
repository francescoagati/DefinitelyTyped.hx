typedef ContentBounds = {
	@:optional
	var left : Float;
	@:optional
	var top : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};
typedef BoundsSpecification = {
	@:optional
	var left : Float;
	@:optional
	var top : Float;
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
};
typedef Bounds = {
	var left : Float;
	var top : Float;
	var width : Float;
	var height : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var maxHeight : Float;
	function setPosition(left:Float, top:Float):Void;
	function setSize(width:Float, height:Float):Void;
	function setMinimumSize(minWidth:Float, minHeight:Float):Void;
	function setMaximumSize(maxWidth:Float, maxHeight:Float):Void;
};
typedef FrameOptions = {
	@:optional
	var type : String;
	@:optional
	var color : String;
	@:optional
	var activeColor : String;
	@:optional
	var inactiveColor : String;
};
typedef CreateWindowOptions = {
	@:optional
	var id : String;
	@:optional
	var innerBounds : BoundsSpecification;
	@:optional
	var outerBounds : BoundsSpecification;
	@:optional
	var minWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var frame : Dynamic;
	@:optional
	var bounds : ContentBounds;
	@:optional
	var alphaEnabled : Bool;
	@:optional
	var state : String;
	@:optional
	var hidden : Bool;
	@:optional
	var resizable : Bool;
	@:optional
	var singleton : Bool;
	@:optional
	var alwaysOnTop : Bool;
	@:optional
	var focused : Bool;
	@:optional
	var visibleOnAllWorkspaces : Bool;
};
typedef AppWindow = {
	var focus : Void -> Void;
	var fullscreen : Void -> Void;
	var isFullscreen : Void -> Bool;
	var minimize : Void -> Void;
	var isMinimized : Void -> Bool;
	var maximize : Void -> Void;
	var isMaximized : Void -> Bool;
	var restore : Void -> Void;
	var moveTo : Float -> Float -> Void;
	var resizeTo : Float -> Float -> Void;
	var drawAttention : Void -> Void;
	var clearAttention : Void -> Void;
	var close : Void -> Void;
	var show : Void -> Void;
	var hide : Void -> Void;
	var getBounds : Void -> ContentBounds;
	var setBounds : ContentBounds -> Void;
	var isAlwaysOnTop : Void -> Bool;
	var setAlwaysOnTop : Bool -> Void;
	var setVisibleOnAllWorkspaces : Bool -> Void;
	var contentWindow : Window;
	var id : String;
	var innerBounds : Bounds;
	var outerBounds : Bounds;
	var onBoundsChanged : WindowEvent;
	var onClosed : WindowEvent;
	var onFullscreened : WindowEvent;
	var onMaximized : WindowEvent;
	var onMinimized : WindowEvent;
	var onRestored : WindowEvent;
};
typedef WindowEvent = {
	function addListener(callback:Void -> Void):Void;
};
extern class Chrome.app.windowTopLevel {
	static function create(url:String, ?options:CreateWindowOptions, ?callback:AppWindow -> Void):Void;
	static function current():AppWindow;
	static function get(id:String):AppWindow;
	static function getAll():Array<AppWindow>;
	static function canSetVisibleOnAllWorkspaces():Bool;
	static var onBoundsChanged : WindowEvent;
	static var onClosed : WindowEvent;
	static var onFullscreened : WindowEvent;
	static var onMaximized : WindowEvent;
	static var onMinimized : WindowEvent;
	static var onRestored : WindowEvent;
}
