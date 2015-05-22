typedef IDoubleTap = {
	>Ext.event.recognizer.ISingleTouch,
	@:optional
	function getMaxDuration():Float;
	@:optional
	function setMaxDuration(?maxDuration:Float):Void;
};
typedef IDrag = {
	>Ext.event.recognizer.ISingleTouch,
	@:optional
	var minDistance : Float;
	@:optional
	function getMinDistance():Float;
	@:optional
	function setMinDistance(?minDistance:Float):Void;
};
typedef IEdgeSwipe = {
	>Ext.event.recognizer.ISwipe,
	@:optional
	function getMinDistance():Float;
	@:optional
	function setMinDistance(?minDistance:Float):Void;
};
typedef IHorizontalSwipe = {
	>Ext.event.recognizer.ISwipe,
};
typedef ILongPress = {
	>Ext.event.recognizer.ISingleTouch,
	@:optional
	function getMinDuration():Float;
	@:optional
	function setMinDuration(?minDuration:Float):Void;
};
typedef IMultiTouch = {
	>Ext.event.recognizer.ITouch,
};
typedef IPinch = {
	>Ext.event.recognizer.IMultiTouch,
};
typedef IRecognizer = {
	>Ext.IBase,
	>Ext.mixin.IIdentifiable,
	@:optional
	function getCallbackScope():Dynamic;
	@:optional
	function getId():String;
	@:optional
	function getOnFailed():Dynamic;
	@:optional
	function getOnRecognized():Dynamic;
	@:optional
	function setCallbackScope(?callbackScope:Dynamic):Void;
	@:optional
	function setOnFailed(?onFailed:Dynamic):Void;
	@:optional
	function setOnRecognized(?onRecognized:Dynamic):Void;
};
typedef IRotate = {
	>Ext.event.recognizer.IMultiTouch,
};
typedef ISingleTouch = {
	>Ext.event.recognizer.ITouch,
};
typedef ISwipe = {
	>Ext.event.recognizer.ISingleTouch,
	@:optional
	function getMaxDuration():Float;
	@:optional
	function getMaxOffset():Float;
	@:optional
	function getMinDistance():Float;
	@:optional
	function setMaxDuration(?maxDuration:Float):Void;
	@:optional
	function setMaxOffset(?maxOffset:Float):Void;
	@:optional
	function setMinDistance(?minDistance:Float):Void;
};
typedef ITap = {
	>Ext.event.recognizer.ISingleTouch,
	@:optional
	var moveDistance : Float;
	@:optional
	function getMoveDistance():Float;
	@:optional
	function setMoveDistance(?moveDistance:Float):Void;
};
typedef ITouch = {
	>Ext.event.recognizer.IRecognizer,
};
typedef IVerticalSwipe = {
	>Ext.event.recognizer.ISwipe,
};
