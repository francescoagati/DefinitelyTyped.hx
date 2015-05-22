typedef Fancytree = {
	var $div : JQuery;
	var rootNode : FancytreeNode;
	function activateKey(key:String):FancytreeNode;
	function applyPatch(patchList:Array<NodePatch>):JQueryPromise<Dynamic>;
	function changeRefKey(oldRefKey:String, newRefKey:String):Void;
	function clearCookies():Void;
	function clearFilter():Void;
	function count():Float;
	function debug(msg:Dynamic):Void;
	@:overload(function(filter:FancytreeNode -> Bool):Float { })
	function filterBranches(filter:String):Float;
	@:overload(function(filter:FancytreeNode -> Bool, ?leavesOnly:Bool):Float { })
	function filterNodes(filter:String, ?leavesOnly:Bool):Float;
	@:overload(function(match:FancytreeNode -> Bool, ?startNode:FancytreeNode):FancytreeNode { })
	function findNextNode(match:String, ?startNode:FancytreeNode):FancytreeNode;
	function generateFormElements(?selected:Bool, ?active:Bool):Void;
	function getActiveNode():FancytreeNode;
	function getFirstChild():FancytreeNode;
	function getFocusNode(?ifTreeHasFocus:Bool):FancytreeNode;
	function getNodeByKey(key:String, ?searchRoot:FancytreeNode):FancytreeNode;
	function getNodesByRef(refKey:String, ?rootNode:FancytreeNode):Array<FancytreeNode>;
	function getPersistData():Void;
	function getRootNode():FancytreeNode;
	function getSelectedNodes(?stopOnParents:Bool):Array<FancytreeNode>;
	function hasFocus():Bool;
	function info(msg:Dynamic):Void;
	function isEditing():FancytreeNode;
	@:overload(function(keyPath:String, callback:FancytreeNode -> String -> Void):JQueryPromise<Dynamic> { })
	function loadKeyPath(keyPathList:Array<String>, callback:FancytreeNode -> String -> Void):JQueryPromise<Dynamic>;
	function reactivate():Void;
	function reload(?source:Dynamic):JQueryPromise<Dynamic>;
	function render(?force:Bool, ?deep:Bool):Void;
	function setFocus(?flag:Bool):Void;
	function toDict(?includeRoot:Bool, ?callback:FancytreeNode -> Void):Dynamic;
	function visit(fn:FancytreeNode -> Dynamic):Bool;
	function warn(msg:Dynamic):Void;
};
typedef FancytreeNode = {
	var tree : Fancytree;
	var parent : FancytreeNode;
	var key : String;
	var title : String;
	var data : Dynamic;
	var children : Array<FancytreeNode>;
	var expanded : Bool;
	var extraClasses : String;
	var folder : Bool;
	var statusNodeType : String;
	var lazy : Bool;
	var tooltip : String;
	@:overload(function(child:Fancytree.NodeData, ?insertBefore:String):FancytreeNode { })
	@:overload(function(child:Fancytree.NodeData, ?insertBefore:Float):FancytreeNode { })
	@:overload(function(children:Array<Fancytree.NodeData>, ?insertBefore:FancytreeNode):FancytreeNode { })
	@:overload(function(children:Array<Fancytree.NodeData>, ?insertBefore:String):FancytreeNode { })
	@:overload(function(children:Array<Fancytree.NodeData>, ?insertBefore:Float):FancytreeNode { })
	function addChildren(child:Fancytree.NodeData, ?insertBefore:FancytreeNode):FancytreeNode;
	function addNode(node:NodeData, ?mode:String):FancytreeNode;
	function applyPatch(patch:NodePatch):JQueryPromise<Dynamic>;
	function collapseSiblings():JQueryPromise<Dynamic>;
	function copyTo(node:FancytreeNode, ?mode:String, ?map:NodeData -> Void):FancytreeNode;
	function countChildren(?deep:Bool):Float;
	function debug(msg:Dynamic):Void;
	function editCreateNode(?mode:String, ?init:Dynamic):Void;
	function editEnd(applyChanges:Bool):Void;
	function editStart():Void;
	@:overload(function(match:FancytreeNode -> Bool):Array<FancytreeNode> { })
	function findAll(match:String):Array<FancytreeNode>;
	@:overload(function(match:FancytreeNode -> Bool):FancytreeNode { })
	function findFirst(match:String):FancytreeNode;
	function fixSelection3AfterClick():Void;
	function fixSelection3FromEndNodes():Void;
	function fromDict(dict:NodeData):Void;
	function getChildren():Array<FancytreeNode>;
	function getCloneList(?includeSelf:Bool):Array<FancytreeNode>;
	function getFirstChild():FancytreeNode;
	function getIndex():Float;
	function getIndexHier():String;
	function getKeyPath(excludeSelf:Bool):String;
	function getLastChild():FancytreeNode;
	function getLevel():Float;
	function getNextSibling():FancytreeNode;
	function getParent():FancytreeNode;
	function getParentList(includeRoot:Bool, includeSelf:Bool):Array<FancytreeNode>;
	function getPrevSibling():FancytreeNode;
	function hasChildren():Bool;
	function hasFocus():Bool;
	function info(msg:String):Void;
	function isActive():Bool;
	function isChildOf(otherNode:FancytreeNode):Bool;
	function isClone():Bool;
	function isDescendantOf(otherNode:FancytreeNode):Bool;
	function isEditing():Bool;
	function isExpanded():Bool;
	function isFirstSibling():Bool;
	function isFolder():Bool;
	function isLastSibling():Bool;
	function isLazy():Bool;
	function isLoaded():Bool;
	function isLoading():Bool;
	function isRootNode():Bool;
	function isSelected():Bool;
	function isStatusNode():Bool;
	function isTopLevel():Bool;
	function isUndefined():Bool;
	function isVisible():Bool;
	function load(?forceReload:Bool):JQueryPromise<Dynamic>;
	function makeVisible(?opts:Dynamic):JQueryPromise<Dynamic>;
	function moveTo(targetNode:FancytreeNode, mode:String, ?map:FancytreeNode -> Void):Void;
	function navigate(where:Float, ?activate:Bool):JQueryPromise<Dynamic>;
	function remove():Void;
	function removeChild(childNode:FancytreeNode):Void;
	function removeChildren():Void;
	function render(?force:Bool, ?deep:Bool):Void;
	function renderStatus():Void;
	function renderTitle():Void;
	function reRegister(key:String, refKey:String):Bool;
	function resetLazy():Void;
	function scheduleAction(mode:String, ms:Float):Void;
	@:overload(function(?effects:Dynamic, ?options:Dynamic):JQueryPromise<Dynamic> { })
	function scrollIntoView(?effects:Bool, ?options:Dynamic):JQueryPromise<Dynamic>;
	function setActive(?flag:Bool, ?opts:Dynamic):JQueryPromise<Dynamic>;
	function setExpanded(?flag:Bool, ?opts:Dynamic):JQueryPromise<Dynamic>;
	function setFocus(?flag:Bool):Void;
	function setSelected(?flag:Bool):Void;
	function setStatus(status:String, ?message:String, ?details:String):Void;
	function setTitle(title:String):Void;
	function sortChildren(?cmp:FancytreeNode -> FancytreeNode -> Float, ?deep:Bool):Void;
	function toDict(?recursive:Bool, ?callback:NodeData -> Void):NodeData;
	function toggleExpanded():Void;
	function toggleSelected():Void;
	function visit(fn:FancytreeNode -> Dynamic, ?includeSelf:Bool):Bool;
	function visitAndLoad(fn:FancytreeNode -> Dynamic, ?includeSelf:Bool):JQueryPromise<Dynamic>;
	function visitParents(fn:FancytreeNode -> Dynamic, ?includeSelf:Bool):Bool;
	function warn(msg:Dynamic):Void;
};
@:enum abstract FancytreeClickFolderMode(Int) {
	var activate = 1;
	var expand = 2;
	var activate_and_expand = 3;
	var activate_dblclick_expands = 4;
}
@:enum abstract FancytreeSelectMode(Int) {
	var single = 1;
	var multi = 2;
	var mutlti_hier = 3;
}
typedef EventData = {
	var tree : Fancytree;
	var widget : Dynamic;
	var options : FancytreeOptions;
	var originalEvent : JQueryEventObject;
	var node : FancytreeNode;
	var result : Dynamic;
	var targetType : String;
	var response : Dynamic;
};
typedef FancytreeEvents = {
	@:optional
	function activate(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function beforeActivate(event:JQueryEventObject, data:EventData):Bool;
	@:optional
	function beforeExpand(event:JQueryEventObject, data:EventData):Bool;
	@:optional
	function beforeSelect(event:JQueryEventObject, data:EventData):Bool;
	@:optional
	function blur(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function blurTree(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function click(event:JQueryEventObject, data:EventData):Bool;
	@:optional
	function collapse(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function create(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function createNode(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function dblclick(event:JQueryEventObject, data:EventData):Bool;
	@:optional
	function deactivate(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function expand(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function focus(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function focusTree(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function init(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function keydown(event:JQueryEventObject, data:EventData):Bool;
	@:optional
	function keypress(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function lazyLoad(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function loadChildren(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function loadError(event:JQueryEventObject, data:EventData):Bool;
	@:optional
	function postProcess(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function removeNode(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function renderColumns(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function renderNode(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function renderTitle(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function restore(event:JQueryEventObject, data:EventData):Void;
	@:optional
	function select(event:JQueryEventObject, data:EventData):Void;
};
typedef FancytreeOptions = {
	>FancytreeEvents,
	@:optional
	var activeVisible : Bool;
	@:optional
	var ajax : Dynamic;
	@:optional
	var aria : Bool;
	@:optional
	var autoActivate : Bool;
	@:optional
	var autoCollapse : Bool;
	@:optional
	var autoScroll : Bool;
	@:optional
	var checkbox : Bool;
	@:optional
	var clickFolderMode : FancytreeClickFolderMode;
	@:optional
	var debugLevel : Float;
	@:optional
	var defaultKey : FancytreeNode -> String;
	@:optional
	var enableAspx : Bool;
	@:optional
	var extensions : Array<String>;
	@:optional
	var focusOnSelect : Bool;
	@:optional
	var generateIds : Bool;
	@:optional
	var icons : Bool;
	@:optional
	var idPrefix : String;
	@:optional
	var imagePath : String;
	@:optional
	var keyboard : Bool;
	@:optional
	var keyPathSeparator : String;
	@:optional
	var minExpandLevel : Float;
	@:optional
	var quicksearch : Bool;
	@:optional
	var scrollOfs : Dynamic;
	@:optional
	var scrollParent : JQuery;
	@:optional
	var selectMode : FancytreeSelectMode;
	@:optional
	var source : Dynamic;
	@:optional
	var strings : Dynamic;
	@:optional
	var tabbable : Bool;
	@:optional
	var titlesTabbable : Bool;
	@:optional
	var toggleEffect : Dynamic;
};
typedef NodeData = {
	var title : String;
	@:optional
	var key : String;
	@:optional
	var refKey : String;
	@:optional
	var expanded : Bool;
	@:optional
	var active : Bool;
	@:optional
	var focus : Bool;
	@:optional
	var folder : Bool;
	@:optional
	var hideCheckbox : Bool;
	@:optional
	var lazy : Bool;
	@:optional
	var selected : Bool;
	@:optional
	var unselectable : Bool;
	@:optional
	var children : Array<NodeData>;
	@:optional
	var tooltip : String;
	@:optional
	var extraClasses : String;
	@:optional
	var data : Dynamic;
};
typedef NodePatch = {
	@:optional
	var appendChildren : NodeData;
	@:optional
	var replaceChildren : NodeData;
	@:optional
	var insertChildren : NodeData;
};
typedef TreePatch = { };
typedef FancytreeStatic = {
	var buildType : String;
	var debugLevel : Float;
	var version : String;
	function assert(cond:Bool, msg:String):Void;
	function debounce<T:(haxe.extern.Rest<Dynamic> -> Void)>(timeout:Float, fn:T, ?invokeAsap:Bool, ?ctx:Dynamic):T;
	function debug(msg:String):Void;
	function error(msg:String):Void;
	function escapeHtml(s:String):String;
	function getEventTarget(event:Event):Dynamic;
	function getEventTargetType(event:Event):String;
	@:overload(function(el:Event):FancytreeNode { })
	@:overload(function(el:Element):FancytreeNode { })
	function getNode(el:JQuery):FancytreeNode;
	function info(msg:String):Void;
	function keyEventToString(event:Event):String;
	function parseHtml($ul:JQuery):Array<NodeData>;
	function registerExtension(definition:Dynamic):Void;
	function unescapeHtml(s:String):String;
	function warn(msg:String):Void;
};
