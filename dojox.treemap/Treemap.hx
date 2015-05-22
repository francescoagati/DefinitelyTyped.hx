extern class DrillDownUp {
	function new():Void;
	function drillDown(renderer:HTMLElement):Void;
	function drillUp(renderer:HTMLElement):Void;
	function postCreate():Void;
}
extern class GroupLabel {
	function new():Void;
	function createRenderer(item:Dynamic, level:Dynamic, kind:Dynamic):Dynamic;
	function styleRenderer(renderer:Dynamic, item:Dynamic, level:Dynamic, kind:Dynamic):Void;
}
extern class Keyboard extends dijit._FocusMixin {
	function new():Void;
	var tabIndex : String;
	function createRenderer(item:Dynamic, level:Dynamic, kind:Dynamic):Dynamic;
	function postCreate():Void;
}
extern class ScaledLabel {
	function new():Void;
	function createRenderer(item:Dynamic, level:Dynamic, kind:Dynamic):Dynamic;
	function styleRenderer(renderer:Dynamic, item:Dynamic, level:Dynamic, kind:Dynamic):Void;
	function onRendererUpdated(evt:Dynamic):Void;
}
extern class TreeMap extends dijit._WidgetBase {
	function new():Void;
	var areaAttr : String;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColorAttr, value:String):Void { })
	@:overload(function(property:ColorModel, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:GroupAttrs, value:Array<Dynamic>):Void { })
	@:overload(function(property:GroupFuncs, value:Array<Dynamic>):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:ItemToRenderer, value:Dynamic):Void { })
	@:overload(function(property:LabelAttr, value:String):Void { })
	@:overload(function(property:LabelThreshold, value:Float):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RootItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TooltipAttr, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AreaAttr, value:String):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColorAttr):String { })
	@:overload(function(property:ColorModel):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:GroupAttrs):Array<Dynamic> { })
	@:overload(function(property:GroupFuncs):Array<Dynamic> { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:ItemToRenderer):Dynamic { })
	@:overload(function(property:LabelAttr):String { })
	@:overload(function(property:LabelThreshold):Float { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RootItem):Dynamic { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TooltipAttr):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AreaAttr):String;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColorAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColorModel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GroupAttrs, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GroupFuncs, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelThreshold, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RootItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TooltipAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AreaAttr, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var colorAttr : String;
	var colorModel : Dynamic;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var groupAttrs : Array<Dynamic>;
	var groupFuncs : Array<Dynamic>;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var itemToRenderer : Dynamic;
	var labelAttr : String;
	var labelThreshold : Float;
	var lang : String;
	var ownerDocument : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var rootItem : Dynamic;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var srcNodeRef : HTMLElement;
	var store : Dynamic;
	var style : String;
	var title : String;
	var tooltip : String;
	var tooltipAttr : String;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function areaFunc(item:Dynamic, store:dojo.store.api.Store):Float;
	function buildRendering():Void;
	function colorFunc(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createRenderer(item:Dynamic, level:Float, kind:String):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColorForItem(item:Dynamic):Dynamic;
	function getIdentity(item:Dynamic):Dynamic;
	function getLabelForItem(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function invalidateRendering():Void;
	function isFocusable():Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	var isValid : { };
	function labelFunc(item:Dynamic, store:dojo.store.api.Store):Dynamic;
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
	function refreshRendering():Void;
	function resize(box:Dynamic):Void;
	function selectFromEvent(e:Event, item:Dynamic, renderer:Dynamic, dispatch:Bool):Dynamic;
	function setItemSelected(item:Dynamic, value:Bool):Void;
	function startup():Void;
	function styleRenderer(renderer:HTMLElement, item:Dynamic, level:Float, kind:String):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function tooltipFunc(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(items:Dynamic):Void;
	function validateRendering():Void;
	function onBlur():Void;
	function onChange():Void;
	function onFocus():Void;
	function onItemRollOut():Void;
	function onItemRollOver():Void;
	function onRendererUpdated():Void;
}
typedef _utils = {
	function find(array:Array<Dynamic>, callback:haxe.Constraints.Function):Dynamic;
	function group(items:Array<Dynamic>, groupingFunctions:Array<Dynamic>, measureFunction:haxe.Constraints.Function):Dynamic;
	function initElements(items:Dynamic, areaFunc:Dynamic):Dynamic;
	function solve(items:Dynamic, width:Dynamic, height:Dynamic, areaFunc:Dynamic, rtl:Dynamic):Dynamic;
};
