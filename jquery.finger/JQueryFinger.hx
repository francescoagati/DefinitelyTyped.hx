typedef JQueryFingerOptions = {
	var pressDuration : Float;
	var doubleTapInterval : Float;
	var flickDuration : Float;
	var motionThreshhold : Float;
	var preventDefault : Bool;
};
typedef JQueryFingerEventObject = {
	>JQueryEventObject,
	var x : Float;
	var y : Float;
	var dx : Float;
	var dy : Float;
	var adx : Float;
	var ady : Float;
	var orientation : String;
	var direction : Float;
};
typedef JQuery = {
	@:overload(function(events:Doubletap, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:Press, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:Drag, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:Flick, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:Tap, data:Dynamic, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:Doubletap, data:Dynamic, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:Press, data:Dynamic, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:Drag, data:Dynamic, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	@:overload(function(events:Flick, data:Dynamic, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery { })
	function on(events:Tap, handler:JQueryFingerEventObject -> haxe.extern.Rest<Dynamic> -> Dynamic):JQuery;
};
typedef JQueryStatic = {
	var Finger : JQueryFinger.JQueryFingerOptions;
};
