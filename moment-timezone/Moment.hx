typedef Moment = {
	@:overload(function(timezone:String):Moment { })
	function tz():String;
};
typedef MomentStatic = {
	var tz : MomentTimezone;
};
typedef MomentZone = {
	var name : String;
	var abbrs : Array<String>;
	var untils : Array<Float>;
	var offsets : Array<Float>;
	function abbr(timestamp:Float):String;
	function offset(timestamp:Float):Float;
	function parse(timestamp:Float):Float;
};
typedef MomentTimezone = {
	function zone(timezone:String):MomentZone;
	@:overload(function(packedZoneString:Array<String>):Void { })
	function add(packedZoneString:String):Void;
	@:overload(function(packedLinkString:Array<String>):Void { })
	function link(packedLinkString:String):Void;
	function load(data:{ var version : String; var links : Array<String>; var zones : Array<String>; }):Void;
	function names():Array<String>;
};
