typedef IPoint = {
	var x : Float;
	var y : Float;
};
typedef IRectangle = {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	function contains(point:IPoint):Bool;
};
typedef ITool = {
	var active : Bool;
	var chart : IChart;
	function mousedown(event:Dynamic):Bool;
	function mousemove(event:Dynamic):Bool;
	function clicked(p:IPoint):Bool;
	function draw():Void;
};
typedef IGradient = {
	var chart : IChart;
	var visible : Bool;
	var colors : Array<String>;
	var direction : String;
	var stops : Array<Float>;
	var offset : IPoint;
};
typedef IShadow = {
	var chart : IChart;
	var visible : Bool;
	var blur : Float;
	var color : String;
	var width : Float;
	var height : Float;
};
typedef IStroke = {
	var chart : IChart;
	var fill : String;
	var size : Float;
	var join : String;
	var cap : String;
	var dash : Array<Float>;
	var gradient : IGradient;
};
typedef IFont = {
	var chart : IChart;
	var style : String;
	var gradient : IGradient;
	var fill : String;
	var stroke : IStroke;
	var shadow : IShadow;
	var textAlign : String;
	var baseLine : String;
	function getSize():Float;
	function setSize(size:Float):Void;
};
typedef IImage = {
	var url : String;
	var chart : IChart;
	var visible : Bool;
};
typedef IFormat = {
	var font : IFont;
	var gradient : IGradient;
	var shadow : IShadow;
	var stroke : IStroke;
	var round : IPoint;
	var transparency : Float;
	var image : IImage;
	var fill : String;
	function textHeight(text:String):Float;
	function textWidth(text:String):Float;
	function drawText(bounds:IRectangle, text:String):Dynamic;
	function rectangle(x:Float, y:Float, width:Float, height:Float):Dynamic;
	function poligon(points:Array<IPoint>):Dynamic;
	function ellipse(x:Float, y:Float, width:Float, height:Float):Dynamic;
};
typedef IMargins = {
	var left : Float;
	var top : Float;
	var right : Float;
	var bottom : Float;
};
typedef IAnnotation = {
	>ITool,
	var position : IPoint;
	var margins : IMargins;
	var items : Array<IAnnotation>;
	var bounds : IRectangle;
	var visible : Bool;
	var transparent : Bool;
	var text : String;
	var format : IFormat;
	function add(text:String):IAnnotation;
	function resize():Void;
	function clicked(point:IPoint):Bool;
	function draw():Void;
};
typedef IPanel = {
	var format : IFormat;
	var transparent : Bool;
	var margins : IMargins;
};
typedef ITitle = {
	>IAnnotation,
	var expand : Bool;
	var padding : Float;
	var transparent : Bool;
};
typedef IPalette = {
	var colors : Array<String>;
	function get(index:Float):String;
};
typedef IArrow = {
	>IFormat,
	var length : Float;
	var underline : Bool;
};
typedef IMarks = {
	>IAnnotation,
	var arrow : IArrow;
	var series : ISeries;
	var style : String;
	var drawEvery : Float;
	var visible : Bool;
};
typedef ISeriesData = {
	var values : Array<Float>;
	var labels : Array<String>;
	var source : Dynamic;
};
typedef ICursor = {
	var cursor : String;
};
typedef ISeriesNoBounds = {
	var data : ISeriesData;
	var marks : IMarks;
	var yMandatory : Bool;
	var horizAxis : String;
	var vertAxis : String;
	var format : IFormat;
	var hover : IFormat;
	var visible : Bool;
	var cursor : ICursor;
	var over : Float;
	var palette : IPalette;
	var colorEach : String;
	var useAxes : Bool;
	var decimals : Float;
	var title : String;
	function toPercent(index:Float):String;
	function markText(index:Float):String;
	function valueText(index:Float):String;
	function associatedToAxis(axis:IAxis):Bool;
	function calc(index:Float, position:IPoint):Void;
	function clicked(position:IPoint):Float;
	function minXValue():Float;
	function maxXValue():Float;
	function minYValue():Float;
	function maxYValue():Float;
	function count():Float;
	function addRandom(count:Float, ?range:Float, ?x:Bool):ISeries;
};
typedef ISeries = {
	>ISeriesNoBounds,
	function bounds(rectangle:IRectangle):Void;
};
typedef IAxisLabels = {
	var chart : IChart;
	var format : IFormat;
	var decimals : Float;
	var padding : Float;
	var separation : Float;
	var visible : Bool;
	var rotation : Float;
	var alternate : Bool;
	var maxWidth : Float;
	var labelStyle : String;
	var dateFormat : String;
	function getLabel(value:Float):String;
	function width(value:Float):Float;
};
typedef IGrid = {
	var chart : IChart;
	var format : IFormat;
	var visible : Bool;
	var lineDash : Bool;
};
typedef ITicks = {
	var chart : IChart;
	var stroke : IStroke;
	var visible : Bool;
	var length : Float;
};
typedef IMinorTicks = {
	>ITicks,
	var count : Float;
};
typedef IAxisTitle = {
	>IAnnotation,
	var padding : Float;
	var transparent : Bool;
};
typedef IAxis = {
	var chart : IChart;
	var visible : Bool;
	var inverted : Bool;
	var horizontal : Bool;
	var otherSize : Bool;
	var bounds : IRectangle;
	var position : Float;
	var format : IFormat;
	var custom : Bool;
	var grid : IGrid;
	var labels : IAxisLabels;
	var ticks : ITicks;
	var minorTicks : IMinorTicks;
	var innerTicks : ITicks;
	var title : IAxisTitle;
	var automatic : Bool;
	var minimum : Float;
	var maximum : Float;
	var increment : Float;
	var log : Bool;
	var startPos : Float;
	var endPos : Float;
	var start : Float;
	var end : Float;
	var axisSize : Float;
	var scale : Float;
	var increm : Float;
	function calc(value:Float):Float;
	function fromPos(position:Float):Float;
	function fromSize(size:Float):Float;
	function hasAnySeries():Bool;
	function scroll(delta:Float):Void;
	function setMinMax(minimum:Float, maximum:Float):Void;
};
typedef IAxes = {
	var chart : IChart;
	var visible : Bool;
	var left : IAxis;
	var top : IAxis;
	var right : IAxis;
	var bottom : IAxis;
	var items : Array<IAxis>;
	function add(horizontal:Bool, otherSide:Bool):IAxis;
};
typedef ISymbol = {
	var chart : IChart;
	var format : IFormat;
	var width : Float;
	var height : Float;
	var padding : Float;
	var visible : Bool;
};
typedef ILegend = {
	var chart : IChart;
	var transparent : Bool;
	var format : IFormat;
	var title : IAnnotation;
	var bounds : IRectangle;
	var position : String;
	var visible : Bool;
	var inverted : Bool;
	var padding : Float;
	var align : Float;
	var fontColor : Bool;
	var dividing : IStroke;
	var over : Float;
	var symbol : ISymbol;
	var itemHeight : Float;
	var innerOff : Float;
	var legendStyle : String;
	var textStyle : String;
	function availRows():Float;
	function itemsCount():Float;
	function totalWidth():Float;
	function showValues():Bool;
	function itemText(series:ISeries, index:Float):String;
	function isVertical():Bool;
};
typedef IScroll = {
	var chart : IChart;
	var active : Bool;
	var enabled : Bool;
	var direction : String;
	var mouseButton : Float;
	var position : IPoint;
};
typedef ISeriesList = {
	var chart : IChart;
	var items : Array<ISeries>;
	function anyUsesAxes():Bool;
	function clicked(position:IPoint):Bool;
	function firstVisible():ISeries;
};
typedef ITools = {
	var chart : IChart;
	var items : Array<ITool>;
	function add(tool:ITool):ITool;
};
typedef IWall = {
	var format : IFormat;
	var visible : Bool;
	var bounds : IRectangle;
};
typedef IWalls = {
	var visible : Bool;
	var left : IWall;
	var right : IWall;
	var bottom : IWall;
	var back : IWall;
};
typedef IZoom = {
	var chart : IChart;
	var active : Bool;
	var direction : String;
	var enabled : Bool;
	var mouseButton : Float;
	var format : IFormat;
	function reset():Void;
};
typedef IChart = {
	function addSeries(series:ISeries):ISeries;
	function draw(?context:CanvasRenderingContext2D):Dynamic;
};
typedef ICustomBar = {
	>ISeries,
	var sideMargins : Float;
	var useOrigin : Bool;
	var origin : Float;
	var offset : Float;
	var barSize : Float;
	var barStyle : String;
	var stacked : String;
};
typedef ISeriesPointer = {
	var chart : IChart;
	var format : IFormat;
	var visible : Bool;
	var colorEach : Bool;
	var style : String;
	var width : Float;
	var height : Float;
};
typedef ICustomSeries = {
	>ISeries,
	var pointer : ISeriesPointer;
	var stacked : String;
	var stairs : Bool;
};
typedef ILine = {
	>ICustomSeries,
	var smooth : Float;
};
typedef ISmoothLine = {
	>ILine,
	var smooth : Float;
};
typedef IArea = {
	>ISeries,
	var useOrigin : Bool;
	var origin : Float;
};
typedef IPie = {
	>ISeries,
	var donut : Float;
	var rotation : Float;
	var sort : String;
	var orderAscending : Bool;
	var explode : Array<Float>;
	var concentric : Bool;
	function calcPos(angle:Float, position:IPoint):Void;
};
typedef IBubbleData = {
	>ISeriesData,
	var radius : Array<Float>;
};
typedef IBubble = {
	>ICustomSeries,
	var data : IBubbleData;
};
typedef IGanttData = {
	>ISeriesData,
	var start : Array<Float>;
	var x : Array<Float>;
	var end : Array<Float>;
};
typedef IGantt = {
	>ISeriesNoBounds,
	var data : IGanttData;
	var dateFormat : String;
	var colorEach : String;
	var height : Float;
	var margin : IPoint;
	function add(index:Float, label:String, start:Float, end:Float):Void;
	function bounds(index:Float, rectangle:IRectangle):Void;
};
typedef ICandleData = {
	>ISeriesData,
	var open : Array<Float>;
	var close : Array<Float>;
	var high : Array<Float>;
	var low : Array<Float>;
};
typedef ICandle = {
	>ICustomSeries,
	var data : ICandleData;
	var higher : IFormat;
	var lower : IFormat;
	var style : String;
};
typedef IDragTool = {
	>ITool,
	var series : ISeries;
};
typedef ICursorTool = {
	>ITool,
	var direction : String;
	var size : IPoint;
	var followMouse : Bool;
	var dragging : Float;
	var format : IFormat;
	var horizAxis : IAxis;
	var vertAxis : IAxis;
	var render : String;
	function over(point:IPoint):Bool;
	function setRender(render:String):Void;
};
typedef IToolTip = {
	>IAnnotation,
	var animated : Float;
	var autoHide : Bool;
	var autoRedraw : Bool;
	var currentSeries : ISeries;
	var currentIndex : Float;
	var delay : Float;
	function hide():Void;
	function refresh(series:ISeries, index:Float):Void;
};
extern class Point {
	var x : Float;
	var y : Float;
}
extern class Chart {
	var axes : IAxes;
	var footer : ITitle;
	var legend : ILegend;
	var panel : IPanel;
	var scroll : IScroll;
	var series : ISeriesList;
	var title : ITitle;
	var tools : ITools;
	var walls : IWalls;
	var zoom : IZoom;
	var bounds : IRectangle;
	var canvas : HTMLCanvasElement;
	var chartRect : IRectangle;
	var palette : IPalette;
	function new(canvas:String):Void;
	function addSeries(series:ISeries):ISeries;
	function getSeries(index:Float):ISeries;
	function removeSeries(series:ISeries):Void;
	function draw(?context:CanvasRenderingContext2D):Dynamic;
	function toImage(image:HTMLImageElement, format:String, quality:Float):Void;
}
extern class TeeTopLevel {
	static var Line : { var prototype : ILine; function new(?values:Array<Float>):ILine; };
	static var PointXY : { var prototype : ICustomSeries; function new(?values:Array<Float>):ICustomSeries; };
	static var Area : { var prototype : IArea; function new(?values:Array<Float>):IArea; };
	static var HorizArea : { var prototype : IArea; function new(?values:Array<Float>):IArea; };
	static var Bar : { var prototype : ICustomBar; function new(?values:Array<Float>):ICustomBar; };
	static var HorizBar : { var prototype : ICustomBar; function new(?values:Array<Float>):ICustomBar; };
	static var Pie : { var prototype : IPie; function new(?values:Array<Float>):IPie; };
	static var Donut : { var prototype : IPie; function new(?values:Array<Float>):IPie; };
	static var Bubble : { var prototype : IBubble; function new(?values:Array<Float>):IBubble; };
	static var Gantt : { var prototype : IGantt; function new(?values:Array<Float>):IGantt; };
	static var Volume : { var prototype : ICustomBar; function new(?values:Array<Float>):ICustomBar; };
	static var Candle : { var prototype : ICandle; function new(?values:Array<Float>):ICandle; };
	static var CursorTool : { var prototype : ICursorTool; function new(?chart:Chart):ICursorTool; };
	static var DragTool : { var prototype : IDragTool; function new(?chart:Chart):IDragTool; };
	static var ToolTip : { var prototype : IToolTip; function new(?chart:Chart):IToolTip; };
}
