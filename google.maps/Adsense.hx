extern class AdUnit extends MVCObject {
	function new(container:Element, opts:AdUnitOptions):Void;
	function getChannelNumber():String;
	function getContainer():Element;
	function getFormat():AdFormat;
	function getMap():Map;
	function getPosition():ControlPosition;
	function getPublisherId():String;
	function setChannelNumber(channelNumber:String):Void;
	function setFormat(format:AdFormat):Void;
	function setMap(map:Map):Void;
	function setPosition(position:ControlPosition):Void;
}
typedef AdUnitOptions = {
	@:optional
	var channelNumber : String;
	@:optional
	var format : AdFormat;
	@:optional
	var map : Map;
	@:optional
	var position : ControlPosition;
	@:optional
	var publisherId : String;
};
@:enum abstract AdFormat(Int) {
	var BANNER = 0;
	var BUTTON = 1;
	var HALF_BANNER = 2;
	var LARGE_RECTANGLE = 3;
	var LEADERBOARD = 4;
	var MEDIUM_RECTANGLE = 5;
	var SKYSCRAPER = 6;
	var SMALL_RECTANGLE = 7;
	var SMALL_SQUARE = 8;
	var SQUARE = 9;
	var VERTICAL_BANNER = 10;
	var WIDE_SKYSCRAPER = 11;
}
