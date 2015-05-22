typedef Setup = {
	var iconClass : String;
	var name : String;
	var tooltip : String;
};
extern class Equation extends dojox.drawing.tools.TextBlock {
	function new(options:Dynamic):Void;
	var align : String;
	var anchorType : String;
	var baseRender : Bool;
	var customType : String;
	var drawingType : String;
	var draws : Bool;
	var enabled : Bool;
	var minimumSize : Float;
	var selectOnExec : Bool;
	var setup : Dynamic;
	var showEmpty : Bool;
	var StencilData : Dynamic;
	var StencilPoints : Array<Dynamic>;
	var type : String;
	var valign : String;
	function addShadow(args:Dynamic):Void;
	function animate(options:Dynamic, create:Dynamic):Void;
	function applyTransform(mx:Dynamic):Void;
	@:overload(function(key:Dynamic, value:String):Void { })
	@:overload(function(key:String, value:Float):Void { })
	@:overload(function(key:Dynamic, value:Float):Void { })
	function attr(key:String, value:String):Void;
	function cleanText(txt:String, removeBreaks:Bool):Dynamic;
	function connect(o:Dynamic, e:Dynamic, s:Dynamic, m:Dynamic, once:Bool):Dynamic;
	function connectMouse():Void;
	function connectMult():Void;
	function connectTextField():Void;
	function createAnchors():Void;
	function createTextField(txt:String):Dynamic;
	function dataToPoints(o:Dynamic):Array<Dynamic>;
	function deselect(useDelay:Bool):Void;
	function destroy():Void;
	function destroyAnchors():Void;
	function disable():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function disconnectMouse():Void;
	function edit():Void;
	function enable():Void;
	function execText():Void;
	function exporter():Dynamic;
	function getAngle():Dynamic;
	function getBounds(absolute:Bool):Dynamic;
	function getLabel():Dynamic;
	function getRadius():Dynamic;
	function getSavedCaret():Dynamic;
	function getSelection(node:Dynamic):Void;
	function getText():Dynamic;
	function getTransform():Dynamic;
	function highlight():Void;
	function insertText(node:Dynamic, val:Dynamic):Void;
	function makeFit(text:Dynamic, w:Dynamic):Dynamic;
	function measureText(str:String, width:Float):Dynamic;
	function moveToBack():Void;
	function moveToFront():Void;
	function pointsToData(p:Array<Dynamic>):Dynamic;
	function preventNegativePos():Void;
	function remove():Void;
	function removeShadow():Void;
	function render(text:String):Void;
	function select():Void;
	function setData(data:Dynamic):Void;
	function setLabel(text:String):Void;
	function setPoints(points:Array<Dynamic>):Void;
	function setSavedCaret(val:Dynamic):Void;
	function setSelection(node:Dynamic, what:Dynamic):Void;
	function setText(text:Dynamic):Void;
	function setTransform(mx:Dynamic):Void;
	function showParent(obj:Event):Void;
	function transformPoints(mx:Dynamic):Void;
	function typesetter(text:Dynamic):Dynamic;
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
