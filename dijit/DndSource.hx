typedef __Item = {
	var id : Dynamic;
	var name : String;
};
extern class Model {
	function new():Void;
	function destroy():Void;
	function getChildren(parentItem:dojo.data.api.Item, onComplete:Dynamic):Void;
	function getIdentity(item:Dynamic):Void;
	function getLabel(item:Dynamic):Void;
	function getRoot(onItem:Dynamic):Void;
	function isItem(something:Dynamic):Void;
	function mayHaveChildren(item:dojo.data.api.Item):Void;
	function newItem(args:dijit.tree.dndSource.__Item, parent:Dynamic, insertIndex:Float, before:Dynamic):Void;
	function pasteItem(childItem:Dynamic, oldParentItem:Dynamic, newParentItem:Dynamic, bCopy:Bool, insertIndex:Float, before:Dynamic):Void;
	function onChange(item:dojo.data.api.Item):Void;
	function onChildrenChange(parent:dojo.data.api.Item, newChildrenList:Array<dojo.data.api.Item>):Void;
}
extern class ForestStoreModel extends dijit.tree.TreeStoreModel {
	function new(params:Dynamic):Void;
	var childrenAttrs : Dynamic;
	var deferItemLoadingUntilExpand : Bool;
	var labelAttr : String;
	var newItemIdAttr : String;
	var query : String;
	var root : Dynamic;
	var rootId : String;
	var rootLabel : String;
	var store : Dynamic;
	function destroy():Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getChildren(parentItem:dojo.data.api.Item, callback:{ }, onError:haxe.Constraints.Function):Void;
	function getIdentity(item:Dynamic):Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getRoot(onItem:Dynamic, onError:Dynamic):Void;
	function isItem(something:Dynamic):Bool;
	function mayHaveChildren(item:dojo.data.api.Item):Bool;
	function newItem(args:dijit.tree.dndSource.__Item, parent:Dynamic, insertIndex:Float):Dynamic;
	function pasteItem(childItem:Dynamic, oldParentItem:Dynamic, newParentItem:Dynamic, bCopy:Bool, insertIndex:Float):Void;
	function onAddToRoot(item:Dynamic):Void;
	function onChange(item:dojo.data.api.Item):Void;
	function onChildrenChange(parent:dojo.data.api.Item, newChildrenList:Array<dojo.data.api.Item>):Void;
	function onDelete(item:dojo.data.api.Item):Void;
	function onDeleteItem(item:Dynamic):Void;
	function onLeaveRoot(item:Dynamic):Void;
	function onNewItem(item:dojo.data.api.Item, parentInfo:Dynamic):Void;
	function onNewRootItem(args:dijit.tree.dndSource.__Item):Void;
	@:overload(function(item:Dynamic, attribute:String, oldValue:Array<Dynamic>, newValue:Dynamic):Void { })
	@:overload(function(item:Dynamic, attribute:String, oldValue:Dynamic, newValue:Array<Dynamic>):Void { })
	@:overload(function(item:Dynamic, attribute:String, oldValue:Array<Dynamic>, newValue:Array<Dynamic>):Void { })
	function onSetItem(item:Dynamic, attribute:String, oldValue:Dynamic, newValue:Dynamic):Void;
}
extern class ObjectStoreModel {
	function new(args:Dynamic):Void;
	var labelAttr : String;
	var labelType : String;
	var query : Dynamic;
	var root : Dynamic;
	var store : Dynamic;
	function destroy():Void;
	function getChildren(parentItem:Dynamic, onComplete:{ }, onError:haxe.Constraints.Function):Void;
	function getIdentity(item:Dynamic):Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getRoot(onItem:Dynamic, onError:Dynamic):Void;
	function isItem(something:Dynamic):Bool;
	function mayHaveChildren(item:Dynamic):Bool;
	function newItem(args:dijit.tree.dndSource.__Item, parent:Dynamic, insertIndex:Float, before:Dynamic):Dynamic;
	function pasteItem(childItem:Dynamic, oldParentItem:Dynamic, newParentItem:Dynamic, bCopy:Bool, insertIndex:Float, before:Dynamic):Dynamic;
	function onChange(item:dojo.data.api.Item):Void;
	function onChildrenChange(parent:dojo.data.api.Item, newChildrenList:Array<Dynamic>):Void;
	function onDelete(item:dojo.data.api.Item):Void;
}
extern class TreeStoreModel {
	function new(args:Dynamic):Void;
	var childrenAttrs : Dynamic;
	var deferItemLoadingUntilExpand : Bool;
	var labelAttr : String;
	var newItemIdAttr : String;
	var query : Dynamic;
	var root : Dynamic;
	var store : Dynamic;
	function destroy():Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getChildren(parentItem:dojo.data.api.Item, onComplete:{ }, onError:haxe.Constraints.Function):Void;
	function getIdentity(item:Dynamic):Dynamic;
	function getLabel(item:dojo.data.api.Item):Dynamic;
	function getRoot(onItem:Dynamic, onError:Dynamic):Void;
	function isItem(something:Dynamic):Dynamic;
	function mayHaveChildren(item:dojo.data.api.Item):Dynamic;
	function newItem(args:dijit.tree.dndSource.__Item, parent:dojo.data.api.Item, insertIndex:Float):Void;
	function pasteItem(childItem:Dynamic, oldParentItem:Dynamic, newParentItem:Dynamic, bCopy:Bool, insertIndex:Float):Void;
	function onChange(item:dojo.data.api.Item):Void;
	function onChildrenChange(parent:dojo.data.api.Item, newChildrenList:Array<dojo.data.api.Item>):Void;
	function onDelete(item:dojo.data.api.Item):Void;
	function onDeleteItem(item:Dynamic):Void;
	function onNewItem(item:dojo.data.api.Item, parentInfo:Dynamic):Void;
	@:overload(function(item:Dynamic, attribute:Dynamic, oldValue:Array<Dynamic>, newValue:Dynamic):Void { })
	@:overload(function(item:Dynamic, attribute:Dynamic, oldValue:Dynamic, newValue:Array<Dynamic>):Void { })
	@:overload(function(item:Dynamic, attribute:Dynamic, oldValue:Array<Dynamic>, newValue:Array<Dynamic>):Void { })
	function onSetItem(item:Dynamic, attribute:Dynamic, oldValue:Dynamic, newValue:Dynamic):Void;
}
typedef _base = { };
