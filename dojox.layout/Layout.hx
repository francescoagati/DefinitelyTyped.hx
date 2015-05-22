extern class ContentPane extends dijit.layout.ContentPane {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var adjustPaths : Bool;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:CleanContent, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Content, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DoLayout, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:ExecuteScripts, value:Bool):Void { })
	@:overload(function(property:ExtractContent, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IoArgs, value:Dynamic):Void { })
	@:overload(function(property:IsLayoutContainer, value:Bool):Void { })
	@:overload(function(property:IsLoaded, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:OnLoadDeferred, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParseOnLoad, value:Bool):Void { })
	@:overload(function(property:ParserScope, value:String):Void { })
	@:overload(function(property:Preload, value:Bool):Void { })
	@:overload(function(property:PreventCache, value:Bool):Void { })
	@:overload(function(property:RefreshOnShow, value:Bool):Void { })
	@:overload(function(property:RenderStyles, value:Bool):Void { })
	@:overload(function(property:ScriptHasHooks, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StopParser, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AdjustPaths, value:Bool):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:CleanContent):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Content):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DoLayout):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:ExecuteScripts):Bool { })
	@:overload(function(property:ExtractContent):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IoArgs):Dynamic { })
	@:overload(function(property:IsLayoutContainer):Bool { })
	@:overload(function(property:IsLoaded):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:OnLoadDeferred):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParseOnLoad):Bool { })
	@:overload(function(property:ParserScope):String { })
	@:overload(function(property:Preload):Bool { })
	@:overload(function(property:PreventCache):Bool { })
	@:overload(function(property:RefreshOnShow):Bool { })
	@:overload(function(property:RenderStyles):Bool { })
	@:overload(function(property:ScriptHasHooks):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StopParser):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AdjustPaths):Bool;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CleanContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Content, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExecuteScripts, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExtractContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IoArgs, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLayoutContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLoaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OnLoadDeferred, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParseOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParserScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Preload, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreventCache, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefreshOnShow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RenderStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScriptHasHooks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StopParser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AdjustPaths, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var cleanContent : Bool;
	var containerNode : HTMLElement;
	var content : String;
	var dir : String;
	var doLayout : Bool;
	var domNode : HTMLElement;
	var errorMessage : String;
	var executeScripts : Bool;
	var extractContent : Bool;
	var focused : Bool;
	var href : String;
	var id : String;
	var ioArgs : Dynamic;
	var isLayoutContainer : Bool;
	var isLoaded : Bool;
	var lang : String;
	var loadingMessage : String;
	var onLoadDeferred : Dynamic;
	var ownerDocument : Dynamic;
	var parseOnLoad : Bool;
	var parserScope : String;
	var preload : Bool;
	var preventCache : Bool;
	var refreshOnShow : Bool;
	var renderStyles : Bool;
	var scriptHasHooks : Bool;
	var srcNodeRef : HTMLElement;
	var stopParser : Bool;
	var style : String;
	var title : String;
	var tooltip : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function cancel():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function create(params:Dynamic, srcNodeRef:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getParent():Dynamic;
	function hasChildren():Bool;
	function ioMethod(args:Dynamic):Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function markupFactory(params:Dynamic, node:Dynamic, ctor:Dynamic):Dynamic;
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
	function refresh():Dynamic;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	@:overload(function(data:HTMLElement):Void { })
	@:overload(function(data:NodeList):Void { })
	function setContent(data:String):Void;
	@:overload(function(href:URL):Dynamic { })
	function setHref(href:String):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentError(error:Error):Void;
	function onDblClick(event:Dynamic):Void;
	function onDownloadEnd():Void;
	function onDownloadError(error:Error):Dynamic;
	function onDownloadStart():Dynamic;
	function onExecError(e:Event):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onLoad(data:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
	function onUnload():Void;
}
extern class Dock extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoPosition, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
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
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoPosition):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
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
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
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
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var autoPosition : Bool;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
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
	function addNode(refNode:Dynamic):Dynamic;
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
extern class DragPane extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Invert, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Invert):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Invert, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var invert : Bool;
	var lang : String;
	var observer : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
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
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
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
extern class ExpandoPane extends dijit.layout.ContentPane {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Content, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DoLayout, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:EaseIn, value:String):Void { })
	@:overload(function(property:EaseOut, value:String):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:ExtractContent, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IoArgs, value:Dynamic):Void { })
	@:overload(function(property:IsLayoutContainer, value:Bool):Void { })
	@:overload(function(property:IsLoaded, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:OnLoadDeferred, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParseOnLoad, value:Bool):Void { })
	@:overload(function(property:ParserScope, value:String):Void { })
	@:overload(function(property:Preload, value:Bool):Void { })
	@:overload(function(property:PreventCache, value:Bool):Void { })
	@:overload(function(property:PreviewOnDblClick, value:Bool):Void { })
	@:overload(function(property:PreviewOpacity, value:Float):Void { })
	@:overload(function(property:RefreshOnShow, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartExpanded, value:Bool):Void { })
	@:overload(function(property:StopParser, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Content):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DoLayout):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:EaseIn):String { })
	@:overload(function(property:EaseOut):String { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:ExtractContent):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IoArgs):Dynamic { })
	@:overload(function(property:IsLayoutContainer):Bool { })
	@:overload(function(property:IsLoaded):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:OnLoadDeferred):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParseOnLoad):Bool { })
	@:overload(function(property:ParserScope):String { })
	@:overload(function(property:Preload):Bool { })
	@:overload(function(property:PreventCache):Bool { })
	@:overload(function(property:PreviewOnDblClick):Bool { })
	@:overload(function(property:PreviewOpacity):Float { })
	@:overload(function(property:RefreshOnShow):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartExpanded):Bool { })
	@:overload(function(property:StopParser):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Content, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EaseIn, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EaseOut, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExtractContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IoArgs, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLayoutContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLoaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OnLoadDeferred, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParseOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParserScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Preload, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreventCache, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreviewOnDblClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreviewOpacity, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefreshOnShow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartExpanded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StopParser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var content : String;
	var dir : String;
	var doLayout : Bool;
	var domNode : HTMLElement;
	var duration : Float;
	var easeIn : String;
	var easeOut : String;
	var errorMessage : String;
	var extractContent : Bool;
	var focused : Bool;
	var href : String;
	var id : String;
	var ioArgs : Dynamic;
	var isLayoutContainer : Bool;
	var isLoaded : Bool;
	var lang : String;
	var loadingMessage : String;
	var onLoadDeferred : Dynamic;
	var ownerDocument : Dynamic;
	var parseOnLoad : Bool;
	var parserScope : String;
	var preload : Bool;
	var preventCache : Bool;
	var previewOnDblClick : Bool;
	var previewOpacity : Float;
	var refreshOnShow : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var startExpanded : Bool;
	var stopParser : Bool;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function cancel():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function create(params:Dynamic, srcNodeRef:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hasChildren():Bool;
	function ioMethod(args:Dynamic):Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function markupFactory(params:Dynamic, node:Dynamic, ctor:Dynamic):Dynamic;
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
	function preview():Void;
	function refresh():Dynamic;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function resize(newSize:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	@:overload(function(data:HTMLElement):Void { })
	@:overload(function(data:NodeList):Void { })
	function setContent(data:String):Void;
	@:overload(function(href:URL):Dynamic { })
	function setHref(href:String):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toggle():Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentError(error:Error):Void;
	function onDblClick(event:Dynamic):Void;
	function onDownloadEnd():Void;
	function onDownloadError(error:Error):Dynamic;
	function onDownloadStart():Dynamic;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onLoad(data:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
	function onUnload():Void;
}
extern class FloatingPane extends dojox.layout.ContentPane {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var adjustPaths : Bool;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:CleanContent, value:Bool):Void { })
	@:overload(function(property:Closable, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Content, value:String):Void { })
	@:overload(function(property:ContentClass, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Dockable, value:Bool):Void { })
	@:overload(function(property:DockTo, value:Dynamic):Void { })
	@:overload(function(property:DoLayout, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:ExecuteScripts, value:Bool):Void { })
	@:overload(function(property:ExtractContent, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:IconSrc, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IoArgs, value:Dynamic):Void { })
	@:overload(function(property:IsLayoutContainer, value:Bool):Void { })
	@:overload(function(property:IsLoaded, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:Maxable, value:Bool):Void { })
	@:overload(function(property:OnLoadDeferred, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParseOnLoad, value:Bool):Void { })
	@:overload(function(property:ParserScope, value:String):Void { })
	@:overload(function(property:Preload, value:Bool):Void { })
	@:overload(function(property:PreventCache, value:Bool):Void { })
	@:overload(function(property:RefreshOnShow, value:Bool):Void { })
	@:overload(function(property:RenderStyles, value:Bool):Void { })
	@:overload(function(property:Resizable, value:Bool):Void { })
	@:overload(function(property:ResizeAxis, value:String):Void { })
	@:overload(function(property:ScriptHasHooks, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StopParser, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AdjustPaths, value:Bool):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:CleanContent):Bool { })
	@:overload(function(property:Closable):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Content):String { })
	@:overload(function(property:ContentClass):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Dockable):Bool { })
	@:overload(function(property:DockTo):Dynamic { })
	@:overload(function(property:DoLayout):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:ExecuteScripts):Bool { })
	@:overload(function(property:ExtractContent):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:IconSrc):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IoArgs):Dynamic { })
	@:overload(function(property:IsLayoutContainer):Bool { })
	@:overload(function(property:IsLoaded):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:Maxable):Bool { })
	@:overload(function(property:OnLoadDeferred):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParseOnLoad):Bool { })
	@:overload(function(property:ParserScope):String { })
	@:overload(function(property:Preload):Bool { })
	@:overload(function(property:PreventCache):Bool { })
	@:overload(function(property:RefreshOnShow):Bool { })
	@:overload(function(property:RenderStyles):Bool { })
	@:overload(function(property:Resizable):Bool { })
	@:overload(function(property:ResizeAxis):String { })
	@:overload(function(property:ScriptHasHooks):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StopParser):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AdjustPaths):Bool;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CleanContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Closable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Content, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContentClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dockable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DockTo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExecuteScripts, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExtractContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconSrc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IoArgs, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLayoutContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLoaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Maxable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OnLoadDeferred, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParseOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParserScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Preload, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreventCache, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefreshOnShow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RenderStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Resizable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeAxis, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScriptHasHooks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StopParser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AdjustPaths, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var cleanContent : Bool;
	var closable : Bool;
	var containerNode : HTMLElement;
	var content : String;
	var contentClass : String;
	var dir : String;
	var dockable : Bool;
	var dockTo : Dynamic;
	var doLayout : Bool;
	var domNode : HTMLElement;
	var duration : Float;
	var errorMessage : String;
	var executeScripts : Bool;
	var extractContent : Bool;
	var focusNode : HTMLElement;
	var focused : Bool;
	var href : String;
	var iconSrc : String;
	var id : String;
	var ioArgs : Dynamic;
	var isLayoutContainer : Bool;
	var isLoaded : Bool;
	var lang : String;
	var loadingMessage : String;
	var maxable : Bool;
	var onLoadDeferred : Dynamic;
	var ownerDocument : Dynamic;
	var parseOnLoad : Bool;
	var parserScope : String;
	var preload : Bool;
	var preventCache : Bool;
	var refreshOnShow : Bool;
	var renderStyles : Bool;
	var resizable : Bool;
	var resizeAxis : String;
	var scriptHasHooks : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var stopParser : Bool;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	function addChild(widget:dijit._WidgetBase, ?insertIndex:Float):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function bringToTop():Void;
	function buildRendering():Void;
	function cancel():Void;
	function close():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function create(params:Dynamic, srcNodeRef:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getParent():Dynamic;
	function hasChildren():Bool;
	function hide(callback:haxe.Constraints.Function):Void;
	function ioMethod(args:Dynamic):Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function markupFactory(params:Dynamic, node:Dynamic, ctor:Dynamic):Dynamic;
	function maximize():Void;
	function minimize():Void;
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
	function refresh():Dynamic;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function resize(dim:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	@:overload(function(data:HTMLElement):Void { })
	@:overload(function(data:NodeList):Void { })
	function setContent(data:String):Void;
	@:overload(function(href:URL):Dynamic { })
	function setHref(href:String):Dynamic;
	function setTitle(title:String):Void;
	function show(?callback:haxe.Constraints.Function):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentError(error:Error):Void;
	function onDblClick(event:Dynamic):Void;
	function onDownloadEnd():Void;
	function onDownloadError(error:Error):Dynamic;
	function onDownloadStart():Dynamic;
	function onExecError(e:Event):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onLoad(data:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
	function onUnload():Void;
}
extern class GridContainer extends dojox.layout.GridContainerLite {
	function new(props:Dynamic, node:HTMLElement):Void;
	var acceptTypes : Array<Dynamic>;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoRefresh, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColWidths, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DoLayout, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DragHandleClass, value:Array<Dynamic>):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:HasResizableColumns, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IsAutoOrganized, value:Bool):Void { })
	@:overload(function(property:IsLayoutContainer, value:Bool):Void { })
	@:overload(function(property:IsLeftFixed, value:Bool):Void { })
	@:overload(function(property:IsRightFixed, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LiveResizeColumns, value:Bool):Void { })
	@:overload(function(property:MinChildWidth, value:Float):Void { })
	@:overload(function(property:MinColWidth, value:Float):Void { })
	@:overload(function(property:Mode, value:String):Void { })
	@:overload(function(property:NbZones, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AcceptTypes, value:Array<Dynamic>):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoRefresh):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColWidths):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DoLayout):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DragHandleClass):Array<Dynamic> { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:HasResizableColumns):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IsAutoOrganized):Bool { })
	@:overload(function(property:IsLayoutContainer):Bool { })
	@:overload(function(property:IsLeftFixed):Bool { })
	@:overload(function(property:IsRightFixed):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LiveResizeColumns):Bool { })
	@:overload(function(property:MinChildWidth):Float { })
	@:overload(function(property:MinColWidth):Float { })
	@:overload(function(property:Mode):String { })
	@:overload(function(property:NbZones):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AcceptTypes):Array<Dynamic>;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoRefresh, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColWidths, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DragHandleClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HasResizableColumns, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsAutoOrganized, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLayoutContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLeftFixed, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsRightFixed, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LiveResizeColumns, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinChildWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinColWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Mode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NbZones, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AcceptTypes, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoRefresh : Bool;
	var baseClass : String;
	var class : String;
	var colWidths : String;
	var containerNode : HTMLElement;
	var dir : String;
	var doLayout : Bool;
	var domNode : HTMLElement;
	var dragHandleClass : Array<Dynamic>;
	var focused : Bool;
	var hasResizableColumns : Bool;
	var id : String;
	var isAutoOrganized : Bool;
	var isLayoutContainer : Bool;
	var isLeftFixed : Bool;
	var isRightFixed : Bool;
	var lang : String;
	var liveResizeColumns : Bool;
	var minChildWidth : Float;
	var minColWidth : Float;
	var mode : String;
	var nbZones : Float;
	var ownerDocument : Dynamic;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	function addChild(child:dijit._WidgetBase, column:Float, p:Float):Dynamic;
	function addService(child:Dynamic, column:Float, p:Float):Void;
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
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disableDnd():Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function enableDnd():Void;
	function getChildren():Dynamic;
	function getDescendants():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function layout():Void;
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
	function resize():Void;
	function resizeChildAfterDragStart(node:HTMLElement, sourceArea:Dynamic, indexChild:Float):Bool;
	function resizeChildAfterDrop(node:HTMLElement, targetArea:Dynamic, indexChild:Float):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setColumns(nbColumns:Float):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
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
extern class GridContainerLite extends dijit.layout._LayoutWidget {
	function new(props:Dynamic, node:HTMLElement):Void;
	var acceptTypes : Array<Dynamic>;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoRefresh, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:ChildWidgetProperties, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColWidths, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DoLayout, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DragHandleClass, value:Array<Dynamic>):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IsAutoOrganized, value:Bool):Void { })
	@:overload(function(property:IsLayoutContainer, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:NbZones, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AcceptTypes, value:Array<Dynamic>):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoRefresh):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:ChildWidgetProperties):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColWidths):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DoLayout):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DragHandleClass):Array<Dynamic> { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IsAutoOrganized):Bool { })
	@:overload(function(property:IsLayoutContainer):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:NbZones):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AcceptTypes):Array<Dynamic>;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoRefresh, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildWidgetProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColWidths, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DragHandleClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsAutoOrganized, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLayoutContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NbZones, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AcceptTypes, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoRefresh : Bool;
	var baseClass : String;
	var ChildWidgetProperties : Dynamic;
	var class : String;
	var colWidths : String;
	var containerNode : HTMLElement;
	var dir : String;
	var doLayout : Bool;
	var domNode : HTMLElement;
	var dragHandleClass : Array<Dynamic>;
	var focused : Bool;
	var id : String;
	var isAutoOrganized : Bool;
	var isLayoutContainer : Bool;
	var lang : String;
	var nbZones : Float;
	var ownerDocument : Dynamic;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	function addChild(child:dijit._WidgetBase, column:Float, ?p:Float):Dynamic;
	function addService(child:Dynamic, column:Float, p:Float):Void;
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
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disableDnd():Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function enableDnd():Void;
	function getChildren():Dynamic;
	function getDescendants():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function layout():Void;
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
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function resizeChildAfterDragStart(node:HTMLElement, sourceArea:Dynamic, indexChild:Float):Bool;
	function resizeChildAfterDrop(node:HTMLElement, targetArea:Dynamic, indexChild:Float):Dynamic;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
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
