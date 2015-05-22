extern class _ButtonMixin {
	function new():Void;
	var label : String;
	var type : String;
	function postCreate():Void;
	function onClick(e:Event):Bool;
}
extern class _CheckBoxMixin {
	function new():Void;
	var readOnly : Bool;
	var value : String;
	function reset():Void;
}
extern class _AutoCompleterMixin extends dijit.form._SearchMixin {
	function new():Void;
	var autoComplete : Bool;
	var fetchProperties : Dynamic;
	var highlightMatch : String;
	var ignoreCase : Bool;
	var item : Dynamic;
	var labelAttr : Dynamic;
	var labelType : String;
	var maxHeight : Float;
	var pageSize : Float;
	var query : Dynamic;
	var queryExpr : String;
	var searchAttr : String;
	var searchDelay : Float;
	var store : Dynamic;
	function closeDropDown():Void;
	function doHighlight(label:String, find:String):Dynamic;
	function isLoaded():Bool;
	function loadDropDown(callback:haxe.Constraints.Function):Void;
	function postCreate():Void;
	function postMixInProperties():Void;
	function reset():Void;
	function onSearch(results:Dynamic, query:Dynamic, options:Dynamic):Void;
}
extern class _ExpandingTextAreaMixin {
	function new():Void;
	function postCreate():Void;
	function resize():Void;
	function startup():Void;
}
extern class _ComboBoxMenuMixin {
	function new():Void;
	function buildRendering():Void;
	function clearResultList():Void;
	function createOptions(results:Dynamic, options:Dynamic, labelFunc:Dynamic):Void;
	function getHighlightedOption():Dynamic;
	function highlightFirstOption():Void;
	function highlightLastOption():Void;
	function postMixInProperties():Void;
	function selectFirstNode():Void;
	function selectLastNode():Void;
	function onChange(direction:Float):Void;
	function onClick(node:HTMLElement):Void;
	function onPage(direction:Float):Void;
}
extern class _FormMixin {
	function new():Void;
	var state : String;
	function connectChildren(inStartup:Bool):Void;
	function destroy():Void;
	function disconnectChildren():Void;
	function getValues():Dynamic;
	var isValid : { };
	function reset():Void;
	function setValues(val:Dynamic):Dynamic;
	function startup():Void;
	function validate():Dynamic;
	function onValidStateChange(isValid:Bool):Void;
}
extern class _FormValueMixin extends dijit.form._FormWidgetMixin {
	function new():Void;
	var alt : String;
	var aria-label : String;
	var disabled : Bool;
	var intermediateChanges : Bool;
	var name : String;
	var readOnly : Bool;
	var scrollOnFocus : Bool;
	var tabIndex : String;
	var type : String;
	var value : Dynamic;
	function compare(val1:Dynamic, val2:Dynamic):Float;
	function create():Void;
	function destroy():Void;
	function focus():Void;
	function isFocusable():Dynamic;
	function postCreate():Void;
	function reset():Void;
	function undo():Void;
	function onChange(newValue:Dynamic):Void;
}
extern class _ComboBoxMenu extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
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
	@:overload(function(property:Selected, value:HTMLElement):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
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
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selected):HTMLElement { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
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
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
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
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var searchContainerNode : Bool;
	var selected : HTMLElement;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	function buildRendering():Void;
	function clearResultList():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createOptions(results:Dynamic, options:Dynamic, labelFunc:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getHighlightedOption():Dynamic;
	function getParent():Dynamic;
	function handleKey(evt:Dynamic):Bool;
	function highlightFirstOption():Void;
	function highlightLastOption():Void;
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
	function selectFirstNode():Void;
	function selectLastNode():Void;
	function selectNextNode():Void;
	function selectPreviousNode():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(direction:Float):Void;
	function onClick(node:HTMLElement):Void;
	function onDeselect(node:HTMLElement):Void;
	function onFocus():Void;
	function onHover(node:HTMLElement):Void;
	function onPage(direction:Float):Void;
	function onSelect(node:HTMLElement):Void;
	function onUnhover(node:HTMLElement):Void;
}
extern class _FormWidgetMixin {
	function new():Void;
	var alt : String;
	var aria-label : String;
	var disabled : Bool;
	var intermediateChanges : Bool;
	var name : String;
	var scrollOnFocus : Bool;
	var tabIndex : String;
	var type : String;
	var value : Dynamic;
	function compare(val1:Dynamic, val2:Dynamic):Float;
	function create():Void;
	function destroy():Void;
	function focus():Void;
	function isFocusable():Dynamic;
	function onChange(newValue:Dynamic):Void;
}
extern class _DateTimeTextBox extends dijit.form.RangeBoundTextBox {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Constraints, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:DatePackage, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisplayedValue, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DropDown, value:Dynamic):Void { })
	@:overload(function(property:DropDownDefaultValue, value:Date):Void { })
	@:overload(function(property:DropDownPosition, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:ForceWidth, value:Bool):Void { })
	@:overload(function(property:HasDownArrow, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:InvalidMessage, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lowercase, value:Bool):Void { })
	@:overload(function(property:MaxHeight, value:Float):Void { })
	@:overload(function(property:MaxLength, value:String):Void { })
	@:overload(function(property:Message, value:String):Void { })
	@:overload(function(property:MissingMessage, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceHolder, value:String):Void { })
	@:overload(function(property:PopupClass, value:Dynamic):Void { })
	@:overload(function(property:PromptMessage, value:String):Void { })
	@:overload(function(property:Propercase, value:Bool):Void { })
	@:overload(function(property:RangeMessage, value:String):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:js.RegExp, value:String):Void { })
	@:overload(function(property:Required, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectOnClick, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:State, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TooltipPosition, value:Dynamic):Void { })
	@:overload(function(property:Trim, value:Bool):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Uppercase, value:Bool):Void { })
	@:overload(function(property:Value, value:Date):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Constraints):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:DatePackage):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisplayedValue):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DropDown):Dynamic { })
	@:overload(function(property:DropDownDefaultValue):Date { })
	@:overload(function(property:DropDownPosition):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:ForceWidth):Bool { })
	@:overload(function(property:HasDownArrow):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:InvalidMessage):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lowercase):Bool { })
	@:overload(function(property:MaxHeight):Float { })
	@:overload(function(property:MaxLength):String { })
	@:overload(function(property:Message):String { })
	@:overload(function(property:MissingMessage):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceHolder):String { })
	@:overload(function(property:PopupClass):Dynamic { })
	@:overload(function(property:PromptMessage):String { })
	@:overload(function(property:Propercase):Bool { })
	@:overload(function(property:RangeMessage):String { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:js.RegExp):String { })
	@:overload(function(property:Required):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectOnClick):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:State):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TooltipPosition):Dynamic { })
	@:overload(function(property:Trim):Bool { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Uppercase):Bool { })
	@:overload(function(property:Value):Date { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraints, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDown, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownDefaultValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ForceWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HasDownArrow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lowercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Message, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MissingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceHolder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PopupClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PromptMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RangeMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:js.RegExp, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Required, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOnClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:State, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TooltipPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Trim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Uppercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoWidth : Bool;
	var baseClass : String;
	var class : String;
	var constraints : Dynamic;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var datePackage : String;
	var dir : String;
	var disabled : Bool;
	var displayedValue : String;
	var domNode : HTMLElement;
	var dropDown : Dynamic;
	var dropDownDefaultValue : Date;
	var dropDownPosition : Dynamic;
	var focused : Bool;
	var forceWidth : Bool;
	var hasDownArrow : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var invalidMessage : String;
	var lang : String;
	var lowercase : Bool;
	var maxHeight : Float;
	var maxLength : String;
	var message : String;
	var missingMessage : String;
	var name : String;
	var ownerDocument : Dynamic;
	var placeHolder : String;
	var popupClass : Dynamic;
	var promptMessage : String;
	var propercase : Bool;
	var rangeMessage : String;
	var readOnly : Bool;
	var regExp : String;
	var required : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var selectOnClick : Bool;
	var srcNodeRef : HTMLElement;
	var state : String;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var tooltipPosition : Dynamic;
	var trim : Bool;
	var type : String;
	var uppercase : Bool;
	var value : Date;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function closeDropDown(focus:Bool):Void;
	function compare(val1:Date, val2:Date):Dynamic;
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
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function displayMessage(message:String):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function filter(val:Dynamic):Dynamic;
	function focus():Void;
	function format(value:Date, constraints:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getDisplayedValue():Dynamic;
	function getErrorMessage(isFocused:Bool):Dynamic;
	function getParent():Dynamic;
	function getPromptMessage(isFocused:Bool):Dynamic;
	function getValue():Dynamic;
	function isFocusable():Dynamic;
	function isInRange(isFocused:Bool):Dynamic;
	function isLeftToRight():Dynamic;
	function isLoaded():Bool;
	var isValid : { };
	function loadAndOpenDropDown():Dynamic;
	function loadDropDown(loadCallback:haxe.Constraints.Function):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function openDropDown(?callback:haxe.Constraints.Function):Void;
	function own():Dynamic;
	function parse(value:String, constraints:Dynamic):Dynamic;
	var pattern : { };
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function rangeCheck(primitive:Float, constraints:dijit.form.RangeBoundTextBox.__Constraints):Bool;
	function regExpGen(constraints:Dynamic):Void;
	function reset():Void;
	function serialize(val:Dynamic, options:Dynamic):Dynamic;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setDisplayedValue(value:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toggleDropDown():Void;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate():Dynamic;
	function validator(value:Dynamic, constraints:Dynamic):Dynamic;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onInput(event:Dynamic):Void;
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
