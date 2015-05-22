typedef JQueryTinyCarouselOptions = {
	@:optional
	var start : Float;
	@:optional
	var axis : String;
	@:optional
	var display : Float;
	@:optional
	var rewind : Bool;
	@:optional
	var controls : Bool;
	@:optional
	var pager : Bool;
	@:optional
	var interval : Bool;
	@:optional
	var intervaltime : Float;
	@:optional
	var animation : Bool;
	@:optional
	var duration : Float;
	@:optional
	var callback : HTMLElement -> Float -> Void;
};
typedef JQuery = {
	function tinycarousel(?options:JQueryTinyCarousel.JQueryTinyCarouselOptions):JQuery;
	function tinycarousel_move(index:Float):Void;
	function tinycarousel_start():Void;
	function tinycarousel_stop():Void;
};
