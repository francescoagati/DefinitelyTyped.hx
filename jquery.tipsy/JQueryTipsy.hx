typedef Options = {
	@:optional
	var delayIn : Float;
	@:optional
	var delayOut : Float;
	@:optional
	var fade : Bool;
	@:optional
	var fallback : String;
	@:optional
	var gravity : Dynamic;
	@:optional
	var html : Bool;
	@:optional
	var live : Bool;
	@:optional
	var offset : Float;
	@:optional
	var opacity : Float;
	@:optional
	var title : Dynamic;
	@:optional
	var trigger : String;
};
typedef Tipsy = {
	var autoNS : Void -> String;
	var autoWE : Void -> String;
	var autoSWSE : Void -> String;
	var autoNWNE : Void -> String;
};
