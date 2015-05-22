typedef ChildSwapViewProperties = {
	var lazy : Bool;
};
extern class CheckBox extends dojox.mobile.ToggleButton {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var alt : String;
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Checked, value:Bool):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Alt, value:String):Void;
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Checked):Bool { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Alt):String;
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Checked, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Alt, callback:{ }):{ function unwatch():Void; };
	var aria-label : String;
	var attributeMap : Dynamic;
	var baseClass : String;
	var checked : Bool;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var label : String;
	var lang : String;
	var name : String;
	var ownerDocument : Dynamic;
	var readOnly : Bool;
	var scrollOnFocus : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : String;
	function buildRendering():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getParent():Dynamic;
	function isFocusable():Bool;
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
	function reset():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(e:Event):Bool;
	function onFocus():Void;
}
extern class ComboBox extends dojox.mobile.TextBox {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var alt : String;
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoComplete, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisplayedValue, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DropDown, value:Dynamic):Void { })
	@:overload(function(property:DropDownClass, value:String):Void { })
	@:overload(function(property:DropDownPosition, value:Dynamic):Void { })
	@:overload(function(property:FetchProperties, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:HighlightMatch, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IgnoreCase, value:Bool):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Item, value:Dynamic):Void { })
	@:overload(function(property:LabelAttr, value:Dynamic):Void { })
	@:overload(function(property:LabelType, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lowercase, value:Bool):Void { })
	@:overload(function(property:MaxHeight, value:Float):Void { })
	@:overload(function(property:MaxLength, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PageSize, value:Float):Void { })
	@:overload(function(property:PlaceHolder, value:String):Void { })
	@:overload(function(property:Propercase, value:Bool):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryExpr, value:String):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchAttr, value:String):Void { })
	@:overload(function(property:SearchDelay, value:Float):Void { })
	@:overload(function(property:SelectOnClick, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Trim, value:Bool):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Uppercase, value:Bool):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Alt, value:String):Void;
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoComplete):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisplayedValue):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DropDown):Dynamic { })
	@:overload(function(property:DropDownClass):String { })
	@:overload(function(property:DropDownPosition):Dynamic { })
	@:overload(function(property:FetchProperties):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:HighlightMatch):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IgnoreCase):Bool { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Item):Dynamic { })
	@:overload(function(property:LabelAttr):Dynamic { })
	@:overload(function(property:LabelType):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lowercase):Bool { })
	@:overload(function(property:MaxHeight):Float { })
	@:overload(function(property:MaxLength):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PageSize):Float { })
	@:overload(function(property:PlaceHolder):String { })
	@:overload(function(property:Propercase):Bool { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryExpr):String { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchAttr):String { })
	@:overload(function(property:SearchDelay):Float { })
	@:overload(function(property:SelectOnClick):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Trim):Bool { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Uppercase):Bool { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Alt):String;
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoComplete, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDown, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FetchProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HighlightMatch, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IgnoreCase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Item, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lowercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PageSize, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceHolder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryExpr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOnClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Trim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Uppercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Alt, callback:{ }):{ function unwatch():Void; };
	var aria-label : String;
	var attributeMap : Dynamic;
	var autoComplete : Bool;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var disabled : Bool;
	var displayedValue : String;
	var domNode : HTMLElement;
	var dropDown : Dynamic;
	var dropDownClass : String;
	var dropDownPosition : Dynamic;
	var fetchProperties : Dynamic;
	var focused : Bool;
	var highlightMatch : String;
	var id : String;
	var ignoreCase : Bool;
	var intermediateChanges : Bool;
	var item : Dynamic;
	var labelAttr : Dynamic;
	var labelType : String;
	var lang : String;
	var lowercase : Bool;
	var maxHeight : Float;
	var maxLength : String;
	var name : String;
	var ownerDocument : Dynamic;
	var pageSize : Float;
	var placeHolder : String;
	var propercase : Bool;
	var query : Dynamic;
	var queryExpr : String;
	var readOnly : Bool;
	var scrollOnFocus : Bool;
	var searchAttr : String;
	var searchDelay : Float;
	var selectOnClick : Bool;
	var srcNodeRef : HTMLElement;
	var store : Dynamic;
	var style : String;
	var tabIndex : String;
	var title : String;
	var tooltip : String;
	var trim : Bool;
	var type : String;
	var uppercase : Bool;
	var value : String;
	function buildRendering():Void;
	function closeDropDown():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function doHighlight(label:String, find:String):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function filter(val:Dynamic):Dynamic;
	function focus():Void;
	function format(value:String, constraints:Dynamic):String;
	function getChildren():Array<Dynamic>;
	function getParent():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function isLoaded():Bool;
	function loadDropDown(callback:haxe.Constraints.Function):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function openDropDown():Dynamic;
	function own():Dynamic;
	function parse(value:String, constraints:Dynamic):String;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function reset():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onFocus():Void;
	function onInput(e:Dynamic):Void;
	function onSearch(results:Dynamic, query:Dynamic, options:Dynamic):Void;
}
extern class Container extends dojox.mobile.Pane {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
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
	@:overload(function(property:Lang):String { })
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
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
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
	var lang : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
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
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
	function resize():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
extern class ContentPane extends dojox.mobile.Container {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Content, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:ExecuteScripts, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lazy, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParseOnLoad, value:Bool):Void { })
	@:overload(function(property:Prog, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Content):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:ExecuteScripts):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lazy):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParseOnLoad):Bool { })
	@:overload(function(property:Prog):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Content, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExecuteScripts, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lazy, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParseOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Prog, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var content : String;
	var dir : String;
	var domNode : HTMLElement;
	var executeScripts : Bool;
	var focused : Bool;
	var href : String;
	var id : String;
	var lang : String;
	var lazy : String;
	var ownerDocument : Dynamic;
	var parseOnLoad : Bool;
	var prog : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
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
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function errorHandler(err:Dynamic):Void;
	function execScript(html:String):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function load():Void;
	function loadHandler(response:String):Void;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
	function onLoad():Bool;
}
extern class DataCarousel extends dojox.mobile.Carousel {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:ItemWidth, value:Float):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:NavButton, value:Bool):Void { })
	@:overload(function(property:NumVisible, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PageIndicator, value:Bool):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:Selectable, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
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
	@:overload(function(property:Height):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:ItemWidth):Float { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:NavButton):Bool { })
	@:overload(function(property:NumVisible):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PageIndicator):Bool { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:Selectable):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Store):Dynamic { })
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
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NavButton, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NumVisible, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PageIndicator, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selectable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
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
	var height : String;
	var id : String;
	var itemWidth : Float;
	var lang : String;
	var navButton : Bool;
	var numVisible : Float;
	var ownerDocument : Dynamic;
	var pageIndicator : Bool;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var selectable : Bool;
	var srcNodeRef : HTMLElement;
	var store : Dynamic;
	var style : String;
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
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function fillPages():Void;
	function getChildren():Array<Dynamic>;
	function getIndexByItemWidget(w:dijit._WidgetBase):Float;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getItemWidgetByIndex(index:Float):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getParentView(node:HTMLElement):Dynamic;
	function getPreviousSibling():Dynamic;
	function handleViewChanged(view:Dynamic):Void;
	function hasChildren():Bool;
	function instantiateView(view:Dynamic):Void;
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
	function refresh():Dynamic;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function resize():Void;
	function resizeItems():Void;
	@:overload(function(itemWidget:Float):Void { })
	function select(itemWidget:dijit._WidgetBase):Void;
	@:overload(function(query:Dynamic, queryOptions:Dynamic):Dynamic { })
	function setQuery(query:dojo.data.api.Request, queryOptions:Dynamic):Dynamic;
	@:overload(function(store:dojo.data.api.Read, query:Dynamic, queryOptions:Dynamic):Dynamic { })
	function setStore(store:dojo.data.api.Read, query:dojo.data.api.Request, queryOptions:Dynamic):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onClick(e:Event):Void;
	function onComplete(items:Array<Dynamic>):Void;
	function onDelete(item:Dynamic, removedFrom:Float):Void;
	function onError(errText:String):Void;
	function onFocus():Void;
	function onNew(newItem:Dynamic, parentInfo:Dynamic):Void;
	function onNextBtnClick(e:Event):Void;
	function onPrevBtnClick(e:Event):Void;
	function onSet(item:Dynamic, attribute:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
	function onStoreClose(request:Dynamic):Void;
	function onUpdate(item:Dynamic, insertedInto:Float):Void;
}
extern class EdgeToEdgeCategory extends dojox.mobile.RoundRectCategory {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Tag, value:String):Void { })
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
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Tag):String { })
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
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
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
	var label : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tag : String;
	var title : String;
	var tooltip : String;
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
	function getIndexInParent():Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
	function onBlur():Void;
	function onFocus():Void;
}
extern class EdgeToEdgeList extends dojox.mobile.RoundRectList {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EditableMixinClass, value:String):Void { })
	@:overload(function(property:FilterBoxClass, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:IconBase, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Select, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Stateful, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SyncWithViews, value:Bool):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EditableMixinClass):String { })
	@:overload(function(property:FilterBoxClass):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:IconBase):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Select):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Stateful):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SyncWithViews):Bool { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EditableMixinClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FilterBoxClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconBase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Select, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Stateful, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SyncWithViews, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var editableMixinClass : String;
	var filterBoxClass : String;
	var focused : Bool;
	var iconBase : String;
	var iconPos : String;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var select : String;
	var srcNodeRef : HTMLElement;
	var stateful : Bool;
	var style : String;
	var syncWithViews : Bool;
	var tag : String;
	var title : String;
	var tooltip : String;
	var transition : String;
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
	function deselectAll():Void;
	function deselectItem(item:dojox.mobile.ListItem):Void;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
	function resize():Void;
	function selectItem(item:dojox.mobile.ListItem):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onCheckStateChanged(listItem:dijit._WidgetBase, newState:String):Void;
	function onFocus():Void;
}
extern class EdgeToEdgeDataList extends dojox.mobile.EdgeToEdgeList {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var append : Bool;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EditableMixinClass, value:String):Void { })
	@:overload(function(property:FilterBoxClass, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:IconBase, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:ItemMap, value:Dynamic):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:Select, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Stateful, value:Bool):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SyncWithViews, value:Bool):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Append, value:Bool):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EditableMixinClass):String { })
	@:overload(function(property:FilterBoxClass):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:IconBase):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:ItemMap):Dynamic { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:Select):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Stateful):Bool { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SyncWithViews):Bool { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Append):Bool;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EditableMixinClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FilterBoxClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconBase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Select, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Stateful, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SyncWithViews, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Append, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var editableMixinClass : String;
	var filterBoxClass : String;
	var focused : Bool;
	var iconBase : String;
	var iconPos : String;
	var id : String;
	var itemMap : Dynamic;
	var lang : String;
	var ownerDocument : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var select : String;
	var srcNodeRef : HTMLElement;
	var stateful : Bool;
	var store : Dynamic;
	var style : String;
	var syncWithViews : Bool;
	var tag : String;
	var title : String;
	var tooltip : String;
	var transition : String;
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
	function createListItem(item:Dynamic):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function deselectAll():Void;
	function deselectItem(item:dojox.mobile.ListItem):Void;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function generateList(items:Array<Dynamic>, dataObject:Dynamic):Void;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function itemRenderer():Void;
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
	function resize():Void;
	function selectItem(item:dojox.mobile.ListItem):Void;
	@:overload(function(query:Dynamic, queryOptions:Dynamic):Dynamic { })
	function setQuery(query:dojo.data.api.Request, queryOptions:Dynamic):Dynamic;
	@:overload(function(store:dojo.data.api.Read, query:Dynamic, queryOptions:Dynamic):Dynamic { })
	function setStore(store:dojo.data.api.Read, query:dojo.data.api.Request, queryOptions:Dynamic):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onCheckStateChanged(listItem:dijit._WidgetBase, newState:String):Void;
	function onComplete(items:Array<Dynamic>, request:Dynamic):Void;
	function onDelete(deletedItem:Dynamic):Void;
	function onError(errorData:Dynamic, request:Dynamic):Void;
	function onFocus():Void;
	function onNew(newItem:Dynamic, parentInfo:Dynamic):Void;
	@:overload(function(item:Dynamic, attribute:String, oldValue:Array<Dynamic>, newValue:Dynamic):Void { })
	@:overload(function(item:Dynamic, attribute:String, oldValue:Dynamic, newValue:Array<Dynamic>):Void { })
	@:overload(function(item:Dynamic, attribute:String, oldValue:Array<Dynamic>, newValue:Array<Dynamic>):Void { })
	function onSet(item:Dynamic, attribute:String, oldValue:Dynamic, newValue:Dynamic):Void;
	function onStoreClose(request:Dynamic):Void;
}
extern class EdgeToEdgeStoreList extends dojox.mobile.EdgeToEdgeList {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var append : Bool;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:ChildrenProperty, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EditableMixinClass, value:String):Void { })
	@:overload(function(property:FilterBoxClass, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:IconBase, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:ItemMap, value:Dynamic):Void { })
	@:overload(function(property:LabelProperty, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:Select, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Stateful, value:Bool):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SyncWithViews, value:Bool):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Append, value:Bool):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:ChildrenProperty):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EditableMixinClass):String { })
	@:overload(function(property:FilterBoxClass):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:IconBase):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:ItemMap):Dynamic { })
	@:overload(function(property:LabelProperty):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:Select):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Stateful):Bool { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SyncWithViews):Bool { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Append):Bool;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildrenProperty, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EditableMixinClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FilterBoxClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconBase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelProperty, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Select, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Stateful, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SyncWithViews, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Append, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var childrenProperty : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var editableMixinClass : String;
	var filterBoxClass : String;
	var focused : Bool;
	var iconBase : String;
	var iconPos : String;
	var id : String;
	var itemMap : Dynamic;
	var labelProperty : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var select : String;
	var srcNodeRef : HTMLElement;
	var stateful : Bool;
	var store : Dynamic;
	var style : String;
	var syncWithViews : Bool;
	var tag : String;
	var title : String;
	var tooltip : String;
	var transition : String;
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
	function createListItem(item:Dynamic):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function deselectAll():Void;
	function deselectItem(item:dojox.mobile.ListItem):Void;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function generateList(items:Array<Dynamic>):Void;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function itemRenderer():Void;
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
	function resize():Void;
	function selectItem(item:dojox.mobile.ListItem):Void;
	function setQuery(query:String, queryOptions:Dynamic):Dynamic;
	function setStore(store:dojo.store.api.Store, query:String, queryOptions:Dynamic):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onAdd(item:Dynamic, insertedInto:Float):Void;
	function onBlur():Void;
	function onCheckStateChanged(listItem:dijit._WidgetBase, newState:String):Void;
	function onComplete(items:Array<Dynamic>):Void;
	function onDelete(item:Dynamic, removedFrom:Float):Void;
	function onError(errorData:Dynamic):Void;
	function onFocus():Void;
	function onUpdate(item:Dynamic, insertedInto:Float):Void;
}
extern class ExpandingTextArea extends dojox.mobile.TextArea {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var alt : String;
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisplayedValue, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lowercase, value:Bool):Void { })
	@:overload(function(property:MaxLength, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceHolder, value:String):Void { })
	@:overload(function(property:Propercase, value:Bool):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SelectOnClick, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Trim, value:Bool):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Uppercase, value:Bool):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Alt, value:String):Void;
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisplayedValue):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lowercase):Bool { })
	@:overload(function(property:MaxLength):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceHolder):String { })
	@:overload(function(property:Propercase):Bool { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SelectOnClick):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Trim):Bool { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Uppercase):Bool { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Alt):String;
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lowercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceHolder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOnClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Trim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Uppercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Alt, callback:{ }):{ function unwatch():Void; };
	var aria-label : String;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var disabled : Bool;
	var displayedValue : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var lang : String;
	var lowercase : Bool;
	var maxLength : String;
	var name : String;
	var ownerDocument : Dynamic;
	var placeHolder : String;
	var propercase : Bool;
	var readOnly : Bool;
	var scrollOnFocus : Bool;
	var selectOnClick : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var title : String;
	var tooltip : String;
	var trim : Bool;
	var type : String;
	var uppercase : Bool;
	var value : String;
	function buildRendering():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function filter(val:Dynamic):Dynamic;
	function focus():Void;
	function format(value:String, constraints:Dynamic):String;
	function getChildren():Array<Dynamic>;
	function getParent():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function own():Dynamic;
	function parse(value:String, constraints:Dynamic):String;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function reset():Void;
	function resize():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onFocus():Void;
	function onInput(event:Dynamic):Void;
}
extern class FilteredListMixin {
	function new():Void;
	var filterBoxRef : String;
	var filterBoxVisible : Bool;
	var placeHolder : String;
	function destroy(?preserveDom:Bool):Void;
	function getFilterBox():Dynamic;
	function getScrollableView():Dynamic;
	function startup():Void;
	function onFilter(results:Dynamic, query:Dynamic, options:Dynamic):Void;
}
extern class FixedSplitter extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ScreenSizeAware, value:Bool):Void { })
	@:overload(function(property:ScreenSizeAwareClass, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VariablePane, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ScreenSizeAware):Bool { })
	@:overload(function(property:ScreenSizeAwareClass):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VariablePane):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScreenSizeAware, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScreenSizeAwareClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VariablePane, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var orientation : String;
	var ownerDocument : Dynamic;
	var screenSizeAware : Bool;
	var screenSizeAwareClass : String;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var variablePane : Float;
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
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
	function resize():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
