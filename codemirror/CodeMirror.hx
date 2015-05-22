typedef Editor = {
	function hasFocus():Bool;
	function findPosH(start:CodeMirror.Position, amount:Float, unit:String, visually:Bool):{ var line : Float; var ch : Float; @:optional
	var hitSide : Bool; };
	function findPosV(start:CodeMirror.Position, amount:Float, unit:String):{ var line : Float; var ch : Float; @:optional
	var hitSide : Bool; };
	function setOption(option:String, value:Dynamic):Void;
	function getOption(option:String):Dynamic;
	function addKeyMap(map:Dynamic, ?bottom:Bool):Void;
	function removeKeyMap(map:Dynamic):Void;
	function addOverlay(mode:Dynamic, ?options:Dynamic):Void;
	function removeOverlay(mode:Dynamic):Void;
	function getDoc():CodeMirror.Doc;
	function swapDoc(doc:CodeMirror.Doc):CodeMirror.Doc;
	function setGutterMarker(line:Dynamic, gutterID:String, value:HTMLElement):CodeMirror.LineHandle;
	function clearGutter(gutterID:String):Void;
	function addLineClass(line:Dynamic, where:String, _class_:String):CodeMirror.LineHandle;
	function removeLineClass(line:Dynamic, where:String, class_:String):CodeMirror.LineHandle;
	function lineInfo(line:Dynamic):{ var line : Dynamic; var handle : Dynamic; var text : String; var gutterMarks : Dynamic; var textClass : String; var bgClass : String; var wrapClass : String; var widgets : Dynamic; };
	function addWidget(pos:CodeMirror.Position, node:HTMLElement, scrollIntoView:Bool):Void;
	function addLineWidget(line:Dynamic, node:HTMLElement, ?options:{ var coverGutter : Bool; var noHScroll : Bool; var above : Bool; var showIfHidden : Bool; }):CodeMirror.LineWidget;
	function setSize(width:Dynamic, height:Dynamic):Void;
	function scrollTo(x:Float, y:Float):Void;
	function getScrollInfo():{ var left : Dynamic; var top : Dynamic; var width : Dynamic; var height : Dynamic; var clientWidth : Dynamic; var clientHeight : Dynamic; };
	@:overload(function(pos:{ var left : Float; var top : Float; var right : Float; var bottom : Float; }, margin:Float):Void { })
	function scrollIntoView(pos:CodeMirror.Position, ?margin:Float):Void;
	@:overload(function(where:CodeMirror.Position, mode:String):{ var left : Float; var top : Float; var bottom : Float; } { })
	function cursorCoords(where:Bool, mode:String):{ var left : Float; var top : Float; var bottom : Float; };
	function charCoords(pos:CodeMirror.Position, mode:String):{ var left : Float; var right : Float; var top : Float; var bottom : Float; };
	function coordsChar(object:{ var left : Float; var top : Float; }, ?mode:String):CodeMirror.Position;
	function defaultTextHeight():Float;
	function defaultCharWidth():Float;
	function getViewport():{ var from : Float; var to : Float; };
	function refresh():Void;
	function getTokenAt(pos:CodeMirror.Position):{ var start : Float; var end : Float; var string : String; var type : String; var state : Dynamic; };
	function getStateAfter(?line:Float):Dynamic;
	function operation<T>(fn:Void -> T):T;
	function indentLine(line:Float, ?dir:String):Void;
	function focus():Void;
	function getInputField():HTMLTextAreaElement;
	function getWrapperElement():HTMLElement;
	function getScrollerElement():HTMLElement;
	function getGutterElement():HTMLElement;
	@:overload(function(eventName:Change, handler:CodeMirror.Editor -> CodeMirror.EditorChangeLinkedList -> Void):Void { })
	@:overload(function(eventName:BeforeChange, handler:CodeMirror.Editor -> CodeMirror.EditorChangeCancellable -> Void):Void { })
	@:overload(function(eventName:CursorActivity, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:BeforeSelectionChange, handler:CodeMirror.Editor -> { var head : CodeMirror.Position; var anchor : CodeMirror.Position; } -> Void):Void { })
	@:overload(function(eventName:ViewportChange, handler:CodeMirror.Editor -> Float -> Float -> Void):Void { })
	@:overload(function(eventName:GutterClick, handler:CodeMirror.Editor -> Float -> String -> Event -> Void):Void { })
	@:overload(function(eventName:Focus, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:Blur, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:Scroll, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:Update, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:RenderLine, handler:CodeMirror.Editor -> Float -> HTMLElement -> Void):Void { })
	function on(eventName:String, handler:CodeMirror.Editor -> Void):Void;
	@:overload(function(eventName:Change, handler:CodeMirror.Editor -> CodeMirror.EditorChangeLinkedList -> Void):Void { })
	@:overload(function(eventName:BeforeChange, handler:CodeMirror.Editor -> CodeMirror.EditorChangeCancellable -> Void):Void { })
	@:overload(function(eventName:CursorActivity, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:BeforeSelectionChange, handler:CodeMirror.Editor -> { var head : CodeMirror.Position; var anchor : CodeMirror.Position; } -> Void):Void { })
	@:overload(function(eventName:ViewportChange, handler:CodeMirror.Editor -> Float -> Float -> Void):Void { })
	@:overload(function(eventName:GutterClick, handler:CodeMirror.Editor -> Float -> String -> Event -> Void):Void { })
	@:overload(function(eventName:Focus, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:Blur, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:Scroll, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:Update, handler:CodeMirror.Editor -> Void):Void { })
	@:overload(function(eventName:RenderLine, handler:CodeMirror.Editor -> Float -> HTMLElement -> Void):Void { })
	function off(eventName:String, handler:CodeMirror.Editor -> Void):Void;
};
typedef EditorFromTextArea = {
	>Editor,
	function save():Void;
	function toTextArea():Void;
	function getTextArea():HTMLTextAreaElement;
};
extern class Doc {
	function new(text:String, ?mode:Dynamic, ?firstLineNumber:Float):Void;
	function getValue(?seperator:String):String;
	function setValue(content:String):Void;
	function getRange(from:Position, to:CodeMirror.Position, ?seperator:String):String;
	function replaceRange(replacement:String, from:CodeMirror.Position, to:CodeMirror.Position):Void;
	function getLine(n:Float):String;
	function setLine(n:Float, text:String):Void;
	function removeLine(n:Float):Void;
	function lineCount():Float;
	function firstLine():Float;
	function lastLine():Float;
	function getLineHandle(num:Float):CodeMirror.LineHandle;
	function getLineNumber(handle:CodeMirror.LineHandle):Float;
	@:overload(function(start:Float, end:Float, f:CodeMirror.LineHandle -> Void):Void { })
	function eachLine(f:CodeMirror.LineHandle -> Void):Void;
	function markClean():Void;
	function isClean():Bool;
	function getSelection():String;
	function replaceSelection(replacement:String, ?collapse:String):Void;
	function getCursor(?start:String):CodeMirror.Position;
	function somethingSelected():Bool;
	function setCursor(pos:CodeMirror.Position):Void;
	function setSelection(anchor:CodeMirror.Position, head:CodeMirror.Position):Void;
	function extendSelection(from:CodeMirror.Position, ?to:CodeMirror.Position):Void;
	function setExtending(value:Bool):Void;
	function getEditor():CodeMirror.Editor;
	function copy(copyHistory:Bool):CodeMirror.Doc;
	function linkedDoc(options:{ @:optional
	var sharedHist : Bool; @:optional
	var from : Float; @:optional
	var to : Float; var mode : Dynamic; }):CodeMirror.Doc;
	function unlinkDoc(doc:CodeMirror.Doc):Void;
	function iterLinkedDocs(fn:CodeMirror.Doc -> Bool -> Void):Void;
	function undo():Void;
	function redo():Void;
	function historySize():{ var undo : Float; var redo : Float; };
	function clearHistory():Void;
	function getHistory():Dynamic;
	function setHistory(history:Dynamic):Void;
	function markText(from:CodeMirror.Position, to:CodeMirror.Position, ?options:CodeMirror.TextMarkerOptions):TextMarker;
	function setBookmark(pos:CodeMirror.Position, ?options:{ @:optional
	var widget : HTMLElement; @:optional
	var insertLeft : Bool; }):CodeMirror.TextMarker;
	function findMarks(from:CodeMirror.Position, to:CodeMirror.Position):Array<TextMarker>;
	function findMarksAt(pos:CodeMirror.Position):Array<TextMarker>;
	function getAllMarks():Array<CodeMirror.TextMarker>;
	function getMode():Dynamic;
	function posFromIndex(index:Float):CodeMirror.Position;
	function indexFromPos(object:CodeMirror.Position):Float;
}
typedef LineHandle = {
	var text : String;
};
typedef TextMarker = {
	function clear():Void;
	function find():CodeMirror.Position;
	function getOptions(copyWidget:Bool):CodeMirror.TextMarkerOptions;
};
typedef LineWidget = {
	function clear():Void;
	function changed():Void;
};
typedef EditorChange = {
	var from : CodeMirror.Position;
	var to : CodeMirror.Position;
	var text : Array<String>;
	var removed : String;
};
typedef EditorChangeLinkedList = {
	>CodeMirror.EditorChange,
	@:optional
	var next : CodeMirror.EditorChangeLinkedList;
};
typedef EditorChangeCancellable = {
	>CodeMirror.EditorChange,
	function update(?from:CodeMirror.Position, ?to:CodeMirror.Position, ?text:String):Void;
	function cancel():Void;
};
typedef Position = {
	var ch : Float;
	var line : Float;
};
typedef EditorConfiguration = {
	@:optional
	var value : Dynamic;
	@:optional
	var mode : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var indentUnit : Float;
	@:optional
	var smartIndent : Bool;
	@:optional
	var tabSize : Float;
	@:optional
	var indentWithTabs : Bool;
	@:optional
	var electricChars : Bool;
	@:optional
	var rtlMoveVisually : Bool;
	@:optional
	var keyMap : String;
	@:optional
	var extraKeys : Dynamic;
	@:optional
	var lineWrapping : Bool;
	@:optional
	var lineNumbers : Bool;
	@:optional
	var firstLineNumber : Float;
	@:optional
	var lineNumberFormatter : Float -> String;
	@:optional
	var gutters : Array<String>;
	@:optional
	var fixedGutter : Bool;
	@:optional
	var readOnly : Dynamic;
	@:optional
	var showCursorWhenSelecting : Bool;
	@:optional
	var undoDepth : Float;
	@:optional
	var historyEventDelay : Float;
	@:optional
	var tabindex : Float;
	@:optional
	var autofocus : Bool;
	@:optional
	var dragDrop : Bool;
	@:optional
	var onDragEvent : CodeMirror.Editor -> Event -> Bool;
	@:optional
	var onKeyEvent : CodeMirror.Editor -> Event -> Bool;
	@:optional
	var cursorBlinkRate : Float;
	@:optional
	var cursorHeight : Float;
	@:optional
	var workTime : Float;
	@:optional
	var workDelay : Float;
	@:optional
	var pollInterval : Float;
	@:optional
	var flattenSpans : Bool;
	@:optional
	var maxHighlightLength : Float;
	@:optional
	var viewportMargin : Float;
};
typedef TextMarkerOptions = {
	@:optional
	var className : String;
	@:optional
	var inclusiveLeft : Bool;
	@:optional
	var inclusiveRight : Bool;
	@:optional
	var atomic : Bool;
	@:optional
	var collapsed : Bool;
	@:optional
	var clearOnEnter : Bool;
	@:optional
	var replacedWith : HTMLElement;
	@:optional
	var readOnly : Bool;
	@:optional
	var addToHistory : Bool;
	@:optional
	var startStyle : String;
	@:optional
	var endStyle : String;
	@:optional
	var shared : Bool;
};
typedef StringStream = {
	var lastColumnPos : Float;
	var lastColumnValue : Float;
	var lineStart : Float;
	var pos : Float;
	var start : Float;
	var string : String;
	var tabSize : Float;
	function eol():Bool;
	function sol():Bool;
	function peek():String;
	function next():String;
	@:overload(function(match:js.RegExp):String { })
	@:overload(function(match:String -> Bool):String { })
	function eat(match:String):String;
	@:overload(function(match:js.RegExp):Bool { })
	@:overload(function(match:String -> Bool):Bool { })
	function eatWhile(match:String):Bool;
	function eatSpace():Bool;
	function skipToEnd():Void;
	function skipTo(ch:String):Bool;
	@:overload(function(pattern:js.RegExp, ?consume:Bool):Array<String> { })
	function match(pattern:String, ?consume:Bool, ?caseFold:Bool):Bool;
	function backUp(n:Float):Void;
	function column():Float;
	function indentation():Float;
	function current():String;
};
typedef Mode<T> = {
	function token(stream:StringStream, state:T):String;
	@:optional
	var startState : Void -> T;
	@:optional
	var blankLine : T -> Void;
	@:optional
	var copyState : T -> T;
	@:optional
	var indent : T -> String -> Float;
	@:optional
	var lineComment : String;
	@:optional
	var blockCommentStart : String;
	@:optional
	var blockCommentEnd : String;
	@:optional
	var blockCommentLead : String;
	@:optional
	var electricChars : String;
	@:optional
	var electricinput : js.RegExp;
};
typedef ModeFactory<T> = { };
extern class CodeMirrorTopLevel {
	static var Pass : Dynamic;
	static function fromTextArea(host:HTMLTextAreaElement, ?options:EditorConfiguration):CodeMirror.EditorFromTextArea;
	static var version : String;
	static function defineExtension(name:String, value:Dynamic):Void;
	static function defineDocExtension(name:String, value:Dynamic):Void;
	static function defineOption(name:String, default_:Dynamic, updateFunc:haxe.Constraints.Function):Void;
	static function defineInitHook(func:haxe.Constraints.Function):Void;
	static function on(element:Dynamic, eventName:String, handler:haxe.Constraints.Function):Void;
	static function off(element:Dynamic, eventName:String, handler:haxe.Constraints.Function):Void;
	static function on(doc:Doc, eventName:Change, handler:Doc -> EditorChange -> Void):Void;
	static function off(doc:Doc, eventName:Change, handler:Doc -> EditorChange -> Void):Void;
	static function on(doc:Doc, eventName:BeforeChange, handler:Doc -> EditorChangeCancellable -> Void):Void;
	static function off(doc:Doc, eventName:BeforeChange, handler:Doc -> EditorChangeCancellable -> Void):Void;
	static function on(doc:Doc, eventName:CursorActivity, handler:CodeMirror.Editor -> Void):Void;
	static function off(doc:Doc, eventName:CursorActivity, handler:CodeMirror.Editor -> Void):Void;
	static function on(doc:Doc, eventName:BeforeSelectionChange, handler:CodeMirror.Editor -> { var head : Position; var anchor : Position; } -> Void):Void;
	static function off(doc:Doc, eventName:BeforeSelectionChange, handler:CodeMirror.Editor -> { var head : Position; var anchor : Position; } -> Void):Void;
	static function on(line:LineHandle, eventName:Delete, handler:Void -> Void):Void;
	static function off(line:LineHandle, eventName:Delete, handler:Void -> Void):Void;
	static function on(line:LineHandle, eventName:Change, handler:LineHandle -> EditorChange -> Void):Void;
	static function off(line:LineHandle, eventName:Change, handler:LineHandle -> EditorChange -> Void):Void;
	static function on(marker:TextMarker, eventName:BeforeCursorEnter, handler:Void -> Void):Void;
	static function off(marker:TextMarker, eventName:BeforeCursorEnter, handler:Void -> Void):Void;
	static function on(marker:TextMarker, eventName:Clear, handler:Void -> Void):Void;
	static function off(marker:TextMarker, eventName:Clear, handler:Void -> Void):Void;
	static function on(marker:TextMarker, eventName:Hide, handler:Void -> Void):Void;
	static function off(marker:TextMarker, eventName:Hide, handler:Void -> Void):Void;
	static function on(marker:TextMarker, eventName:Unhide, handler:Void -> Void):Void;
	static function off(marker:TextMarker, eventName:Unhide, handler:Void -> Void):Void;
	static function on(line:LineWidget, eventName:Redraw, handler:Void -> Void):Void;
	static function off(line:LineWidget, eventName:Redraw, handler:Void -> Void):Void;
	static function signal(target:Dynamic, name:String, args:haxe.extern.Rest<Dynamic>):Void;
	static function defineMode(id:String, modefactory:ModeFactory<Dynamic>):Void;
	static function getMode<T>(config:CodeMirror.EditorConfiguration, mode:Dynamic):Mode<T>;
	static function overlayMode<T, S>(base:Mode<T>, overlay:Mode<S>, ?combine:Bool):Mode<Dynamic>;
}
