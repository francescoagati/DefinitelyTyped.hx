extern class EntityCollection {
	function new(options:EntityCollectionOptions):Void;
	function clear():Void;
	function get(index:Float):Entity;
	function getLength():Float;
	function getVisible():Bool;
	function getZIndex():Float;
	function indexOf(entity:Entity):Float;
	function insert(entity:Entity, index:Float):Void;
	function pop():Entity;
	function push(entity:Entity):Void;
	function remove(entity:Entity):Entity;
	function removeAt(index:Float):Entity;
	function setOptions(options:EntityCollectionOptions):Void;
	function toString():String;
	var entityAdded : EntityChangeArgs -> Dynamic;
	var entityChanged : EntityChangeArgs -> Dynamic;
	var entityRemoved : EntityChangeArgs -> Dynamic;
}
extern class Polygon {
	function new(locations:Array<Location>, ?options:PolygonOptions):Void;
	function getFillColor():Color;
	function getLocations():Array<Location>;
	function getStrokeColor():Color;
	function getStrokeDashArray():String;
	function getStrokeThickness():Float;
	function getVisible():Bool;
	function setLocations(locations:Array<Location>):Void;
	function setOptions(options:PolylineOptions):Void;
	function toString():String;
	var click : MouseEventArgs -> Void;
	var dbclick : MouseEventArgs -> Void;
	var entitychanged : Entity -> Void;
	var mousedown : MouseEventArgs -> Void;
	var mouseout : MouseEventArgs -> Void;
	var mouseover : MouseEventArgs -> Void;
	var mouseup : MouseEventArgs -> Void;
	var rightclick : MouseEventArgs -> Void;
}
