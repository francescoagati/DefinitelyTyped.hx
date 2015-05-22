extern class Angle {
	function new(options:Dynamic):Void;
	var angle : Float;
	var type : String;
	function getAngleNode():Dynamic;
	function hideAngle():Void;
	function showAngle():Void;
}
extern class BoxShadow {
	function new(options:Dynamic):Void;
	var showing : Bool;
	function arrowPoints():Array<Dynamic>;
	function createForEllipse(o:Dynamic, size:Dynamic, mult:Dynamic, d:Dynamic, r:Dynamic, p:Dynamic, c:Dynamic):Void;
	function createForLine(o:Dynamic, size:Dynamic, mult:Dynamic, d:Dynamic, r:Dynamic, p:Dynamic, c:Dynamic):Void;
	function createForPath(o:Dynamic, size:Dynamic, mult:Dynamic, pts:Dynamic, r:Dynamic, p:Dynamic, c:Dynamic):Void;
	function createForRect(o:Dynamic, size:Dynamic, mult:Dynamic, d:Dynamic, r:Dynamic, p:Dynamic, c:Dynamic):Void;
	function createForZArrow(o:Dynamic, size:Dynamic, mult:Dynamic, pts:Dynamic, r:Dynamic, p:Dynamic, c:Dynamic):Void;
	function destroy():Void;
	function hide():Void;
	function render():Void;
	function show():Void;
	function onRender():Void;
	function onTransform():Void;
}
extern class Arrow extends dojox.drawing.stencil.Path {
	function new(options:Dynamic):Void;
	var baseRender : Bool;
	var closeColor : Dynamic;
	var closePath : Bool;
	var closeRadius : Float;
	var drawingType : String;
	var enabled : Bool;
	var idx1 : Float;
	var idx2 : Float;
	var minimumSize : Float;
	var StencilData : Dynamic;
	var StencilPoints : Array<Dynamic>;
	var subShape : Bool;
	var type : String;
	function addShadow(args:Dynamic):Void;
	function animate(options:Dynamic, create:Dynamic):Void;
	function applyTransform(mx:Dynamic):Void;
	function arrowHead(x1:Dynamic, y1:Dynamic, x2:Dynamic, y2:Dynamic, style:Dynamic):Array<Dynamic>;
	@:overload(function(key:Dynamic, value:String):Void { })
	@:overload(function(key:String, value:Float):Void { })
	@:overload(function(key:Dynamic, value:Float):Void { })
	function attr(key:String, value:String):Void;
	function checkClosePoint(firstPt:Dynamic, currPt:Dynamic, remove:Bool):Bool;
	function connect(o:Dynamic, e:Dynamic, s:Dynamic, m:Dynamic, once:Bool):Dynamic;
	function connectMouse():Void;
	function connectMult():Void;
	function dataToPoints(data:Dynamic):Void;
	function deselect(useDelay:Bool):Void;
	function destroy():Void;
	function disable():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function disconnectMouse():Void;
	function enable():Void;
	function exporter():Dynamic;
	function getAngle():Dynamic;
	function getBounds(absolute:Bool):Dynamic;
	function getLabel():Dynamic;
	function getRadius():Dynamic;
	function getTransform():Dynamic;
	function highlight():Void;
	function moveToBack():Void;
	function moveToFront():Void;
	function pointsToData(points:Array<Dynamic>):Void;
	function preventNegativePos():Void;
	function remove():Void;
	function removeShadow():Void;
	function render():Void;
	function select():Void;
	function setData(data:Dynamic):Void;
	function setLabel(text:String):Void;
	function setPoints(points:Array<Dynamic>):Void;
	function setTransform(mx:Dynamic):Void;
	function transformPoints(mx:Dynamic):Void;
	function unhighlight():Void;
	function onBeforeRender(stencil:Dynamic):Void;
	function onChangeData(stencil:Dynamic):Void;
	function onChangeStyle(stencil:Dynamic):Void;
	function onChangeText(value:Dynamic):Void;
	function onDelete(stencil:dojox.drawing.stencil._Base):Void;
	function onDown(obj:Event):Void;
	function onDrag(obj:Event):Void;
	function onModify(stencil:Dynamic):Void;
	function onMove(obj:Event):Void;
	function onRender(stencil:Dynamic):Void;
	function onTransform(anchor:dojox.drawing.manager.Anchors):Void;
	function onTransformBegin(anchor:dojox.drawing.manager.Anchors):Void;
	function onTransformEnd(anchor:dojox.drawing.manager.Anchors):Void;
	function onUp(obj:Event):Void;
}
typedef Label = {
	function Label():Void;
};
