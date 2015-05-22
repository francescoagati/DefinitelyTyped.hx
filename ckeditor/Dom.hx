extern class Comment {
	var type : Float;
	@:overload(function(comment:Dynamic, ?ownerDocument:Document):Void { })
	function new(comment:String, ?ownerDocument:Document):Void;
	function getOuterHtml():String;
}
extern class Document extends DomObject {
	var type : Float;
	function new(domDocument:Dynamic):Void;
	function appendStyleSheet(cssFileUrl:String):Void;
	function appendStyleText(cssStyleText:String):Dynamic;
	function createElement(name:String, ?attribsAndStyles:{ var attributes : Dynamic; var styles : Dynamic; }):Element;
	function createText(text:String):Element;
	function find(selector:String):NodeList;
	function findOne(selector:String):Element;
	function focus():Void;
	function getActive():Element;
	function getBody():Element;
	function getByAddress(address:Array<Dynamic>, ?normalized:Bool):Node;
	function getById(elementId:String):Element;
	function getDocumentElement():Element;
	function getElementsByTag(tagName:String):NodeList;
	function getHead():Element;
	function getSelection():Selection;
	function getWindow():Window;
	function write(html:String):Void;
}
extern class DocumentFragment {
	var type : Float;
	function new(nodeOrDoc:Dynamic):Void;
	function insertAfterNode(node:Node):Void;
}
extern class DomObject extends Event {
	var $ : HTMLElement;
	function new(nativeDomObject:Dynamic):Void;
	function clearCustomData():Void;
	function equals(object:Dynamic):Bool;
	function getCustomData(key:String):Dynamic;
	function getPrivate():Dynamic;
	function getUniqueId():Float;
	function removeAllListeners():Void;
	function removeCustomData(key:String):Dynamic;
	function setCustomData(key:String, value:Dynamic):DomObject;
}
extern class Element extends Node {
	var type : Float;
	@:overload(function(element:HTMLElement, ?ownerDocument:Document):Void { })
	function new(element:String, ?ownerDocument:Document):Void;
	function addClass(className:String):Void;
	@:overload(function(node:String, ?toStart:Bool):Node { })
	function append(node:Node, ?toStart:Bool):Node;
	function appendBogus(force:Bool):Void;
	function appendHtml(html:String):Void;
	function appendText(text:String):Node;
	function breakParent(parent:Element):Void;
	function contains(node:Node):Bool;
	function copyAttributes(dest:Element, skipAttributes:Dynamic):Void;
	@:overload(function(name:String, value:String):Void { })
	@:overload(function(name:String, value:Bool):Void { })
	function data(name:String):String;
	function disableContextMenu():Void;
	function find(selector:String):NodeList;
	function findOne(selector:String):Element;
	function focus(?defer:Bool):Void;
	function focusNext(?ignoreChildren:Bool, ?indexToUse:Float):Void;
	function focusPrevious(?ignoreChildren:Bool, ?indexToUse:Float):Void;
	function forEach(callback:Node -> Void, ?type:Float, ?skipRoot:Bool):Void;
	function getAttribute(name:String):String;
	function getBogus():Dynamic;
	@:overload(function(indices:Array<Float>):Node { })
	function getChild(indices:Float):Node;
	function getChildCount():Float;
	function getChildren():NodeList;
	function getClientRect():Dynamic;
	function getComputedStyle(propertyName:String):String;
	function getDirection(useComputed:Bool):String;
	function getDocumentPosition(refDocument:Document):Position;
	function getDtd():Dynamic;
	function getEditor():Editor;
	function getElementsByTag(tagName:String):NodeList;
	function getFirst(?evaluator:haxe.Constraints.Function):Node;
	function getFrameDocument():Document;
	function getHtml():String;
	function getId():String;
	function getLast(?evaluator:haxe.Constraints.Function):Node;
	function getName():String;
	function getNameAtt():String;
	function getOuterHtml():String;
	function getPositionedAncestor():Element;
	function getSize(type:String, isBorderBox:Bool):Void;
	function getStyle(name:String):String;
	function getTabIndex():Float;
	function getText():String;
	function getValue():String;
	function getWindow():Window;
	function hasAttributes():Bool;
	function hasAttribute(name:String):Bool;
	function hasClass(className:String):Bool;
	function hide():Void;
	@:overload(function(name:Dynamic):Bool { })
	function is(name:haxe.extern.Rest<String>):Bool;
	function isBlockBoundary(customNodeNames:Dynamic):Bool;
	function isEditable(?textCursor:Bool):Bool;
	function isEmptyInlineRemoveable():Bool;
	function isIdentical(otherElement:Element):Bool;
	function isVisible():Bool;
	function mergeSiblings(?inlineOnly:Bool):Void;
	function moveChildren(target:Element, ?toStart:Bool):Void;
	function removeAttribute(name:String):Void;
	function removeAttributes(?attributes:Array<String>):Void;
	function removeClass(className:String):Void;
	function removeStyle(name:String):Void;
	function renameNode(newTag:String):Void;
	@:overload(function(parent:Window, alignToTop:Bool, hscroll:Bool):Void { })
	function scrollIntoParent(parent:Element, alignToTop:Bool, hscroll:Bool):Void;
	function scrollIntoView(?alignToTop:Bool):Void;
	function setAttribute(name:String, value:String):Element;
	function setAttributes(attributesPairs:Dynamic):Element;
	function setHtml(html:String):String;
	function setOpacity(opacity:Float):Void;
	function setSize(type:String, size:Float, isBorderBox:Bool):Void;
	function setState(state:Float, ?base:Dynamic, ?useAria:Dynamic):Void;
	function setStyle(name:String, value:String):Element;
	function setStyles(stylesPair:Dynamic):Element;
	function setText(text:String):String;
	function setValue(value:String):Element;
	function show():Void;
	function unselectable():Void;
	static function clearAllMarkers(database:Dynamic):Dynamic;
	static function clearMarkers(database:Dynamic, element:Dynamic, removeFromDatabase:Dynamic):Void;
	static function createFromHtml(html:String):Element;
	@:overload(function(element:Dynamic):Element { })
	static function get(element:String):Element;
	static function setMarker(database:Dynamic, element:Dynamic, name:Dynamic, value:Dynamic):DomObject;
}
extern class ElementPath {
	function new(startNode:Element, root:Element):Void;
	var block : Element;
	var blockLimit : Element;
	var root : Element;
	var elements : Array<Element>;
	function compare(otherPath:ElementPath):Bool;
	@:overload(function(query:Array<String>, excludeRoot:Bool, fromTop:Bool):Element { })
	@:overload(function(query:Element -> Bool, excludeRoot:Bool, fromTop:Bool):Element { })
	@:overload(function(query:Dynamic, excludeRoot:Bool, fromTop:Bool):Element { })
	@:overload(function(query:Element, excludeRoot:Bool, fromTop:Bool):Element { })
	function contains(query:String, excludeRoot:Bool, fromTop:Bool):Element;
	function isContextFor(tag:String):Bool;
	function direction():String;
}
extern class Range {
	@:overload(function(root:Document):Void { })
	function new(root:Element):Void;
	var startContainer : Dynamic;
	var startOffset : Float;
	var endContainer : Dynamic;
	var endOffset : Float;
	var collapsed : Bool;
	var isDocRoot : Bool;
	var document : Document;
	var root : Element;
	function clone():Range;
	function collapse(?toStart:Bool):Boolean;
	function cloneContents():DocumentFragment;
	function deleteContents(?mergeThen:Bool):Void;
	function extractContents(?mergeThen:Bool):DocumentFragment;
	function createBookmark(serializable:Bool):Dynamic;
	function createBookmark2(normalized:Bool):Dynamic;
	function createIterator():Iterator;
	function moveToBookmark(bookmark:Dynamic):Void;
	function getBoundaryNodes():{ var startNode : Node; var endNode : Node; };
	function getCommonAncestor(includeSelf:Bool, ignoreTextNode:Bool):Element;
	function optimize():Void;
	function optimizeBookmark():Void;
	function trim(?ignoreStart:Bool, ?ignoreEnd:Bool):Void;
	function enlarge(unit:Float, ?excludeBrs:Bool):Void;
	function shrink(mode:Float, selectContents:Bool):Void;
	function insertNode(node:Node):Void;
	function moveToPosition(node:Node, position:Dynamic):Void;
	function moveToRange(range:Range):Void;
	function selectNodeContents(node:Node):Void;
	function setStart(startNode:Node, startOffset:Float):Void;
	function setEnd(endNode:Node, endOffset:Float):Void;
	function setStartAfter(node:Node):Void;
	function setStartBefore(node:Node):Void;
	function setStartAt(node:Node, position:Float):Void;
	function setEndAt(node:Node, position:Float):Void;
	function fixBlock(isStart:Bool, blockTag:Dynamic):Dynamic;
	function splitBlock(blockTag:Dynamic):Dynamic;
	function splitElement(toSplit:Element):Element;
	function removeEmptyBlocksAtEnd(atEnd:Bool):Void;
	function startPath():ElementPath;
	function endPath():ElementPath;
	function checkBoundaryOfElement(element:Element, checkType:Float):Bool;
	function checkStartOfBlock():Bool;
	function checkEndOfBlock():Bool;
	function getPreviousNode(evaluator:haxe.Constraints.Function, guard:haxe.Constraints.Function, boundary:Element):Element;
	function getNextNode(evaluator:haxe.Constraints.Function, guard:haxe.Constraints.Function, boundary:Element):Element;
	function checkReadOnly():Bool;
	function moveToElementEditablePosition(element:Element, isMoveToEnd:Bool):Bool;
	function movetoClosestEditablePosition(element:Element, isMoveToEnd:Bool):Bool;
	function moveToElementEditStart(target:Dynamic):Bool;
	function moveToElementEditEnd(target:Dynamic):Bool;
	function getEnclosedNode():Node;
	function getTouchedStartNode():Node;
	function getTouchedEndNode():Node;
	function getNextEditableNode():Dynamic;
	function getPreviousEditableNode():Dynamic;
	function scrollIntoView():Void;
}
typedef RangeListIterator = { };
extern class Selection {
	var document : Document;
	var isFake : Bool;
	var isLocked : Bool;
	var rev : Float;
	var root : Element;
	@:overload(function(target:Element):Void { })
	@:overload(function(target:Selection):Void { })
	function new(target:Document):Void;
	function createBookmarks(serializable:Dynamic):Array<Dynamic>;
	function createBookmarks2(?normalized:Dynamic):Array<Dynamic>;
	function fake(element:Element):Void;
	function getCommonAncestor():Element;
	function getNative():Dynamic;
	function getRanges(?onlyEditables:Bool):Array<Dynamic>;
	function getSelectedElement():Element;
	function getSelectedText():String;
	function getStartElement():Element;
	function getType():Float;
	function isHidden():Bool;
	function lock():Void;
	function removeAllRanges():Void;
	function reset():Void;
	function scrollIntoView():Void;
	function selectBookmarks(bookmarks:Array<Dynamic>):Selection;
	function selectElement(element:Element):Void;
	function selectRanges(ranges:Array<Dynamic>):Void;
	function unlock(restore:Dynamic):Void;
}
extern class RangeList {
	@:overload(function(range:Range):Void { })
	function new(ranges:Array<Range>):Void;
	function createIterator():RangeListIterator;
	function createBokmark(serializable:Bool):Array<Dynamic>;
	function createBookmark2(normalized:Bool):Array<Dynamic>;
	function moveToBookmark(bookmarks:Array<Dynamic>):Void;
}
extern class Iterator {
	function new(range:Range):Void;
	function getNextParagraph(?blockTag:String):Element;
	var activeFilter : Filter;
	var enforceRealBlocks : Boolean;
	var enlargeBr : Boolean;
	var filter : Filter;
}
extern class Node extends DomObject {
	function new(domNode:Node):Void;
	function appendTo(element:Element):Element;
	function clone(includeChildren:Bool, cloneId:Bool):Node;
	function hasPrevious():Bool;
	function hasNext():Bool;
	function insertAfter(node:Node):Node;
	function insertBefore(node:Node):Node;
	function insertBeforeMe(node:Node):Node;
	function getAddress(normalized:Bool):Array<Dynamic>;
	function getDocument():Document;
	function getIndex(?normalized:Bool):Float;
	function getNextSourceNode(startFromSibling:Dynamic, nodeType:Dynamic, guard:Dynamic):Void;
	function getPreviousSourceNode(startFromSibling:Dynamic, nodeType:Dynamic, guard:Dynamic):Void;
	function getPrevious(?evaluator:haxe.Constraints.Function):Node;
	function getNext(?evaluator:haxe.Constraints.Function):Node;
	function getParent(?allowFragmentParent:Bool):Element;
	function getParents(?closerFirst:Bool):Array<Node>;
	function getCommonAncestor(node:Dynamic):Void;
	function getPosition(otherNode:Dynamic):Void;
	function getAscendant(reference:String, ?includeSelf:Bool):Node;
	function hasAscendant(name:Dynamic, includeSelf:Dynamic):Bool;
	function move(?preserveChildren:Bool):Node;
	function replace(nodeToReplace:Node):Void;
	function trim():Void;
	function ltrim():Void;
	function rtrim():Void;
	function isReadOnly():Bool;
}
extern class NodeList {
	function new(nativeList:Dynamic):Void;
	function count():Float;
	function getItem(index:Float):Node;
}
extern class Event {
	function new(domEvent:Event):Void;
	function getKey():Float;
	function getKeystroke():Float;
	function preventDefault(stopPropagation:Bool):Void;
	function stopPropagation():Void;
	function getTarget():Node;
	function getPhase():Float;
	function getPhaseOffset():Position;
	function on(eventName:String, listenerFunction:EventInfo -> Void, ?scopeObj:Dynamic, ?listenerData:Dynamic, ?priority:Float):Dynamic;
}
typedef Position = {
	var x : Float;
	var y : Float;
};
typedef WidthAndHeight = {
	var width : Float;
	var height : Float;
};
extern class Text extends Node {
	@:overload(function(text:String, ?ownerDocument:Document):Void { })
	function new(text:Text, ?ownerDocument:Document):Void;
	var type : Float;
	function getLength():Float;
	function getText():String;
	function setText(text:String):Void;
	function split(offset:Float):Text;
	function substring(indexA:Float, indexB:Float):Void;
}
extern class Window extends DomObject {
	function new(domWindow:Dynamic):Void;
	function focus():Void;
	function getViewPaneSize():WidthAndHeight;
	function getScrollPosition():Position;
	function getFrame():Element;
}
extern class Walker {
	function new(range:Range):Void;
	function end():Void;
	function next():Node;
	function previous():Node;
	function checkForward():Bool;
	function checkBackward():Bool;
	function lastForward():Node;
	function lastBackward():Node;
	function reset():Void;
	function blockBoundary(customNodeNames:Dynamic):haxe.Constraints.Function;
	function listItemBoundary():haxe.Constraints.Function;
	function bookmark(?contentOnly:Bool, ?isReject:Bool):haxe.Constraints.Function;
	function whitespaces(?isReject:Bool):haxe.Constraints.Function;
	function invisible(?isReject:Bool):haxe.Constraints.Function;
	function nodeType(type:Float, ?isReject:Bool):haxe.Constraints.Function;
	function bogus(?isReject:Bool):haxe.Constraints.Function;
	function temp(?isReject:Bool):haxe.Constraints.Function;
	function ignored(?isReject:Bool):haxe.Constraints.Function;
	function editable(?isReject:Bool):haxe.Constraints.Function;
}
