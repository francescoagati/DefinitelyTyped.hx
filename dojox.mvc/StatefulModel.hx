typedef GetStatefulOptions = {
	function getStatefulArray(a:Array<Dynamic>):Dynamic;
	function getStatefulObject(o:Dynamic):Dynamic;
	function getStatefulValue(v:Dynamic):Dynamic;
	function getType(v:Dynamic):String;
};
typedef GetPlainValueOptions = {
	function getPlainArray(a:dojox.mvc.StatefulArray):Dynamic;
	function getPlainObject(o:dojox.mvc.StatefulModel):Dynamic;
	function getPlainValue(v:Dynamic):Dynamic;
	function getType(v:Dynamic):String;
};
extern class StoreRefController extends dojox.mvc.ModelRefController {
	function new():Void;
	var data-mvc-bindings : String;
	@:overload(function(property:DataBindAttr, value:String):Void { })
	@:overload(function(property:GetStatefulOptions, value:Dynamic):Void { })
	@:overload(function(property:Model, value:Dynamic):Void { })
	@:overload(function(property:OwnProps, value:Dynamic):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(name:String, value:Dynamic):Void { })
	function set(property:Data-mvc-bindings, value:String):Void;
	@:overload(function(property:DataBindAttr):String { })
	@:overload(function(property:GetStatefulOptions):Dynamic { })
	@:overload(function(property:Model):Dynamic { })
	@:overload(function(property:OwnProps):Dynamic { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(name:String):Dynamic { })
	function get(property:Data-mvc-bindings):String;
	@:overload(function(property:DataBindAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GetStatefulOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Model, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Data-mvc-bindings, callback:{ }):{ function unwatch():Void; };
	var dataBindAttr : String;
	var getStatefulOptions : Dynamic;
	var model : Dynamic;
	var ownProps : Dynamic;
	var store : Dynamic;
	function addStore(object:Dynamic, options:dojo.store.api.Store.PutDirectives):Dynamic;
	function destroy():Void;
	function getStore(id:Float, options:Dynamic):Dynamic;
	function hasControllerProperty(name:String):Bool;
	@:overload(function(params:Dynamic, srcNodeRef:String):Void { })
	function postscript(params:Dynamic, srcNodeRef:HTMLElement):Void;
	function putStore(object:Dynamic, options:dojo.store.api.Store.PutDirectives):Dynamic;
	function queryStore(query:Dynamic, options:dojo.store.api.Store.QueryOptions):Dynamic;
	function removeStore(id:Float, options:Dynamic):Dynamic;
	function startup():Void;
}
extern class Templated extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Bindings, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:ContextRequire, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:WidgetsInTemplate, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Bindings):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:ContextRequire):haxe.Constraints.Function { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:WidgetsInTemplate):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Bindings, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContextRequire, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:WidgetsInTemplate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var bindings : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var contextRequire : haxe.Constraints.Function;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var widgetsInTemplate : Bool;
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
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onFocus():Void;
}
extern class WidgetList extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:ChildBindings, value:Dynamic):Void { })
	@:overload(function(property:ChildClz, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:ChildMixins, value:String):Void { })
	@:overload(function(property:ChildParams, value:Dynamic):Void { })
	@:overload(function(property:Children, value:Dynamic):Void { })
	@:overload(function(property:ChildType, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Data-mvc-child-bindings, value:String):Void { })
	@:overload(function(property:Data-mvc-child-mixins, value:String):Void { })
	@:overload(function(property:Data-mvc-child-props, value:String):Void { })
	@:overload(function(property:Data-mvc-child-type, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PartialRebuild, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:ChildBindings):Dynamic { })
	@:overload(function(property:ChildClz):haxe.Constraints.Function { })
	@:overload(function(property:ChildMixins):String { })
	@:overload(function(property:ChildParams):Dynamic { })
	@:overload(function(property:Children):Dynamic { })
	@:overload(function(property:ChildType):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Data-mvc-child-bindings):String { })
	@:overload(function(property:Data-mvc-child-mixins):String { })
	@:overload(function(property:Data-mvc-child-props):String { })
	@:overload(function(property:Data-mvc-child-type):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PartialRebuild):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildBindings, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildClz, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildMixins, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildParams, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Children, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Data-mvc-child-bindings, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Data-mvc-child-mixins, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Data-mvc-child-props, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Data-mvc-child-type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PartialRebuild, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var childBindings : Dynamic;
	var childClz : haxe.Constraints.Function;
	var childMixins : String;
	var childParams : Dynamic;
	var children : Dynamic;
	var childType : String;
	var class : String;
	var containerNode : HTMLElement;
	var data-mvc-child-bindings : String;
	var data-mvc-child-mixins : String;
	var data-mvc-child-props : String;
	var data-mvc-child-type : String;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var partialRebuild : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
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
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getParent():Dynamic;
	function hasChildren():Bool;
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
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
typedef _base = {
	@:overload(function(target:String, targetProp:String):Dynamic { })
	function at(target:dojo.Stateful, targetProp:String):Dynamic;
	function bind(source:dojo.Stateful, sourceProp:String, target:dojo.Stateful, targetProp:String, func:haxe.Constraints.Function, bindOnlyIfUnequal:Bool):Dynamic;
	function bindInputs(sourceBindArray:Array<dojo.Stateful>, func:haxe.Constraints.Function):Array<Dynamic>;
	function EditModelRefController():Void;
	function EditStoreRefController():Void;
	function EditStoreRefListController():Void;
	function Element():Void;
	function equals(dst:Dynamic, src:Dynamic, options:Dynamic):Bool;
	function Generate():Void;
	function getPlainValue(value:Dynamic, options:Dynamic):Dynamic;
	function getStateful(value:Dynamic, options:Dynamic):Dynamic;
	function Group():Void;
	function ListController():Void;
	function ModelRefController():Void;
	function newStatefulModel(args:Dynamic):Void;
	function Output():Void;
	function Repeat():Void;
	@:overload(function(target:String, parent:dojo.Stateful):Dynamic { })
	function resolve(target:dojo.Stateful, parent:dojo.Stateful):Dynamic;
	function StatefulArray(a:Array<Dynamic>):Dynamic;
	function StatefulModel():Void;
	function StatefulSeries():Void;
	function StoreRefController():Void;
	function sync(source:dojo.Stateful, sourceProp:String, target:dojo.Stateful, targetProp:String, options:Dynamic):Dynamic;
	function Templated():Void;
	function WidgetList():Void;
};
