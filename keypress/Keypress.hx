typedef ListenerDefaults = {
	var keys : String;
	var prevent_default : Bool;
	var prevent_repeat : Bool;
	var is_unordered : Bool;
	var is_counting : Bool;
	var is_exclusive : Bool;
	var is_solitary : Bool;
	var is_sequence : Bool;
};
typedef Combo = {
	var keys : String;
	var on_keydown : Void -> Dynamic;
	var on_keyup : Void -> Dynamic;
	var on_release : Void -> Dynamic;
	var this : Element;
	var prevent_default : Bool;
	var prevent_repeat : Bool;
	var is_unordered : Bool;
	var is_counting : Bool;
	var is_exclusive : Bool;
	var is_sequence : Bool;
	var is_solitary : Bool;
};
typedef Listener = {
	@:overload(function(element:Element):Listener { })
	@:overload(function():Listener { })
	function new(element:Element, defaults:ListenerDefaults):Listener;
	function simple_combo(keys:String, on_keydown_callback:Void -> Dynamic):Void;
	function counting_combo(keys:String, on_count_callback:Void -> Dynamic):Void;
	function sequence_combo(keys:String, callback:Void -> Dynamic):Void;
	function register_combo(combo:Combo):Void;
	@:overload(function(keys:String):Void { })
	function unregister_combo(combo:Combo):Void;
	function register_many(combos:Array<Combo>):Void;
	@:overload(function(keys:Array<String>):Void { })
	function unregister_many(combos:Array<Combo>):Void;
	function get_registered_combos():Array<Combo>;
	function reset():Void;
	function listen():Void;
	function stop_listening():Void;
};
typedef Keypress = {
	var Listener : Listener;
};
typedef Window = {
	var keypress : Keypress.Keypress;
};
