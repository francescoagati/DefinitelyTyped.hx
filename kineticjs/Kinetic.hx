typedef INode = {
	function cache(?cacheConfig:Dynamic):INode;
	function clone(attrs:Dynamic):INode;
	function destroy():Void;
	function draw():INode;
	function drawBuffer():Dynamic;
	function drawScene():Dynamic;
	function getAbsoluteOpacity():Float;
	function getAbsolutePosition():Vector2d;
	function getAbsoluteTransform():Dynamic;
	function getAbsoluteZIndex():Float;
	function getAttrs():Dynamic;
	function getDragBounds():Dynamic;
	function getDragConstraint():Dynamic;
	function getDraggable():Bool;
	function getLayer():Dynamic;
	function getLevel():Float;
	function getListening():Dynamic;
	function getName():String;
	function getOffset():Vector2d;
	function getOpacity():Float;
	function getParent():Dynamic;
	function getPosition():Vector2d;
	function getRotation():Float;
	function getRotationDeg():Float;
	function getScale():Vector2d;
	function getScaleX():Float;
	function getScaleY():Float;
	function getSize():ISize;
	function getStage():IStage;
	function getTransform():Dynamic;
	function getZIndex():Float;
	function hide():Void;
	function isDraggable():Bool;
	function isDragging():Bool;
	function isListening():Bool;
	function move(change:{ var x : Float; var y : Float; }):Void;
	function moveDown():Void;
	function moveTo(newContainer:IContainer):Void;
	function moveToBottom():Void;
	function moveToTop():Void;
	function moveUp():Void;
	@:overload(function(name:String):Void { })
	function name():String;
	function remove():Dynamic;
	function rotate(theta:Float):Void;
	function rotateDeg(deg:Float):Void;
	function on(typesStr:String, handler:Dynamic -> Dynamic):Void;
	function off(typesStr:String):Void;
	function fire(typeStr:String, ?event:Dynamic, ?bubble:Bool):Dynamic;
	function setAbsolutePosition(pos:Vector2d):Void;
	function setAttrs(config:Dynamic):Void;
	function setDefaultAttrs(config:Dynamic):Void;
	function setDragBounds(bounds:Dynamic):Void;
	function setDragConstraint(constraint:String):Void;
	function setDraggable(draggable:Bool):Void;
	function setListening(listening:Bool):Void;
	function setOffset(offset:Vector2d):Dynamic;
	function setOpacity(opacity:Dynamic):Void;
	function setPosition(position:Vector2d):Void;
	function setRotation(theta:Float):Void;
	function setRotationDeg(rotDeg:Float):Void;
	function setScale(scale:Vector2d):Void;
	function setScaleX(scale:Float):Void;
	function setScaleY(scale:Float):Void;
	function setSize(size:ISize):Dynamic;
	function setZIndex(zIndex:Float):Void;
	function show():Void;
	function simulate(eventType:String):Void;
	function toDataURL(config:Dynamic):Void;
	function transitionTo(config:Dynamic):Void;
	@:overload(function(width:Float):Void { })
	function width():Float;
	function getWidth():Dynamic;
	function setWidth(width:Float):Void;
	@:overload(function(height:Float):Void { })
	function height():Float;
	function getHeight():Dynamic;
	function setHeight(height:Float):Dynamic;
	@:overload(function(id:String):Void { })
	function id():String;
	function getId():String;
	function setId(id:String):Void;
	@:overload(function(x:Float):Void { })
	function x():Float;
	@:overload(function(y:Float):Void { })
	function y():Float;
	function getX():Float;
	function setX(x:Float):Void;
	function getY():Float;
	function setY(y:Float):Void;
};
typedef IContainer = {
	>INode,
	function add(child:INode):Dynamic;
	function clone(attrs:Dynamic):IContainer;
	function destroyChildren():IContainer;
	function find(selector:String):Dynamic;
	function get(selector:Dynamic):Dynamic;
	function getChildren():Array<INode>;
	function getIntersections(point:Dynamic):Dynamic;
	function isAncestorOf(node:Dynamic):Dynamic;
	function removeChildren():Dynamic;
};
typedef IStage = {
	>IContainer,
	function add(layer:ILayer):Dynamic;
	function clear():Dynamic;
	function getContainer():HTMLElement;
	function getContent():HTMLElement;
	function getDOM():HTMLElement;
	function getHeight():Float;
	function getIntersection(pos:Dynamic):Dynamic;
	function getMousePosition(?evt:Event):Dynamic;
	function getPointerPosition():Vector2d;
	function getStage():IStage;
	function getTouchPosition(?evt:Event):Dynamic;
	function getUserPosition(?evt:Event):Dynamic;
	function getWidth():Float;
	function load(JSON:Dynamic):Dynamic;
	function reset():Dynamic;
	function setHeight(height:Float):Dynamic;
	function setWidth(width:Float):Dynamic;
	function toDataURL(config:Dynamic):Dynamic;
	function toImage(config:Dynamic, callback:Void -> Dynamic):Dynamic;
	function toJSON():Dynamic;
};
typedef ILayer = {
	>IContainer,
	function afterDraw(handler:Void -> Dynamic):Dynamic;
	function beforeDraw(handler:Void -> Dynamic):Dynamic;
	function clear():Dynamic;
	function getCanvas():ICanvas;
	function getClearBeforeDraw():Dynamic;
	function getContext():CanvasRenderingContext2D;
	function remove():Dynamic;
	function setClearBeforeDraw(clearBeforeDraw:Bool):Dynamic;
	function toDataURL(config:Dynamic):Dynamic;
};
typedef ICanvas = {
	var _canvas : HTMLCanvasElement;
	function getPixelRatio():Float;
	var height : Float;
	function setPixelRatio(pixelRatio:Float):Dynamic;
	var width : Float;
};
typedef IShape = {
	>INode,
	function applyLineJoin():Void;
	function drawImage():Void;
	function fill():Void;
	function fillText(text:String):Void;
	function getCanvas():ICanvas;
	function getContext():Dynamic;
	function getDrawFunc():Dynamic;
	function getFill():String;
	function getLineJoin():Dynamic;
	function getShadow():Dynamic;
	function getStroke():Dynamic;
	function getStrokeWidth():Float;
	function intersects(point:Dynamic):Bool;
	function setDrawFunc(drawFunc:Void -> Dynamic):Dynamic;
	function setFill(fill:String):Dynamic;
	function setLineJoin():Dynamic;
	function setShadow(config:Dynamic):Dynamic;
	function setSize(size:ISize):Dynamic;
	function setStroke(stroke:String):Dynamic;
	function setStrokeWidth(strokeWidth:Float):Dynamic;
	function stroke():Dynamic;
	function strokeText(text:String):Dynamic;
};
typedef IRect = {
	>IShape,
	function getCornerRadius():Float;
	function getHeight():Float;
	function getWidth():Float;
	function setCornerRadius(radius:Float):Dynamic;
	function setHeight(height:Float):Dynamic;
	function setWidth(width:Float):Dynamic;
};
typedef ICircle = {
	>IShape,
	function getRadius():Float;
	function setRadius(radius:Float):Dynamic;
};
typedef IEllipse = {
	>IShape,
	function getRadius():Float;
	function setRadius(radius:Float):Dynamic;
};
typedef IGroup = {
	>IContainer,
};
typedef ICollection = {
	function apply(method:haxe.Constraints.Function, val:Dynamic):Dynamic;
	function each(func:Void -> Dynamic):Dynamic;
};
typedef IImage = {
	>IShape,
	function applyFilter(config:Dynamic):Dynamic;
	function clearImageBuffer():Dynamic;
	function createImageBuffer(callback:Void -> Dynamic):Dynamic;
	function getCrop():Dynamic;
	function getFilter():Dynamic;
	function getHeight():Float;
	function getImage():IImage;
	function getWidth():Float;
	function setCrop(config:CropConfig):Dynamic;
	function setFilter(config:Dynamic):Dynamic;
	function setHeight(height:Float):Dynamic;
	function setImage(image:IImage):Dynamic;
	function setWidth(width:Float):Dynamic;
};
typedef ILine = {
	>IShape,
	function getDashArray():Dynamic;
	function getLineCap():Dynamic;
	function getPoints():Dynamic;
	function setDashArray(dashArray:Dynamic):Dynamic;
	function setLineCap(lineCap:String):Dynamic;
	function setPoints(can:Array<Dynamic>):Dynamic;
};
typedef IPath = {
	>IShape,
	function getData():String;
	function setData(SVG:String):Dynamic;
};
typedef IRegularPolygon = {
	>IShape,
	function getRadius():Float;
	function getSides():Float;
	function setRadius(radius:Float):Dynamic;
	function setSides(sides:Float):Dynamic;
};
typedef ISprite = {
	>IShape,
	function afterFrame(index:Float, func:Void -> Dynamic):Dynamic;
	function getAnimation():String;
	function getAnimations():Dynamic;
	function getIndex():Float;
	function setAnimation(anim:String):Dynamic;
	function setAnimations(animations:Dynamic):Dynamic;
	function setIndex(index:Float):Dynamic;
	function start():Dynamic;
	function stop():Dynamic;
};
typedef IStar = {
	>IShape,
	function getInnerRadius():Float;
	function getNumPoints():Float;
	function getOuterRadius():Float;
	function setInnerRadius(radius:Float):Dynamic;
	function setNumPoints(points:Float):Dynamic;
	function setOuterRadius(radius:Float):Dynamic;
};
typedef IText = {
	>IShape,
	function getAlign():String;
	function getBoxHeight():Float;
	function getBoxWidth():Float;
	function getFontFamily():String;
	function getFontSize():Float;
	function getFontStyle():String;
	function getHeight():Float;
	function getLineHeight():Float;
	function getPadding():Float;
	function getShadow():Dynamic;
	function getText():String;
	function getTextFill():Dynamic;
	function getTextHeight():Float;
	function getTextStroke():Dynamic;
	function getTextStrokeWidth():Float;
	function getTextWidth():Float;
	function getWidth():Float;
	function setAlign(align:String):Dynamic;
	function setFontFamily(fontFamily:String):Dynamic;
	function setFontSize(fontSize:Float):Dynamic;
	function setFontStroke(textStroke:Dynamic):Dynamic;
	function setFontStyle(fontStyle:String):Dynamic;
	function setHeight(height:Float):Dynamic;
	function setLineHeight(lineHeight:Float):Dynamic;
	function setPadding(padding:Float):Dynamic;
	function setShadow(config:Dynamic):Dynamic;
	function setText(text:String):Dynamic;
	function setTextFill(textFill:Dynamic):Dynamic;
	function setTextStrokeWidth(textStrokeWidth:Float):Dynamic;
	function setWidth(width:Float):Dynamic;
};
typedef ITextPath = {
	>IShape,
	function getFontFamily():String;
	function getFontSize():Float;
	function getFontStyle():String;
	function getText():String;
	function getTextFill():Dynamic;
	function getTextHeight():Float;
	function getTextStroke():Dynamic;
	function getTextStrokeWidth():Float;
	function getTextWidth():Float;
	function setFontFamily(fontFamily:String):Dynamic;
	function setFontSize(fontSize:Float):Dynamic;
	function setFontStroke(textStroke:Dynamic):Dynamic;
	function setFontStyle(fontStyle:String):Dynamic;
	function setText(text:String):Dynamic;
	function setTextFill(textFill:Dynamic):Dynamic;
	function setTextStrokeWidth(textStrokeWidth:Float):Dynamic;
};
typedef IAnimation = {
	>IContainer,
	function start():Dynamic;
	function stop():Dynamic;
};
typedef CropConfig = {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
};
typedef StageConfig = {
	>ObjectOptionsConfig,
	var container : String;
	var width : Float;
	var height : Float;
};
typedef LayerConfig = {
	>ObjectOptionsConfig,
	@:optional
	var clearBeforeDraw : Bool;
};
typedef RectConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var cornerRadius : Float;
};
typedef CircleConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var radius : Float;
};
typedef ImageConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var image : Dynamic;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var crop : Dynamic;
};
typedef SpriteConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var image : Dynamic;
	@:optional
	var animations : Dynamic;
	@:optional
	var animation : Dynamic;
	@:optional
	var frameRate : Float;
};
typedef TextConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var text : String;
	@:optional
	var fontSize : Float;
	@:optional
	var fontFamily : String;
	@:optional
	var fontStyle : String;
	@:optional
	var textFill : Dynamic;
	@:optional
	var textStroke : Dynamic;
	@:optional
	var textStrokeWidth : Float;
	@:optional
	var align : String;
	@:optional
	var padding : String;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var lineHeight : Float;
	@:optional
	var cornerRadius : Float;
};
typedef LineConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var points : Dynamic;
	@:optional
	var lineCap : String;
	@:optional
	var dash : Array<Float>;
};
typedef RegularPolygonConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var sides : Float;
	var radius : Float;
};
typedef PathConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var data : String;
};
typedef StarConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var numPoints : Float;
	var outerRadius : Float;
	var innerRadius : Float;
};
typedef CustomConfig = {
	>DrawOptionsConfig,
	>ObjectOptionsConfig,
	var drawFunc : Void -> Dynamic;
};
typedef DrawOptionsConfig = {
	@:optional
	var fill : String;
	@:optional
	var stroke : String;
	@:optional
	var strokeWidth : Float;
	@:optional
	var lineJoin : String;
	@:optional
	var shadow : Dynamic;
};
typedef Vector2d = {
	var x : Float;
	var y : Float;
};
typedef ObjectOptionsConfig = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var visible : Bool;
	@:optional
	var listening : Bool;
	@:optional
	var id : String;
	@:optional
	var name : String;
	@:optional
	var opacity : Dynamic;
	@:optional
	var scale : Vector2d;
	@:optional
	var rotation : Float;
	@:optional
	var rotationDeg : Float;
	@:optional
	var offset : Vector2d;
	@:optional
	var draggable : Bool;
	@:optional
	var dragConstraint : String;
	@:optional
	var dragBounds : Dynamic;
	@:optional
	var dragBoundFunc : Vector2d -> Vector2d;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};