extern class FixedSplitterPane extends dojox.mobile.Container {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
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
	@:overload(function(property:Lang):String { })
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
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
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
	var lang : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
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
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
	function resize():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
extern class FormLayout extends dojox.mobile.Container {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Columns, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:RightAlign, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Columns):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:RightAlign):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Columns, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RightAlign, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var columns : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var rightAlign : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
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
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
	function resize():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
extern class GridLayout extends dojox.mobile.IconMenu {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:ChildItemClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Cols, value:Float):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:IconBase, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SelectOne, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:ChildItemClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Cols):Float { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:IconBase):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SelectOne):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildItemClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cols, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconBase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOne, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var childItemClass : String;
	var class : String;
	var cols : Float;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var iconBase : String;
	var iconPos : String;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var selectOne : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tag : String;
	var title : String;
	var tooltip : String;
	var transition : String;
	function addChild(widget:Dynamic, insertIndex:Float):Void;
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
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hasChildren():Bool;
	function hide():Void;
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
	function refresh():Void;
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
extern class Heading extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Back, value:String):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Busy, value:Bool):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:IconBase, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MoveTo, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ProgStyle, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Back):String { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Busy):Bool { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:IconBase):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MoveTo):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ProgStyle):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Back, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Busy, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconBase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveTo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ProgStyle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var back : String;
	var baseClass : String;
	var busy : Bool;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var href : String;
	var iconBase : String;
	var id : String;
	var label : String;
	var lang : String;
	var moveTo : String;
	var ownerDocument : Dynamic;
	var progStyle : String;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tag : String;
	var title : String;
	var tooltip : String;
	var transition : String;
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
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
	function resize():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
