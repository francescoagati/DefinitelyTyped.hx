extern class _Base {
	function new(options:Dynamic):Void;
	var drawingType : String;
	var enabled : Bool;
	var minimumSize : Float;
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
extern class Ellipse extends dojox.drawing.stencil._Base {
	function new(options:Dynamic):Void;
	var anchorType : String;
	var baseRender : Bool;
	var drawingType : String;
	var enabled : Bool;
	var minimumSize : Float;
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
	function moveToBack():Void;
	function moveToFront():Void;
	function pointsToData(p:Array<Dynamic>):Dynamic;
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
extern class Image extends dojox.drawing.stencil._Base {
	function new(options:Dynamic):Void;
	var anchorType : String;
	var baseRender : Bool;
	var drawingType : String;
	var enabled : Bool;
	var minimumSize : Float;
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
	function getImageSize(render:Dynamic):Void;
	function getLabel():Dynamic;
	function getRadius():Dynamic;
	function getTransform():Dynamic;
	function highlight():Void;
	function moveToBack():Void;
	function moveToFront():Void;
	function pointsToData(p:Array<Dynamic>):Dynamic;
	function preventNegativePos():Void;
	function remove():Void;
	function removeShadow():Void;
	function render(?dbg:Dynamic):Void;
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
extern class Line extends dojox.drawing.stencil._Base {
	function new(options:Dynamic):Void;
	var anchorType : String;
	var baseRender : Bool;
	var drawingType : String;
	var enabled : Bool;
	var minimumSize : Float;
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
extern class Path extends dojox.drawing.stencil._Base {
	function new(options:Dynamic):Void;
	var baseRender : Bool;
	var closeColor : Dynamic;
	var closePath : Bool;
	var closeRadius : Float;
	var drawingType : String;
	var enabled : Bool;
	var minimumSize : Float;
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
	function onTransform(anchor:Dynamic):Void;
	function onTransformBegin(anchor:dojox.drawing.manager.Anchors):Void;
	function onTransformEnd(anchor:dojox.drawing.manager.Anchors):Void;
	function onUp(obj:Event):Void;
}
extern class Rect extends dojox.drawing.stencil._Base {
	function new(options:Dynamic):Void;
	var anchorType : String;
	var baseRender : Bool;
	var drawingType : String;
	var enabled : Bool;
	var minimumSize : Float;
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
	function dataToPoints(d:Dynamic):Array<Dynamic>;
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
	function pointsToData(p:Array<Dynamic>):Dynamic;
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
extern class Text extends dojox.drawing.stencil._Base {
	function new(options:Dynamic):Void;
	var align : String;
	var anchorType : String;
	var baseRender : Bool;
	var drawingType : String;
	var enabled : Bool;
	var minimumSize : Float;
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
	function getText():Dynamic;
	function getTransform():Dynamic;
	function highlight():Void;
	function makeFit(text:Dynamic, w:Dynamic):Dynamic;
	function moveToBack():Void;
	function moveToFront():Void;
	function pointsToData(p:Array<Dynamic>):Dynamic;
	function preventNegativePos():Void;
	function remove():Void;
	function removeShadow():Void;
	function render(?text:String):Void;
	function select():Void;
	function setData(data:Dynamic):Void;
	function setLabel(text:String):Void;
	function setPoints(points:Array<Dynamic>):Void;
	function setText(text:Dynamic):Void;
	function setTransform(mx:Dynamic):Void;
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
