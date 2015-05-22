typedef IElementSize = {
	var width : Float;
	var height : Float;
};
extern class Graph extends Backbone.Model {
	function addCell(cell:Cell):Void;
	function addCells(cells:Array<Cell>):Void;
	function initialize():Void;
	function fromJSON(json:Dynamic):Void;
	function toJSON():Dynamic;
	function clear():Void;
	function getConnectedLinks(cell:Cell, ?opt:Dynamic):Array<Link>;
	function disconnectLinks(cell:Cell):Void;
	function removeLinks(cell:Cell):Void;
	function findModelsFromPoint(point:{ var x : Float; var y : Float; }):Array<Element>;
}
extern class Cell extends Backbone.Model {
	function toJSON():Dynamic;
	function remove(?options:Dynamic):Void;
	function toFront():Void;
	function toBack():Void;
	function embed(cell:Cell):Void;
	function unembed(cell:Cell):Void;
	function getEmbeddedCells():Array<Cell>;
	function clone(?opt:Dynamic):Backbone.Model;
	function attr(attrs:Dynamic):Cell;
}
extern class Element extends Cell {
	function position(x:Float, y:Float):Element;
	function translate(tx:Float, ?ty:Float):Element;
	function resize(width:Float, height:Float):Element;
	function rotate(angle:Float, options:{ var absolute : Bool; var origin : { var x : Float; var y : Float; }; }):Element;
	function remove():Void;
}
typedef IDefaults = {
	var type : String;
};
extern class Link extends Cell {
	function defaults():IDefaults;
	function disconnect():Link;
	function label(?idx:Float, ?value:Dynamic):Dynamic;
	function remove():Void;
}
typedef IOptions = {
	var width : Float;
	var height : Float;
	var gridSize : Float;
	var perpendicularLinks : Bool;
	var elementView : ElementView;
	var linkView : LinkView;
};
extern class Paper extends Backbone.View<Backbone.Model> {
	var options : IOptions;
	function setDimensions(width:Float, height:Float):Void;
	function scale(sx:Float, ?sy:Float, ?ox:Float, ?oy:Float):Paper;
	function rotate(deg:Float, ?ox:Float, ?oy:Float):Paper;
	function findView(el:Dynamic):CellView;
	function findViewByModel(modelOrId:Dynamic):CellView;
	function findViewsFromPoint(p:{ var x : Float; var y : Float; }):Array<CellView>;
	function findViewsInArea(r:{ var x : Float; var y : Float; var width : Float; var height : Float; }):Array<CellView>;
	function fitToContent(?opt:Dynamic):Void;
}
extern class ElementView extends CellView {
	function scale(sx:Float, sy:Float):Void;
}
extern class CellView extends Backbone.View<Cell> {
	function getBBox():{ var x : Float; var y : Float; var width : Float; var height : Float; };
	function highlight(?el:Dynamic):Void;
	function unhighlight(?el:Dynamic):Void;
	function findMagnet(el:Dynamic):Void;
	function getSelector(el:Dynamic):Void;
	function pointerdblclick(evt:Dynamic, x:Float, y:Float):Void;
	function pointerclick(evt:Dynamic, x:Float, y:Float):Void;
	function pointerdown(evt:Dynamic, x:Float, y:Float):Void;
	function pointermove(evt:Dynamic, x:Float, y:Float):Void;
	function pointerup(evt:Dynamic, x:Float, y:Float):Void;
}
extern class LinkView extends CellView {
	function getConnectionLength():Float;
	function getPointAtLength(length:Float):{ var x : Float; var y : Float; };
}
