typedef Gfx = {
	var arc : Dynamic;
	var bezierutils : Dynamic;
	var canvas : Dynamic;
	var canvas_attach : Dynamic;
	var canvasext : Dynamic;
	var canvasWithEvents : Dynamic;
	var cm_in_pt : Float;
	var defaultCircle : Dynamic;
	var defaultEllipse : Dynamic;
	var defaultFont : Dynamic;
	var defaultImage : Dynamic;
	var defaultLine : Dynamic;
	var defaultLinearGradient : Dynamic;
	var defaultPath : Dynamic;
	var defaultPattern : Dynamic;
	var defaultPolyline : Dynamic;
	var defaultRadialGradient : Dynamic;
	var defaultRect : Dynamic;
	var defaultStroke : Dynamic;
	var defaultText : Dynamic;
	var defaultTextPath : Dynamic;
	var defaultVectorFont : Dynamic;
	var defaultVectorText : Dynamic;
	var Fill : Dynamic;
	var Font : Dynamic;
	var fx : Dynamic;
	var getDefault : Dynamic;
	var gradient : Dynamic;
	var gradutils : Dynamic;
	var LinearGradient : Dynamic;
	var matrix : Dynamic;
	var mm_in_pt : Float;
	var move : Dynamic;
	var path : Dynamic;
	var pathSvgRegExp : js.RegExp;
	var pathVmlRegExp : js.RegExp;
	var Pattern : Dynamic;
	var RadialGradient : Dynamic;
	var renderer : String;
	var shape : Dynamic;
	var silverlight : Dynamic;
	var silverlight_attach : Dynamic;
	var Stroke : Dynamic;
	var svg : Dynamic;
	var svgext : Dynamic;
	var utils : Dynamic;
	var vectorFontFitting : Dynamic;
	var VectorText : Dynamic;
	var vml : Dynamic;
	function Circle():Void;
	@:overload(function(parentNode:HTMLElement, width:Float, height:String):dojox.gfx.Surface { })
	@:overload(function(parentNode:HTMLElement, width:String, height:Float):dojox.gfx.Surface { })
	@:overload(function(parentNode:HTMLElement, width:Float, height:Float):dojox.gfx.Surface { })
	function createSurface(parentNode:HTMLElement, width:String, height:String):dojox.gfx.Surface;
	function decompose(matrix:dojox.gfx.matrix.Matrix2D):Void;
	function Ellipse():Void;
	function equalSources(a:Dynamic, b:Dynamic):Void;
	function formatNumber(x:Float, addSpace:Bool):String;
	function getVectorFont(url:String):Dynamic;
	function Group():Void;
	function Line():Void;
	function makeFontString(font:Dynamic):String;
	function makeParameters(defaults:Dynamic, update:Dynamic):Dynamic;
	function Matrix2D(arg:Dynamic):Void;
	function Moveable():Void;
	function Mover():Void;
	@:overload(function(color:Array<Dynamic>):Dynamic { })
	@:overload(function(color:String):Dynamic { })
	@:overload(function(color:Dynamic):Dynamic { })
	function normalizeColor(color:dojo._base.Color):Dynamic;
	function normalizedLength(len:String):Float;
	function normalizeParameters(existed:Dynamic, update:Dynamic):Dynamic;
	function Path():Void;
	function Point():Void;
	function Polyline():Void;
	function pt2px(len:Float):Float;
	function px2pt(len:Float):Float;
	function px_in_pt():Float;
	function Rect():Void;
	function Rectangle():Void;
	function splitFontString(str:String):Dynamic;
	function Surface():Void;
	@:overload(function(renderer:Dynamic):Void { })
	function switchTo(renderer:String):Void;
	function Text():Void;
	function TextPath():Void;
	function VectorFont():Void;
};
