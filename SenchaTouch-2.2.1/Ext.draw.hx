typedef IAnimator = {
	>Ext.IBase,
};
extern class Animator {
	static var self : Ext.IClass;
	static function add(?animation:Dynamic):Void;
	static function addFrameCallback(?callback:Dynamic, ?scope:Dynamic):String;
	static function animationTime():Float;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function cancel(?id:Dynamic):Void;
	static function contains(?animation:Dynamic):Bool;
	static function destroy():Void;
	static function empty():Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function remove(?animation:Dynamic):Void;
	static function removeFrameCallback(?id:Dynamic):Void;
	static function schedule(?callback:Dynamic, ?scope:Dynamic):String;
	static function statics():Ext.IClass;
	static function step(?frameTime:Float):Void;
}
typedef IColor = {
	>Ext.IBase,
	@:optional
	var lightnessFactor : Float;
	@:optional
	function createDarker(?factor:Float):Ext.draw.IColor;
	@:optional
	function createLighter(?factor:Float):Ext.draw.IColor;
	@:optional
	function getGrayscale():Float;
	@:optional
	function getHSL(?target:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function setFromString(?str:String):Dynamic;
	@:optional
	function setHSL(?h:Float, ?s:Float, ?l:Float):Dynamic;
	@:optional
	function toHex(?color:Dynamic):String;
	@:optional
	function toString():String;
};
extern class Color {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create(?red:Dynamic, ?green:Float, ?blue:Float, ?alpha:Float):Ext.draw.IColor;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function fly(?red:Dynamic, ?green:Float, ?blue:Float, ?alpha:Float):Ext.draw.IColor;
	static function fromHSL(?h:Float, ?s:Float, ?l:Float):Ext.draw.IColor;
	static function fromString(?string:String):Ext.draw.IColor;
	static function getName():String;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IComponent = {
	>Ext.IContainer,
	@:optional
	var autoSize : Bool;
	@:optional
	var cls : Dynamic;
	@:optional
	var defaultType : String;
	@:optional
	var fitSurface : Bool;
	@:optional
	var resizeHandler : Dynamic;
	@:optional
	var viewBox : Bool;
	@:optional
	function destroy():Void;
	@:optional
	function getAutoSize():Bool;
	@:optional
	function getBackground():Dynamic;
	@:optional
	function getCls():String;
	@:optional
	function getFitSurface():Bool;
	@:optional
	function getResizeHandler():Dynamic;
	@:optional
	function getSprites():Dynamic;
	@:optional
	function getSurface(?id:String):Ext.draw.ISurface;
	@:optional
	function getViewBox():Bool;
	@:optional
	function initialize():Void;
	@:optional
	function onPlaceWatermark():Void;
	@:optional
	function renderFrame():Void;
	@:optional
	function setAutoSize(?autoSize:Bool):Void;
	@:optional
	function setBackground(?background:Dynamic):Void;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setFitSurface(?fitSurface:Bool):Void;
	@:optional
	function setResizeHandler(?resizeHandler:Dynamic):Void;
	@:optional
	function setSprites(?sprites:Dynamic):Void;
	@:optional
	function setViewBox(?viewBox:Bool):Void;
};
typedef IDraw = {
	>Ext.IBase,
};
extern class Draw {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function degrees(?radian:Float):Float;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isBBoxIntersect(?bbox1:Dynamic, ?bbox2:Dynamic, ?padding:Dynamic):Bool;
	static function rad(?degrees:Float):Float;
	static function reflectFn(?a:Dynamic):Dynamic;
	static function spline(?points:Array<Dynamic>):Void;
	static function statics():Ext.IClass;
}
typedef IGroup = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	function add(?sprite:Ext.draw.sprite.ISprite):Void;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addAll(?sprites:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clear(?destroySprite:Bool):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function each(?fn:Dynamic):Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function get(?id:Dynamic):Ext.draw.sprite.ISprite;
	@:optional
	function getAt(?index:Float):Ext.draw.sprite.ISprite;
	@:optional
	function getBBox(?isWithTransform:Dynamic):Void;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getSurface():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function hide(?o:Bool):Void;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function remove(?sprite:Ext.draw.sprite.ISprite, ?destroySprite:Bool):Void;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setAttributes(?o:Dynamic):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setDirty():Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setSurface(?surface:Dynamic):Void;
	@:optional
	function show(?o:Bool):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef ILimitedCache = {
	>Ext.IBase,
	@:optional
	var feeder : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var scope : Dynamic;
	@:optional
	function clear():Void;
	@:optional
	function get(id:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:optional
	function getFeeder():Dynamic;
	@:optional
	function getLimit():Float;
	@:optional
	function getScope():Dynamic;
	@:optional
	function setFeeder(?feeder:Dynamic):Float;
	@:optional
	function setLimit(?limit:Float):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
};
typedef IMatrix = {
	>Ext.IBase,
	@:optional
	var a : Float;
	@:optional
	function append(?xx:Dynamic, ?xy:Dynamic, ?yx:Dynamic, ?yy:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Ext.draw.IMatrix;
	@:optional
	function appendMatrix(?matrix:Ext.draw.IMatrix):Ext.draw.IMatrix;
	@:optional
	function clone():Ext.draw.IMatrix;
	@:optional
	function equals(?matrix:Ext.draw.IMatrix):Bool;
	@:optional
	function flipX():Ext.draw.IMatrix;
	@:optional
	function flipY():Ext.draw.IMatrix;
	@:optional
	function getDX():Float;
	@:optional
	function getDY():Float;
	@:optional
	function getScaleX():Float;
	@:optional
	function getScaleY():Float;
	@:optional
	function getXX():Float;
	@:optional
	function getXY():Float;
	@:optional
	function getYX():Float;
	@:optional
	function getYY():Float;
	@:optional
	function inverse(?target:Ext.draw.IMatrix):Ext.draw.IMatrix;
	@:optional
	function isIdentity():Bool;
	@:optional
	function multiply(?matrix:Ext.draw.IMatrix):Ext.draw.IMatrix;
	@:optional
	function prepend(?xx:Dynamic, ?xy:Dynamic, ?yx:Dynamic, ?yy:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Ext.draw.IMatrix;
	@:optional
	function prependMatrix(?matrix:Ext.draw.IMatrix):Ext.draw.IMatrix;
	@:optional
	function reset():Ext.draw.IMatrix;
	@:optional
	function rotate(?angle:Float, ?rcx:Dynamic, ?rcy:Dynamic, ?prepend:Bool):Ext.draw.IMatrix;
	@:optional
	function rotateFromVector(?x:Float, ?y:Float, ?prepend:Bool):Ext.draw.IMatrix;
	@:optional
	function scale(?sx:Float, ?sy:Float, ?scx:Float, ?scy:Float, ?prepend:Bool):Ext.draw.IMatrix;
	@:optional
	function set(?xx:Float, ?xy:Float, ?yx:Float, ?yy:Float, ?dx:Float, ?dy:Float):Ext.draw.IMatrix;
	@:optional
	function skewX(?angle:Float):Ext.draw.IMatrix;
	@:optional
	function skewY(?angle:Float):Ext.draw.IMatrix;
	@:optional
	function split():Dynamic;
	@:optional
	function toArray():Array<Dynamic>;
	@:optional
	function toContext(?ctx:Dynamic):Ext.draw.IMatrix;
	@:optional
	function toString():Array<Dynamic>;
	@:optional
	function toSvg():String;
	@:optional
	function toVerticalArray():Dynamic;
	@:optional
	function transformBBox(?bbox:Dynamic, ?radius:Float, ?target:Dynamic):Dynamic;
	@:optional
	function transformList(?list:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function transformPoint(?point:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function translate(?x:Float, ?y:Float, ?prepend:Bool):Ext.draw.IMatrix;
	@:optional
	function x(?x:Float, ?y:Float):Float;
	@:optional
	function y(?x:Float, ?y:Float):Float;
};
extern class Matrix {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create(?mat:Dynamic):Ext.draw.IMatrix;
	static function createAffineMatrixFromTwoPair(?x0:Dynamic, ?y0:Dynamic, ?x1:Dynamic, ?y1:Dynamic, ?x0p:Dynamic, ?y0p:Dynamic, ?x1p:Dynamic, ?y1p:Dynamic):Void;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function createPanZoomFromTwoPair(?x0:Dynamic, ?y0:Dynamic, ?x1:Dynamic, ?y1:Dynamic, ?x0p:Dynamic, ?y0p:Dynamic, ?x1p:Dynamic, ?y1p:Dynamic):Void;
	static function fly(?elements:Array<Dynamic>):Ext.draw.IMatrix;
	static function getName():String;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IPath = {
	>Ext.IBase,
	@:optional
	function arc(?x:Dynamic, ?y:Dynamic, ?radius:Dynamic, ?startAngle:Dynamic, ?endAngle:Dynamic, ?anticlockwise:Dynamic):Void;
	@:optional
	function arcSvg(?rx:Dynamic, ?ry:Dynamic, ?rotation:Dynamic, ?fA:Dynamic, ?fS:Dynamic, ?x2:Dynamic, ?y2:Dynamic):Void;
	@:optional
	function arcTo(?x1:Float, ?y1:Float, ?x2:Float, ?y2:Float, ?rx:Float, ?ry:Float, ?rotation:Float):Void;
	@:optional
	function bezierCurveTo(?cx1:Float, ?cy1:Float, ?cx2:Float, ?cy2:Float, ?x:Float, ?y:Float):Void;
	@:optional
	function clear():Void;
	@:optional
	function clone():Ext.draw.IPath;
	@:optional
	function closePath():Void;
	@:optional
	function ellipse(?cx:Dynamic, ?cy:Dynamic, ?radiusX:Dynamic, ?radiusY:Dynamic, ?rotation:Dynamic, ?startAngle:Dynamic, ?endAngle:Dynamic, ?anticlockwise:Dynamic):Void;
	@:optional
	function fromStripes(?stripes:Array<Dynamic>):Void;
	@:optional
	function fromSvgString(?pathString:Dynamic):Void;
	@:optional
	function getDimension(?target:Dynamic):Dynamic;
	@:optional
	function getDimensionWithTransform(?matrix:Ext.draw.IMatrix, ?target:Dynamic):Dynamic;
	@:optional
	function isPointInPath(?x:Dynamic, ?y:Dynamic):Bool;
	@:optional
	function lineTo(?x:Float, ?y:Float):Void;
	@:optional
	function moveTo(?x:Float, ?y:Float):Void;
	@:optional
	function quadraticCurveTo(?cx:Float, ?cy:Float, ?x:Float, ?y:Float):Void;
	@:optional
	function rect(?x:Dynamic, ?y:Dynamic, ?width:Dynamic, ?height:Dynamic):Void;
	@:optional
	function toString():String;
	@:optional
	function toStripes(?target:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function transform(?matrix:Ext.draw.IMatrix):Void;
};
typedef ISegmentTree = {
	>Ext.IBase,
	@:optional
	function getAggregation(?min:Float, ?max:Float, ?estStep:Float):Dynamic;
	@:optional
	function getStrategy():String;
	@:optional
	function setData(?dataX:Dynamic, ?dataOpen:Dynamic, ?dataHigh:Dynamic, ?dataLow:Dynamic, ?dataClose:Dynamic):Void;
	@:optional
	function setStrategy(?strategy:String):Void;
};
typedef ISolver = {
	>Ext.IBase,
};
extern class Solver {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function cubicFunction(?a:Dynamic, ?b:Dynamic, ?c:Dynamic, ?d:Dynamic):Void;
	static function cubicRoot(?number:Dynamic):Void;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function linearFunction(?a:Dynamic, ?b:Dynamic):Void;
	static function quadraticFunction(?a:Dynamic, ?b:Dynamic, ?c:Dynamic):Void;
	static function statics():Ext.IClass;
}
typedef ISurface = {
	>Ext.IComponent,
	@:optional
	var background : Dynamic;
	@:optional
	var dirty : Bool;
	@:optional
	var groups : Array<Dynamic>;
	@:optional
	var items : Ext.draw.IGroup;
	@:optional
	var region : Array<Dynamic>;
	@:optional
	var devicePixelRatio : Dynamic;
	@:optional
	function add():Void;
	@:optional
	function clear():Void;
	@:optional
	function destroy():Void;
	@:optional
	function getBBox(?sprite:Dynamic, ?isWithoutTransform:Dynamic):Dynamic;
	@:optional
	function getBackground():Dynamic;
	@:optional
	function getDirty():Bool;
	@:optional
	function getGroup(?id:String):Ext.draw.IGroup;
	@:optional
	function getGroups():Array<Dynamic>;
	@:optional
	function getItems():Ext.draw.IGroup;
	@:optional
	function getRegion():Array<Dynamic>;
	@:optional
	function onAdd(?sprite:Ext.draw.sprite.ISprite):Void;
	@:optional
	function remove(?sprite:Ext.draw.sprite.ISprite, ?destroySprite:Bool):Void;
	@:optional
	function removeAll():Void;
	@:optional
	function renderFrame():Void;
	@:optional
	function repaint():Void;
	@:optional
	function resetTransform():Void;
	@:optional
	function roundPixel(?num:Dynamic):Float;
	@:optional
	function setBackground(?background:Dynamic):Void;
	@:optional
	function setGroups(?groups:Array<Dynamic>):Void;
	@:optional
	function setItems(?items:Ext.draw.IGroup):Void;
	@:optional
	function setRegion(?region:Array<Dynamic>):Void;
	@:optional
	function waitFor(?surface:Dynamic):Void;
};
extern class Surface {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getName():String;
	static function override(?members:Dynamic):Ext.IBase;
	static function stableSort(?list:Dynamic):Void;
}
typedef ITextMeasurer = {
	>Ext.IBase,
};
extern class TextMeasurer {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function measureText(?text:String, ?font:String):Dynamic;
	static function measureTextSingleLine(?text:String, ?font:String):Dynamic;
	static function statics():Ext.IClass;
}
typedef ITimingFunctions = {
	>Ext.IBase,
};
extern class TimingFunctions {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
