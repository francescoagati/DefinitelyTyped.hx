extern class AlphaMapFilter extends Filter {
	function new(alphaMap:haxe.extern.EitherType<HTMLImageElement, HTMLCanvasElement>):Void;
	var alphaMap : haxe.extern.EitherType<HTMLImageElement, HTMLCanvasElement>;
	function clone():AlphaMapFilter;
}
extern class AlphaMaskFilter extends Filter {
	function new(mask:haxe.extern.EitherType<HTMLImageElement, HTMLCanvasElement>):Void;
	var mask : haxe.extern.EitherType<HTMLImageElement, HTMLCanvasElement>;
	function clone():AlphaMaskFilter;
}
extern class Bitmap extends DisplayObject {
	function new(imageOrUrl:haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<HTMLCanvasElement, haxe.extern.EitherType<HTMLVideoElement, String>>>):Void;
	var image : haxe.extern.EitherType<HTMLImageElement, haxe.extern.EitherType<HTMLCanvasElement, HTMLVideoElement>>;
	var sourceRect : Rectangle;
	function clone():Bitmap;
}
extern class BitmapText extends DisplayObject {
	function new(?text:String, ?spriteSheet:SpriteSheet):Void;
	static var maxPoolSize : Float;
	var letterSpacing : Float;
	var lineHeight : Float;
	var spaceWidth : Float;
	var spriteSheet : SpriteSheet;
	var text : String;
}
extern class BlurFilter extends Filter {
	function new(?blurX:Float, ?blurY:Float, ?quality:Float):Void;
	var blurX : Float;
	var blurY : Float;
	var quality : Float;
	function clone():BlurFilter;
}
extern class ButtonHelper {
	@:overload(function(target:MovieClip, ?outLabel:String, ?overLabel:String, ?downLabel:String, ?play:Bool, ?hitArea:DisplayObject, ?hitLabel:String):Void { })
	function new(target:Sprite, ?outLabel:String, ?overLabel:String, ?downLabel:String, ?play:Bool, ?hitArea:DisplayObject, ?hitLabel:String):Void;
	var downLabel : haxe.extern.EitherType<String, Float>;
	var outLabel : haxe.extern.EitherType<String, Float>;
	var overLabel : haxe.extern.EitherType<String, Float>;
	var play : Bool;
	var target : haxe.extern.EitherType<MovieClip, Sprite>;
	var enabled : Bool;
	function setEnabled(value:Bool):Void;
	function getEnabled():Bool;
	function toString():String;
}
extern class ColorFilter extends Filter {
	function new(?redMultiplier:Float, ?greenMultiplier:Float, ?blueMultiplier:Float, ?alphaMultiplier:Float, ?redOffset:Float, ?greenOffset:Float, ?blueOffset:Float, ?alphaOffset:Float):Void;
	var alphaMultiplier : Float;
	var alphaOffset : Float;
	var blueMultiplier : Float;
	var blueOffset : Float;
	var greenMultiplier : Float;
	var greenOffset : Float;
	var redMultiplier : Float;
	var redOffset : Float;
	function clone():ColorFilter;
}
extern class ColorMatrix {
	function new(?brightness:Float, ?contrast:Float, ?saturation:Float, ?hue:Float):Void;
	function adjustBrightness(value:Float):ColorMatrix;
	function adjustColor(brightness:Float, contrast:Float, saturation:Float, hue:Float):ColorMatrix;
	function adjustContrast(value:Float):ColorMatrix;
	function adjustHue(value:Float):ColorMatrix;
	function adjustSaturation(value:Float):ColorMatrix;
	function clone():ColorMatrix;
	@:overload(function(matrix:ColorMatrix):ColorMatrix { })
	function concat(matrix:haxe.extern.Rest<Float>):ColorMatrix;
	@:overload(function(matrix:ColorMatrix):ColorMatrix { })
	function copy(matrix:haxe.extern.Rest<Float>):ColorMatrix;
	function reset():ColorMatrix;
	function setColor(brightness:Float, contrast:Float, saturation:Float, hue:Float):ColorMatrix;
	function toArray():Array<Float>;
	function toString():String;
}
extern class ColorMatrixFilter extends Filter {
	function new(matrix:haxe.extern.EitherType<Array<Float>, ColorMatrix>):Void;
	var matrix : haxe.extern.EitherType<Array<Float>, ColorMatrix>;
	function clone():ColorMatrixFilter;
}
extern class Container extends DisplayObject {
	function new():Void;
	var children : Array<DisplayObject>;
	var mouseChildren : Bool;
	var numChildren : Float;
	var tickChildren : Bool;
	function addChild(child:haxe.extern.Rest<DisplayObject>):DisplayObject;
	@:overload(function(childOrIndex:haxe.extern.Rest<Dynamic>):DisplayObject { })
	function addChildAt(child:DisplayObject, index:Float):DisplayObject;
	function clone(?recursive:Bool):Container;
	function contains(child:DisplayObject):Bool;
	function getChildAt(index:Float):DisplayObject;
	function getChildByName(name:String):DisplayObject;
	function getChildIndex(child:DisplayObject):Float;
	function getNumChildren():Float;
	function getObjectsUnderPoint(x:Float, y:Float, mode:Float):Array<DisplayObject>;
	function getObjectUnderPoint(x:Float, y:Float, mode:Float):DisplayObject;
	function removeAllChildren():Void;
	function removeChild(child:haxe.extern.Rest<DisplayObject>):Bool;
	function removeChildAt(index:haxe.extern.Rest<Float>):Bool;
	function setChildIndex(child:DisplayObject, index:Float):Void;
	function sortChildren(sortFunction:DisplayObject -> DisplayObject -> Float):Void;
	function swapChildren(child1:DisplayObject, child2:DisplayObject):Void;
	function swapChildrenAt(index1:Float, index2:Float):Void;
}
extern class DisplayObject extends EventDispatcher {
	function new():Void;
	var alpha : Float;
	var cacheCanvas : haxe.extern.EitherType<HTMLCanvasElement, Dynamic>;
	var cacheID : Float;
	var compositeOperation : String;
	var cursor : String;
	var filters : Array<Filter>;
	var hitArea : DisplayObject;
	var id : Float;
	var mask : Shape;
	var mouseEnabled : Bool;
	var name : String;
	var parent : Container;
	var regX : Float;
	var regY : Float;
	var rotation : Float;
	var scaleX : Float;
	var scaleY : Float;
	var shadow : Shadow;
	var skewX : Float;
	var skewY : Float;
	var snapToPixel : Bool;
	var stage : Stage;
	static var suppressCrossDomainErrors : Bool;
	var tickEnabled : Bool;
	var transformMatrix : Matrix2D;
	var visible : Bool;
	var x : Float;
	var y : Float;
	function cache(x:Float, y:Float, width:Float, height:Float, ?scale:Float):Void;
	function clone():DisplayObject;
	function draw(ctx:CanvasRenderingContext2D, ?ignoreCache:Bool):Bool;
	function getBounds():Rectangle;
	function getCacheDataURL():String;
	function getConcatenatedDisplayProps(?props:DisplayProps):DisplayProps;
	function getConcatenatedMatrix(?mtx:Matrix2D):Matrix2D;
	function getMatrix(?matrix:Matrix2D):Matrix2D;
	function getStage():Stage;
	function getTransformedBounds():Rectangle;
	function globalToLocal(x:Float, y:Float, ?pt:haxe.extern.EitherType<Point, Dynamic>):Point;
	function hitTest(x:Float, y:Float):Bool;
	function isVisible():Bool;
	function localToGlobal(x:Float, y:Float, ?pt:haxe.extern.EitherType<Point, Dynamic>):Point;
	function localToLocal(x:Float, y:Float, target:DisplayObject, ?pt:haxe.extern.EitherType<Point, Dynamic>):Point;
	function set(props:Dynamic):DisplayObject;
	function setBounds(x:Float, y:Float, width:Float, height:Float):Void;
	function setTransform(?x:Float, ?y:Float, ?scaleX:Float, ?scaleY:Float, ?rotation:Float, ?skewX:Float, ?skewY:Float, ?regX:Float, ?regY:Float):DisplayObject;
	function uncache():Void;
	function updateCache(?compositeOperation:String):Void;
	function updateContext(ctx:CanvasRenderingContext2D):Void;
}
extern class DisplayProps {
	function new(?visible:Float, ?alpha:Float, ?shadow:Float, ?compositeOperation:Float, ?matrix:Float):Void;
	var alpha : Float;
	var compositeOperation : String;
	var matrix : Matrix2D;
	var shadow : Shadow;
	var visible : Bool;
	function append(visible:Bool, alpha:Float, shadow:Shadow, compositeOperation:String, ?matrix:Matrix2D):DisplayProps;
	function clone():DisplayProps;
	function identity():DisplayProps;
	function prepend(visible:Bool, alpha:Float, shadow:Shadow, compositeOperation:String, ?matrix:Matrix2D):DisplayProps;
	function setValues(?visible:Bool, ?alpha:Float, ?shadow:Float, ?compositeOperation:Float, ?matrix:Float):DisplayProps;
}
extern class DOMElement extends DisplayObject {
	function new(htmlElement:HTMLElement):Void;
	var htmlElement : HTMLElement;
	function clone():DisplayObject;
	function set(props:Dynamic):DOMElement;
	function setTransform(?x:Float, ?y:Float, ?scaleX:Float, ?scaleY:Float, ?rotation:Float, ?skewX:Float, ?skewY:Float, ?regX:Float, ?regY:Float):DOMElement;
}
extern class EaselJS {
	static var buildDate : String;
	static var version : String;
}
extern class Filter {
	function new():Void;
	function applyFilter(ctx:CanvasRenderingContext2D, x:Float, y:Float, width:Float, height:Float, ?targetCtx:CanvasRenderingContext2D, ?targetX:Float, ?targetY:Float):Bool;
	function clone():Filter;
	function getBounds():Rectangle;
	function toString():String;
}
extern class Graphics {
	function new():Void;
	static var BASE_64 : Dynamic;
	static var beginCmd : Graphics.BeginPath;
	var command : Dynamic;
	var instructions : Array<Dynamic>;
	static var STROKE_CAPS_MAP : Array<String>;
	static var STROKE_JOINTS_MAP : Array<String>;
	function append(command:Dynamic, ?clean:Bool):Graphics;
	function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, anticlockwise:Bool):Graphics;
	function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Graphics;
	function beginBitmapFill(image:Dynamic, ?repetition:String, ?matrix:Matrix2D):Graphics;
	function beginBitmapStroke(image:Dynamic, ?repetition:String):Graphics;
	function beginFill(color:String):Graphics;
	function beginLinearGradientFill(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):Graphics;
	function beginLinearGradientStroke(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):Graphics;
	function beginRadialGradientFill(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):Graphics;
	function beginRadialGradientStroke(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):Graphics;
	function beginStroke(color:String):Graphics;
	function bezierCurveTo(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):Graphics;
	function clear():Graphics;
	function clone():Graphics;
	function closePath():Graphics;
	function curveTo(cpx:Float, cpy:Float, x:Float, y:Float):Graphics;
	function decodePath(str:String):Graphics;
	function draw(ctx:CanvasRenderingContext2D):Void;
	function drawAsPath(ctx:CanvasRenderingContext2D):Void;
	function drawCircle(x:Float, y:Float, radius:Float):Graphics;
	function drawEllipse(x:Float, y:Float, w:Float, h:Float):Graphics;
	function drawPolyStar(x:Float, y:Float, radius:Float, sides:Float, pointSize:Float, angle:Float):Graphics;
	function drawRect(x:Float, y:Float, w:Float, h:Float):Graphics;
	function drawRoundRect(x:Float, y:Float, w:Float, h:Float, radius:Float):Graphics;
	function drawRoundRectComplex(x:Float, y:Float, w:Float, h:Float, radiusTL:Float, radiusTR:Float, radiusBR:Float, radisBL:Float):Graphics;
	function endFill():Graphics;
	function endStroke():Graphics;
	static function getHSL(hue:Float, saturation:Float, lightness:Float, ?alpha:Float):String;
	function getInstructions():Array<Dynamic>;
	static function getRGB(r:Float, g:Float, b:Float, ?alpha:Float):String;
	function inject(callback:Dynamic -> Dynamic, data:Dynamic):Graphics;
	function isEmpty():Bool;
	function lineTo(x:Float, y:Float):Graphics;
	function moveTo(x:Float, y:Float):Graphics;
	function quadraticCurveTo(cpx:Float, cpy:Float, x:Float, y:Float):Graphics;
	function rect(x:Float, y:Float, w:Float, h:Float):Graphics;
	function setStrokeStyle(thickness:Float, ?caps:haxe.extern.EitherType<String, Float>, ?joints:haxe.extern.EitherType<String, Float>, ?miterLimit:Float, ?ignoreScale:Bool):Graphics;
	function store():Graphics;
	function toString():String;
	function unstore():Graphics;
	function a(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, anticlockwise:Bool):Graphics;
	function at(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Graphics;
	function bf(image:Dynamic, ?repetition:String, ?matrix:Matrix2D):Graphics;
	function bs(image:Dynamic, ?repetition:String):Graphics;
	function f(color:String):Graphics;
	function lf(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):Graphics;
	function ls(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, x1:Float, y1:Float):Graphics;
	function rf(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):Graphics;
	function rs(colors:Array<String>, ratios:Array<Float>, x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float):Graphics;
	function s(color:String):Graphics;
	function bt(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):Graphics;
	function c():Graphics;
	function cp():Graphics;
	function p(str:String):Graphics;
	function dc(x:Float, y:Float, radius:Float):Graphics;
	function de(x:Float, y:Float, w:Float, h:Float):Graphics;
	function dp(x:Float, y:Float, radius:Float, sides:Float, pointSize:Float, angle:Float):Graphics;
	function dr(x:Float, y:Float, w:Float, h:Float):Graphics;
	function rr(x:Float, y:Float, w:Float, h:Float, radius:Float):Graphics;
	function rc(x:Float, y:Float, w:Float, h:Float, radiusTL:Float, radiusTR:Float, radiusBR:Float, radisBL:Float):Graphics;
	function ef():Graphics;
	function es():Graphics;
	function lt(x:Float, y:Float):Graphics;
	function mt(x:Float, y:Float):Graphics;
	function qt(cpx:Float, cpy:Float, x:Float, y:Float):Graphics;
	function r(x:Float, y:Float, w:Float, h:Float):Graphics;
	function ss(thickness:Float, ?caps:haxe.extern.EitherType<String, Float>, ?joints:haxe.extern.EitherType<String, Float>, ?miterLimit:Float, ?ignoreScale:Bool):Graphics;
}
