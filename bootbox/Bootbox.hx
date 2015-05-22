typedef BootboxAlertOptions = {
	var message : String;
	@:optional
	var callback : Void -> Dynamic;
};
typedef BootboxConfirmOptions = {
	var message : String;
	@:optional
	var callback : Bool -> Dynamic;
};
typedef BootboxPromptOptions = {
	var message : String;
	@:optional
	var callback : String -> Dynamic;
};
typedef BootboxButton = {
	@:optional
	var label : String;
	@:optional
	var className : String;
	@:optional
	var callback : Void -> Dynamic;
};
typedef BootboxDialogOptions = {
	var message : haxe.extern.EitherType<String, Element>;
	@:optional
	var title : haxe.extern.EitherType<String, Element>;
	@:optional
	var callback : Bool -> Dynamic;
	@:optional
	var show : Bool;
	@:optional
	var onEscape : Void -> Dynamic;
	@:optional
	var backdrop : Bool;
	@:optional
	var closeButton : Bool;
	@:optional
	var animate : Bool;
	@:optional
	var className : String;
	@:optional
	var buttons : Dynamic;
};
typedef BootboxDefaultOptions = {
	@:optional
	var locale : String;
	@:optional
	var show : Bool;
	@:optional
	var backdrop : Bool;
	@:optional
	var closeButton : Bool;
	@:optional
	var animate : Bool;
	@:optional
	var className : String;
};
typedef BootboxStatic = {
	@:overload(function(options:BootboxAlertOptions):Void { })
	function alert(message:String, ?callback:Void -> Void):Void;
	@:overload(function(options:BootboxConfirmOptions):Void { })
	function confirm(message:String, ?callback:Bool -> Void):Void;
	@:overload(function(options:BootboxPromptOptions):Void { })
	function prompt(message:String, ?callback:String -> Void):Void;
	@:overload(function(options:BootboxDialogOptions):Void { })
	function dialog(message:String, ?callback:String -> Void):Void;
	function setDefaults(options:BootboxDefaultOptions):Void;
	function hideAll():Void;
};
extern class BootboxTopLevel {
	static var bootbox : BootboxStatic;
}
