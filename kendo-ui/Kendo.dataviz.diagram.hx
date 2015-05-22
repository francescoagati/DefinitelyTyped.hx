extern class Circle extends Observable {
	function new(?options:CircleOptions):Void;
	var options : CircleOptions;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef CircleFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef CircleStroke = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef CircleOptions = {
	@:optional
	var name : String;
	@:optional
	var fill : CircleFill;
	@:optional
	var stroke : CircleStroke;
	@:optional
	var center : Dynamic;
	@:optional
	var radius : Float;
};
typedef CircleEvent = {
	var sender : Circle;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Connection extends Observable {
	function new(?options:ConnectionOptions):Void;
	var options : ConnectionOptions;
	@:overload(function(source:kendo.dataviz.diagram.Shape):Void { })
	@:overload(function(source:kendo.dataviz.diagram.Point):Void { })
	@:overload(function(source:kendo.dataviz.diagram.Connector):Void { })
	function source():Dynamic;
	function sourcePoint():kendo.dataviz.diagram.Point;
	@:overload(function(target:kendo.dataviz.diagram.Shape):Void { })
	@:overload(function(target:kendo.dataviz.diagram.Point):Void { })
	@:overload(function(target:kendo.dataviz.diagram.Connector):Void { })
	function target():Dynamic;
	function targetPoint():kendo.dataviz.diagram.Point;
	function select(value:Bool):Void;
	@:overload(function(value:String):Void { })
	function type():Void;
	function points():Dynamic;
	function allPoints():Dynamic;
	function redraw():Void;
}
typedef ConnectionEndCapFill = {
	@:optional
	var color : String;
};
typedef ConnectionEndCapStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ConnectionEndCap = {
	@:optional
	var fill : ConnectionEndCapFill;
	@:optional
	var stroke : ConnectionEndCapStroke;
	@:optional
	var type : String;
};
typedef ConnectionHoverStroke = {
	@:optional
	var color : String;
};
typedef ConnectionHover = {
	@:optional
	var stroke : ConnectionHoverStroke;
};
typedef ConnectionPoint = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef ConnectionStartCapFill = {
	@:optional
	var color : String;
};
typedef ConnectionStartCapStroke = {
	@:optional
	var color : String;
	@:optional
	var dashType : String;
	@:optional
	var width : Float;
};
typedef ConnectionStartCap = {
	@:optional
	var fill : ConnectionStartCapFill;
	@:optional
	var stroke : ConnectionStartCapStroke;
	@:optional
	var type : String;
};
typedef ConnectionStroke = {
	@:optional
	var color : String;
};
typedef ConnectionOptions = {
	@:optional
	var name : String;
	@:optional
	var stroke : ConnectionStroke;
	@:optional
	var hover : ConnectionHover;
	@:optional
	var startCap : ConnectionStartCap;
	@:optional
	var endCap : ConnectionEndCap;
	@:optional
	var points : Array<ConnectionPoint>;
	@:optional
	var selectable : Bool;
};
typedef ConnectionEvent = {
	var sender : Connection;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Connector extends Observable {
	function new(?options:ConnectorOptions):Void;
	var options : ConnectorOptions;
	@:overload(function(position:kendo.dataviz.diagram.Point):Void { })
	function position():kendo.dataviz.diagram.Point;
}
typedef ConnectorFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef ConnectorOptions = {
	@:optional
	var name : String;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var fill : ConnectorFill;
};
typedef ConnectorEvent = {
	var sender : Connector;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Group extends Observable {
	function new(?options:GroupOptions):Void;
	var options : GroupOptions;
	function append(element:Dynamic):Void;
	function clear():Void;
	function remove(element:Dynamic):Void;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef GroupOptions = {
	@:optional
	var name : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef GroupEvent = {
	var sender : Group;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Image extends Observable {
	function new(?options:ImageOptions):Void;
	var options : ImageOptions;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef ImageOptions = {
	@:optional
	var name : String;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var source : String;
};
typedef ImageEvent = {
	var sender : Image;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Line extends Observable {
	function new(?options:LineOptions):Void;
	var options : LineOptions;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef LineStroke = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef LineOptions = {
	@:optional
	var name : String;
	@:optional
	var stroke : LineStroke;
	@:optional
	var from : Dynamic;
	@:optional
	var to : Dynamic;
};
typedef LineEvent = {
	var sender : Line;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Point extends Observable {
	function new(?options:PointOptions):Void;
	var options : PointOptions;
}
typedef PointOptions = {
	@:optional
	var name : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef PointEvent = {
	var sender : Point;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Rect extends Observable {
	function new(?options:RectOptions):Void;
	var options : RectOptions;
}
typedef RectOptions = {
	@:optional
	var name : String;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef RectEvent = {
	var sender : Rect;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Rectangle extends Observable {
	function new(?options:RectangleOptions):Void;
	var options : RectangleOptions;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef RectangleFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef RectangleStroke = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
};
typedef RectangleOptions = {
	@:optional
	var name : String;
	@:optional
	var fill : RectangleFill;
	@:optional
	var height : Float;
	@:optional
	var stroke : RectangleStroke;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef RectangleEvent = {
	var sender : Rectangle;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Shape extends Observable {
	function new(?options:ShapeOptions):Void;
	var options : ShapeOptions;
	@:overload(function(point:kendo.dataviz.diagram.Point):Void { })
	function position():Void;
	function clone():kendo.dataviz.diagram.Shape;
	function select(value:Bool):Void;
	function connections(type:String):Void;
	function getConnector():Void;
	function getPosition(side:String):Void;
	function redraw():Void;
}
typedef ShapeConnector = {
	@:optional
	var name : String;
	@:optional
	var description : String;
	@:optional
	var position : haxe.Constraints.Function;
};
typedef ShapeContent = {
	@:optional
	var text : String;
	@:optional
	var align : String;
};
typedef ShapeEditable = {
	@:optional
	var connect : Bool;
};
typedef ShapeFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef ShapeHoverFill = {
	@:optional
	var color : String;
	@:optional
	var opacity : Float;
};
typedef ShapeHover = {
	@:optional
	var fill : ShapeHoverFill;
};
typedef ShapeRotation = {
	@:optional
	var angle : Float;
};
typedef ShapeStroke = {
	@:optional
	var color : String;
	@:optional
	var width : Float;
	@:optional
	var dashType : String;
};
typedef ShapeOptions = {
	@:optional
	var name : String;
	@:optional
	var id : String;
	@:optional
	var editable : ShapeEditable;
	@:optional
	var path : String;
	@:optional
	var stroke : ShapeStroke;
	@:optional
	var type : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var fill : ShapeFill;
	@:optional
	var hover : ShapeHover;
	@:optional
	var connectors : Array<ShapeConnector>;
	@:optional
	var rotation : ShapeRotation;
	@:optional
	var content : ShapeContent;
	@:optional
	var selectable : Bool;
	@:optional
	var visual : haxe.Constraints.Function;
};
typedef ShapeEvent = {
	var sender : Shape;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class TextBlock extends Observable {
	function new(?options:TextBlockOptions):Void;
	var options : TextBlockOptions;
	@:overload(function(content:String):Void { })
	function content():String;
	@:overload(function(visible:Bool):Void { })
	function visible():Bool;
}
typedef TextBlockOptions = {
	@:optional
	var name : String;
	@:optional
	var color : String;
	@:optional
	var fontFamily : String;
	@:optional
	var fontSize : Float;
	@:optional
	var height : Float;
	@:optional
	var text : String;
	@:optional
	var width : Float;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef TextBlockEvent = {
	var sender : TextBlock;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
