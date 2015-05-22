typedef Audioboolean = {
	var ogg : Bool;
	var mp3 : Bool;
	var wav : Bool;
	var m4a : Bool;
};
typedef Videoboolean = {
	var ogg : Bool;
	var h264 : Bool;
	var webm : Bool;
};
typedef Inputboolean = {
	var autocomplete : Bool;
	var autofocus : Bool;
	var list : Bool;
	var placeholder : Bool;
	var max : Bool;
	var min : Bool;
	var multiple : Bool;
	var pattern : Bool;
	var required : Bool;
	var step : Bool;
};
typedef InputTypesboolean = {
	var search : Bool;
	var tel : Bool;
	var url : Bool;
	var email : Bool;
	var datetime : Bool;
	var date : Bool;
	var month : Bool;
	var week : Bool;
	var time : Bool;
	var datetimelocal : Bool;
	var number : Bool;
	var range : Bool;
	var color : Bool;
};
typedef ModernizrStatic = {
	var autofocus : Bool;
	var fontface : Bool;
	var backgroundsize : Bool;
	var borderimage : Bool;
	var borderradius : Bool;
	var boxshadow : Bool;
	var flexbox : Bool;
	var hsla : Bool;
	var multiplebgs : Bool;
	var opacity : Bool;
	var rgba : Bool;
	var textshadow : Bool;
	var cssanimations : Bool;
	var csscolumns : Bool;
	var generatedcontent : Bool;
	var cssgradients : Bool;
	var cssreflections : Bool;
	var csstransforms : Bool;
	var csstransforms3d : Bool;
	var csstransitions : Bool;
	var applicationcache : Bool;
	var canvas : Bool;
	var canvastext : Bool;
	var draganddrop : Bool;
	var hashchange : Bool;
	var history : Bool;
	var audio : Audioboolean;
	var video : Videoboolean;
	var indexeddb : Bool;
	var input : Inputboolean;
	var inputtypes : InputTypesboolean;
	var localstorage : Bool;
	var postmessage : Bool;
	var sessionstorage : Bool;
	var websockets : Bool;
	var websqldatabase : Bool;
	var webworkers : Bool;
	var geolocation : Bool;
	var inlinesvg : Bool;
	var smil : Bool;
	var svg : Bool;
	var svgclippaths : Bool;
	var touch : Bool;
	var webgl : Bool;
	@:overload(function(resourceObject:Dynamic):Void { })
	@:overload(function(resourceString:String):Void { })
	function load(resources:Array<Dynamic>):Void;
	@:overload(function(property:String):Bool { })
	@:overload(function(property:String, obj:Dynamic, ?element:Dynamic):Bool { })
	function prefixed():Bool;
	function mq(mediaQuery:String):Bool;
	@:overload(function(feature:String, test:Bool):Void { })
	@:overload(function(feature:Dynamic):Void { })
	function addTest(feature:String, test:Void -> Dynamic):Void;
	function testStyles(rule:String, callback:HTMLDivElement -> String -> Void, ?nodes:Float, ?testnames:Array<String>):Bool;
	function testProp(property:String):Bool;
	@:overload(function(property:String, obj:Dynamic, element:Dynamic):Bool { })
	function testAllProps(property:String, ?prefix:String):Bool;
	function hasEvent(eventName:String, ?element:Dynamic):Bool;
};
extern class ModernizrTopLevel {
	static var Modernizr : ModernizrStatic;
}
