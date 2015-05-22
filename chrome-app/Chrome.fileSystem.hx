typedef ChildChangeInfo = {
	var entry : Entry;
	var type : String;
};
typedef EntryChangedEvent = {
	var target : Entry;
	@:optional
	var childChanges : Array<ChildChangeInfo>;
};
typedef EntryRemovedEvent = {
	var target : Entry;
};
typedef AcceptOptions = {
	@:optional
	var description : String;
	@:optional
	var mimeTypes : Array<String>;
	@:optional
	var extensions : Array<String>;
};
typedef ChooseEntryOptions = {
	@:optional
	var type : String;
	@:optional
	var suggestedName : String;
	@:optional
	var accepts : Array<AcceptOptions>;
	@:optional
	var acceptsAllTypes : Bool;
	@:optional
	var acceptsMultiple : Bool;
};
extern class Chrome.fileSystemTopLevel {
	static function getDisplayPath(entry:Entry, callback:String -> Void):Void;
	static function getWritableEntry(entry:Entry, callback:Entry -> Void):Void;
	static function isWritableEntry(entry:Entry, callback:Bool -> Void):Void;
	static function chooseEntry(callback:Entry -> Void):Void;
	static function chooseEntry(callback:Array<FileEntry> -> Void):Void;
	static function chooseEntry(options:ChooseEntryOptions, callback:Entry -> Void):Void;
	static function chooseEntry(options:ChooseEntryOptions, callback:Array<FileEntry> -> Void):Void;
	static function restoreEntry(id:String, callback:Entry -> Void):Void;
	static function isRestorable(id:String, callback:Bool -> Void):Void;
	static function retainEntry(entry:Entry):String;
}
