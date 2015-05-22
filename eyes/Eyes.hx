typedef InspectorFunction = { };
typedef EyesOptions = {
	@:optional
	var styles : { @:optional
	var all : String; @:optional
	var label : String; @:optional
	var other : String; @:optional
	var key : String; @:optional
	var special : String; @:optional
	var string : String; @:optional
	var number : String; @:optional
	var bool : String; @:optional
	var regexp : String; };
	@:optional
	var pretty : Bool;
	@:optional
	var hideFunctions : Bool;
	@:optional
	var stream : stream.Writable;
	@:optional
	var maxLength : Float;
};
extern class EyesTopLevel {
	static function inspector(?options:EyesOptions):InspectorFunction;
	static function inspect(thing:Dynamic, ?label:String):Void;
}
extern class EyesTopLevel {
	static function inspector(?options:EyesOptions):InspectorFunction;
	static function inspect(thing:Dynamic, ?label:String):Void;
}
