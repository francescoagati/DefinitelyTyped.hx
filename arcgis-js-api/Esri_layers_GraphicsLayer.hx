extern class GraphicsLayer extends Layer {
	var dataAttributes : Dynamic;
	var graphics : Array<Graphic>;
	var infoTemplate : InfoTemplate;
	var renderer : Renderer;
	var styling : Bool;
	var surfaceType : String;
	@:overload(function(?options:esri.GraphicsLayerOptions):Void { })
	function new():Void;
	function add(graphic:Graphic):Graphic;
	function clear():Void;
	function disableMouseEvents():Void;
	function enableMouseEvents():Void;
	function redraw():Void;
	function remove(graphic:Graphic):Graphic;
	function setInfoTemplate(infoTemplate:InfoTemplate):Void;
	function setOpacity(opacity:Float):Void;
	function setRenderer(renderer:Renderer):Void;
	@:overload(function(type:Dbl-click, listener:{ var target : GraphicsLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-add, listener:{ var graphic : Graphic; var target : GraphicsLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-draw, listener:{ var graphic : Graphic; var target : GraphicsLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-node-add, listener:{ var graphic : Graphic; var node : HTMLElement; var target : GraphicsLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-node-remove, listener:{ var graphic : Graphic; var node : HTMLElement; var target : GraphicsLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Graphic-remove, listener:{ var graphic : Graphic; var target : GraphicsLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Graphics-clear, listener:{ var target : GraphicsLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Mouse-down, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-drag, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-move, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-out, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-over, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-up, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Click, listener:{ var event : Dynamic; var target : GraphicsLayer; } -> Void):esri.Handle;
}
