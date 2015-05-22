typedef IBasicCallback = { };
typedef IEvent = {
	var type : String;
	var content : Dynamic;
};
typedef IHitArea = {
	function contains(x:Float, y:Float):Bool;
};
typedef IInteractionDataCallback = { };
typedef IPixiRenderer = {
	var view : HTMLCanvasElement;
	function render(stage:Stage):Void;
};
typedef IBitmapTextStyle = {
	@:optional
	var font : String;
	@:optional
	var align : String;
};
typedef ITextStyle = {
	@:optional
	var font : String;
	@:optional
	var stroke : String;
	@:optional
	var fill : String;
	@:optional
	var align : String;
	@:optional
	var strokeThickness : Float;
	@:optional
	var wordWrap : Bool;
	@:optional
	var wordWrapWidth : Float;
};
extern class AssetLoader extends EventTarget {
	var assetURLs : Array<String>;
	var onComplete : IBasicCallback;
	var onProgress : IBasicCallback;
	function new(assetURLs:Array<String>, ?crossorigin:Bool):Void;
	function load():Void;
}
extern class BaseTexture extends EventTarget {
	var height : Float;
	var width : Float;
	var source : String;
	@:overload(function(source:HTMLCanvasElement):Void { })
	function new(source:HTMLImageElement):Void;
	function destroy():Void;
	static function fromImage(imageUrl:String, ?crossorigin:Bool):BaseTexture;
}
extern class BitmapFontLoader extends EventTarget {
	var baseUrl : String;
	var crossorigin : Bool;
	var texture : Texture;
	var url : String;
	function new(url:String, ?crossorigin:Bool):Void;
	function load():Void;
}
extern class BitmapText extends DisplayObjectContainer {
	var width : Float;
	var height : Float;
	function new(text:String, style:IBitmapTextStyle):Void;
	function setStyle(style:IBitmapTextStyle):Void;
	function setText(text:String):Void;
}
extern class CanvasRenderer {
	var context : CanvasRenderingContext2D;
	var height : Float;
	var view : HTMLCanvasElement;
	var width : Float;
	function new(width:Float, height:Float, ?view:HTMLCanvasElement, ?transparent:Bool):Void;
	function render(stage:Stage):Void;
	function resize(width:Float, height:Float):Void;
}
extern class Circle {
	var x : Float;
	var y : Float;
	var radius : Float;
	function new(x:Float, y:Float, radius:Float):Void;
	function clone():Circle;
	function contains(x:Float, y:Float):Bool;
}
extern class CustomRenderable extends DisplayObject {
	function new():Void;
	function renderCanvas(renderer:CanvasRenderer):Void;
	function initWebGL(renderer:WebGLRenderer):Void;
	function renderWebGL(renderGroup:Dynamic, projectionMatrix:Dynamic):Void;
}
extern class DisplayObject {
	var x : Float;
	var y : Float;
	var alpha : Float;
	var buttonMode : Bool;
	var filter : Bool;
	var hitArea : IHitArea;
	var parent : DisplayObjectContainer;
	var pivot : Point;
	var position : Point;
	var rotation : Float;
	var renderable : Bool;
	var scale : Point;
	var stage : Stage;
	var visible : Bool;
	var worldAlpha : Float;
	function new():Void;
	static function autoDetectRenderer(width:Float, height:Float, ?view:HTMLCanvasElement, ?transparent:Bool):IPixiRenderer;
	var click : IInteractionDataCallback;
	var mousedown : IInteractionDataCallback;
	var mouseout : IInteractionDataCallback;
	var mouseover : IInteractionDataCallback;
	var mouseup : IInteractionDataCallback;
	var mouseupoutside : IInteractionDataCallback;
	var mousemove : IInteractionDataCallback;
	var tap : IInteractionDataCallback;
	var touchend : IInteractionDataCallback;
	var touchendoutside : IInteractionDataCallback;
	var touchstart : IInteractionDataCallback;
	var touchmove : IInteractionDataCallback;
	function setInteractive(interactive:Bool):Void;
	var interactive : Bool;
	var mask : Graphics;
}
extern class DisplayObjectContainer extends DisplayObject {
	var children : Array<DisplayObject>;
	function new():Void;
	function addChild(child:DisplayObject):Void;
	function addChildAt(child:DisplayObject, index:Float):Void;
	function getChildAt(index:Float):DisplayObject;
	function removeChild(child:DisplayObject):Void;
	function swapChildren(child:DisplayObject, child2:DisplayObject):Void;
}
extern class Ellipse {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	function new(x:Float, y:Float, width:Float, height:Float):Void;
	function clone():Ellipse;
	function contains(x:Float, y:Float):Bool;
	function getBounds():Rectangle;
}
extern class EventTarget {
	function addEventListener(type:String, listener:IEvent -> Void):Dynamic;
	function removeEventListener(type:String, listener:IEvent -> Void):Dynamic;
	function dispatchEvent(event:IEvent):Dynamic;
}
extern class Graphics extends DisplayObjectContainer {
	var lineWidth : Float;
	var lineColor : String;
	function new():Void;
	function beginFill(?color:Float, ?alpha:Float):Void;
	function clear():Void;
	function drawCircle(x:Float, y:Float, radius:Float):Void;
	function drawElipse(x:Float, y:Float, width:Float, height:Float):Void;
	function drawRect(x:Float, y:Float, width:Float, height:Float):Void;
	function endFill():Void;
	function lineStyle(?lineWidth:Float, ?color:Float, ?alpha:Float):Void;
	function lineTo(x:Float, y:Float):Void;
	function moveTo(x:Float, y:Float):Void;
	static var POLY : Float;
	static var RECT : Float;
	static var CIRC : Float;
	static var ELIP : Float;
}
extern class ImageLoader extends EventTarget {
	var texture : Texture;
	function new(url:String, ?crossorigin:Bool):Void;
	function load():Void;
}
extern class InteractionData {
	var global : Point;
	var target : Sprite;
	function new():Void;
	var originalEvent : Dynamic;
	function getLocalPosition(displayObject:DisplayObject):Point;
}
extern class InteractionManager {
	var mouse : InteractionData;
	var stage : Stage;
	var touchs : { };
	function new(stage:Stage):Void;
}
extern class JsonLoader extends EventTarget {
	var url : String;
	var crossorigin : Bool;
	var baseUrl : String;
	var loaded : Bool;
	function new(url:String, ?crossorigin:Bool):Void;
	function load():Void;
}
extern class MovieClip extends Sprite {
	var animationSpeed : Float;
	var currentFrame : Float;
	var loop : Bool;
	var playing : Bool;
	var textures : Array<Texture>;
	function new(textures:Array<Texture>):Void;
	var onComplete : IBasicCallback;
	function gotoAndPlay(frameNumber:Float):Void;
	function gotoAndStop(frameNumber:Float):Void;
	function play():Void;
	function stop():Void;
}
extern class Point {
	var x : Float;
	var y : Float;
	function new(x:Float, y:Float):Void;
	function clone():Point;
}
extern class Polygon {
	var points : Array<Point>;
	@:overload(function(points:Array<Float>):Void { })
	@:overload(function(points:haxe.extern.Rest<Point>):Void { })
	@:overload(function(points:haxe.extern.Rest<Float>):Void { })
	function new(points:Array<Point>):Void;
	function clone():Polygon;
	function contains(x:Float, y:Float):Bool;
}
extern class Rectangle {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	function new(x:Float, y:Float, width:Float, height:Float):Void;
	function clone():Rectangle;
	function contains(x:Float, y:Float):Bool;
}
extern class RenderTexture extends Texture {
	function new(width:Float, height:Float):Void;
	function resize(width:Float, height:Float):Void;
}
extern class Sprite extends DisplayObjectContainer {
	var anchor : Point;
	var blendMode : Float;
	var texture : Texture;
	var height : Float;
	var width : Float;
	function new(texture:Texture):Void;
	static function fromFrame(frameId:String):Sprite;
	static function fromImage(url:String):Sprite;
	function setTexture(texture:Texture):Void;
}
extern class SpriteSheetLoader extends EventTarget {
	var url : String;
	var crossorigin : Bool;
	var baseUrl : String;
	var texture : Texture;
	var frames : Dynamic;
	function new(url:String, ?crossorigin:Bool):Void;
	function load():Dynamic;
}
extern class Stage extends DisplayObjectContainer {
	var interactive : Bool;
	var interactionManager : InteractionManager;
	function new(backgroundColor:Float, ?interactive:Bool):Void;
	function getMousePosition():Point;
	function setBackgroundColor(backgroundColor:Float):Void;
}
extern class Text extends Sprite {
	function new(text:String, style:ITextStyle):Void;
	function destroy(destroyTexture:Bool):Void;
	function setText(text:String):Void;
	function setStyle(style:ITextStyle):Void;
}
extern class Texture extends EventTarget {
	var baseTexture : BaseTexture;
	var frame : Rectangle;
	var trim : Point;
	function render(displayObject:DisplayObject, position:Point, clear:Bool):Void;
	function new(baseTexture:BaseTexture, ?frame:Rectangle):Void;
	function destroy(destroyBase:Bool):Void;
	function setFrame(frame:Rectangle):Void;
	static function addTextureToCache(texture:Texture, id:String):Void;
	static function fromCanvas(canvas:HTMLCanvasElement):Texture;
	static function fromFrame(frameId:String):Texture;
	static function fromImage(imageUrl:String, ?crossorigin:Bool):Texture;
	static function removeTextureFromCache(id:Dynamic):Texture;
}
extern class TilingSprite extends DisplayObjectContainer {
	var width : Float;
	var height : Float;
	var texture : Texture;
	var tilePosition : Point;
	var tileScale : Point;
	function new(texture:Texture, width:Float, height:Float):Void;
	function setTexture(texture:Texture):Void;
}
extern class WebGLBatch {
	function new(webGLContext:WebGLRenderingContext):Void;
	function clean():Void;
	function restoreLostContext(gl:WebGLRenderingContext):Dynamic;
	function init(sprite:Sprite):Void;
	function insertAfter(sprite:Sprite, previousSprite:Sprite):Void;
	function insertBefore(sprite:Sprite, nextSprite:Sprite):Void;
	function growBatch():Void;
	function merge(batch:WebGLBatch):Void;
	function refresh():Void;
	function remove(sprite:Sprite):Void;
	function render():Void;
	function split(sprite:Sprite):WebGLBatch;
	function update():Void;
}
extern class WebGLRenderGroup {
	function render(projection:Dynamic):Void;
}
extern class WebGLRenderer {
	var view : HTMLCanvasElement;
	function new(width:Float, height:Float, ?view:HTMLCanvasElement, ?transparent:Bool, ?antialias:Bool):Void;
	function render(stage:Stage):Void;
	function resize(width:Float, height:Float):Void;
}
extern class PIXITopLevel {
	static var gl : WebGLRenderingContext;
	static var BaseTextureCache : { };
	static var texturesToUpdate : Array<BaseTexture>;
	static var texturesToDestroy : Array<BaseTexture>;
	static var TextureCache : { };
	static var FrameCache : { };
	static var blendModes : { var NORMAL : Float; var SCREEN : Float; };
	static function autoDetectRenderer(width:Float, height:Float, ?view:HTMLCanvasElement, ?transparent:Bool, ?antialias:Bool):IPixiRenderer;
	static function FilterBlock(mask:Graphics):Void;
	static function MaskFilter(graphics:Graphics):Void;
	static function runList(x:Dynamic):Void;
	static function requestAnimFrame(animate:PIXI.IBasicCallback):Dynamic;
}
