typedef ICanvas = {
	>Ext.draw.ISurface,
	@:optional
	var highPrecision : Bool;
	@:optional
	function clear():Void;
	@:optional
	function clearTransform():Void;
	@:optional
	function destroy():Void;
	@:optional
	function getHighPrecision():Bool;
	@:optional
	function initElement():Void;
	@:optional
	function setHighPrecision(?highPrecision:Bool):Void;
};
typedef ISvg = {
	>Ext.draw.ISurface,
	@:optional
	var highPrecision : Bool;
	@:optional
	function clear():Void;
	@:optional
	function clearTransform():Void;
	@:optional
	function createSvgNode(?type:String):Dynamic;
	@:optional
	function destroy(?path:Dynamic, ?matrix:Dynamic, ?band:Dynamic):Void;
	@:optional
	function getHighPrecision():Bool;
	@:optional
	function remove(?sprite:Dynamic, ?destroySprite:Dynamic):Void;
	@:optional
	function renderSprite(?sprite:Ext.draw.sprite.ISprite):Bool;
	@:optional
	function setHighPrecision(?highPrecision:Bool):Void;
};
typedef ISvgContext = {
	>Ext.IBase,
	@:optional
	function arc(?x:Float, ?y:Float, ?radius:Float, ?startAngle:Float, ?endAngle:Float, ?anticlockwise:Float):Void;
	@:optional
	function arcSvg(?r1:Float, ?r2:Float, ?rotation:Float, ?large:Float, ?swipe:Float, ?x2:Float, ?y2:Float):Void;
	@:optional
	function arcTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?radiusX:Float, ?radiusY:Float, ?rotation:Float):Void;
	@:optional
	function beginPath():Void;
	@:optional
	function bezierCurveTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?x3:Float, ?y3:Float):Void;
	@:optional
	function clear():Void;
	@:optional
	function closePath():Void;
	@:optional
	function createLinearGradient(?x0:Float, ?y0:Float, ?x1:Float, ?y1:Float):Ext.draw.engine.svgcontext.IGradient;
	@:optional
	function createRadialGradient(?x0:Float, ?y0:Float, ?r0:Float, ?x1:Float, ?y1:Float, ?r1:Float):Ext.draw.engine.svgcontext.IGradient;
	@:optional
	function drawImage(?image:HTMLElement, ?sx:Float, ?sy:Float, ?sw:Float, ?sh:Float, ?dx:Float, ?dy:Float, ?dw:Float, ?dh:Float):Void;
	@:optional
	function ellipse(?x:Float, ?y:Float, ?radiusX:Float, ?radiusY:Float, ?rotation:Float, ?startAngle:Float, ?endAngle:Float, ?anticlockwise:Float):Void;
	@:optional
	function fill():Void;
	@:optional
	function fillRect(?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
	@:optional
	function fillStroke(?attr:Dynamic, ?transformFillStroke:Bool):Void;
	@:optional
	function fillText(?text:String, ?x:Float, ?y:Float):Void;
	@:optional
	function lineTo(?x:Float, ?y:Float):Void;
	@:optional
	function moveTo(?x:Float, ?y:Float):Void;
	@:optional
	function rect(?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
	@:optional
	function restore():Void;
	@:optional
	function save():Void;
	@:optional
	function setTransform(?xx:Float, ?yx:Float, ?xy:Float, ?yy:Float, ?dx:Float, ?dy:Float):Void;
	@:optional
	function stroke():Void;
	@:optional
	function strokeRect(?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
	@:optional
	function strokeText(?text:String, ?x:Float, ?y:Float):Void;
	@:optional
	function transform(?xx:Float, ?yx:Float, ?xy:Float, ?yy:Float, ?dx:Float, ?dy:Float):Void;
};
