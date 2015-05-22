extern class _base {
	function new(props:Dynamic, node:HTMLElement):Void;
	var height : Float;
	var mode : String;
	var ready : Bool;
	var width : Float;
	function addPlugin(plugin:Dynamic):Void;
	function addStencil(type:String, options:Dynamic):Dynamic;
	function addUI(type:String, options:Dynamic):Dynamic;
	function changeDefaults(newStyle:Dynamic, value:Bool):Void;
	function exporter():Dynamic;
	function get(name:Dynamic):Void;
	function getConstructor(abbr:String):Dynamic;
	function getShapeProps(data:Dynamic, mode:Dynamic):Dynamic;
	function importer(objects:Array<Dynamic>):Void;
	function initPlugins():Void;
	function registerTool(type:String):Void;
	function removeAll():Void;
	function removeStencil(stencil:Dynamic):Void;
	function resize(box:Dynamic):Void;
	function selectAll():Void;
	function set(name:Dynamic, value:Dynamic):Void;
	function setTool(type:String):Void;
	function startup():Void;
	function toSelected(func:String):Void;
	function unSetTool():Void;
	function onDeleteStencil(stencil:Dynamic):Void;
	function onRenderStencil(stencil:Dynamic):Void;
	function onSurfaceReady():Void;
}
extern class Drawing {
	function new(props:Dynamic, node:HTMLElement):Void;
	var height : Float;
	var mode : String;
	var ready : Bool;
	var width : Float;
	function addPlugin(plugin:Dynamic):Void;
	function addStencil(type:String, options:Dynamic):Dynamic;
	function addUI(type:String, options:Dynamic):Dynamic;
	function changeDefaults(newStyle:Dynamic, value:Bool):Void;
	function exporter():Dynamic;
	function get(name:Dynamic):Void;
	function getConstructor(abbr:String):Dynamic;
	function getShapeProps(data:Dynamic, mode:Dynamic):Dynamic;
	function importer(objects:Array<Dynamic>):Void;
	function initPlugins():Void;
	function registerTool(type:String):Void;
	function removeAll():Void;
	function removeStencil(stencil:Dynamic):Void;
	function resize(box:Dynamic):Void;
	function selectAll():Void;
	function set(name:Dynamic, value:Dynamic):Void;
	function setTool(type:String):Void;
	function startup():Void;
	function toSelected(func:String):Void;
	function unSetTool():Void;
	function onDeleteStencil(stencil:Dynamic):Void;
	function onRenderStencil(stencil:Dynamic):Void;
	function onSurfaceReady():Void;
}
typedef Defaults = {
	var anchors : Dynamic;
	var angleSnap : Float;
	var arrows : Dynamic;
	var button : Dynamic;
	var clickable : Bool;
	var clickMode : Bool;
	var current : Dynamic;
	var currentHit : Dynamic;
	var disabled : Dynamic;
	var highlighted : Dynamic;
	var hitHighlighted : Dynamic;
	var hitNorm : Dynamic;
	var hitSelected : Dynamic;
	var labelSameColor : Bool;
	var norm : Dynamic;
	var renderHitLayer : Bool;
	var renderHitLines : Bool;
	var selected : Dynamic;
	var text : Dynamic;
	var textDisabled : Dynamic;
	var textMode : Dynamic;
	var useSelectedStyle : Bool;
	var zAngle : Float;
	var zAxis : Bool;
	var zAxisEnabled : Bool;
	function copy():Dynamic;
};
extern class Grid extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var gap : Float;
	var keys : Dynamic;
	var major : Float;
	var majorColor : String;
	var minor : Float;
	var minorColor : String;
	var mouse : Dynamic;
	var node : Dynamic;
	var stencils : Dynamic;
	var type : String;
	var util : Dynamic;
	var zoom : Float;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function setGrid(options:Dynamic):Dynamic;
	function setZoom(zoom:Dynamic):Void;
}
extern class GreekPalette extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CellClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:DefaultTimeout, value:Float):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PaletteClass, value:String):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:ShowPreview, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:TimeoutChangeRate, value:Float):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CellClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:DefaultTimeout):Float { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PaletteClass):String { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:ShowPreview):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:TimeoutChangeRate):Float { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultTimeout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaletteClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowPreview, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TimeoutChangeRate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var cellClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var defaultTimeout : Float;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var paletteClass : String;
	var searchContainerNode : Bool;
	var showPreview : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var timeoutChangeRate : Float;
	var title : String;
	var tooltip : String;
	var value : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dyeClass():Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function own():Dynamic;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function show(obj:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onCancel(closeAll:Bool):Void;
	function onChange(val:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
}
