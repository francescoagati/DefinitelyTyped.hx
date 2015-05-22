extern class Graphic {
	var attributes : Dynamic;
	var geometry : Geometry;
	var infoTemplate : InfoTemplate;
	var symbol : Symbol;
	var visible : Bool;
	@:overload(function(json:Dynamic):Void { })
	function new(?geometry:Geometry, ?symbol:Symbol, ?attributes:Dynamic, ?infoTemplate:InfoTemplate):Void;
	function attr(name:String, value:String):Graphic;
	function draw():Graphic;
	function getContent():String;
	function getDojoShape():Dynamic;
	function getInfoTemplate():InfoTemplate;
	function getLayer():Layer;
	function getNode():Dynamic;
	function getNodes():Dynamic;
	function getShape():Dynamic;
	function getShapes():Array<Dynamic>;
	function getTitle():String;
	function hide():Void;
	function setAttributes(attributes:Dynamic):Graphic;
	function setGeometry(geometry:Geometry):Graphic;
	function setInfoTemplate(infoTemplate:InfoTemplate):Graphic;
	function setSymbol(symbol:Symbol):Graphic;
	function show():Void;
	function toJson():Dynamic;
}
