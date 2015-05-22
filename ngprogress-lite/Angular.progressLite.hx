typedef INgProgressLite = {
	function set(num:Float):INgProgressLite;
	function get():Float;
	function start():INgProgressLite;
	function inc(?amount:Float):INgProgressLite;
	function done():Void;
};
typedef IConfigurationOptions = {
	var minimum : Float;
	var speed : Float;
	var ease : String;
	var trickleRate : Float;
	var trickleSpeed : Float;
	var template : String;
};
typedef INgProgressLiteProvider = {
	var settings : IConfigurationOptions;
};
