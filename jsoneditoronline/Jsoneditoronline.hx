typedef JSONEditorOptions = {
	@:optional
	var change : Void -> Void;
	@:optional
	var history : Bool;
	@:optional
	var mode : String;
	@:optional
	var name : String;
	@:optional
	var search : Bool;
};
extern class JSONEditorHistory {
	function new(editor:JSONEditor):Void;
	function onChange():Void;
	function add(action:String, params:Dynamic):Dynamic;
	function clear():Void;
	function canUndo():Bool;
	function canRedo():Bool;
	function undo():Void;
	function redo():Void;
}
typedef JSONEditorNodeUpdateDomOptions = {
	@:optional
	var recurse : Bool;
	@:optional
	var updateIndexes : Bool;
};
typedef JSONEditorNodeType = {
	var value : String;
	var className : String;
	var title : String;
};
typedef JSONEditorConstructorParams = {
	@:optional
	var field : String;
	@:optional
	var fieldEditable : Bool;
	@:optional
	var value : Dynamic;
};
extern class JSONEditorNode {
	function new(editor:JSONEditor, params:JSONEditorConstructorParams):Void;
	function setParent(parent:JSONEditorNode):Void;
	function getParent():JSONEditorNode;
	function setField(field:String, fieldEditable:Bool):Void;
	function getField():String;
	function setValue(value:Dynamic):Void;
	function getValue():Dynamic;
	function getLevel():Float;
	function clone():JSONEditorNode;
	function expand(recurse:Bool):Void;
	function collapse(recurse:Bool):Void;
	function showChilds():Void;
	function hide():Void;
	function hideChilds():Void;
	function appendChild(node:JSONEditorNode):Void;
	function moveBefore(node:JSONEditorNode, beforeNode:JSONEditorNode):Void;
	function moveTo(node:JSONEditorNode, index:Float):Void;
	function insertBefore(node:JSONEditorNode, beforeNode:JSONEditorNode):Void;
	function search(text:String):Array<JSONEditorNode>;
	function scrollTo():Void;
	function focus():Void;
	function blur():Void;
	function containsNode(node:JSONEditorNode):Bool;
	function removeChild(node:JSONEditorNode):JSONEditorNode;
	function changeType(newType:String):Void;
	function clearDom():Void;
	function getDom():HTMLElement;
	function setHighlight(highlight:Bool):Void;
	function updateValue(value:Dynamic):Void;
	function updateField(field:String):Void;
	function updateDom(options:Dynamic):Void;
	function onEvent(event:Event):Void;
	var types : Array<JSONEditorNodeType>;
	function getAppend():HTMLElement;
}
extern class JSONEditorAppendNode extends JSONEditorNode {
	function new(editor:JSONEditor):Void;
}
typedef JSONEditorShowDropDownListParams = {
	var x : Float;
	var y : Float;
	var node : JSONEditorNode;
	var value : String;
	var values : Array<Dynamic>;
	var optionSelectedClassName : String;
	var optionClassName : String;
	var callback : Dynamic -> Void;
};
extern class JSONEditorSearchBox {
	function new(editor:JSONEditor, container:HTMLElement):Void;
	function next():Void;
	function previous():Void;
	function setActiveResult(index:Float):Void;
	function focusActiveResult():Void;
	function clearDelay():Void;
	function onDelayedSearch(event:Event):Void;
	function onSearch(event:Event, forcedSearch:Bool):Void;
	function onKeyDown(event:Event):Void;
	function onKeyUp(event:Event):Void;
}
typedef JSONEditorBuffer = {
	var text : String;
	function flush():String;
	function set(text:String):Void;
};
typedef JSONEditorActionParams = {
	@:optional
	var node : JSONEditorNode;
	@:optional
	var oldValue : String;
	@:optional
	var newValue : String;
	@:optional
	var startParent : JSONEditorNode;
	@:optional
	var endParent : JSONEditorNode;
	@:optional
	var startIndex : Float;
	@:optional
	var endIndex : Float;
	@:optional
	var clone : JSONEditorNode;
	@:optional
	var parent : JSONEditorNode;
	@:optional
	var index : Float;
	@:optional
	var oldType : JSONEditorNodeType;
	@:optional
	var newType : JSONEditorNodeType;
};
extern class JSONEditor {
	function new(container:HTMLElement, ?options:JSONEditorOptions, ?json:Dynamic):Void;
	function set(json:Dynamic, ?name:String):Void;
	function setName(?name:String):Void;
	function get():Dynamic;
	function getName():String;
	function clear():Void;
	function search(text:String):Array<Dynamic>;
	function expandAll():Void;
	function collapseAll():Void;
	function onAction(action:String, params:JSONEditorActionParams):Dynamic;
	function focus():Void;
	function scrollTo(top:Float):Void;
	var History : JSONEditorHistory;
	var Node : JSONEditorNode;
	var SearchBox : JSONEditorSearchBox;
	static var focusNode : JSONEditorNode;
	static var freezeHighlight : Bool;
	static function showDropDownList(params:Dynamic):Void;
	static function getNodeFromTarget(target:HTMLElement):JSONEditorNode;
	static function getAbsoluteLeft(elem:HTMLElement):Float;
	static function getAbsoluteTop(elem:HTMLElement):Dynamic;
	var number : Dynamic;
	static function addClassName(elem:HTMLElement, className:String):Void;
	static function removeClassName(elem:HTMLElement, className:String):Void;
	static function stripFormatting(divElement:HTMLElement):Void;
	static function setEndOfContentEditable(contentEditableElement:HTMLElement):Void;
	static function getInnerText(element:HTMLElement, buffer:JSONEditorBuffer):String;
	static function getInternetExplorerVersion():Float;
	var Events : { function addEventListener(element:HTMLElement, action:String, listener:?Event -> Void, useCapture:Bool):?Event -> Void; function removeEventListener(element:HTMLElement, action:String, listener:?Event -> Void, useCapture:Bool):Void; function stopPropagation(event:Event):Void; function preventDefault(event:Event):Void; };
	static function parse(jsonString:String):Dynamic;
	static function validate(jsonString:String):String;
}
typedef JSONFormatterOptions = {
	@:optional
	var change : Void -> Void;
	@:optional
	var indentation : Float;
};
extern class JSONFormatter {
	function new(container:HTMLElement, ?options:JSONFormatterOptions, ?json:Dynamic):Void;
	function set(json:Dynamic):Dynamic;
	function get():Dynamic;
	function setText(jsonString:String):Void;
	function getText():String;
	function onError(err:String):Void;
}
