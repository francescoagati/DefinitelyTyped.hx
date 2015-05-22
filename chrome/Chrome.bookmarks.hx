typedef BookmarkTreeNode = {
	@:optional
	var index : Float;
	@:optional
	var dateAdded : Float;
	var title : String;
	@:optional
	var url : String;
	@:optional
	var dateGroupModified : Float;
	var id : String;
	@:optional
	var parentId : String;
	@:optional
	var children : Array<BookmarkTreeNode>;
};
typedef BookmarkRemoveInfo = {
	var index : Float;
	var parentId : String;
};
typedef BookmarkMoveInfo = {
	var index : Float;
	var oldIndex : Float;
	var parentId : String;
	var oldParentId : String;
};
typedef BookmarkChangeInfo = {
	@:optional
	var url : String;
	var title : String;
};
typedef BookmarkReorderInfo = {
	var childIds : Array<String>;
};
typedef BookmarkRemovedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> BookmarkRemoveInfo -> Void):Void;
};
typedef BookmarkImportEndedEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef BookmarkMovedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> BookmarkMoveInfo -> Void):Void;
};
typedef BookmarkImportBeganEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef BookmarkChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> BookmarkChangeInfo -> Void):Void;
};
typedef BookmarkCreatedEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> BookmarkTreeNode -> Void):Void;
};
typedef BookmarkChildrenReordered = {
	>chrome.events.Event,
	function addListener(callback:String -> BookmarkReorderInfo -> Void):Void;
};
extern class Chrome.bookmarksTopLevel {
	static var MAX_WRITE_OPERATIONS_PER_HOUR : Float;
	static var MAX_SUSTAINED_WRITE_OPERATIONS_PER_MINUTE : Float;
	static function search(query:String, callback:Array<BookmarkTreeNode> -> Void):Void;
	static function getTree(callback:Array<BookmarkTreeNode> -> Void):Void;
	static function getRecent(numberOfItems:Float, callback:Array<BookmarkTreeNode> -> Void):Void;
	static function get(id:String, callback:Array<BookmarkTreeNode> -> Void):Void;
	static function get(idList:Array<String>, callback:Array<BookmarkTreeNode> -> Void):Void;
	static function create(bookmark:Dynamic, ?callback:BookmarkTreeNode -> Void):Void;
	static function move(id:String, destination:Dynamic, ?callback:BookmarkTreeNode -> Void):Void;
	static function update(id:String, changes:Dynamic, ?callback:BookmarkTreeNode -> Void):Void;
	static function remove(id:String, ?callback:haxe.Constraints.Function):Void;
	static function getChildren(id:String, callback:Array<BookmarkTreeNode> -> Void):Void;
	static function getSubTree(id:String, callback:Array<BookmarkTreeNode> -> Void):Void;
	static function removeTree(id:String, ?callback:haxe.Constraints.Function):Void;
	static var onRemoved : BookmarkRemovedEvent;
	static var onImportEnded : BookmarkImportEndedEvent;
	static var onImportBegan : BookmarkImportBeganEvent;
	static var onChanged : BookmarkChangedEvent;
	static var onCreated : BookmarkCreatedEvent;
	static var onChildrenReordered : BookmarkChildrenReordered;
}
