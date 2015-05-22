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
	function createSvgNode(?type:Dynamic):Dynamic;
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
	function arc(?x:Dynamic, ?y:Dynamic, ?radius:Dynamic, ?startAngle:Dynamic, ?endAngle:Dynamic, ?anticlockwise:Dynamic):Void;
	@:optional
	function arcSvg(?r1:Dynamic, ?r2:Dynamic, ?rotation:Dynamic, ?large:Dynamic, ?swipe:Dynamic, ?x2:Dynamic, ?y2:Dynamic):Void;
	@:optional
	function arcTo(?x1:Dynamic, ?y1:Dynamic, ?x2:Dynamic, ?y2:Dynamic, ?radiusX:Dynamic, ?radiusY:Dynamic, ?rotation:Dynamic):Void;
	@:optional
	function beginPath():Void;
	@:optional
	function bezierCurveTo(?x1:Dynamic, ?y1:Dynamic, ?x2:Dynamic, ?y2:Dynamic, ?x3:Dynamic, ?y3:Dynamic):Void;
	@:optional
	function clear():Void;
	@:optional
	function closePath():Void;
	@:optional
	function createLinearGradient(?x0:Dynamic, ?y0:Dynamic, ?x1:Dynamic, ?y1:Dynamic):Ext.draw.engine.svgcontext.IGradient;
	@:optional
	function createRadialGradient(?x0:Dynamic, ?y0:Dynamic, ?r0:Dynamic, ?x1:Dynamic, ?y1:Dynamic, ?r1:Dynamic):Ext.draw.engine.svgcontext.IGradient;
	@:optional
	function drawImage(?image:Dynamic, ?sx:Dynamic, ?sy:Dynamic, ?sw:Dynamic, ?sh:Dynamic, ?dx:Dynamic, ?dy:Dynamic, ?dw:Dynamic, ?dh:Dynamic):Void;
	@:optional
	function ellipse(?x:Dynamic, ?y:Dynamic, ?radiusX:Dynamic, ?radiusY:Dynamic, ?rotation:Dynamic, ?startAngle:Dynamic, ?endAngle:Dynamic, ?anticlockwise:Dynamic):Void;
	@:optional
	function fill():Void;
	@:optional
	function fillRect(?x:Dynamic, ?y:Dynamic, ?width:Dynamic, ?height:Dynamic):Void;
	@:optional
	function fillStroke(?attr:Dynamic, ?transformFillStroke:Bool):Void;
	@:optional
	function fillText(?text:Dynamic, ?x:Dynamic, ?y:Dynamic):Void;
	@:optional
	function lineTo(?x:Dynamic, ?y:Dynamic):Void;
	@:optional
	function moveTo(?x:Dynamic, ?y:Dynamic):Void;
	@:optional
	function rect(?x:Dynamic, ?y:Dynamic, ?width:Dynamic, ?height:Dynamic):Void;
	@:optional
	function restore():Void;
	@:optional
	function save():Void;
	@:optional
	function setTransform(?xx:Dynamic, ?yx:Dynamic, ?xy:Dynamic, ?yy:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Void;
	@:optional
	function stroke():Void;
	@:optional
	function strokeRect(?x:Dynamic, ?y:Dynamic, ?width:Dynamic, ?height:Dynamic):Void;
	@:optional
	function strokeText(?text:Dynamic, ?x:Dynamic, ?y:Dynamic):Void;
	@:optional
	function transform(?xx:Dynamic, ?yx:Dynamic, ?xy:Dynamic, ?yy:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Void;
};
