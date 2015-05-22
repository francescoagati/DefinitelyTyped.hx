typedef Setup = {
	var iconClass : String;
	var name : String;
	var tooltip : String;
};
extern class Path extends dojox.drawing.stencil.Path {
	function new():Void;
	var baseRender : Bool;
	var closeColor : Dynamic;
	var closePath : Bool;
	var closeRadius : Float;
	var drawingType : String;
	var draws : Bool;
	var enabled : Bool;
	var minimumSize : Float;
	var setup : Dynamic;
	var StencilData : Dynamic;
	var StencilPoints : Array<Dynamic>;
	var type : String;
	function addShadow(args:Dynamic):Void;
	function animate(options:Dynamic, create:Dynamic):Void;
	function applyTransform(mx:Dynamic):Void;
	@:overload(function(key:Dynamic, value:String):Void { })
	@:overload(function(key:String, value:Float):Void { })
	@:overload(function(key:Dynamic, value:Float):Void { })
	function attr(key:String, value:String):Void;
	function checkClosePoint(firstPt:Dynamic, currPt:Dynamic, remove:Bool):Bool;
	function connect(o:Dynamic, e:Dynamic, s:Dynamic, m:Dynamic, once:Bool):Dynamic;
	function connectMouse():Void;
	function connectMult():Void;
	function createGuide(obj:Dynamic):Void;
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
	function makeSubPath(_closePath:Dynamic):Void;
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
	function onCompletePath(_closePath:Dynamic):Void;
	function onDelete(stencil:dojox.drawing.stencil._Base):Void;
	function onDown(obj:Dynamic):Void;
	function onDrag(obj:Dynamic):Void;
	function onModify(stencil:Dynamic):Void;
	function onMove(obj:Dynamic):Void;
	function onRender(stencil:Dynamic):Void;
	function onStartPath(obj:Dynamic):Void;
	function onTransform(anchor:dojox.drawing.manager.Anchors):Void;
	function onTransformBegin(anchor:dojox.drawing.manager.Anchors):Void;
	function onTransformEnd(anchor:dojox.drawing.manager.Anchors):Void;
	function onUp(obj:Event):Void;
}