typedef ISize = {
	var width : Float;
	var height : Float;
};
extern class KineticTopLevel {
	static var Node : { function new(config:ObjectOptionsConfig):INode; };
	static var Container : { function new(config:Dynamic):IContainer; };
	static var Stage : { function new(config:StageConfig):IStage; };
	static var Layer : { function new(?config:LayerConfig):ILayer; };
	static var Shape : { function new(config:Dynamic):IShape; };
	static var Rect : { function new(config:RectConfig):IRect; };
	static var Circle : { function new(config:CircleConfig):ICircle; };
	static var Ellipse : { function new(config:CircleConfig):IEllipse; };
	static var Group : { function new(?config:ObjectOptionsConfig):IGroup; };
	static var Collection : { function new():ICollection; };
	static var Image : { function new(?config:ImageConfig):IImage; };
	static var Line : { function new(config:LineConfig):ILine; };
	static var Path : { function new(config:PathConfig):IPath; function parsePathData(data:String):Dynamic; };
	static var RegularPolygon : { function new(config:RegularPolygonConfig):IRegularPolygon; };
	static var Sprite : { function new(config:SpriteConfig):ISprite; };
	static var Star : { function new(config:StarConfig):IStar; };
	static var Text : { function new(config:TextConfig):IText; };
	static var TextPath : { function new(config:Dynamic):ITextPath; };
	static var Animation : { function new(args:haxe.extern.Rest<Dynamic>):IAnimation; };
}
