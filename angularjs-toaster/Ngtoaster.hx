typedef IToasterService = {
	@:overload(function(?type:String, ?title:String, ?body:String, ?timeout:Float, ?bodyOutputType:String, ?clickHandler:EventListener, ?toasterId:Float, ?showCloseButton:Bool):Void { })
	function pop(params:IPopParams):Void;
	@:overload(function(?title:String, ?body:String, ?timeout:Float, ?bodyOutputType:String, ?clickHandler:EventListener, ?toasterId:Float):Void { })
	function error(params:IPopParams):Void;
	function into(params:IPopParams):Void;
	function info(?title:String, ?body:String, ?timeout:Float, ?bodyOutputType:String, ?clickHandler:EventListener, ?toasterId:Float):Void;
	@:overload(function(?title:String, ?body:String, ?timeout:Float, ?bodyOutputType:String, ?clickHandler:EventListener, ?toasterId:Float):Void { })
	function wait(params:IPopParams):Void;
	@:overload(function(?title:String, ?body:String, ?timeout:Float, ?bodyOutputType:String, ?clickHandler:EventListener, ?toasterId:Float):Void { })
	function success(params:IPopParams):Void;
	@:overload(function(?title:String, ?body:String, ?timeout:Float, ?bodyOutputType:String, ?clickHandler:EventListener, ?toasterId:Float):Void { })
	function warning(params:IPopParams):Void;
	function clear():Void;
	var toast : IToast;
};
typedef IToasterEventRegistry = {
	function setup():Void;
	function subscribeToNewToastEvent(onNewToast:IToastEventListener):Void;
	function subscribeToClearToastsEvent(onClearToasts:IToastEventListener):Void;
	function unsubscribeToNewToastEvent(onNewToast:IToastEventListener):Void;
	function unsubscribeToClearToastsEvent(onClearToasts:IToastEventListener):Void;
};
typedef IPopParams = {
	>IToast,
	@:optional
	var toasterId : Float;
};
typedef IToastEventListener = { };
typedef IToast = {
	@:optional
	var type : String;
	@:optional
	var title : String;
	@:optional
	var body : String;
	@:optional
	var timeout : Float;
	@:optional
	var bodyOutputType : String;
	@:optional
	var clickHandler : EventListener;
	@:optional
	var showCloseButton : Bool;
};
typedef IToasterConfig = {
	@:optional
	var limit : Float;
	@:optional
	var tap-to-dismiss : Bool;
	@:optional
	var close-button : Bool;
	@:optional
	var newest-on-top : Bool;
	@:optional
	var time-out : Float;
	@:optional
	var icon-classes : IIconClasses;
	@:optional
	var body-output-type : String;
	@:optional
	var body-template : String;
	@:optional
	var icon-class : String;
	@:optional
	var position-class : String;
	@:optional
	var title-class : String;
	@:optional
	var message-class : String;
	@:optional
	var prevent-duplicates : Bool;
	@:optional
	var mouseover-timer-stop : Bool;
};
typedef IIconClasses = {
	var error : String;
	var info : String;
	var wait : String;
	var success : String;
	var warning : String;
};
