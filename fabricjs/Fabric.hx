typedef IDataURLOptions = {
	@:optional
	var format : String;
	@:optional
	var quality : Float;
	@:optional
	var multiplier : Float;
	@:optional
	var left : Float;
	@:optional
	var top : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};
typedef IEvent = {
	var e : Event;
	@:optional
	var target : IObject;
};
typedef IFillOptions = {
	var source : haxe.extern.EitherType<String, HTMLImageElement>;
	@:optional
	var repeat : String;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
};
typedef IToSVGOptions = {
	var suppressPreamble : Bool;
	var viewBox : IViewBox;
	var encoding : String;
};
typedef IViewBox = {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
};
typedef ICollection<T> = {
	function add(object:haxe.extern.Rest<IObject>):T;
	function insertAt(object:IObject, index:Float, nonSplicing:Bool):T;
	function remove(object:haxe.extern.Rest<IObject>):T;
	function forEachObject(callback:IObject -> Float -> Array<IObject> -> Dynamic, ?context:Dynamic):T;
	function getObjects(?type:String):Array<IObject>;
	function item(index:Float):T;
	function isEmpty():Bool;
	function size():Float;
	function contains(object:IObject):Bool;
	function complexity():Float;
};
typedef IObservable<T> = {
	@:overload(function(eventName:{ }):T { })
	function on(eventName:String, handler:IEvent -> Dynamic):T;
	function trigger(eventName:String, ?options:Dynamic):T;
	function off(eventName:haxe.extern.EitherType<String, Dynamic>, handler:IEvent -> Dynamic):T;
};
typedef ICanvasAnimation<T> = {
	var FX_DURATION : Float;
	function fxCenterObjectH(object:IObject, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):T;
	function fxCenterObjectV(object:IObject, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):T;
	function fxRemove(object:IObject, ?callbacks:{ var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):T;
};
typedef IObjectAnimation<T> = {
	@:overload(function(properties:Dynamic, ?options:IAnimationOptions):IObject { })
	function animate(property:String, value:haxe.extern.EitherType<Float, String>, ?options:IAnimationOptions):IObject;
};
typedef IAnimationOptions = {
	@:optional
	var from : haxe.extern.EitherType<String, Float>;
	@:optional
	var duration : Float;
	@:optional
	var onChange : haxe.Constraints.Function;
	@:optional
	var onComplete : haxe.Constraints.Function;
	@:optional
	var easing : haxe.Constraints.Function;
	@:optional
	var by : Float;
};
typedef IColor = {
	function getSource():Array<Float>;
	function setSource(source:Array<Float>):Dynamic;
	function toRgb():String;
	function toRgba():String;
	function toHsl():String;
	function toHsla():String;
	function toHex():String;
	function getAlpha():Float;
	function setAlpha(alpha:Float):Dynamic;
	function toGrayscale():IColor;
	function toBlackWhite(threshold:Float):IColor;
	function overlayWith(otherColor:haxe.extern.EitherType<String, IColor>):IColor;
};
typedef IColorStatic = {
	function new(?color:String):IColor;
	function fromRgb(color:String):IColor;
	function fromRgba(color:String):IColor;
	function sourceFromRgb(color:String):Array<Float>;
	function fromHsl(color:String):IColor;
	function fromHsla(color:String):IColor;
	function sourceFromHsl(color:String):Array<Float>;
	function fromHex(color:String):IColor;
	function sourceFromHex(color:String):Array<Float>;
	function fromSource(source:Array<Float>):IColor;
	var prototype : Dynamic;
};
typedef IGradientOptions = {
	@:optional
	var type : String;
	@:optional
	var x1 : Float;
	@:optional
	var y1 : Float;
	@:optional
	var x2 : Float;
	@:optional
	var y2 : Float;
	@:optional
	var r1 : Float;
	@:optional
	var r2 : Float;
	@:optional
	var colorStops : Dynamic;
};
typedef IGradient = {
	>IGradientOptions,
	function addColorStop(colorStop:Dynamic):IGradient;
	function toObject():Dynamic;
	function toSVG(object:IObject, ?normalize:Bool):String;
	function toLive(ctx:CanvasRenderingContext2D, ?object:IPathGroup):CanvasGradient;
};
typedef IGrandientStatic = {
	function new(?options:IGradientOptions):IGradient;
	function fromElement(el:SVGGradientElement, instance:IObject):IGradient;
	function fromObject(obj:Dynamic, options:Array<Dynamic>):IGradient;
};
typedef IIntersection = {
	function appendPoint(point:IPoint):Dynamic;
	function appendPoints(points:Array<IPoint>):Dynamic;
};
typedef IIntersectionStatic = {
	function new(?status:String):Dynamic;
	function intersectPolygonPolygon(points1:Array<IPoint>, points2:Array<IPoint>):IIntersection;
	function intersectLinePolygon(a1:IPoint, a2:IPoint, points:Array<IPoint>):IIntersection;
	function intersectLineLine(a1:IPoint, a2:IPoint, b1:IPoint, b2:IPoint):IIntersection;
	function intersectPolygonRectangle(points:Array<IPoint>, r1:Float, r2:Float):IIntersection;
};
typedef IPatternOptions = {
	var repeat : String;
	var offsetX : Float;
	var offsetY : Float;
	var source : haxe.extern.EitherType<String, HTMLImageElement>;
};
typedef IPattern = {
	>IPatternOptions,
	function new(?options:IPatternOptions):IPattern;
	function initialise(?options:IPatternOptions):IPattern;
	function toLive(ctx:CanvasRenderingContext2D):IPattern;
	function toObject():Dynamic;
	function toSVG(object:IObject):String;
};
typedef IPatternStatic = {
	function new(?options:IPatternOptions):IPattern;
	var prototype : Dynamic;
};
typedef IPoint = {
	var x : Float;
	var y : Float;
	function add(that:IPoint):IPoint;
	function addEquals(that:IPoint):IPoint;
	function scalarAdd(scalar:Float):IPoint;
	function scalarAddEquals(scalar:Float):IPoint;
	function subtract(that:IPoint):IPoint;
	function subtractEquals(that:IPoint):IPoint;
	function scalarSubtract(scalar:Float):IPoint;
	function scalarSubtractEquals(scalar:Float):IPoint;
	function multiply(scalar:Float):IPoint;
	function multiplyEquals(scalar:Float):IPoint;
	function divide(scalar:Float):IPoint;
	function divideEquals(scalar:Float):IPoint;
	function eq(that:IPoint):IPoint;
	function lt(that:IPoint):IPoint;
	function lte(that:IPoint):IPoint;
	function gt(that:IPoint):IPoint;
	function gte(that:IPoint):IPoint;
	function lerp(that:IPoint, t:Float):IPoint;
	function distanceFrom(that:IPoint):Float;
	function midPointFrom(that:IPoint):IPoint;
	function min(that:IPoint):IPoint;
	function max(that:IPoint):IPoint;
	function toString():String;
	function setXY(x:Float, y:Float):IPoint;
	function setFromPoint(that:IPoint):IPoint;
	function swap(that:IPoint):IPoint;
};
typedef IPointStatic = {
	function new(x:Float, y:Float):IPoint;
	var prototype : Dynamic;
};
typedef IShadowOptions = {
	var affectStrike : Bool;
	var blur : Float;
	var color : String;
	var includeDefaultValues : Bool;
	var offsetX : Float;
	var offsetY : Float;
};
typedef IShadow = {
	>IShadowOptions,
	function initialize(?options:haxe.extern.EitherType<IShadowOptions, String>):IShadow;
	function toObject():IObject;
	function toString():String;
	function toSVG(object:IObject):String;
	var reOffsetsAndBlur : js.RegExp;
};
typedef IShadowStatic = {
	function new(?options:IShadowOptions):IShadow;
	var reOffsetsAndBlur : js.RegExp;
};
typedef ICanvasDimensions = {
	var width : Float;
	var height : Float;
};
typedef ICanvasDimensionsOptions = {
	@:optional
	var backstoreOnly : Bool;
	@:optional
	var cssOnly : Bool;
};
typedef IStaticCanvasOptions = {
	@:optional
	var allowTouchScrolling : Bool;
	@:optional
	var imageSmoothingEnabled : Bool;
	@:optional
	var preserveObjectStacking : Bool;
	@:optional
	var viewportTransform : Array<Float>;
	@:optional
	var freeDrawingColor : String;
	@:optional
	var freeDrawingLineWidth : Float;
	@:optional
	var backgroundColor : haxe.extern.EitherType<String, IPattern>;
	@:optional
	var backgroundImage : haxe.extern.EitherType<IImage, String>;
	@:optional
	var backgroundImageOpacity : Float;
	@:optional
	var backgroundImageStretch : Float;
	@:optional
	var clipTo : CanvasRenderingContext2D -> Void;
	@:optional
	var controlsAboveOverlay : Bool;
	@:optional
	var includeDefaultValues : Bool;
	@:optional
	var overlayColor : haxe.extern.EitherType<String, IPattern>;
	@:optional
	var overlayImage : IImage;
	@:optional
	var overlayImageLeft : Float;
	@:optional
	var overlayImageTop : Float;
	@:optional
	var renderOnAddRemove : Bool;
	@:optional
	var stateful : Bool;
};
typedef IStaticCanvas = {
	>IObservable<IStaticCanvas>,
	>IStaticCanvasOptions,
	>ICollection<IStaticCanvas>,
	>ICanvasAnimation<IStaticCanvas>,
	function calcOffset():IStaticCanvas;
	function setOverlayImage(image:haxe.extern.EitherType<IImage, String>, callback:haxe.Constraints.Function, ?options:IObjectOptions):IStaticCanvas;
	function setBackgroundImage(image:haxe.extern.EitherType<IImage, String>, callback:haxe.Constraints.Function, ?options:IObjectOptions):IStaticCanvas;
	function setOverlayColor(overlayColor:haxe.extern.EitherType<String, IPattern>, callback:haxe.Constraints.Function):IStaticCanvas;
	function setBackgroundColor(backgroundColor:haxe.extern.EitherType<String, IPattern>, callback:haxe.Constraints.Function):IStaticCanvas;
	function getWidth():Float;
	function getHeight():Float;
	function setWidth(value:haxe.extern.EitherType<Float, String>, ?options:ICanvasDimensionsOptions):IStaticCanvas;
	function setHeight(value:haxe.extern.EitherType<Float, String>, ?options:ICanvasDimensionsOptions):IStaticCanvas;
	function setDimensions(dimensions:ICanvasDimensions, ?options:ICanvasDimensionsOptions):IStaticCanvas;
	function getZoom():Float;
	function setViewportTransform(vpt:Array<Float>):IStaticCanvas;
	function zoomToPoint(point:IPoint, value:Float):IStaticCanvas;
	function setZoom(value:Float):IStaticCanvas;
	function absolutePan(point:IPoint):IStaticCanvas;
	function relativePan(point:IPoint):IStaticCanvas;
	function getElement():HTMLCanvasElement;
	function getActiveObject():IObject;
	function getActiveGroup():IGroup;
	function clearContext(ctx:CanvasRenderingContext2D):IStaticCanvas;
	function getContext():CanvasRenderingContext2D;
	function clear():IStaticCanvas;
	function renderAll(?allOnTop:Bool):IStaticCanvas;
	function renderTop():IStaticCanvas;
	function getCenter():{ var top : Float; var left : Float; };
	function centerObjectH(object:IObject):IStaticCanvas;
	function centerObjectV(object:IObject):IStaticCanvas;
	function centerObject(object:IObject):IStaticCanvas;
	function toDatalessJSON(?propertiesToInclude:Array<Dynamic>):String;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toDatalessObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	var svgViewportTransformation : Bool;
	function toSVG(options:IToSVGOptions, ?reviver:haxe.Constraints.Function):String;
	function sendToBack(object:IObject):IStaticCanvas;
	function bringToFront(object:IObject):IStaticCanvas;
	function sendBackwards(object:IObject):IStaticCanvas;
	function bringForward(object:IObject):IStaticCanvas;
	function moveTo(object:IObject, index:Float):IStaticCanvas;
	function dispose():IStaticCanvas;
	function toString():String;
	function toDataURL(?options:IDataURLOptions):String;
	function supports(methodName:String):Bool;
	function loadFromJSON(json:haxe.extern.EitherType<String, Dynamic>, callback:haxe.Constraints.Function, ?reviver:haxe.Constraints.Function):ICanvas;
	function clone(callback:IStaticCanvas -> Dynamic, ?properties:Array<Dynamic>):Void;
	function cloneWithoutData(callback:IStaticCanvas -> Dynamic):Void;
	function onBeforeScaleRotate(target:IObject):Dynamic;
	function straightenObject(object:IObject):IStaticCanvas;
	function fxStraightenObject(object:IObject):IStaticCanvas;
};
typedef IStaticCanvasStatic = {
	function new(element:haxe.extern.EitherType<HTMLCanvasElement, String>, ?options:ICanvasOptions):IStaticCanvas;
	var EMPTY_JSON : String;
	function supports(methodName:String):Bool;
	var prototype : Dynamic;
	function toJSON(?propertiesToInclude:Array<Dynamic>):String;
};
typedef ICanvasOptions = {
	>IStaticCanvasOptions,
	@:optional
	var uniScaleTransform : Bool;
	@:optional
	var centeredScaling : Bool;
	@:optional
	var centeredRotation : Bool;
	@:optional
	var interactive : Bool;
	@:optional
	var selection : Bool;
	@:optional
	var selectionColor : String;
	@:optional
	var selectionDashArray : Array<Dynamic>;
	@:optional
	var selectionBorderColor : String;
	@:optional
	var selectionLineWidth : Float;
	@:optional
	var hoverCursor : String;
	@:optional
	var moveCursor : String;
	@:optional
	var defaultCursor : String;
	@:optional
	var freeDrawingCursor : String;
	@:optional
	var rotationCursor : String;
	@:optional
	var containerClass : String;
	@:optional
	var perPixelTargetFind : Bool;
	@:optional
	var targetFindTolerance : Float;
	@:optional
	var skipTargetFind : Bool;
	@:optional
	var isDrawingMode : Bool;
};
typedef ICanvas = {
	>IStaticCanvas,
	>ICanvasOptions,
	var _objects : Array<IObject>;
	function containsPoint(e:Event, target:IObject):Bool;
	function deactivateAll():ICanvas;
	function deactivateAllWithDispatch(?e:Event):ICanvas;
	function discardActiveGroup(?e:Event):ICanvas;
	function discardActiveObject(?e:Event):ICanvas;
	function drawControls(ctx:CanvasRenderingContext2D):Void;
	function findTarget(e:MouseEvent, skipGroup:Bool):ICanvas;
	function getActiveGroup():IGroup;
	function getActiveObject():IObject;
	function getPointer(e:Event, ?ignoreZoom:Bool, ?upperCanvasEl:CanvasRenderingContext2D):{ var x : Float; var y : Float; };
	function getSelectionContext():CanvasRenderingContext2D;
	function getSelectionElement():HTMLCanvasElement;
	function isTargetTransparent(target:IObject, x:Float, y:Float):Bool;
	function setActiveGroup(group:IGroup, ?e:Event):ICanvas;
	function setActiveObject(object:IObject, ?e:Event):ICanvas;
	function setCursor(value:String):Void;
	function removeListeners():Void;
};
typedef ICanvasStatic = {
	function new(element:haxe.extern.EitherType<HTMLCanvasElement, String>, ?options:ICanvasOptions):ICanvas;
	var EMPTY_JSON : String;
	function supports(methodName:String):Bool;
	var prototype : Dynamic;
	function toJSON(?propertiesToInclude:Array<Dynamic>):String;
};
typedef ICircleOptions = {
	>IObjectOptions,
	@:optional
	var radius : Float;
	@:optional
	var startAngle : Float;
	@:optional
	var endAngle : Float;
};
typedef ICircle = {
	>IObject,
	>ICircleOptions,
	function complexity():Float;
	function getRadiusX():Float;
	function getRadiusY():Float;
	function setRadius(value:Float):Float;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
};
typedef ICircleStatic = {
	var ATTRIBUTE_NAMES : Array<String>;
	function fromElement(element:SVGElement, options:ICircleOptions):ICircle;
	function fromObject(object:Dynamic):ICircle;
	function new(?options:ICircleOptions):ICircle;
	var prototype : Dynamic;
};
typedef IEllipseOptions = {
	>IObjectOptions,
	@:optional
	var rx : Float;
	@:optional
	var ry : Float;
};
typedef IEllipse = {
	>IObject,
	>IEllipseOptions,
	function getRx():Float;
	function getRy():Float;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	function complexity():Float;
};
typedef IEllipseStatic = {
	function new(?options:IEllipseOptions):IEllipse;
	var ATTRIBUTE_NAMES : Array<String>;
	function fromElement(element:SVGElement, ?options:IEllipseOptions):IEllipse;
	function fromObject(object:Dynamic):IEllipse;
};
typedef IGroup = {
	>IObject,
	>ICollection<IGroup>,
	function activateAllObjects():IGroup;
	function addWithUpdate(object:IObject):IGroup;
	function containsPoint(point:IPoint):Bool;
	function destroy():IGroup;
	function get(prop:String):Dynamic;
	function hasMoved():Bool;
	function removeWithUpdate(object:IObject):IGroup;
	function render(ctx:CanvasRenderingContext2D):Void;
	function remove(object:haxe.extern.Rest<IObject>):IGroup;
	function saveCoords():IGroup;
	function setObjectsCoords():IGroup;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function toSVG(?reviver:haxe.Constraints.Function):String;
};
typedef IGroupStatic = {
	function new(?items:Array<Dynamic>, ?options:IObjectOptions):IGroup;
	function fromObject(object:Dynamic, callback:IGroup -> Dynamic):Void;
};
typedef IImageOptions = {
	>IObjectOptions,
	var crossOrigin : String;
	var alignX : String;
	var alignY : String;
	var meetOrSlice : String;
	var filters : Array<IBaseFilter>;
};
typedef IImage = {
	>IObject,
	>IImageOptions,
	function initialize(?element:haxe.extern.EitherType<String, HTMLImageElement>, ?options:IImageOptions):Dynamic;
	function applyFilters(callback:haxe.Constraints.Function):Dynamic;
	function clone(?callback:haxe.Constraints.Function, ?propertiesToInclude:Array<Dynamic>):IObject;
	function complexity():Float;
	function getElement():HTMLImageElement;
	function getOriginalSize():{ var width : Float; var height : Float; };
	function getSrc():String;
	function render(ctx:CanvasRenderingContext2D, noTransform:Bool):Dynamic;
	function setElement(element:HTMLImageElement, callback:haxe.Constraints.Function, options:IImageOptions):IImage;
	function setCrossOrigin(value:String):IImage;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	function setSrc(src:String, callback:haxe.Constraints.Function, options:IImageOptions):IImage;
};
typedef IImageStatic = {
	function new(element:HTMLImageElement, objObjects:IObjectOptions):IImage;
	function fromURL(url:String, ?callback:IImage -> Dynamic, ?objObjects:IObjectOptions):IImage;
	function fromObject(object:Dynamic, callback:IImage -> { }):Void;
	function fromElement(element:SVGElement, callback:haxe.Constraints.Function, ?options:IImageOptions):Void;
	var prototype : Dynamic;
	var CSS_CANVAS : String;
	var filters : IAllFilters;
};
typedef ILineOptions = {
	>IObjectOptions,
	var x1 : Float;
	var x2 : Float;
	var y1 : Float;
	var y2 : Float;
};
typedef ILine = {
	>IObject,
	>ILineOptions,
	function complexity():Float;
	function initialize(?points:Array<Float>, ?options:ILineOptions):ILine;
	function toObject(propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
};
typedef ILineStatic = {
	var ATTRIBUTE_NAMES : Array<String>;
	function fromElement(element:SVGElement, ?options:ILineOptions):ILine;
	function fromObject(object:Dynamic):ILine;
	var prototype : Dynamic;
	function new(?points:Array<Float>, ?objObjects:IObjectOptions):ILine;
};
typedef IObjectOptions = {
	@:optional
	var type : String;
	@:optional
	var originX : String;
	@:optional
	var originY : String;
	@:optional
	var top : Float;
	@:optional
	var left : Float;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var scaleX : Float;
	@:optional
	var scaleY : Float;
	@:optional
	var flipX : Bool;
	@:optional
	var flipY : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var angle : Float;
	@:optional
	var cornerSize : Float;
	@:optional
	var transparentCorners : Bool;
	@:optional
	var hoverCursor : String;
	@:optional
	var padding : Float;
	@:optional
	var borderColor : String;
	@:optional
	var cornerColor : String;
	@:optional
	var centeredScaling : Bool;
	@:optional
	var centeredRotation : Bool;
	@:optional
	var fill : String;
	@:optional
	var fillRule : String;
	@:optional
	var globalCompositeOperation : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var stroke : String;
	@:optional
	var strokeWidth : Float;
	@:optional
	var strokeDashArray : Array<Dynamic>;
	@:optional
	var strokeLineCap : String;
	@:optional
	var strokeLineJoin : String;
	@:optional
	var strokeMiterLimit : Float;
	@:optional
	var shadow : haxe.extern.EitherType<IShadow, String>;
	@:optional
	var borderOpacityWhenMoving : Float;
	@:optional
	var borderScaleFactor : Float;
	@:optional
	var transformMatrix : Array<Dynamic>;
	@:optional
	var minScaleLimit : Float;
	@:optional
	var selectable : Bool;
	@:optional
	var evented : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var hasControls : Bool;
	@:optional
	var hasBorders : Bool;
	@:optional
	var hasRotatingPoint : Bool;
	@:optional
	var rotatingPointOffset : Float;
	@:optional
	var perPixelTargetFind : Bool;
	@:optional
	var includeDefaultValues : Bool;
	@:optional
	var clipTo : haxe.Constraints.Function;
	@:optional
	var lockMovementX : Bool;
	@:optional
	var lockMovementY : Bool;
	@:optional
	var lockRotation : Bool;
	@:optional
	var lockScalingX : Bool;
	@:optional
	var lockScalingY : Bool;
	@:optional
	var lockUniScaling : Bool;
	@:optional
	var lockScalingFlip : Bool;
	@:optional
	var name : String;
	@:optional
	var data : Dynamic;
};
typedef IObject = {
	>IObservable<IObject>,
	>IObjectOptions,
	>IObjectAnimation<IObject>,
	function getCurrentWidth():Float;
	function getCurrentHeight():Float;
	function getAngle():Float;
	@:overload(function(angle:Float):IObject { })
	function setAngle(value:Float):IObject;
	function getBorderColor():String;
	function setBorderColor(value:String):IObject;
	function getBorderScaleFactor():Float;
	function getCornersize():Float;
	function setCornersize(value:Float):IObject;
	function getFill():String;
	function setFill(value:String):IObject;
	function getFillRule():String;
	function setFillRule(value:String):IObject;
	function getFlipX():Bool;
	function setFlipX(value:Bool):IObject;
	function getFlipY():Bool;
	function setFlipY(value:Bool):IObject;
	function getHeight():Float;
	function setHeight(value:Float):IObject;
	function getLeft():Float;
	function setLeft(value:Float):IObject;
	function getOpacity():Float;
	function setOpacity(value:Float):IObject;
	var overlayFill : String;
	function getOverlayFill():String;
	function setOverlayFill(value:String):IObject;
	function getScaleX():Float;
	function setScaleX(value:Float):IObject;
	function getScaleY():Float;
	function setScaleY(value:Float):IObject;
	@:overload(function(?options:String):IObject { })
	@:overload(function(options:IShadow):IObject { })
	function setShadow(options:Dynamic):IObject;
	function getShadow():IObject;
	var stateProperties : Array<Dynamic>;
	function getTop():Float;
	function setTop(value:Float):IObject;
	function getWidth():Float;
	function setWidth(value:Float):IObject;
	@:overload(function(options:Dynamic):Dynamic { })
	function setOptions(options:Dynamic):Void;
	function transform(ctx:CanvasRenderingContext2D, fromLeft:Bool):Void;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toDatalessObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function get(property:String):Dynamic;
	@:overload(function(key:Dynamic):IObject { })
	function set(key:String, value:haxe.extern.EitherType<Dynamic, haxe.Constraints.Function>):IObject;
	function toggle(property:String):IObject;
	@:overload(function(value:String):IObject { })
	function setSourcePath(value:String):IObject;
	function getViewportTransform():Bool;
	function render(ctx:CanvasRenderingContext2D, ?noTransform:Bool):Void;
	function clone(callback:haxe.Constraints.Function, ?propertiesToInclude:Array<Dynamic>):IObject;
	function cloneAsImage(callback:IImage -> Dynamic):IObject;
	function toDataURL(options:IDataURLOptions):String;
	function isType(type:String):Bool;
	function complexity():Float;
	function toJSON(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function setGradient(property:String, options:IGradientOptions):IObject;
	function setPatternFill(options:IFillOptions):IObject;
	function setColor(color:String):IObject;
	function rotate(angle:Float):IObject;
	function centerH():Void;
	function centerV():Void;
	function center():Void;
	function remove():IObject;
	function getLocalPointer(e:Event, pointer:Dynamic):Dynamic;
	function getSvgStyles():String;
	function getSvgTransform():String;
	function getSvgTransformMatrix():String;
	function hasStateChanged():Bool;
	function saveState(?options:{ var stateProperties : Array<Dynamic>; }):IObject;
	function setupState():IObject;
	function straighten():IObject;
	function fxStraighten(callbacks:{ @:optional
	var onComplete : haxe.Constraints.Function; var onChange : haxe.Constraints.Function; }):IObject;
	function bringForward(?intersecting:Bool):IObject;
	function bringToFront():IObject;
	function sendBackwards(?intersecting:Bool):IObject;
	function sendToBack():IObject;
	function moveTo(index:Float):IObject;
	function translateToCenterPoint(point:IPoint, originX:String, originY:String):IPoint;
	function translateToOriginPoint(center:IPoint, originX:String, originY:String):IPoint;
	function getCenterPoint():IPoint;
	function getPointByOrigin():IPoint;
	function toLocalPoint(point:IPoint, originX:String, originY:String):IPoint;
	function setPositionByOrigin(pos:IPoint, originX:String, originY:String):Void;
	function adjustPosition(to:String):Void;
	function drawBorders(context:CanvasRenderingContext2D):IObject;
	function drawCorners(context:CanvasRenderingContext2D):IObject;
	function isControlVisible(controlName:String):Bool;
	function setControlVisible(controlName:String, visible:Bool):IObject;
	function setControlsVisibility(?options:{ @:optional
	var bl : Bool; @:optional
	var br : Bool; @:optional
	var mb : Bool; @:optional
	var ml : Bool; @:optional
	var mr : Bool; @:optional
	var mt : Bool; @:optional
	var tl : Bool; @:optional
	var tr : Bool; @:optional
	var mtr : Bool; }):IObject;
	function setCoords():IObject;
	function getBoundingRect():{ var left : Float; var top : Float; var width : Float; var height : Float; };
	function isContainedWithinObject(other:IObject):Bool;
	function isContainedWithinRect(pointTL:Dynamic, pointBR:Dynamic):Bool;
	function containsPoint(point:IPoint):Bool;
	function scale(value:Float):IObject;
	function scaleToHeight(value:Float):IObject;
	function scaleToWidth(value:Float):IObject;
	function intersectsWithObject(other:IObject):Bool;
	function intersectsWithRect(pointTL:Dynamic, pointBR:Dynamic):Bool;
};
typedef IObjectStatic = {
	var prototype : Dynamic;
};
typedef IPathOptions = {
	>IObjectOptions,
	@:optional
	var path : Array<Dynamic>;
	@:optional
	var minX : Float;
	@:optional
	var minY : Float;
};
typedef IPath = {
	>IObject,
	>IPathOptions,
	function initialize(?path:Array<Dynamic>, ?options:IPathOptions):IPath;
	function complexity():Float;
	function render(ctx:CanvasRenderingContext2D, noTransform:Bool):Void;
	function toDatalessObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function toSVG(?reviver:haxe.Constraints.Function):String;
};
typedef IPathStatic = {
	function fromElement(element:SVGElement, callback:IPath -> Dynamic, ?options:IPathOptions):Void;
	function fromObject(object:Dynamic, callback:IPath -> Dynamic):Void;
	function new(?path:haxe.extern.EitherType<String, Array<Dynamic>>, ?options:IPathOptions):IPath;
};
typedef IPathGroup = {
	>IObject,
	function initialize(paths:Array<IPath>, ?options:IObjectOptions):Dynamic;
	function complexity():Float;
	function isSameColor():Bool;
	function render(ctx:CanvasRenderingContext2D):Dynamic;
	function toDatalessObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toString():String;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	function getObjects():Array<IPath>;
};
typedef IPathGroupStatic = {
	@:overload(function(object:Dynamic, callback:IPathGroup -> Dynamic):Void { })
	function fromObject(object:Dynamic):IPathGroup;
	function new(paths:Array<IPath>, ?options:IObjectOptions):IPathGroup;
	var prototype : Dynamic;
};
typedef IPolygonOptions = {
	>IObjectOptions,
	@:optional
	var points : Array<IPoint>;
	@:optional
	var minX : Float;
	@:optional
	var minY : Float;
};
typedef IPolygon = {
	>IObject,
	>IPolygonOptions,
	function complexity():Float;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
};
typedef IPolygonStatic = {
	var ATTRIBUTE_NAMES : Array<String>;
	function fromElement(element:SVGElement, ?options:IPolygonOptions):IPolygon;
	function fromObject(object:Dynamic):IPolygon;
	function new(points:Array<{ var x : Float; var y : Float; }>, ?options:IObjectOptions, ?skipOffset:Bool):IPolygon;
	var prototype : Dynamic;
};
typedef IPolylineOptions = {
	>IObjectOptions,
	@:optional
	var points : Array<IPoint>;
	@:optional
	var minX : Float;
	@:optional
	var minY : Float;
};
typedef IPolyline = {
	>IObject,
	>IPolylineOptions,
	function initialize(points:Array<IPoint>, ?options:IPolylineOptions):Dynamic;
	function complexity():Float;
	function toObject(?propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
};
typedef IPolylineStatic = {
	var ATTRIBUTE_NAMES : Array<String>;
	function fromElement(element:SVGElement, ?options:IPolylineOptions):IPolyline;
	function fromObject(object:Dynamic):IPolyline;
	function new(points:Array<{ var x : Float; var y : Float; }>, ?options:IPolylineOptions):IPolyline;
	var prototype : Dynamic;
};
typedef IRectOptions = {
	>IObjectOptions,
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var rx : Float;
	@:optional
	var ry : Float;
};
typedef IRect = {
	>IObject,
	>IRectOptions,
	function initialize(?points:Array<Float>, ?options:Dynamic):IRect;
	function complexity():Float;
	function toObject(propertiesToInclude:Array<Dynamic>):Dynamic;
	function toSVG(?reviver:haxe.Constraints.Function):String;
};
typedef IRectStatic = {
	var ATTRIBUTE_NAMES : Array<String>;
	function fromElement(element:SVGElement, ?options:IRectOptions):IRect;
	function fromObject(object:Dynamic):IRect;
	function new(?options:IRectOptions):IRect;
	var prototype : Dynamic;
};
typedef ITextOptions = {
	>IObjectOptions,
	@:optional
	var fontSize : Float;
	@:optional
	var fontWeight : haxe.extern.EitherType<Float, String>;
	@:optional
	var fontFamily : String;
	@:optional
	var textDecoration : String;
	@:optional
	var textAlign : String;
	@:optional
	var fontStyle : String;
	@:optional
	var lineHeight : Float;
	@:optional
	var stroke : String;
	@:optional
	var shadow : haxe.extern.EitherType<IShadow, String>;
	@:optional
	var textBackgroundColor : String;
	@:optional
	var path : String;
	@:optional
	var useNative : Boolean;
	@:optional
	var text : String;
};
typedef IText = {
	>IObject,
	>ITextOptions,
	function complexity():Float;
	function toString():String;
	function render(ctx:CanvasRenderingContext2D, noTransform:Bool):Dynamic;
	function toObject(?propertiesToInclude:Array<Dynamic>):IObject;
	function toSVG(?reviver:haxe.Constraints.Function):String;
	function getFontSize():Float;
	function setFontSize(fontSize:Float):IText;
	function getFontWeight():haxe.extern.EitherType<Float, String>;
	function setFontWeight(fontWeight:haxe.extern.EitherType<String, Float>):IText;
	function getFontFamily():String;
	function setFontFamily(fontFamily:String):IText;
	function getText():String;
	function setText(text:String):IText;
	function getTextDecoration():String;
	function setTextDecoration(textDecoration:String):IText;
	function getFontStyle():String;
	function setFontStyle(fontStyle:String):IText;
	function getLineHeight():Float;
	function setLineHeight(lineHeight:Float):IText;
	function getTextAlign():String;
	function setTextAlign(textAlign:String):IText;
	function getTextBackgroundColor():String;
	function setTextBackgroundColor(textBackgroundColor:String):IText;
};
typedef ITextStatic = {
	var ATTRIBUTE_NAMES : Array<String>;
	var DEFAULT_SVG_FONT_SIZE : Float;
	function new(text:String, ?options:ITextOptions):IText;
	function fromElement(element:SVGElement, ?options:ITextOptions):IText;
	function fromObject(object:Dynamic):IText;
};
typedef IITextOptions = {
	>IObjectOptions,
	>ITextOptions,
	@:optional
	var selectionStart : Float;
	@:optional
	var selectionEnd : Float;
	@:optional
	var selectionColor : String;
	@:optional
	var isEditing : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var editingBorderColor : String;
	@:optional
	var cursorWidth : Float;
	@:optional
	var cursorColor : String;
	@:optional
	var cursorDelay : Float;
	@:optional
	var cursorDuration : Float;
	@:optional
	var styles : Dynamic;
	@:optional
	var caching : Bool;
};
typedef IIText = {
	>IObject,
	>IText,
	>IITextOptions,
	function isEmptyStyles():Bool;
	function render(ctx:CanvasRenderingContext2D, noTransform:Bool):Dynamic;
	function toObject(?propertiesToInclude:Array<Dynamic>):IObject;
	function setText(value:String):IText;
	function setSelectionStart(index:Float):Void;
	function setSelectionEnd(index:Float):Void;
	function getSelectionStyles(startIndex:Float, endIndex:Float):Dynamic;
	function setSelectionStyles(styles:Dynamic):IText;
	function renderCursorOrSelection():Void;
	function get2DCursorLocation(?selectionStart:Float):Void;
	function getCurrentCharStyle(lineIndex:Float, charIndex:Float):Dynamic;
	function getCurrentCharFontSize(lineIndex:Float, charIndex:Float):Float;
	function getCurrentCharColor(lineIndex:Float, charIndex:Float):String;
	function renderCursor(boundaries:Dynamic):Void;
	function renderSelection(chars:Array<String>, boundaries:Dynamic):Void;
	function initBehavior():Void;
	function initSelectedHandler():Void;
	function initAddedHandler():Void;
	function initRemovedHandler():Void;
	function initDelayedCursor(restart:Bool):Void;
	function abortCursorAnimation():Void;
	function selectAll():Void;
	function getSelectedText():String;
	function findWordBoundaryLeft(startFrom:Float):Float;
	function findWordBoundaryRight(startFrom:Float):Float;
	function findLineBoundaryLeft(startFrom:Float):Float;
	function findLineBoundaryRight(startFrom:Float):Float;
	function getNumNewLinesInSelectedText():Float;
	function searchWordBoundary(selectionStart:Float, direction:Float):Float;
	function selectWord(selectionStart:Float):Void;
	function selectLine(selectionStart:Float):Void;
	function enterEditing():IIText;
	function initMouseMoveHandler():Void;
	function exitEditing():IIText;
	function insertChars(_chars:String, ?useCopiedStyle:Bool):Void;
	function insertNewlineStyleObject(lineIndex:Float, charIndex:Float, isEndOfLine:Bool):Void;
	function insertCharStyleObject(lineIndex:Float, charIndex:Float, isEndOfLine:Bool):Void;
	function insertStyleObjects(_chars:String, isEndOfLine:Bool, ?useCopiedStyle:Bool):Void;
	function shiftLineStyles(lineIndex:Float, offset:Float):Void;
	function removeStyleObject(isBeginningOfLine:Bool, ?index:Float):Void;
	function insertNewline():Void;
};
typedef IITextStatic = {
	>ITextStatic,
	function new(text:String, ?options:IITextOptions):IIText;
	function fromObject(object:Dynamic):IIText;
};
typedef ITriangleOptions = {
	>IObjectOptions,
};
typedef ITriangle = {
	>IObject,
	function complexity():Float;
	function toSVG(?reviver:haxe.Constraints.Function):String;
};
typedef ITriangleStatic = {
	function new(?options:ITriangleOptions):ITriangle;
	function fromObject(object:Dynamic):ITriangle;
};
typedef IAllFilters = {
	var BaseFilter : { function new(?options:Dynamic):IBaseFilter; };
	var Blend : { function new(?options:{ @:optional
	var color : String; @:optional
	var mode : String; @:optional
	var alpha : Float; @:optional
	var image : IImage; }):IBlendFilter; function fromObject(object:Dynamic):IBlendFilter; };
	var Brightness : { function new(?options:{ var brightness : Float; }):IBrightnessFilter; function fromObject(object:Dynamic):IBrightnessFilter; };
	var Convolute : { function new(?options:{ @:optional
	var opaque : Bool; @:optional
	var matrix : Array<Float>; }):IConvoluteFilter; function fromObject(object:Dynamic):IConvoluteFilter; };
	var GradientTransparency : { function new(?options:{ @:optional
	var threshold : Float; }):IGradientTransparencyFilter; function fromObject(object:Dynamic):IGradientTransparencyFilter; };
	var Grayscale : { function new(?options:Dynamic):IGrayscaleFilter; function fromObject(object:Dynamic):IGrayscaleFilter; };
	var Invert : { function new(?options:Dynamic):IInvertFilter; function fromObject(object:Dynamic):IInvertFilter; };
	var Mask : { function new(?options:{ @:optional
	var mask : IImage; var channel : Float; }):IMaskFilter; function fromObject(object:Dynamic):IMaskFilter; };
	var Multiply : { function new(?options:{ var color : String; }):IMultiplyFilter; function fromObject(object:Dynamic):IMultiplyFilter; };
	var Noise : { function new(?options:{ var noise : Float; }):INoiseFilter; function fromObject(object:Dynamic):INoiseFilter; };
	var Pixelate : { function new(?options:{ @:optional
	var blocksize : Float; }):IPixelateFilter; function fromObject(object:Dynamic):IPixelateFilter; };
	var RemoveWhite : { function new(?options:{ @:optional
	var threshold : Float; @:optional
	var distance : Float; }):IRemoveWhiteFilter; function fromObject(object:Dynamic):IRemoveWhiteFilter; };
	var Resize : { function new(?options:Dynamic):IResizeFilter; function fromObject(object:Dynamic):IResizeFilter; };
	var Sepia2 : { function new(?options:Dynamic):ISepia2Filter; function fromObject(object:Dynamic):ISepia2Filter; };
	var Sepia : { function new(?options:Dynamic):ISepiaFilter; function fromObject(object:Dynamic):ISepiaFilter; };
	var Tint : { function new(?options:{ @:optional
	var color : String; @:optional
	var opacity : Float; }):ITintFilter; function fromObject(object:Dynamic):ITintFilter; };
};
typedef IBaseFilter = {
	function setOptions(?options:Dynamic):Void;
	function toObject():Dynamic;
	function toJSON():String;
};
typedef IBlendFilter = {
	>IBaseFilter,
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IBrightnessFilter = {
	>IBaseFilter,
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IConvoluteFilter = {
	>IBaseFilter,
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IGradientTransparencyFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IGrayscaleFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IInvertFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IMaskFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IMultiplyFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef INoiseFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IPixelateFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IRemoveWhiteFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IResizeFilter = {
	var resizeType : String;
	var scaleX : Float;
	var scaleY : Float;
	var lanczosLobes : Float;
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef ISepiaFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef ISepia2Filter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef ITintFilter = {
	function applyTo(canvasEl:HTMLCanvasElement):Void;
};
typedef IBaseBrush = {
	var color : String;
	var width : Float;
	var shadow : haxe.extern.EitherType<IShadow, String>;
	var strokeLineCap : String;
	var strokeLineJoin : String;
	var strokeDashArray : Array<Dynamic>;
	function setShadow(options:haxe.extern.EitherType<String, Dynamic>):IBaseBrush;
};
typedef ICircleBrush = {
	>IBaseBrush,
	var width : Float;
	function drawDot(pointer:Dynamic):Void;
	function addPoint(pointer:Dynamic):IPoint;
};
typedef ISprayBrush = {
	>IBaseBrush,
	var width : Float;
	var density : Float;
	var dotWidth : Float;
	var dotWidthVariance : Float;
	var randomOpacity : Bool;
	var optimizeOverlapping : Bool;
	function addSprayChunk(pointer:Dynamic):Void;
};
typedef IPatternBrush = {
	>IPencilBrush,
	function getPatternSrc():HTMLCanvasElement;
	function getPatternSrcFunction():String;
	function getPattern():Dynamic;
	function createPath(pathData:String):IPath;
};
typedef IPencilBrush = {
	>IBaseBrush,
	function convertPointsToSVGPath(points:Array<{ var x : Float; var y : Float; }>, ?minX:Float, ?minY:Float):Array<String>;
	function createPath(pathData:String):IPath;
};
typedef IUtilAnimationOptions = {
	@:optional
	var startValue : Float;
	@:optional
	var endValue : Float;
	var byValue : Float;
	@:optional
	var duration : Float;
	@:optional
	var onChange : haxe.Constraints.Function;
	@:optional
	var onComplete : haxe.Constraints.Function;
	@:optional
	var easing : haxe.Constraints.Function;
};
typedef IUtilAnimation = {
	function animate(?options:IUtilAnimationOptions):Void;
	function requestAnimFrame(callback:haxe.Constraints.Function):Void;
};
typedef IUtilAnimEase = {
	function easeInBack():haxe.Constraints.Function;
	function easeInBounce():haxe.Constraints.Function;
	function easeInCirc():haxe.Constraints.Function;
	function easeInCubic():haxe.Constraints.Function;
	function easeInElastic():haxe.Constraints.Function;
	function easeInExpo():haxe.Constraints.Function;
	function easeInOutBack():haxe.Constraints.Function;
	function easeInOutBounce():haxe.Constraints.Function;
	function easeInOutCirc():haxe.Constraints.Function;
	function easeInOutCubic():haxe.Constraints.Function;
	function easeInOutElastic():haxe.Constraints.Function;
	function easeInOutExpo():haxe.Constraints.Function;
	function easeInOutQuad():haxe.Constraints.Function;
	function easeInOutQuart():haxe.Constraints.Function;
	function easeInOutQuint():haxe.Constraints.Function;
	function easeInOutSine():haxe.Constraints.Function;
	function easeInQuad():haxe.Constraints.Function;
	function easeInQuart():haxe.Constraints.Function;
	function easeInQuint():haxe.Constraints.Function;
	function easeInSine():haxe.Constraints.Function;
	function easeOutBack():haxe.Constraints.Function;
	function easeOutBounce():haxe.Constraints.Function;
	function easeOutCirc():haxe.Constraints.Function;
	function easeOutCubic():haxe.Constraints.Function;
	function easeOutElastic():haxe.Constraints.Function;
	function easeOutExpo():haxe.Constraints.Function;
	function easeOutQuad():haxe.Constraints.Function;
	function easeOutQuart():haxe.Constraints.Function;
	function easeOutQuint():haxe.Constraints.Function;
	function easeOutSine():haxe.Constraints.Function;
};
typedef IUtilArc = {
	function drawArc(ctx:CanvasRenderingContext2D, fx:Float, fy:Float, coords:Array<Float>):Void;
	function getBoundsOfArc(fx:Float, fy:Float, rx:Float, ry:Float, rot:Float, large:Float, sweep:Float, tx:Float, ty:Float):Array<IPoint>;
	function getBoundsOfCurve(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float):Array<IPoint>;
};
typedef IUtilDomEvent = {
	function getPointer(event:Event, upperCanvasEl:HTMLCanvasElement):IPoint;
	function addListener(element:HTMLElement, eventName:String, handler:haxe.Constraints.Function):Void;
	function removeListener(element:HTMLElement, eventName:String, handler:haxe.Constraints.Function):Void;
};
typedef IUtilDomMisc = {
	function getById(id:haxe.extern.EitherType<String, HTMLElement>):HTMLElement;
	function toArray(arrayLike:Dynamic):Array<Dynamic>;
	function makeElement(tagName:String, ?attributes:Dynamic):HTMLElement;
	function addClass(element:HTMLElement, classname:String):Void;
	function wrapElement(element:HTMLElement, wrapper:haxe.extern.EitherType<HTMLElement, String>, ?attributes:Dynamic):HTMLElement;
	function getScrollLeftTop(element:HTMLElement, upperCanvasEl:HTMLElement):{ var left : Float; var right : Float; };
	function getElementOffset(element:HTMLElement):{ var left : Float; var right : Float; };
	function getElementStyle(elment:HTMLElement, attr:String):String;
	function getScript(url:String, callback:haxe.Constraints.Function):Void;
	function makeElementUnselectable(element:HTMLElement):HTMLElement;
	function makeElementSelectable(element:HTMLElement):HTMLElement;
};
typedef IUtilDomRequest = {
	function request(url:String, ?options:{ @:optional
	var method : String; var onComplete : haxe.Constraints.Function; }):XMLHttpRequest;
};
typedef IUtilDomStyle = {
	function setStyle(element:HTMLElement, styles:Dynamic):HTMLElement;
};
typedef IUtilArray = {
	function invoke(array:Array<Dynamic>, method:String):Array<Dynamic>;
	function min(array:Array<Dynamic>, byProperty:String):Dynamic;
	function max(array:Array<Dynamic>, byProperty:String):Dynamic;
};
typedef IUtilClass = {
	@:overload(function(?properties:Dynamic):Dynamic { })
	function createClass(parent:haxe.Constraints.Function, ?properties:Dynamic):Dynamic;
};
typedef IUtilObject = {
	function extend(destination:Dynamic, source:Dynamic):Dynamic;
	function clone(object:Dynamic):Dynamic;
};
typedef IUtilString = {
	function camelize(string:String):String;
	function capitalize(string:String, firstLetterOnly:Bool):String;
	function escapeXml(string:String):String;
};
typedef IUtilMisc = {
	function removeFromArray(array:Array<Dynamic>, value:Dynamic):Array<Dynamic>;
	function getRandomInt(min:Float, max:Float):Float;
	function degreesToRadians(degrees:Float):Float;
	function radiansToDegrees(radians:Float):Float;
	function rotatePoint(point:IPoint, origin:IPoint, radians:Float):IPoint;
	function transformPoint(p:IPoint, t:Array<Dynamic>, ?ignoreOffset:Bool):IPoint;
	function invertTransform(t:Array<Dynamic>):Array<Dynamic>;
	function toFixed(number:Float, fractionDigits:Float):Float;
	function parseUnit(value:haxe.extern.EitherType<Float, String>, ?fontSize:Float):haxe.extern.EitherType<Float, String>;
	function falseFunction():Bool;
	function getKlass(type:String, namespace:String):Dynamic;
	function resolveNamespace(namespace:String):Dynamic;
	function loadImage(url:String, callback:HTMLImageElement -> { }, ?context:Dynamic, ?crossOrigin:Bool):Void;
	function enlivenObjects(objects:Array<Dynamic>, callback:haxe.Constraints.Function, namespace:String, ?reviver:haxe.Constraints.Function):Void;
	function groupSVGElements(elements:Array<Dynamic>, ?options:Dynamic, ?path:Dynamic):IPathGroup;
	function populateWithProperties(source:Dynamic, destination:Dynamic, properties:Dynamic):Void;
	function drawDashedLine(ctx:CanvasRenderingContext2D, x:Float, y:Float, x2:Float, y2:Float, da:Array<Dynamic>):Void;
	function createCanvasElement(?canvasEl:HTMLCanvasElement):HTMLCanvasElement;
	function createImage():HTMLImageElement;
	function createAccessors(klass:Dynamic):Dynamic;
	function clipContext(receiver:IObject, ctx:CanvasRenderingContext2D):Void;
	function multiplyTransformMatrices(a:Array<Dynamic>, b:Array<Dynamic>):Array<Dynamic>;
	function getFunctionBody(fn:haxe.Constraints.Function):String;
	function isTransparent(ctx:CanvasRenderingContext2D, x:Float, y:Float, tolerance:Float):Bool;
};
typedef IUtil = {
	>IUtilAnimation,
	>IUtilArc,
	>IObservable<IUtil>,
	>IUtilDomEvent,
	>IUtilDomMisc,
	>IUtilDomRequest,
	>IUtilDomStyle,
	>IUtilClass,
	>IUtilMisc,
	var ease : IUtilAnimEase;
	var array : IUtilArray;
	var object : IUtilObject;
	var string : IUtilString;
};
extern class FabricTopLevel {
	static var isLikelyNode : Bool;
	static var isTouchSupported : Bool;
	static function createCanvasForNode(width:Float, height:Float):ICanvas;
	static function createSVGRefElementsMarkup(canvas:IStaticCanvas):String;
	static function createSVGFontFacesMarkup(objects:Array<IObject>):String;
	static function loadSVGFromString(string:String, callback:Array<IObject> -> Dynamic -> Void, ?reviver:haxe.Constraints.Function):Dynamic;
	static function loadSVGFromURL(url:String, callback:Array<IObject> -> Dynamic -> Void, ?reviver:haxe.Constraints.Function):Dynamic;
	static function getCSSRules(doc:SVGElement):Dynamic;
	static function parseElements(elements:Array<Dynamic>, callback:haxe.Constraints.Function, options:Dynamic, ?reviver:haxe.Constraints.Function):Dynamic;
	static function parsePointsAttribute(points:String):Array<Dynamic>;
	static function parseStyleAttribute(element:SVGElement):Dynamic;
	static function parseElements(elements:Array<Dynamic>, callback:haxe.Constraints.Function, ?options:Dynamic, ?reviver:haxe.Constraints.Function):Void;
	static function parseAttributes(elemen:HTMLElement, attributes:Array<String>, ?svgUid:String):{ };
	static function getGradientDefs(doc:SVGElement):{ };
	static function parseFontDeclaration(value:String, oStyle:Dynamic):Void;
	static function parseSVGDocument(doc:SVGElement, callback:Array<IObject> -> Dynamic -> Void, ?reviver:haxe.Constraints.Function):Dynamic;
	static function parseTransformAttribute(attributeValue:String):Array<Float>;
	static function log(values:haxe.extern.Rest<Dynamic>):Dynamic;
	static function warn(values:haxe.extern.Rest<Dynamic>):Dynamic;
	static var Canvas : ICanvasStatic;
	static var StaticCanvas : IStaticCanvasStatic;
	static var Color : IColorStatic;
	static var Pattern : IPatternStatic;
	static var Intersection : IIntersectionStatic;
	static var Point : IPointStatic;
	static var Circle : ICircleStatic;
	static var Ellipse : IEllipseStatic;
	static var Group : IGroupStatic;
	static var Image : IImageStatic;
	static var Line : ILineStatic;
	static var Object : IObjectStatic;
	static var Path : IPathStatic;
	static var PathGroup : IPathGroupStatic;
	static var Polygon : IPolygonStatic;
	static var Polyline : IPolylineStatic;
	static var Rect : IRectStatic;
	static var Shadow : IShadowStatic;
	static var Text : ITextStatic;
	static var IText : IITextStatic;
	static var Triangle : ITriangleStatic;
	static var util : IUtil;
	static var BaseBrush : { function new():IBaseBrush; };
	static var CircleBrush : { function new(canvas:fabric.ICanvas):ICircle; };
	static var SprayBrush : { function new(canvas:fabric.ICanvas):ISprayBrush; };
	static var PencilBrush : { function new(canvas:fabric.ICanvas):IPencilBrush; };
	static var PatternBrush : { function new(canvas:fabric.ICanvas):IPatternBrush; };
}
