typedef Options = {
	@:optional
	var color : String;
	@:optional
	var secondaryColor : String;
	@:optional
	var jackColor : String;
	@:optional
	var className : String;
	@:optional
	var disabled : Bool;
	@:optional
	var disabledOpacity : Float;
	@:optional
	var speed : String;
	@:optional
	var size : String;
};
extern class Switchery {
	function new(node:Node, ?options:Switchery.Options):Void;
}
