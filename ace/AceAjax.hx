typedef Delta = {
	var action : String;
	var range : Range;
	var text : String;
	var lines : Array<String>;
};
typedef EditorCommand = {
	var name : String;
	var bindKey : Dynamic;
	var exec : haxe.Constraints.Function;
};
typedef CommandManager = {
	var byName : Dynamic;
	var commands : Dynamic;
	var platform : String;
	function addCommands(commands:Array<EditorCommand>):Dynamic;
	function addCommand(command:EditorCommand):Dynamic;
	function exec(name:String, editor:Editor, args:Dynamic):Dynamic;
};
typedef Annotation = {
	var row : Float;
	var column : Float;
	var text : String;
	var type : String;
};
typedef TokenInfo = {
	var value : String;
};
typedef Position = {
	var row : Float;
	var column : Float;
};
typedef KeyBinding = {
	function setDefaultHandler(kb:Dynamic):Dynamic;
	function setKeyboardHandler(kb:Dynamic):Dynamic;
	function addKeyboardHandler(kb:Dynamic, pos:Dynamic):Dynamic;
	function removeKeyboardHandler(kb:Dynamic):Bool;
	function getKeyboardHandler():Dynamic;
	function onCommandKey(e:Dynamic, hashId:Dynamic, keyCode:Dynamic):Dynamic;
	function onTextInput(text:Dynamic):Dynamic;
};
typedef TextMode = {
	function getTokenizer():Dynamic;
	function toggleCommentLines(state:Dynamic, doc:Dynamic, startRow:Dynamic, endRow:Dynamic):Dynamic;
	function getNextLineIndent(state:Dynamic, line:Dynamic, tab:Dynamic):String;
	function checkOutdent(state:Dynamic, line:Dynamic, input:Dynamic):Bool;
	function autoOutdent(state:Dynamic, doc:Dynamic, row:Dynamic):Dynamic;
	function createWorker(session:Dynamic):Dynamic;
	function createModeDelegates(mapping:Dynamic):Dynamic;
	function transformAction(state:Dynamic, action:Dynamic, editor:Dynamic, session:Dynamic, param:Dynamic):Dynamic;
};
typedef Ace = {
	function require(moduleName:String):Dynamic;
	@:overload(function(el:HTMLElement):Editor { })
	function edit(el:String):Editor;
	@:overload(function(text:String, mode:TextMode):IEditSession { })
	function createEditSession(text:Document, mode:TextMode):IEditSession;
};
typedef Anchor = {
	function on(event:String, fn:Dynamic -> Dynamic):Dynamic;
	function getPosition():Position;
	function getDocument():Document;
	function onChange(e:Dynamic):Dynamic;
	function setPosition(row:Float, column:Float, noClip:Bool):Dynamic;
	function detach():Dynamic;
};
typedef BackgroundTokenizer = {
	var states : Array<Dynamic>;
	function setTokenizer(tokenizer:Tokenizer):Dynamic;
	function setDocument(doc:Document):Dynamic;
	function fireUpdateEvent(firstRow:Float, lastRow:Float):Dynamic;
	function start(startRow:Float):Dynamic;
	function stop():Dynamic;
	function getTokens(row:Float):Array<TokenInfo>;
	function getState(row:Float):String;
};
typedef Document = {
	function on(event:String, fn:Dynamic -> Dynamic):Dynamic;
	function setValue(text:String):Dynamic;
	function getValue():String;
	function createAnchor(row:Float, column:Float):Dynamic;
	function getNewLineCharacter():String;
	function setNewLineMode(newLineMode:String):Dynamic;
	function getNewLineMode():String;
	function isNewLine(text:String):Bool;
	function getLine(row:Float):String;
	function getLines(firstRow:Float, lastRow:Float):Array<String>;
	function getAllLines():Array<String>;
	function getLength():Float;
	function getTextRange(range:Range):String;
	function insert(position:Position, text:String):Dynamic;
	function insertLines(row:Float, lines:Array<String>):Dynamic;
	function insertNewLine(position:Position):Dynamic;
	function insertInLine(position:Dynamic, text:String):Dynamic;
	function remove(range:Range):Dynamic;
	function removeInLine(row:Float, startColumn:Float, endColumn:Float):Dynamic;
	function removeLines(firstRow:Float, lastRow:Float):Array<String>;
	function removeNewLine(row:Float):Dynamic;
	function replace(range:Range, text:String):Dynamic;
	function applyDeltas(deltas:Array<Delta>):Dynamic;
	function revertDeltas(deltas:Array<Delta>):Dynamic;
	function indexToPosition(index:Float, startRow:Float):Position;
	function positionToIndex(pos:Position, startRow:Float):Float;
};
typedef IEditSession = {
	var selection : Selection;
	var bgTokenizer : BackgroundTokenizer;
	var doc : Document;
	function on(event:String, fn:Dynamic -> Dynamic):Dynamic;
	function findMatchingBracket(position:Position):Dynamic;
	function addFold(text:String, range:Range):Dynamic;
	function getFoldAt(row:Float, column:Float):Dynamic;
	function removeFold(arg:Dynamic):Dynamic;
	function expandFold(arg:Dynamic):Dynamic;
	function unfold(arg1:Dynamic, arg2:Bool):Dynamic;
	function screenToDocumentColumn(row:Float, column:Float):Dynamic;
	function getFoldDisplayLine(foldLine:Dynamic, docRow:Float, docColumn:Float):Dynamic;
	function getFoldsInRange(range:Range):Dynamic;
	function highlight(text:String):Dynamic;
	function setDocument(doc:Document):Dynamic;
	function getDocument():Document;
	function $resetRowCache(row:Float):Dynamic;
	function setValue(text:String):Dynamic;
	function setMode(mode:String):Dynamic;
	function getValue():String;
	function getSelection():Selection;
	function getState(row:Float):String;
	function getTokens(row:Float):Array<TokenInfo>;
	function getTokenAt(row:Float, column:Float):TokenInfo;
	function setUndoManager(undoManager:UndoManager):Dynamic;
	function getUndoManager():UndoManager;
	function getTabString():String;
	function setUseSoftTabs(useSoftTabs:Bool):Dynamic;
	function getUseSoftTabs():Bool;
	function setTabSize(tabSize:Float):Dynamic;
	function getTabSize():Float;
	function isTabStop(position:Dynamic):Bool;
	function setOverwrite(overwrite:Bool):Dynamic;
	function getOverwrite():Bool;
	function toggleOverwrite():Dynamic;
	function addGutterDecoration(row:Float, className:String):Dynamic;
	function removeGutterDecoration(row:Float, className:String):Dynamic;
	function getBreakpoints():Array<Float>;
	function setBreakpoints(rows:Array<Dynamic>):Dynamic;
	function clearBreakpoints():Dynamic;
	function setBreakpoint(row:Float, className:String):Dynamic;
	function clearBreakpoint(row:Float):Dynamic;
	@:overload(function(range:Range, clazz:String, type:String, inFront:Bool):Dynamic { })
	function addMarker(range:Range, clazz:String, type:haxe.Constraints.Function, inFront:Bool):Dynamic;
	function addDynamicMarker(marker:Dynamic, inFront:Bool):Dynamic;
	function removeMarker(markerId:Float):Dynamic;
	function getMarkers(inFront:Bool):Array<Dynamic>;
	function setAnnotations(annotations:Array<Annotation>):Dynamic;
	function getAnnotations():Dynamic;
	function clearAnnotations():Dynamic;
	function $detectNewLine(text:String):Dynamic;
	function getWordRange(row:Float, column:Float):Range;
	function getAWordRange(row:Float, column:Float):Dynamic;
	function setNewLineMode(newLineMode:String):Dynamic;
	function getNewLineMode():String;
	function setUseWorker(useWorker:Bool):Dynamic;
	function getUseWorker():Bool;
	function onReloadTokenizer():Dynamic;
	function $mode(mode:TextMode):Dynamic;
	function getMode():TextMode;
	function setScrollTop(scrollTop:Float):Dynamic;
	function getScrollTop():Float;
	function setScrollLeft():Dynamic;
	function getScrollLeft():Float;
	function getScreenWidth():Float;
	function getLine(row:Float):String;
	function getLines(firstRow:Float, lastRow:Float):Array<String>;
	function getLength():Float;
	function getTextRange(range:Range):String;
	function insert(position:Position, text:String):Dynamic;
	function remove(range:Range):Dynamic;
	function undoChanges(deltas:Array<Dynamic>, dontSelect:Bool):Range;
	function redoChanges(deltas:Array<Dynamic>, dontSelect:Bool):Range;
	function setUndoSelect(enable:Bool):Dynamic;
	function replace(range:Range, text:String):Dynamic;
	function moveText(fromRange:Range, toPosition:Dynamic):Range;
	function indentRows(startRow:Float, endRow:Float, indentString:String):Dynamic;
	function outdentRows(range:Range):Dynamic;
	function moveLinesUp(firstRow:Float, lastRow:Float):Float;
	function moveLinesDown(firstRow:Float, lastRow:Float):Float;
	function duplicateLines(firstRow:Float, lastRow:Float):Float;
	function setUseWrapMode(useWrapMode:Bool):Dynamic;
	function getUseWrapMode():Bool;
	function setWrapLimitRange(min:Float, max:Float):Dynamic;
	function adjustWrapLimit(desiredLimit:Float):Bool;
	function getWrapLimit():Float;
	function getWrapLimitRange():Dynamic;
	function $getDisplayTokens(str:String, offset:Float):Dynamic;
	function $getStringScreenWidth(str:String, maxScreenColumn:Float, screenColumn:Float):Array<Float>;
	function getRowLength(row:Float):Float;
	function getScreenLastRowColumn(screenRow:Float):Float;
	function getDocumentLastRowColumn(docRow:Float, docColumn:Float):Float;
	function getDocumentLastRowColumnPosition(docRow:Float, docColumn:Float):Float;
	function getRowSplitData():String;
	function getScreenTabSize(screenColumn:Float):Float;
	function screenToDocumentPosition(screenRow:Float, screenColumn:Float):Dynamic;
	function documentToScreenPosition(docRow:Float, docColumn:Float):Dynamic;
	function documentToScreenColumn(row:Float, docColumn:Float):Float;
	function documentToScreenRow(docRow:Float, docColumn:Float):Dynamic;
	function getScreenLength():Float;
};
typedef Editor = {
	@:overload(function(ev:String, callback:haxe.Constraints.Function):Dynamic { })
	function addEventListener(ev:Change, callback:EditorChangeEvent -> Dynamic):Dynamic;
	var inMultiSelectMode : Bool;
	function selectMoreLines(n:Float):Dynamic;
	function onTextInput(text:String):Dynamic;
	function onCommandKey(e:Dynamic, hashId:Dynamic, keyCode:Dynamic):Dynamic;
	var commands : CommandManager;
	var session : IEditSession;
	var selection : Selection;
	var renderer : VirtualRenderer;
	var keyBinding : KeyBinding;
	var container : HTMLElement;
	function onSelectionChange(e:Dynamic):Dynamic;
	function onChangeMode(?e:Dynamic):Dynamic;
	function execCommand(command:String, ?args:Dynamic):Dynamic;
	function setKeyboardHandler(keyboardHandler:String):Dynamic;
	function getKeyboardHandler():String;
	function setSession(session:IEditSession):Dynamic;
	function getSession():IEditSession;
	function setValue(val:String, ?cursorPos:Float):String;
	function getValue():String;
	function getSelection():Selection;
	function resize(?force:Bool):Dynamic;
	function setTheme(theme:String):Dynamic;
	function getTheme():String;
	function setStyle(style:String):Dynamic;
	function unsetStyle():Dynamic;
	function setFontSize(size:String):Dynamic;
	function focus():Dynamic;
	function isFocused():Dynamic;
	function blur():Dynamic;
	function onFocus():Dynamic;
	function onBlur():Dynamic;
	function onDocumentChange(e:Dynamic):Dynamic;
	function onCursorChange():Dynamic;
	function getCopyText():String;
	function onCopy():Dynamic;
	function onCut():Dynamic;
	function onPaste(text:String):Dynamic;
	function insert(text:String):Dynamic;
	function setOverwrite(overwrite:Bool):Dynamic;
	function getOverwrite():Bool;
	function toggleOverwrite():Dynamic;
	function setScrollSpeed(speed:Float):Dynamic;
	function getScrollSpeed():Float;
	function setDragDelay(dragDelay:Float):Dynamic;
	function getDragDelay():Float;
	function setSelectionStyle(style:String):Dynamic;
	function getSelectionStyle():String;
	function setHighlightActiveLine(shouldHighlight:Bool):Dynamic;
	function getHighlightActiveLine():Dynamic;
	function setHighlightSelectedWord(shouldHighlight:Bool):Dynamic;
	function getHighlightSelectedWord():Bool;
	function setShowInvisibles(showInvisibles:Bool):Dynamic;
	function getShowInvisibles():Bool;
	function setShowPrintMargin(showPrintMargin:Bool):Dynamic;
	function getShowPrintMargin():Bool;
	function setPrintMarginColumn(showPrintMargin:Float):Dynamic;
	function getPrintMarginColumn():Float;
	function setReadOnly(readOnly:Bool):Dynamic;
	function getReadOnly():Bool;
	function setBehavioursEnabled(enabled:Bool):Dynamic;
	function getBehavioursEnabled():Bool;
	function setWrapBehavioursEnabled(enabled:Bool):Dynamic;
	function getWrapBehavioursEnabled():Dynamic;
	function setShowFoldWidgets(show:Bool):Dynamic;
	function getShowFoldWidgets():Dynamic;
	function remove(dir:String):Dynamic;
	function removeWordRight():Dynamic;
	function removeWordLeft():Dynamic;
	function removeToLineStart():Dynamic;
	function removeToLineEnd():Dynamic;
	function splitLine():Dynamic;
	function transposeLetters():Dynamic;
	function toLowerCase():Dynamic;
	function toUpperCase():Dynamic;
	function indent():Dynamic;
	function blockIndent():Dynamic;
	function blockOutdent(?arg:String):Dynamic;
	function toggleCommentLines():Dynamic;
	function getNumberAt():Float;
	function modifyNumber(amount:Float):Dynamic;
	function removeLines():Dynamic;
	function moveLinesDown():Float;
	function moveLinesUp():Float;
	function moveText(fromRange:Range, toPosition:Dynamic):Range;
	function copyLinesUp():Float;
	function copyLinesDown():Float;
	function getFirstVisibleRow():Float;
	function getLastVisibleRow():Float;
	function isRowVisible(row:Float):Bool;
	function isRowFullyVisible(row:Float):Bool;
	function selectPageDown():Dynamic;
	function selectPageUp():Dynamic;
	function gotoPageDown():Dynamic;
	function gotoPageUp():Dynamic;
	function scrollPageDown():Dynamic;
	function scrollPageUp():Dynamic;
	function scrollToRow():Dynamic;
	function scrollToLine(line:Float, center:Bool, animate:Bool, callback:haxe.Constraints.Function):Dynamic;
	function centerSelection():Dynamic;
	function getCursorPosition():Position;
	function getCursorPositionScreen():Float;
	function getSelectionRange():Range;
	function selectAll():Dynamic;
	function clearSelection():Dynamic;
	function moveCursorTo(row:Float, ?column:Float, ?animate:Bool):Dynamic;
	function moveCursorToPosition(position:Position):Dynamic;
	function jumpToMatching():Dynamic;
	function gotoLine(lineNumber:Float, ?column:Float, ?animate:Bool):Dynamic;
	function navigateTo(row:Float, column:Float):Dynamic;
	function navigateUp(?times:Float):Dynamic;
	function navigateDown(?times:Float):Dynamic;
	function navigateLeft(?times:Float):Dynamic;
	function navigateRight(times:Float):Dynamic;
	function navigateLineStart():Dynamic;
	function navigateLineEnd():Dynamic;
	function navigateFileEnd():Dynamic;
	function navigateFileStart():Dynamic;
	function navigateWordRight():Dynamic;
	function navigateWordLeft():Dynamic;
	function replace(replacement:String, ?options:Dynamic):Dynamic;
	function replaceAll(replacement:String, ?options:Dynamic):Dynamic;
	function getLastSearchOptions():Dynamic;
	function find(needle:String, ?options:Dynamic, ?animate:Bool):Dynamic;
	function findNext(?options:Dynamic, ?animate:Bool):Dynamic;
	function findPrevious(?options:Dynamic, ?animate:Bool):Dynamic;
	function undo():Dynamic;
	function redo():Dynamic;
	function destroy():Dynamic;
};
typedef EditorChangeEvent = {
	var start : Position;
	var end : Position;
	var action : String;
	var lines : Array<Dynamic>;
};
typedef PlaceHolder = {
	function on(event:String, fn:Dynamic -> Dynamic):Dynamic;
	function setup():Dynamic;
	function showOtherMarkers():Dynamic;
	function hideOtherMarkers():Dynamic;
	function onUpdate():Dynamic;
	function onCursorChange():Dynamic;
	function detach():Dynamic;
	function cancel():Dynamic;
};
typedef IRangeList = {
	var ranges : Array<Range>;
	function pointIndex(pos:Position, ?startIndex:Float):Dynamic;
	function addList(ranges:Array<Range>):Dynamic;
	function add(ranges:Range):Dynamic;
	function merge():Array<Range>;
	function substractPoint(pos:Position):Dynamic;
};
typedef Range = {
	var startRow : Float;
	var startColumn : Float;
	var endRow : Float;
	var endColumn : Float;
	var start : Position;
	var end : Position;
	function isEmpty():Bool;
	function isEqual(range:Range):Dynamic;
	function toString():Dynamic;
	function contains(row:Float, column:Float):Bool;
	function compareRange(range:Range):Float;
	function comparePoint(p:Range):Float;
	function containsRange(range:Range):Bool;
	function intersects(range:Range):Bool;
	function isEnd(row:Float, column:Float):Bool;
	function isStart(row:Float, column:Float):Bool;
	function setStart(row:Float, column:Float):Dynamic;
	function setEnd(row:Float, column:Float):Dynamic;
	function inside(row:Float, column:Float):Bool;
	function insideStart(row:Float, column:Float):Bool;
	function insideEnd(row:Float, column:Float):Bool;
	function compare(row:Float, column:Float):Float;
	function compareStart(row:Float, column:Float):Float;
	function compareEnd(row:Float, column:Float):Float;
	function compareInside(row:Float, column:Float):Float;
	function clipRows(firstRow:Float, lastRow:Float):Range;
	function extend(row:Float, column:Float):Range;
	function isMultiLine():Bool;
	function clone():Range;
	function collapseRows():Range;
	function toScreenRange(session:IEditSession):Range;
	function fromPoints(start:Range, end:Range):Range;
};
typedef RenderLoop = { };
typedef ScrollBar = {
	function onScroll(e:Dynamic):Dynamic;
	function getWidth():Float;
	function setHeight(height:Float):Dynamic;
	function setInnerHeight(height:Float):Dynamic;
	function setScrollTop(scrollTop:Float):Dynamic;
};
typedef Search = {
	function set(options:Dynamic):Search;
	function getOptions():Dynamic;
	function setOptions(An:Dynamic):Dynamic;
	function find(session:IEditSession):Range;
	function findAll(session:IEditSession):Array<Range>;
	function replace(input:String, replacement:String):String;
};
typedef Selection = {
	function addEventListener(ev:String, callback:haxe.Constraints.Function):Dynamic;
	function moveCursorWordLeft():Dynamic;
	function moveCursorWordRight():Dynamic;
	function fromOrientedRange(range:Range):Dynamic;
	function setSelectionRange(match:Dynamic):Dynamic;
	function getAllRanges():Array<Range>;
	function on(event:String, fn:Dynamic -> Dynamic):Dynamic;
	function addRange(range:Range):Dynamic;
	function isEmpty():Bool;
	function isMultiLine():Bool;
	function getCursor():Position;
	function setSelectionAnchor(row:Float, column:Float):Dynamic;
	function getSelectionAnchor():Dynamic;
	function getSelectionLead():Dynamic;
	function shiftSelection(columns:Float):Dynamic;
	function isBackwards():Bool;
	function getRange():Range;
	function clearSelection():Dynamic;
	function selectAll():Dynamic;
	function setRange(range:Range, reverse:Bool):Dynamic;
	function selectTo(row:Float, column:Float):Dynamic;
	function selectToPosition(pos:Dynamic):Dynamic;
	function selectUp():Dynamic;
	function selectDown():Dynamic;
	function selectRight():Dynamic;
	function selectLeft():Dynamic;
	function selectLineStart():Dynamic;
	function selectLineEnd():Dynamic;
	function selectFileEnd():Dynamic;
	function selectFileStart():Dynamic;
	function selectWordRight():Dynamic;
	function selectWordLeft():Dynamic;
	function getWordRange():Dynamic;
	function selectWord():Dynamic;
	function selectAWord():Dynamic;
	function selectLine():Dynamic;
	function moveCursorUp():Dynamic;
	function moveCursorDown():Dynamic;
	function moveCursorLeft():Dynamic;
	function moveCursorRight():Dynamic;
	function moveCursorLineStart():Dynamic;
	function moveCursorLineEnd():Dynamic;
	function moveCursorFileEnd():Dynamic;
	function moveCursorFileStart():Dynamic;
	function moveCursorLongWordRight():Dynamic;
	function moveCursorLongWordLeft():Dynamic;
	function moveCursorBy(rows:Float, chars:Float):Dynamic;
	function moveCursorToPosition(position:Dynamic):Dynamic;
	function moveCursorTo(row:Float, column:Float, ?keepDesiredColumn:Bool):Dynamic;
	function moveCursorToScreen(row:Float, column:Float, keepDesiredColumn:Bool):Dynamic;
};
typedef Split = {
	function getSplits():Float;
	function getEditor(idx:Float):Dynamic;
	function getCurrentEditor():Editor;
	function focus():Dynamic;
	function blur():Dynamic;
	function setTheme(theme:String):Dynamic;
	function setKeyboardHandler(keybinding:String):Dynamic;
	function forEach(callback:haxe.Constraints.Function, scope:String):Dynamic;
	function setFontSize(size:Float):Dynamic;
	function setSession(session:IEditSession, idx:Float):Dynamic;
	function getOrientation():Float;
	function setOrientation(orientation:Float):Dynamic;
	function resize():Dynamic;
};
typedef TokenIterator = {
	function stepBackward():Array<String>;
	function stepForward():String;
	function getCurrentToken():TokenInfo;
	function getCurrentTokenRow():Float;
	function getCurrentTokenColumn():Float;
};
typedef Tokenizer = {
	function getLineTokens():Dynamic;
};
typedef UndoManager = {
	function execute(options:Dynamic):Dynamic;
	function undo(?dontSelect:Bool):Range;
	function redo(dontSelect:Bool):Dynamic;
	function reset():Dynamic;
	function hasUndo():Bool;
	function hasRedo():Bool;
};
typedef VirtualRenderer = {
	var scroller : Dynamic;
	var characterWidth : Float;
	var lineHeight : Float;
	function screenToTextCoordinates(left:Float, top:Float):Dynamic;
	function setSession(session:IEditSession):Dynamic;
	function updateLines(firstRow:Float, lastRow:Float):Dynamic;
	function updateText():Dynamic;
	function updateFull(force:Bool):Dynamic;
	function updateFontSize():Dynamic;
	function onResize(force:Bool, gutterWidth:Float, width:Float, height:Float):Dynamic;
	function adjustWrapLimit():Dynamic;
	function setAnimatedScroll(shouldAnimate:Bool):Dynamic;
	function getAnimatedScroll():Bool;
	function setShowInvisibles(showInvisibles:Bool):Dynamic;
	function getShowInvisibles():Bool;
	function setShowPrintMargin(showPrintMargin:Bool):Dynamic;
	function getShowPrintMargin():Bool;
	function setPrintMarginColumn(showPrintMargin:Bool):Dynamic;
	function getPrintMarginColumn():Bool;
	function getShowGutter():Bool;
	function setShowGutter(show:Bool):Dynamic;
	function getContainerElement():HTMLElement;
	function getMouseEventTarget():HTMLElement;
	function getTextAreaContainer():HTMLElement;
	function getFirstVisibleRow():Float;
	function getFirstFullyVisibleRow():Float;
	function getLastFullyVisibleRow():Float;
	function getLastVisibleRow():Float;
	function setPadding(padding:Float):Dynamic;
	function getHScrollBarAlwaysVisible():Bool;
	function setHScrollBarAlwaysVisible(alwaysVisible:Bool):Dynamic;
	function updateFrontMarkers():Dynamic;
	function updateBackMarkers():Dynamic;
	function addGutterDecoration():Dynamic;
	function removeGutterDecoration():Dynamic;
	function updateBreakpoints():Dynamic;
	function setAnnotations(annotations:Array<Dynamic>):Dynamic;
	function updateCursor():Dynamic;
	function hideCursor():Dynamic;
	function showCursor():Dynamic;
	function scrollCursorIntoView():Dynamic;
	function getScrollTop():Float;
	function getScrollLeft():Float;
	function getScrollTopRow():Float;
	function getScrollBottomRow():Float;
	function scrollToRow(row:Float):Dynamic;
	function scrollToLine(line:Float, center:Bool, animate:Bool, callback:haxe.Constraints.Function):Dynamic;
	function scrollToY(scrollTop:Float):Float;
	function scrollToX(scrollLeft:Float):Float;
	function scrollBy(deltaX:Float, deltaY:Float):Dynamic;
	function isScrollableBy(deltaX:Float, deltaY:Float):Bool;
	function textToScreenCoordinates(row:Float, column:Float):Dynamic;
	function visualizeFocus():Dynamic;
	function visualizeBlur():Dynamic;
	function showComposition(position:Float):Dynamic;
	function setCompositionText(text:String):Dynamic;
	function hideComposition():Dynamic;
	function setTheme(theme:String):Dynamic;
	function getTheme():String;
	function setStyle(style:String):Dynamic;
	function unsetStyle(style:String):Dynamic;
	function destroy():Dynamic;
};
extern class AceAjaxTopLevel {
	static var KeyBinding : { function new(editor:Editor):KeyBinding; };
	static var Anchor : { function new(doc:Document, row:Float, column:Float):Anchor; };
	static var BackgroundTokenizer : { function new(tokenizer:Tokenizer, editor:Editor):BackgroundTokenizer; };
	static var Document : { @:overload(function(?text:Array<String>):Document { })
	function new(?text:String):Document; };
	static var EditSession : { @:overload(function(content:String, ?mode:String):IEditSession { })
	@:overload(function(text:Array<String>, ?mode:String):IEditSession { })
	function new(text:String, ?mode:TextMode):IEditSession; };
	static var Editor : { function new(renderer:VirtualRenderer, ?session:IEditSession):Editor; };
	static var PlaceHolder : { @:overload(function(session:IEditSession, length:Float, pos:Position, positions:Array<Position>):PlaceHolder { })
	function new(session:Document, length:Float, pos:Float, others:String, mainClass:String, othersClass:String):PlaceHolder; };
	static var RangeList : { function new():IRangeList; };
	static var Range : { function fromPoints(pos1:Position, pos2:Position):Range; function new(startRow:Float, startColumn:Float, endRow:Float, endColumn:Float):Range; };
	static var RenderLoop : { function new():RenderLoop; };
	static var ScrollBar : { function new(parent:HTMLElement):ScrollBar; };
	static var Search : { function new():Search; };
	static var Selection : { function new(session:IEditSession):Selection; };
	static var Split : { function new():Split; };
	static var TokenIterator : { function new(session:IEditSession, initialRow:Float, initialColumn:Float):TokenIterator; };
	static var Tokenizer : { function new(rules:Dynamic, flag:String):Tokenizer; };
	static var UndoManager : { function new():UndoManager; };
	static var VirtualRenderer : { function new(container:HTMLElement, ?theme:String):VirtualRenderer; };
	static var ace : AceAjax.Ace;
}
