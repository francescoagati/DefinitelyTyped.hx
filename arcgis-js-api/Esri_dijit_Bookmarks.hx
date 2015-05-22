extern class Bookmarks {
	var bookmarks : Array<BookmarkItem>;
	@:overload(function(params:esri.BookmarksOptions, srcNodeRef:String):Void { })
	function new(params:esri.BookmarksOptions, srcNodeRef:Node):Void;
	function addBookmark(bookmarkItem:BookmarkItem):Void;
	function destroy():Void;
	function hide():Void;
	function removeBookmark(bookmarkName:String):Void;
	function show():Void;
	function startup():Void;
	function toJson():Dynamic;
	@:overload(function(type:Edit, listener:{ var target : Bookmarks; } -> Void):esri.Handle { })
	@:overload(function(type:Remove, listener:{ var target : Bookmarks; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Click, listener:{ var target : Bookmarks; } -> Void):esri.Handle;
}
