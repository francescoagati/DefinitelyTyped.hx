typedef Animation = {
	function camera(camera:Camera, target:{ }, options:{ }):Float;
};
typedef Camera = {
	var angle : Float;
	function cameraPosition(x:Float, y:Float):{ var x : Float; var y : Float; };
	function goTo(settings:{ }):Void;
	function graphPosition(x:Float, y:Float):{ var x : Float; var y : Float; };
	var ratio : Float;
	var readPrefix : String;
	var x : Float;
	var y : Float;
};
typedef Classes = {
	var configurable : Configurable;
	var graph : Graph;
};
typedef Configurable = {
	@:overload(function(settings:Array<Settings>):Configurable { })
	function new(setting:Settings):Configurable;
};
typedef CustomShapes = {
	function init(sigma:Sigma):Void;
};
typedef DragNodes = { };
typedef Edge = {
	@:optional
	var color : String;
	var id : String;
	@:optional
	var size : Float;
	var source : String;
	var target : String;
};
typedef JsonParser = { };
typedef GexfParser = { };
typedef Graph = {
	function addEdge(edge:Edge):Graph;
	function addNode(node:Node):Graph;
	function addMethod(name:String, method:Dynamic -> Dynamic):Void;
	function clear():Graph;
	@:overload(function(id:String, type:String):Float { })
	@:overload(function(ids:Array<String>):Array<Float> { })
	@:overload(function(ids:Array<String>, type:String):Array<Float> { })
	function degree(id:String):Float;
	function dropEdge(id:String):Graph;
	function dropNode(id:String):Graph;
	@:overload(function(id:String):Edge { })
	@:overload(function(ids:Array<String>):Array<Edge> { })
	function edges():Array<Edge>;
	function kill():Graph;
	@:overload(function(id:String):Node { })
	@:overload(function(ids:Array<String>):Array<Node> { })
	function nodes():Array<Node>;
};
typedef Image = {
	@:optional
	var clip : Float;
	@:optional
	var scale : Float;
	@:optional
	var url : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef Miscellaneous = {
	var animation : Animation;
};
typedef Node = {
	@:optional
	var color : String;
	var id : String;
	@:optional
	var image : Dynamic;
	@:optional
	var label : String;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef Parsers = {
	var json : JsonParser;
	var gexf : GexfParser;
};
typedef Plugins = {
	var dragNodes : DragNodes;
};
typedef Renderer = {
	var container : HTMLElement;
	function refresh():Sigma;
	function render():Sigma;
	function resize():Sigma;
	function settings(settings:Settings):Void;
};
typedef RendererConfigs = {
	@:optional
	var container : Element;
	@:optional
	var id : String;
	@:optional
	var type : String;
};
typedef ShapeLibrary = {
	function enumerate():Dynamic;
};
typedef Sigma = {
	@:overload(function(configs:RendererConfigs):Renderer { })
	function addRenderer():Renderer;
	function bind(event:String, callback:Dynamic -> Void):Void;
	var cameras : Array<Camera>;
	var graph : Graph;
	@:overload(function(renderer:Renderer):Sigma { })
	function killRenderer(renderer:String):Sigma;
	function kill():Void;
	function refresh():Void;
	var renderers : Array<Renderer>;
	@:overload(function(settings:Settings):Void { })
	function settings(key:String):Dynamic;
	function configForceAtlas2(configs:{ }):Void;
	function isForceAtlas2Running():Bool;
	function killForceAtlas2():Void;
	@:overload(function(configs:{ }):Void { })
	function startForceAtlas2():Void;
	function stopForceAtlas2():Void;
};
typedef SigmaConfigs = {
	@:optional
	var container : Element;
	@:optional
	var graph : Graph;
	@:optional
	var id : String;
	@:optional
	var renderers : Array<Renderer>;
	@:optional
	var settings : { };
};
typedef SigmaFactory = {
	@:overload(function(container:String):Sigma { })
	@:overload(function(container:Element):Sigma { })
	@:overload(function(configuration:SigmaConfigs):Sigma { })
	function new():Sigma;
	var classes : Classes;
	var misc : Miscellaneous;
	var parsers : Parsers;
	var plugins : Plugins;
};
typedef Settings = {
	@:optional
	var clone : Bool;
	@:optional
	var immutable : Bool;
	@:optional
	var verbose : Bool;
	@:optional
	var defaultNodeType : String;
	@:optional
	var defaultEdgeType : String;
	@:optional
	var defaultLabelColor : String;
	@:optional
	var defaultEdgeColor : String;
	@:optional
	var defaultNodeColor : String;
	@:optional
	var defaultLabelSize : String;
	@:optional
	var edgeColor : String;
	@:optional
	var minArrowSize : Float;
	@:optional
	var font : String;
	@:optional
	var fontStyle : String;
	@:optional
	var labelAlignment : String;
	@:optional
	var labelColor : String;
	@:optional
	var labelSize : String;
	@:optional
	var labelSizeRatio : String;
	@:optional
	var labelThreshold : Float;
	@:optional
	var webglOversamplingRatio : Float;
	@:optional
	var borderSize : Float;
	@:optional
	var defaultNodeBorderColor : String;
	@:optional
	var hoverFont : Float;
	@:optional
	var hoverFontStyle : String;
	@:optional
	var labelHoverShadow : String;
	@:optional
	var labelHoverShadowColor : String;
	@:optional
	var nodeHoverColor : String;
	@:optional
	var defaultNodeHoverColor : String;
	@:optional
	var labelHoverBGColor : String;
	@:optional
	var defaultHoverLabelBGColor : String;
	@:optional
	var labelHoverColor : String;
	@:optional
	var defaultLabelHoverColor : String;
	@:optional
	var singleHover : Bool;
	@:optional
	var edgeHoverColor : String;
	@:optional
	var edgeHoverSizeRatio : Float;
	@:optional
	var defaultEdgeHoverColor : String;
	@:optional
	var edgeHoverExtremities : Bool;
	@:optional
	var drawLabels : Bool;
	@:optional
	var drawEdges : Bool;
	@:optional
	var drawNodes : Bool;
	@:optional
	var batchEdgesDrawing : Bool;
	@:optional
	var hideEdgesOnMove : Bool;
	@:optional
	var canvasEdgesBatchSize : Float;
	@:optional
	var webglEdgesBatchSize : Float;
	@:optional
	var scalingMode : String;
	@:optional
	var sideMargin : Float;
	@:optional
	var minEdgeSize : Float;
	@:optional
	var maxEdgeSize : Float;
	@:optional
	var minNodeSize : Float;
	@:optional
	var maxNodeSize : Float;
	@:optional
	var touchEnabled : Bool;
	@:optional
	var mouseEnabled : Bool;
	@:optional
	var mouseWheelEnabled : Bool;
	@:optional
	var doubleClickEnabled : Bool;
	@:optional
	var eventsEnabled : Bool;
	@:optional
	var zoomingRatio : Float;
	@:optional
	var doubleClickZoomingRatio : Float;
	@:optional
	var zoomMin : Float;
	@:optional
	var zoomMax : Float;
	@:optional
	var mouseZoomDuration : Float;
	@:optional
	var doubleClickZoomDuration : Float;
	@:optional
	var mouseInertiaDuration : Float;
	@:optional
	var mouseInertiaRatio : Float;
	@:optional
	var touchInertiaDuration : Float;
	@:optional
	var touchInertiaRatio : Float;
	@:optional
	var doubleClickTimeout : Float;
	@:optional
	var doubleTapTimeout : Float;
	@:optional
	var dragTimeout : Float;
	@:optional
	var autoResize : Bool;
	@:optional
	var autoRescale : Dynamic;
	@:optional
	var enableCamera : Bool;
	@:optional
	var enableHovering : Bool;
	@:optional
	var enableEdgeHovering : Bool;
	@:optional
	var edgeHoverPrecision : Float;
	@:optional
	var rescaleIgnoreSize : Bool;
	@:optional
	var skipErrors : Bool;
	@:optional
	var nodesPowRatio : Float;
	@:optional
	var edgesPowRatio : Float;
	@:optional
	var animationsTime : Float;
};
