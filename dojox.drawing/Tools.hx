extern class Iconize extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var keys : Dynamic;
	var mouse : Dynamic;
	var node : Dynamic;
	var setup : Dynamic;
	var stencils : Dynamic;
	var type : String;
	var util : Dynamic;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function makeIcon(p:Array<Dynamic>):Void;
	function onClick():Void;
}
extern class Arrow extends dojox.drawing.tools.Line {
	function new(options:Dynamic):Void;
	var anchorType : String;
	var arrowEnd : Bool;
	var arrowStart : Bool;
	var baseRender : Bool;
	var drawingType : String;
	var draws : Bool;
	var enabled : Bool;
	var minimumSize : Float;
	var setup : Dynamic;
	var showAngle : Bool;
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
	function connect(o:Dynamic, e:Dynamic, s:Dynamic, m:Dynamic, once:Bool):Dynamic;
	function connectMouse():Void;
	function connectMult():Void;
	function dataToPoints(o:Dynamic):Array<Dynamic>;
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
	function labelPosition():Dynamic;
	function moveToBack():Void;
	function moveToFront():Void;
	function pointsToData(p:Dynamic):Dynamic;
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
