typedef INotify = {
	function show():Void;
	function destroy():Void;
	function close():Void;
	function onShowNotification(e:Event):Void;
	function onCloseNotification():Void;
	function onClickNotification():Void;
	function onErrorNotification():Void;
	function handleEvent(e:Event):Void;
};
typedef INotifyOption = {
	@:optional
	var body : String;
	@:optional
	var icon : String;
	@:optional
	var tag : String;
	@:optional
	var timeout : Float;
	@:optional
	function notifyShow(e:Event):Dynamic;
	@:optional
	var notifyClose : haxe.Constraints.Function;
	@:optional
	var notifyClick : haxe.Constraints.Function;
	@:optional
	var notifyError : haxe.Constraints.Function;
	@:optional
	var permissionGranted : haxe.Constraints.Function;
	@:optional
	var permissionDenied : haxe.Constraints.Function;
};
extern class NotifyjsTopLevel {
	static var Notify : { function new(title:String, ?options:notifyjs.INotifyOption):notifyjs.INotify; function needsPermission():Bool; function requestPermission(?onPermissionGrantedCallback:Void -> Dynamic, ?onPermissionDeniedCallback:Void -> Dynamic):Void; function isSupported():Bool; };
}
extern class NotifyjsTopLevel {
	static var Notify : { function new(title:String, ?options:notifyjs.INotifyOption):notifyjs.INotify; function needsPermission():Bool; function requestPermission(?onPermissionGrantedCallback:Void -> Dynamic, ?onPermissionDeniedCallback:Void -> Dynamic):Void; function isSupported():Bool; };
}
