typedef ValidationOptions = {
	@:optional
	var debug : Bool;
	@:optional
	var errorClass : String;
	@:optional
	var errorContainer : String;
	@:optional
	var errorElement : String;
	@:optional
	var errorLabelContainer : String;
	@:optional
	var errorPlacement : JQuery -> JQuery -> Void;
	@:optional
	var focusCleanup : Bool;
	@:optional
	var focusInvalid : Bool;
	@:optional
	var groups : Dynamic;
	@:optional
	var highlight : HTMLElement -> String -> String -> Void;
	@:optional
	var ignore : String;
	@:optional
	var ignoreTitle : Bool;
	@:optional
	var invalidHandler : JQueryEventObject -> Validator -> Void;
	@:optional
	var messages : Dynamic;
	@:optional
	var meta : String;
	@:optional
	var onclick : haxe.extern.EitherType<Bool, haxe.Constraints.Function>;
	@:optional
	var onfocusout : haxe.extern.EitherType<Bool, haxe.Constraints.Function>;
	@:optional
	var onkeyup : haxe.extern.EitherType<Bool, haxe.Constraints.Function>;
	@:optional
	var onsubmit : Bool;
	@:optional
	var rules : Dynamic;
	@:optional
	var showErrors : ErrorDictionary -> Array<ErrorListItem> -> Void;
	@:optional
	var submitHandler : HTMLFormElement -> Void;
	@:optional
	var success : haxe.extern.EitherType<String, { }>;
	@:optional
	var unhighlight : HTMLElement -> String -> String -> Void;
	@:optional
	var validClass : String;
	@:optional
	var wrapper : String;
};
typedef ErrorDictionary = { };
typedef ErrorListItem = {
	var message : String;
	var element : HTMLElement;
};
typedef Validator = {
	@:overload(function(rules:Dynamic):Void { })
	function addClassRules(name:String, rules:Dynamic):Void;
	function addMethod(name:String, method:Dynamic -> HTMLElement -> Dynamic -> Bool, ?message:String):Void;
	function element(element:haxe.extern.EitherType<String, JQuery>):Bool;
	function form():Bool;
	function format(template:String, arguments:haxe.extern.Rest<String>):String;
	function invalidElements():Array<HTMLElement>;
	function numberOfInvalids():Float;
	function resetForm():Void;
	function setDefaults(defaults:ValidationOptions):Void;
	var settings : ValidationOptions;
	function showErrors(errors:Dynamic):Void;
	function hideErrors():Void;
	function valid():Bool;
	function validElements():Array<HTMLElement>;
	function size():Float;
	function focusInvalid():Void;
	var messages : { };
	var errorMap : ErrorDictionary;
	var errorList : Array<ErrorListItem>;
	var methods : { };
};
typedef JQuery = {
	function removeAttrs(attributes:String):Dynamic;
	@:overload(function(command:String):Dynamic { })
	@:overload(function(command:String, rules:String):Dynamic { })
	@:overload(function(command:String, rules:Dynamic):Dynamic { })
	function rules():Dynamic;
	function valid():Bool;
	function validate(?options:ValidationOptions):Validator;
};
typedef JQueryStatic = {
	function format(template:String, arguments:haxe.extern.Rest<String>):String;
	var validator : Validator;
};
