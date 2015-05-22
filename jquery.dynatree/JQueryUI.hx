typedef UI = {
	var dynatree : DynatreeNamespace;
};
typedef JQuery = {
	@:overload(function(?option:String, rest:haxe.extern.Rest<Dynamic>):Dynamic { })
	function dynatree(?options:DynatreeOptions):DynaTree;
};
typedef DynaTree = {
	function activateKey(key:String):DynaTreeNode;
	function count():Float;
	function enable():Void;
	function disable():Void;
	function enableUpdate(enable:Bool):Void;
	function getActiveNode():DynaTreeNode;
	function getNodeByKey(key:String):DynaTreeNode;
	function getPersistData():Dynamic;
	function getRoot():DynaTreeNode;
	function getSelectedNodes(stopOnParents:Bool):Array<DynaTreeNode>;
	function initialize():Void;
	function isInitializing():Bool;
	function isReloading():Bool;
	function isUserEvent():Bool;
	function loadKeyPath(keyPath:String, callback:DynaTreeNode -> String -> Void):Void;
	function reactivate(setFocus:Bool):Void;
	function redraw():Void;
	function reload():Void;
	function renderInvisibleNodes():Void;
	function selectKey(key:String, flag:String):DynaTreeNode;
	function serializeArray(stopOnParents:Bool):Array<Dynamic>;
	function toDict(?includeRoot:Bool):Dynamic;
	function visit(fn:DynaTreeNode -> Bool, includeRoot:Bool):Void;
};
typedef DynaTreeNode = {
	var data : DynaTreeDataModel;
	function activate():Void;
	function activateSilently():Void;
	@:overload(function(nodeData:Array<DynaTreeDataModel>, ?beforeNode:DynaTreeNode):Void { })
	function addChild(nodeData:DynaTreeDataModel, ?beforeNode:DynaTreeNode):Void;
	function appendAjax(ajaxOptions:JQueryAjaxSettings):Void;
	function countChildren():Float;
	function deactivate():Void;
	function expand(flag:String):Void;
	function focus():Void;
	function getChildren():Array<DynaTreeNode>;
	function getEventTargetType(event:Event):String;
	function getLevel():Float;
	function getNextSibling():DynaTreeNode;
	function getParent():DynaTreeNode;
	function getPrevSibling():DynaTreeNode;
	function hasChildren():Bool;
	function isActive():Bool;
	function isChildOf(otherNode:DynaTreeNode):Bool;
	function isDescendantOf(otherNode:DynaTreeNode):Bool;
	function isExpanded():Bool;
	function isFirstSibling():Bool;
	function isFocused():Bool;
	function isLastSibling():Bool;
	function isLazy():Bool;
	function isLoading():Bool;
	function isSelected():Bool;
	function isStatusNode():Bool;
	function isVisible():Bool;
	function makeVisible():Bool;
	function move(targetNode:DynaTreeNode, mode:String):Bool;
	function reload(force:Bool):Void;
	function reloadChildren(?callback:DynaTreeNode -> Bool -> Dynamic):Void;
	function remove():Void;
	function removeChildren():Void;
	function render(useEffects:Bool, includeInvisible:Bool):Void;
	function resetLazy():Void;
	function scheduleAction(mode:String, ms:Float):Dynamic;
	function select(flag:String):Void;
	function setLazyNodeStatus(status:Float):Void;
	function setTitle(title:String):Void;
	function sortChildren(?cmp:DynaTreeNode -> DynaTreeNode -> Float, ?deep:Bool):Dynamic;
	function toDict(recursive:Bool, ?callback:Dynamic -> Dynamic):Dynamic;
	function toggleExpand():Void;
	function toggleSelect():Void;
	function visit(fn:DynaTreeNode -> Bool, includeSelf:Bool):Void;
	function visitParents(fn:DynaTreeNode -> Bool, includeSelf:Bool):Void;
};
typedef DynatreeOptions = {
	@:optional
	var title : String;
	@:optional
	var minExpandLevel : Float;
	@:optional
	var imagePath : String;
	@:optional
	var children : Array<DynaTreeDataModel>;
	@:optional
	var initId : String;
	@:optional
	var initAjax : JQueryAjaxSettings;
	@:optional
	var autoFocus : Bool;
	@:optional
	var keyboard : Bool;
	@:optional
	var persist : Bool;
	@:optional
	var autoCollapse : Bool;
	@:optional
	var clickFolderMode : Float;
	@:optional
	var activeVisible : Bool;
	@:optional
	var checkbox : Bool;
	@:optional
	var selectMode : Float;
	@:optional
	var fx : Dynamic;
	@:optional
	var noLink : Bool;
	@:optional
	var debugLevel : Float;
	@:optional
	var generateIds : Bool;
	@:optional
	var idPrefix : String;
	@:optional
	var keyPathSeparator : String;
	@:optional
	var cookieId : String;
	@:optional
	var dnd : DynaTreeDNDOptions;
	@:optional
	var ajaxDefaults : DynaTreeAjaxOptions;
	@:optional
	var strings : DynaTreeStringsOptions;
	@:optional
	var cookie : DynaTreeCookieOptions;
	@:optional
	var classNames : DynatreeClassNamesOptions;
	@:optional
	var onClick : DynaTreeNode -> Event -> Bool;
	@:optional
	var onDblClick : DynaTreeNode -> Event -> Bool;
	@:optional
	var onKeydown : DynaTreeNode -> Event -> Bool;
	@:optional
	var onKeypress : DynaTreeNode -> Event -> Bool;
	@:optional
	var onFocus : DynaTreeNode -> Event -> Bool;
	@:optional
	var onBlur : DynaTreeNode -> Event -> Bool;
	@:optional
	var onQueryActivate : String -> DynaTreeNode -> Void;
	@:optional
	var onQuerySelect : String -> DynaTreeNode -> Void;
	@:optional
	var onQueryExpand : String -> DynaTreeNode -> Void;
	@:optional
	var onPostInit : Bool -> Bool -> Void;
	@:optional
	var onActivate : DynaTreeNode -> Void;
	@:optional
	var onDeactivate : DynaTreeNode -> Void;
	@:optional
	var onSelect : String -> DynaTreeNode -> Void;
	@:optional
	var onExpand : String -> DynaTreeNode -> Void;
	@:optional
	var onLazyRead : DynaTreeNode -> Void;
	@:optional
	var onCustomRender : DynaTreeNode -> Void;
	@:optional
	var onCreate : DynaTreeNode -> Dynamic -> Void;
	@:optional
	var onRender : DynaTreeNode -> Dynamic -> Void;
	@:optional
	var postProcess : Dynamic -> Dynamic -> Void;
};
typedef DynaTreeDataModel = {
	var title : String;
	@:optional
	var key : String;
	@:optional
	var isFolder : Bool;
	@:optional
	var isLazy : Bool;
	@:optional
	var tooltip : String;
	@:optional
	var href : String;
	@:optional
	var icon : String;
	@:optional
	var addClass : String;
	@:optional
	var noLink : Bool;
	@:optional
	var activate : Bool;
	@:optional
	var focus : Bool;
	@:optional
	var expand : Bool;
	@:optional
	var select : Bool;
	@:optional
	var hideCheckbox : Bool;
	@:optional
	var unselectable : Bool;
	@:optional
	var children : Array<DynaTreeDataModel>;
};
typedef DynaTreeDNDOptions = {
	@:optional
	var autoExpandMS : Float;
	@:optional
	var preventVoidMoves : Bool;
	var revert : Bool;
	@:optional
	var onDragStart : Dynamic -> Void;
	@:optional
	var onDragStop : Dynamic -> Void;
	@:optional
	var onDragEnter : Dynamic -> Dynamic -> Void;
	@:optional
	var onDragOver : Dynamic -> Dynamic -> String -> Void;
	@:optional
	var onDrop : Dynamic -> Dynamic -> String -> Void;
	@:optional
	var onDragLeave : Dynamic -> Dynamic -> Void;
};
typedef DynaTreeCookieOptions = {
	var expires : Dynamic;
};
typedef DynaTreeStringsOptions = {
	@:optional
	var loading : String;
	@:optional
	var loadError : String;
};
typedef DynaTreeAjaxOptions = {
	@:optional
	var cache : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var dataType : String;
};
typedef DynatreeClassNamesOptions = {
	@:optional
	var container : String;
	@:optional
	var node : String;
	@:optional
	var folder : String;
	@:optional
	var empty : String;
	@:optional
	var vline : String;
	@:optional
	var expander : String;
	@:optional
	var connector : String;
	@:optional
	var checkbox : String;
	@:optional
	var nodeIcon : String;
	@:optional
	var title : String;
	@:optional
	var noConnector : String;
	@:optional
	var nodeError : String;
	@:optional
	var nodeWait : String;
	@:optional
	var hidden : String;
	@:optional
	var combinedExpanderPrefix : String;
	@:optional
	var combinedIconPrefix : String;
	@:optional
	var hasChildren : String;
	@:optional
	var active : String;
	@:optional
	var selected : String;
	@:optional
	var expanded : String;
	@:optional
	var lazy : String;
	@:optional
	var focused : String;
	@:optional
	var partsel : String;
	@:optional
	var lastsib : String;
};
typedef DynatreeNamespace = {
	function getNode(element:HTMLElement):DynaTreeNode;
	function getPersistData(cookieId:String, cookieOpts:DynaTreeCookieOptions):Dynamic;
	var version : Float;
};
