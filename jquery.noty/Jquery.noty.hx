typedef NotyOptions = {
	@:optional
	var layout : String;
	@:optional
	var theme : String;
	@:optional
	var type : String;
	@:optional
	var text : String;
	@:optional
	var dismissQueue : Bool;
	@:optional
	var template : String;
	@:optional
	var animation : NotyAnimationOptions;
	@:optional
	var timeout : Dynamic;
	@:optional
	var force : Bool;
	@:optional
	var modal : Bool;
	@:optional
	var maxVisible : Float;
	@:optional
	var killer : Bool;
	@:optional
	var closeWith : Array<Dynamic>;
	@:optional
	var callback : NotyCallbackOptions;
	@:optional
	var buttons : Dynamic;
};
typedef NotyAnimationOptions = {
	@:optional
	var open : Dynamic;
	@:optional
	var close : Dynamic;
	@:optional
	var easing : String;
	@:optional
	var speed : Float;
};
typedef NotyCallbackOptions = {
	@:optional
	var onShow : haxe.Constraints.Function;
	@:optional
	var afterShow : haxe.Constraints.Function;
	@:optional
	var onClose : haxe.Constraints.Function;
	@:optional
	var afterClose : haxe.Constraints.Function;
};
typedef NotyStatic = {
	var defaults : NotyOptions;
	function get(id:Dynamic):Dynamic;
	function close(id:Dynamic):Dynamic;
	function clearQueue():Dynamic;
	function closeAll():Dynamic;
	function setText(id:Dynamic, text:String):Dynamic;
	function setType(id:Dynamic, type:String):Dynamic;
};
typedef Noty = {
	function show():Dynamic;
	function close():Dynamic;
	function setText(text:String):Dynamic;
	function setType(type:String):Dynamic;
	function setTimeout(timeout:Float):Dynamic;
	var closed : Bool;
	var shown : Bool;
};
typedef JQueryStatic = {
	var noty : NotyStatic;
};
typedef JQuery = {
	var noty : Noty;
};
extern class Jquery.notyTopLevel {
	static var noty : Noty;
}
