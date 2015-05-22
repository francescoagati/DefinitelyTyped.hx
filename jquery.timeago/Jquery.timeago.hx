typedef TimeagoSetings = {
	@:optional
	var refreshMillis : Float;
	@:optional
	var allowFuture : Bool;
	@:optional
	var strings : { @:optional
	var prefixAgo : String; @:optional
	var prefixFromNow : String; @:optional
	var suffixAgo : String; @:optional
	var suffixFromNow : String; @:optional
	var seconds : Dynamic; @:optional
	var minute : Dynamic; @:optional
	var minutes : Dynamic; @:optional
	var hour : Dynamic; @:optional
	var hours : Dynamic; @:optional
	var day : Dynamic; @:optional
	var days : Dynamic; @:optional
	var month : Dynamic; @:optional
	var months : Dynamic; @:optional
	var year : Dynamic; @:optional
	var years : Dynamic; @:optional
	var wordSeparator : String; @:optional
	var numbers : Array<Dynamic>; };
};
typedef TimeagoStatic = {
	var settings : TimeagoSetings;
	@:overload(function(distanceMillis:Float):String { })
	function inWords(distanceMillis:Date):String;
	function parse(iso8601:String):Date;
	@:overload(function(element:JQuery):Date { })
	function datetime(element:Element):Date;
	@:overload(function(element:JQuery):Bool { })
	function isTime(element:Element):Bool;
};
typedef Timeago = { };
typedef JQueryStatic = {
	var timeago : TimeagoStatic;
};
typedef JQuery = {
	var timeago : Timeago;
};