extern class Icon {
	function new(?args:Dynamic, ?node:HTMLElement):Void;
	var alt : String;
	var icon : String;
	var iconPos : String;
	var tag : String;
}
extern class IconContainer extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Back, value:String):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultIcon, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EditableMixinClass, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:IconBase, value:String):Void { })
	@:overload(function(property:IconItemPaneClass, value:String):Void { })
	@:overload(function(property:IconItemPaneContainerClass, value:String):Void { })
	@:overload(function(property:IconItemPaneContainerProps, value:Dynamic):Void { })
	@:overload(function(property:IconItemPaneProps, value:Dynamic):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PressedIconOpacity, value:Float):Void { })
	@:overload(function(property:Single, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Back):String { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultIcon):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EditableMixinClass):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:IconBase):String { })
	@:overload(function(property:IconItemPaneClass):String { })
	@:overload(function(property:IconItemPaneContainerClass):String { })
	@:overload(function(property:IconItemPaneContainerProps):Dynamic { })
	@:overload(function(property:IconItemPaneProps):Dynamic { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PressedIconOpacity):Float { })
	@:overload(function(property:Single):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Back, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultIcon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EditableMixinClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconBase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconItemPaneClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconItemPaneContainerClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconItemPaneContainerProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconItemPaneProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PressedIconOpacity, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Single, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var back : String;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var defaultIcon : String;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var editableMixinClass : String;
	var focused : Bool;
	var iconBase : String;
	var iconItemPaneClass : String;
	var iconItemPaneContainerClass : String;
	var iconItemPaneContainerProps : Dynamic;
	var iconItemPaneProps : Dynamic;
	var iconPos : String;
	var id : String;
	var label : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var pressedIconOpacity : Float;
	var single : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tag : String;
	var title : String;
	var tooltip : String;
	var transition : String;
	function addChild(widget:Dynamic, insertIndex:Float):Void;
	function buildRendering():Void;
	function closeAll():Void;
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
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
extern class IconItem extends dojox.mobile._ItemBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var alt : String;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:Back, value:Bool):Void { })
	@:overload(function(property:Badge, value:String):Void { })
	@:overload(function(property:BadgeClass, value:String):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Callback, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Clickable, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Content, value:String):Void { })
	@:overload(function(property:Deletable, value:Bool):Void { })
	@:overload(function(property:DeleteIcon, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:HrefTarget, value:String):Void { })
	@:overload(function(property:Icon, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lazy, value:String):Void { })
	@:overload(function(property:MoveTo, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParamsToInherit, value:String):Void { })
	@:overload(function(property:Requires, value:String):Void { })
	@:overload(function(property:Scene, value:String):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Timeout, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Toggle, value:Bool):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(property:TransitionDir, value:Float):Void { })
	@:overload(function(property:TransitionOptions, value:Dynamic):Void { })
	@:overload(function(property:Url, value:String):Void { })
	@:overload(function(property:UrlTarget, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Alt, value:String):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:Back):Bool { })
	@:overload(function(property:Badge):String { })
	@:overload(function(property:BadgeClass):String { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Callback):haxe.Constraints.Function { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Clickable):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Content):String { })
	@:overload(function(property:Deletable):Bool { })
	@:overload(function(property:DeleteIcon):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:HrefTarget):String { })
	@:overload(function(property:Icon):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lazy):String { })
	@:overload(function(property:MoveTo):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParamsToInherit):String { })
	@:overload(function(property:Requires):String { })
	@:overload(function(property:Scene):String { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Timeout):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Toggle):Bool { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(property:TransitionDir):Float { })
	@:overload(function(property:TransitionOptions):Dynamic { })
	@:overload(function(property:Url):String { })
	@:overload(function(property:UrlTarget):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Alt):String;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Back, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Badge, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BadgeClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Callback, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Clickable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Content, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Deletable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DeleteIcon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HrefTarget, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Icon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lazy, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveTo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParamsToInherit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Requires, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scene, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Timeout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Toggle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TransitionDir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TransitionOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Url, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UrlTarget, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Alt, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var back : Bool;
	var badge : String;
	var badgeClass : String;
	var baseClass : String;
	var callback : haxe.Constraints.Function;
	var class : String;
	var clickable : Bool;
	var containerNode : HTMLElement;
	var content : String;
	var deletable : Bool;
	var deleteIcon : String;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var href : String;
	var hrefTarget : String;
	var icon : String;
	var iconPos : String;
	var id : String;
	var label : String;
	var lang : String;
	var lazy : String;
	var moveTo : String;
	var ownerDocument : Dynamic;
	var paramsToInherit : String;
	var requires : String;
	var scene : String;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var tag : String;
	var timeout : String;
	var title : String;
	var toggle : Bool;
	var tooltip : String;
	var transition : String;
	var transitionDir : Float;
	var transitionOptions : Dynamic;
	var url : String;
	var urlTarget : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	function buildRendering():Void;
	function cancel():Void;
	function close(noAnimation:Bool):Void;
	function closeIconClicked(e:Event):Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function defaultClickAction(e:Event):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function getTransOpts():String;
	function handleSelection(e:Event):Void;
	function hasChildren():Bool;
	function highlight(timeout:Float):Void;
	function inheritParams():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function isOpen(e:Dynamic):Dynamic;
	function makeTransition(e:Event):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function open(e:Dynamic):Void;
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
	function scrollIntoView(node:HTMLElement):Void;
	function setTransitionPos(e:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	@:overload(function(moveTo:Dynamic, href:String, url:String, scene:String):Void { })
	function transitionTo(moveTo:String, href:String, url:String, scene:String):Void;
	function unhighlight():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function userClickAction(e:Event):Void;
	function onBlur():Void;
	function onClick(e:Event):Void;
	function onClose():Void;
	function onFocus():Void;
	function onOpen():Void;
	function onTouchStart(e:Event):Void;
}
extern class IconMenu extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:ChildItemClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Cols, value:Float):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:IconBase, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SelectOne, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:ChildItemClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Cols):Float { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:IconBase):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SelectOne):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildItemClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cols, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconBase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOne, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var childItemClass : String;
	var class : String;
	var cols : Float;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var iconBase : String;
	var iconPos : String;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var selectOne : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tag : String;
	var title : String;
	var tooltip : String;
	var transition : String;
	function addChild(widget:Dynamic, insertIndex:Float):Void;
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
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hasChildren():Bool;
	function hide():Void;
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
	function refresh():Void;
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
extern class IconMenuItem extends dojox.mobile._ItemBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var alt : String;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:Back, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Callback, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Clickable, value:Bool):Void { })
	@:overload(function(property:CloseOnAction, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:HrefTarget, value:String):Void { })
	@:overload(function(property:Icon, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MoveTo, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParamsToInherit, value:String):Void { })
	@:overload(function(property:Scene, value:String):Void { })
	@:overload(function(property:SelColor, value:String):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Toggle, value:Bool):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(property:TransitionDir, value:Float):Void { })
	@:overload(function(property:TransitionOptions, value:Dynamic):Void { })
	@:overload(function(property:Url, value:String):Void { })
	@:overload(function(property:UrlTarget, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Alt, value:String):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:Back):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Callback):haxe.Constraints.Function { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Clickable):Bool { })
	@:overload(function(property:CloseOnAction):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:HrefTarget):String { })
	@:overload(function(property:Icon):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MoveTo):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParamsToInherit):String { })
	@:overload(function(property:Scene):String { })
	@:overload(function(property:SelColor):String { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Toggle):Bool { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(property:TransitionDir):Float { })
	@:overload(function(property:TransitionOptions):Dynamic { })
	@:overload(function(property:Url):String { })
	@:overload(function(property:UrlTarget):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Alt):String;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Back, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Callback, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Clickable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CloseOnAction, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HrefTarget, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Icon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveTo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParamsToInherit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scene, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Toggle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TransitionDir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TransitionOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Url, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UrlTarget, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Alt, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var back : Bool;
	var baseClass : String;
	var callback : haxe.Constraints.Function;
	var class : String;
	var clickable : Bool;
	var closeOnAction : Bool;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var href : String;
	var hrefTarget : String;
	var icon : String;
	var iconPos : String;
	var id : String;
	var label : String;
	var lang : String;
	var moveTo : String;
	var ownerDocument : Dynamic;
	var paramsToInherit : String;
	var scene : String;
	var selColor : String;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var tag : String;
	var title : String;
	var toggle : Bool;
	var tooltip : String;
	var transition : String;
	var transitionDir : Float;
	var transitionOptions : Dynamic;
	var url : String;
	var urlTarget : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
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
	function defaultClickAction(e:Event):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function getTransOpts():String;
	function handleSelection(e:Event):Void;
	function hasChildren():Bool;
	function inheritParams():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function makeTransition(e:Event):Void;
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
	function setTransitionPos(e:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	@:overload(function(moveTo:Dynamic, href:String, url:String, scene:String):Void { })
	function transitionTo(moveTo:String, href:String, url:String, scene:String):Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function userClickAction(e:Event):Void;
	function onBlur():Void;
	function onClick(e:Event):Void;
	function onFocus():Void;
	function onTouchStart(e:Event):Void;
}
extern class LongListMixin {
	function new():Void;
	var maxPages : Float;
	var pageSize : Float;
	var unloadPages : Float;
	function addChild(widget:dijit._Widget, insertIndex:Float):Void;
	function generateList(items:Array<Dynamic>):Void;
	function getChildren():Dynamic;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function resize():Void;
	function startup():Void;
}
extern class ListItem extends dojox.mobile._ItemBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var alt : String;
	@:overload(function(property:AnchorLabel, value:Bool):Void { })
	@:overload(function(property:ArrowClass, value:String):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:Back, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Busy, value:Bool):Void { })
	@:overload(function(property:Callback, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CheckClass, value:String):Void { })
	@:overload(function(property:Checked, value:Bool):Void { })
	@:overload(function(property:ChildWidgetProperties, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Clickable, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DeleteIcon, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Header, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:HrefTarget, value:String):Void { })
	@:overload(function(property:Icon, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MoveTo, value:String):Void { })
	@:overload(function(property:NoArrow, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParamsToInherit, value:String):Void { })
	@:overload(function(property:ProgStyle, value:String):Void { })
	@:overload(function(property:RightIcon, value:String):Void { })
	@:overload(function(property:RightIcon2, value:String):Void { })
	@:overload(function(property:RightIcon2Title, value:String):Void { })
	@:overload(function(property:RightIconTitle, value:String):Void { })
	@:overload(function(property:RightText, value:String):Void { })
	@:overload(function(property:Scene, value:String):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:Tag, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Toggle, value:Bool):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(property:TransitionDir, value:Float):Void { })
	@:overload(function(property:TransitionOptions, value:Dynamic):Void { })
	@:overload(function(property:UncheckClass, value:String):Void { })
	@:overload(function(property:Url, value:String):Void { })
	@:overload(function(property:UrlTarget, value:String):Void { })
	@:overload(function(property:VariableHeight, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Alt, value:String):Void;
	@:overload(function(property:AnchorLabel):Bool { })
	@:overload(function(property:ArrowClass):String { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:Back):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Busy):Bool { })
	@:overload(function(property:Callback):haxe.Constraints.Function { })
	@:overload(function(property:CheckClass):String { })
	@:overload(function(property:Checked):Bool { })
	@:overload(function(property:ChildWidgetProperties):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Clickable):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DeleteIcon):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Header):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:HrefTarget):String { })
	@:overload(function(property:Icon):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MoveTo):String { })
	@:overload(function(property:NoArrow):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParamsToInherit):String { })
	@:overload(function(property:ProgStyle):String { })
	@:overload(function(property:RightIcon):String { })
	@:overload(function(property:RightIcon2):String { })
	@:overload(function(property:RightIcon2Title):String { })
	@:overload(function(property:RightIconTitle):String { })
	@:overload(function(property:RightText):String { })
	@:overload(function(property:Scene):String { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:Tag):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Toggle):Bool { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(property:TransitionDir):Float { })
	@:overload(function(property:TransitionOptions):Dynamic { })
	@:overload(function(property:UncheckClass):String { })
	@:overload(function(property:Url):String { })
	@:overload(function(property:UrlTarget):String { })
	@:overload(function(property:VariableHeight):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Alt):String;
	@:overload(function(property:AnchorLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ArrowClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Back, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Busy, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Callback, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CheckClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Checked, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildWidgetProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Clickable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DeleteIcon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Header, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HrefTarget, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Icon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveTo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoArrow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParamsToInherit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ProgStyle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RightIcon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RightIcon2, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RightIcon2Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RightIconTitle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RightText, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scene, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Toggle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TransitionDir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TransitionOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UncheckClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Url, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UrlTarget, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VariableHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Alt, callback:{ }):{ function unwatch():Void; };
	var anchorLabel : Bool;
	var arrowClass : String;
	var attributeMap : Dynamic;
	var back : Bool;
	var baseClass : String;
	var busy : Bool;
	var callback : haxe.Constraints.Function;
	var checkClass : String;
	var checked : Bool;
	var ChildWidgetProperties : Dynamic;
	var class : String;
	var clickable : Bool;
	var containerNode : HTMLElement;
	var deleteIcon : String;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var header : Bool;
	var href : String;
	var hrefTarget : String;
	var icon : String;
	var iconPos : String;
	var id : String;
	var label : String;
	var lang : String;
	var moveTo : String;
	var noArrow : Bool;
	var ownerDocument : Dynamic;
	var paramsToInherit : String;
	var progStyle : String;
	var rightIcon : String;
	var rightIcon2 : String;
	var rightIcon2Title : String;
	var rightIconTitle : String;
	var rightText : String;
	var scene : String;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var tag : String;
	var title : String;
	var toggle : Bool;
	var tooltip : String;
	var transition : String;
	var transitionDir : Float;
	var transitionOptions : Dynamic;
	var uncheckClass : String;
	var url : String;
	var urlTarget : String;
	var variableHeight : Bool;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
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
	function defaultClickAction(e:Event):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function getTransOpts():String;
	function handleSelection(e:Event):Void;
	function hasChildren():Bool;
	function inheritParams():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function layoutChildren():Void;
	function layoutVariableHeight():Void;
	function makeTransition(e:Event):Void;
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
	function setArrow():Void;
	function setTransitionPos(e:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	@:overload(function(moveTo:Dynamic, href:String, url:String, scene:String):Void { })
	function transitionTo(moveTo:String, href:String, url:String, scene:String):Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function userClickAction(e:Event):Void;
	function onAnchorLabelClicked(e:Dynamic):Void;
	function onBlur():Void;
	function onClick(e:Event):Void;
	function onFocus():Void;
	function onTouchStart(e:Event):Void;
}
