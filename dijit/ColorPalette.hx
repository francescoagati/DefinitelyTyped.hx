extern class _Color extends dojo._base.Color {
	function new(alias:String, row:Float, col:Dynamic, title:String):Void;
	var a : Float;
	var b : Float;
	var g : Float;
	var hcTemplate : String;
	var r : Float;
	var template : String;
	function fillCell(cell:HTMLElement, blankGif:String):Void;
	function getValue():Dynamic;
	function sanitize():Void;
	@:overload(function(color:String):haxe.Constraints.Function { })
	@:overload(function(color:Dynamic):haxe.Constraints.Function { })
	function setColor(color:Array<Dynamic>):haxe.Constraints.Function;
	function toCss(includeAlpha:Bool):String;
	function toHex():String;
	function toRgb():Array<Dynamic>;
	function toRgba():Array<Dynamic>;
	function toString():Dynamic;
}
extern class Fieldset extends dijit.TitlePane {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Content, value:String):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DoLayout, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:ExtractContent, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IoArgs, value:Dynamic):Void { })
	@:overload(function(property:IsLayoutContainer, value:Bool):Void { })
	@:overload(function(property:IsLoaded, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:OnLoadDeferred, value:Dynamic):Void { })
	@:overload(function(property:Open, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParseOnLoad, value:Bool):Void { })
	@:overload(function(property:ParserScope, value:String):Void { })
	@:overload(function(property:Preload, value:Bool):Void { })
	@:overload(function(property:PreventCache, value:Bool):Void { })
	@:overload(function(property:RefreshOnShow, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StopParser, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Toggleable, value:Bool):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Content):String { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DoLayout):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:ExtractContent):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IoArgs):Dynamic { })
	@:overload(function(property:IsLayoutContainer):Bool { })
	@:overload(function(property:IsLoaded):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:OnLoadDeferred):Dynamic { })
	@:overload(function(property:Open):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParseOnLoad):Bool { })
	@:overload(function(property:ParserScope):String { })
	@:overload(function(property:Preload):Bool { })
	@:overload(function(property:PreventCache):Bool { })
	@:overload(function(property:RefreshOnShow):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StopParser):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Toggleable):Bool { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Content, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExtractContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IoArgs, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLayoutContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLoaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OnLoadDeferred, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Open, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParseOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParserScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Preload, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreventCache, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefreshOnShow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StopParser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Toggleable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var content : String;
	var cssStateNodes : Dynamic;
	var dir : String;
	var doLayout : Bool;
	var domNode : HTMLElement;
	var duration : Float;
	var errorMessage : String;
	var extractContent : Bool;
	var focused : Bool;
	var hovering : Bool;
	var href : String;
	var id : String;
	var ioArgs : Dynamic;
	var isLayoutContainer : Bool;
	var isLoaded : Bool;
	var lang : String;
	var loadingMessage : String;
	var onLoadDeferred : Dynamic;
	var open : Bool;
	var ownerDocument : Dynamic;
	var parseOnLoad : Bool;
	var parserScope : String;
	var preload : Bool;
	var preventCache : Bool;
	var refreshOnShow : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var stopParser : Bool;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var toggleable : Bool;
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
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
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
	function setTitle(title:String):Void;
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
extern class DropDownMenu extends dijit._MenuBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var activated : Bool;
	@:overload(function(property:Active, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoFocus, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FocusedChild, value:Dynamic):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MultiCharSearchDuration, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParentMenu, value:Dynamic):Void { })
	@:overload(function(property:PassivePopupDelay, value:Float):Void { })
	@:overload(function(property:PopupDelay, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selected, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Activated, value:Bool):Void;
	@:overload(function(property:Active):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoFocus):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FocusedChild):Dynamic { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MultiCharSearchDuration):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParentMenu):Dynamic { })
	@:overload(function(property:PassivePopupDelay):Float { })
	@:overload(function(property:PopupDelay):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selected):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Activated):Bool;
	@:overload(function(property:Active, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FocusedChild, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MultiCharSearchDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParentMenu, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PassivePopupDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PopupDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Activated, callback:{ }):{ function unwatch():Void; };
	var active : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoFocus : Bool;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var focusedChild : Dynamic;
	var hovering : Bool;
	var id : String;
	var lang : String;
	var multiCharSearchDuration : Float;
	var ownerDocument : Dynamic;
	var parentMenu : Dynamic;
	var passivePopupDelay : Float;
	var popupDelay : Float;
	var searchContainerNode : Bool;
	var selected : Dynamic;
	var srcNodeRef : HTMLElement;
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
	function childSelector(node:HTMLElement):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function connectKeyNavHandlers(prevKeyCodes:dojo.Keys, nextKeyCodes:dojo.Keys):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function focusChild(widget:dijit._WidgetBase, last:Bool):Void;
	function focusFirstChild():Void;
	function focusLastChild():Void;
	function focusNext():Void;
	function focusPrev():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
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
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function startupKeyNavChildren():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onCancel(closeAll:Bool):Void;
	function onClick(event:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	function onExecute():Void;
	function onFocus():Void;
	function onHide():Void;
	function onItemHover(item:dijit.MenuItem):Void;
	function onItemUnhover(item:dijit.MenuItem):Void;
	function onKeyboardSearch(item:dijit.MenuItem, evt:Event, searchString:String, numMatches:Float):Void;
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
extern class Editor extends dijit._editor.RichText {
	function new(params:Dynamic, srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CaptureEvents, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:CustomUndo, value:Bool):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisableSpellCheck, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:EditActionInterval, value:Float):Void { })
	@:overload(function(property:ExtraPlugins, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FocusOnLoad, value:Bool):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InheritWidth, value:Bool):Void { })
	@:overload(function(property:IsClosed, value:Bool):Void { })
	@:overload(function(property:IsLoaded, value:Bool):Void { })
	@:overload(function(property:IsTabIndent, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MinHeight, value:String):Void { })
	@:overload(function(property:Name, value:Dynamic):Void { })
	@:overload(function(property:OnLoadDeferred, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Plugins, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:StyleSheets, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UpdateInterval, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CaptureEvents):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:CustomUndo):Bool { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisableSpellCheck):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:EditActionInterval):Float { })
	@:overload(function(property:ExtraPlugins):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FocusOnLoad):Bool { })
	@:overload(function(property:Height):String { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InheritWidth):Bool { })
	@:overload(function(property:IsClosed):Bool { })
	@:overload(function(property:IsLoaded):Bool { })
	@:overload(function(property:IsTabIndent):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MinHeight):String { })
	@:overload(function(property:Name):Dynamic { })
	@:overload(function(property:OnLoadDeferred):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Plugins):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:StyleSheets):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UpdateInterval):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CaptureEvents, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CustomUndo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisableSpellCheck, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EditActionInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExtraPlugins, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FocusOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InheritWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsClosed, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLoaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsTabIndent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OnLoadDeferred, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Plugins, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StyleSheets, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UpdateInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var captureEvents : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var customUndo : Bool;
	var dir : String;
	var disabled : Bool;
	var disableSpellCheck : Bool;
	var domNode : HTMLElement;
	var editActionInterval : Float;
	var extraPlugins : Dynamic;
	var focused : Bool;
	var focusOnLoad : Bool;
	var height : String;
	var hovering : Bool;
	var id : String;
	var inheritWidth : Bool;
	var isClosed : Bool;
	var isLoaded : Bool;
	var isTabIndent : Bool;
	var lang : String;
	var minHeight : String;
	var name : Dynamic;
	var onLoadDeferred : Dynamic;
	var ownerDocument : Dynamic;
	var plugins : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var styleSheets : String;
	var title : String;
	var tooltip : String;
	var updateInterval : Float;
	@:overload(function(key:Float, ctrl:Bool, shift:Bool, handler:haxe.Constraints.Function):Void { })
	function addKeyHandler(key:String, ctrl:Bool, shift:Bool, handler:haxe.Constraints.Function):Void;
	@:overload(function(plugin:Dynamic, index:Float):Void { })
	@:overload(function(plugin:haxe.Constraints.Function, index:Float):Void { })
	function addPlugin(plugin:String, index:Float):Void;
	function addStyleSheet(uri:dojo._base.Url):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function blur():Void;
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
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function execCommand(cmd:Dynamic):Dynamic;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getFooterHeight():Dynamic;
	function getHeaderHeight():Dynamic;
	function getNodeChildrenHtml(dom:HTMLElement):Dynamic;
	function getNodeHtml(node:HTMLElement):Dynamic;
	function getParent():Dynamic;
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
	function queryCommandEnabled(cmd:Dynamic):Dynamic;
	function queryCommandState(command:Dynamic):Dynamic;
	function queryCommandValue(command:Dynamic):Dynamic;
	function removeStyleSheet(uri:dojo._base.Url):Void;
	function replaceValue(html:String):Void;
	function resize(size:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setupDefaultShortcuts():Void;
	function setValue(html:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBeforeActivate():Void;
	function onBlur():Void;
	function onChange(newContent:Dynamic):Void;
	function onClick():Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(e:Dynamic):Void;
	function onLoad(html:String):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
}
extern class InlineEditBox extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:AutoSave, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:ButtonCancel, value:String):Void { })
	@:overload(function(property:ButtonSave, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editing, value:Bool):Void { })
	@:overload(function(property:EditorParams, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:NoValueIndicator, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:RenderAsHtml, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(property:Width, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:AutoSave):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:ButtonCancel):String { })
	@:overload(function(property:ButtonSave):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editing):Bool { })
	@:overload(function(property:EditorParams):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:NoValueIndicator):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:RenderAsHtml):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(property:Width):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:AutoSave, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ButtonCancel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ButtonSave, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editing, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EditorParams, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoValueIndicator, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RenderAsHtml, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var autoSave : Bool;
	var baseClass : String;
	var buttonCancel : String;
	var buttonSave : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var editing : Bool;
	var editorParams : Dynamic;
	var focused : Bool;
	var id : String;
	var lang : String;
	var noValueIndicator : String;
	var ownerDocument : Dynamic;
	var renderAsHtml : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var value : String;
	var width : String;
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
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function editor():Void;
	function editorWrapper():Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getValue():Dynamic;
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
	function setDisabled(disabled:Bool):Void;
	function setValue(val:String):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onCancel():Void;
	function onChange(value:Dynamic):Void;
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
