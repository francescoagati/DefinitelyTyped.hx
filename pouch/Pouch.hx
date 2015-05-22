typedef PouchError = {
	var status : Float;
	var error : String;
	var reason : String;
};
typedef PouchApi = {
	function type():String;
	function id():String;
	function close(callback:Void -> Void):Void;
};
typedef PouchInfoResponse = {
	var db_name : String;
	var doc_count : Float;
	var update_seq : String;
};
typedef PouchApi = {
	function info(callback:PouchError -> PouchInfoResponse -> Void):Void;
};
typedef PouchGetOptions = {
	@:optional
	var rev : String;
	@:optional
	var revs : Bool;
	@:optional
	var revs_info : Bool;
	@:optional
	var conflicts : Bool;
	@:optional
	var attachments : Bool;
};
typedef PouchGetResponse = {
	var _id : String;
	var _rev : String;
	var _attachments : Dynamic;
};
typedef PouchAllDocsOptions = {
	@:optional
	var startkey : String;
	@:optional
	var endKey : String;
	@:optional
	var descending : Bool;
	@:optional
	var include_docs : Bool;
	@:optional
	var conflicts : Bool;
};
typedef PouchAllDocsItem = {
	var id : String;
	var key : String;
	var value : Dynamic;
	var doc : Dynamic;
};
typedef PouchAllDocsResponse = {
	var total_rows : Float;
	var rows : Array<PouchAllDocsItem>;
};
typedef PouchApi = {
	@:overload(function(id:String, callback:PouchError -> PouchGetResponse -> Void):Void { })
	function get(id:String, opts:PouchGetOptions, callback:PouchError -> PouchGetResponse -> Void):Void;
	@:overload(function(callback:PouchError -> PouchAllDocsResponse -> Void):Void { })
	function allDocs(opts:PouchAllDocsOptions, callback:PouchError -> PouchAllDocsResponse -> Void):Void;
};
typedef PouchBulkDocsRequest = {
	var docs : Array<Dynamic>;
};
typedef PouchUpdateOptions = {
	@:optional
	var new_edits : Bool;
};
typedef PouchUpdateResponse = {
	var ok : Bool;
	var id : String;
	var rev : String;
};
typedef PouchApi = {
	@:overload(function(req:PouchBulkDocsRequest, callback:PouchError -> Array<PouchUpdateResponse> -> Void):Void { })
	function bulkDocs(req:PouchBulkDocsRequest, opts:PouchUpdateOptions, callback:PouchError -> Array<PouchUpdateResponse> -> Void):Void;
	@:overload(function(doc:Dynamic, callback:PouchError -> PouchUpdateResponse -> Void):Void { })
	function post(doc:Dynamic, opts:PouchUpdateOptions, callback:PouchError -> PouchUpdateResponse -> Void):Void;
	@:overload(function(doc:Dynamic, callback:PouchError -> PouchUpdateResponse -> Void):Void { })
	function put(doc:Dynamic, opts:PouchUpdateOptions, callback:PouchError -> PouchUpdateResponse -> Void):Void;
	@:overload(function(doc:Dynamic, callback:PouchError -> PouchUpdateResponse -> Void):Void { })
	function remove(doc:Dynamic, opts:PouchUpdateOptions, callback:PouchError -> PouchUpdateResponse -> Void):Void;
};
typedef PouchFilter = {
	var map : Dynamic -> Void;
	@:optional
	var reduce : String -> Dynamic -> Dynamic;
};
typedef PouchQueryOptions = {
	@:optional
	var complete : Dynamic;
	@:optional
	var include_docs : Bool;
	@:optional
	var error : PouchError -> Void;
	@:optional
	var descending : Bool;
	@:optional
	var reduce : Bool;
};
typedef PouchQueryResponse = {
	var rows : Array<Dynamic>;
};
typedef PouchApi = {
	@:overload(function(fun:String, callback:PouchError -> PouchQueryResponse -> Void):Void { })
	@:overload(function(fun:PouchFilter, opts:PouchQueryOptions, callback:PouchError -> PouchQueryResponse -> Void):Void { })
	@:overload(function(fun:PouchFilter, callback:PouchError -> PouchQueryResponse -> Void):Void { })
	function query(fun:String, opts:PouchQueryOptions, callback:PouchError -> PouchQueryResponse -> Void):Void;
};
typedef PouchAttachmentOptions = {
	@:optional
	var decode : Bool;
};
typedef PouchApi = {
	@:overload(function(id:String, callback:PouchError -> Dynamic -> Void):Void { })
	function getAttachment(id:String, opts:PouchAttachmentOptions, callback:PouchError -> Dynamic -> Void):Void;
	function putAttachment(id:String, rev:String, doc:Dynamic, type:String, callback:PouchError -> PouchUpdateResponse -> Void):Void;
	function removeAttachment(id:String, rev:String, callback:PouchError -> PouchUpdateResponse -> Void):Void;
};
typedef PouchCancellable = {
	var cancel : Void -> Void;
};
typedef PouchChangesOptions = {
	var onChange : PouchChange -> Void;
	@:optional
	var complete : PouchError -> PouchChanges -> Void;
	@:optional
	var seq : Float;
	@:optional
	var since : Float;
	@:optional
	var descending : Bool;
	@:optional
	var filter : PouchFilter;
	@:optional
	var continuous : Bool;
	@:optional
	var include_docs : Bool;
	@:optional
	var conflicts : Bool;
};
typedef PouchChange = {
	var changes : Dynamic;
	var doc : PouchGetResponse;
	var id : String;
	var seq : Float;
};
typedef PouchChanges = {
	var results : Array<PouchChange>;
};
typedef PouchApi = {
	@:overload(function(callback:PouchError -> PouchChanges -> Void):PouchCancellable { })
	function changes(opts:PouchChangesOptions, callback:PouchError -> PouchChanges -> Void):PouchCancellable;
};
typedef PouchRevsDiffOptions = { };
typedef PouchReplicateOptions = {
	@:optional
	var continuous : Bool;
	@:optional
	var onChange : Dynamic -> Void;
	@:optional
	var filter : Dynamic;
	@:optional
	var complete : PouchError -> PouchChanges -> Void;
};
typedef PouchReplicateResponse = {
	var ok : Bool;
	var start_time : Date;
	var end_time : Date;
	var docs_read : Float;
	var docs_written : Float;
};
typedef PouchReplicate = {
	@:overload(function(url:String, callback:PouchError -> PouchReplicateResponse -> Void):PouchCancellable { })
	function from(url:String, opts:PouchReplicateOptions, callback:PouchError -> PouchReplicateResponse -> Void):PouchCancellable;
	@:overload(function(dbName:String, callback:PouchError -> PouchReplicateResponse -> Void):PouchCancellable { })
	function to(dbName:String, opts:PouchReplicateOptions, callback:PouchError -> PouchReplicateResponse -> Void):PouchCancellable;
};
typedef PouchApi = {
	@:overload(function(req:Dynamic, callback:Dynamic -> Void):Void { })
	function revsDiff(req:Dynamic, opts:PouchRevsDiffOptions, callback:Dynamic -> Void):Void;
	var replicate : PouchReplicate;
};
typedef PouchOptions = {
	@:optional
	var name : String;
	@:optional
	var adapter : String;
};
typedef PouchDB = {
	>PouchApi,
	@:overload(function(name:String, callback:PouchError -> PouchDB -> Void):PouchDB { })
	@:overload(function(name:String):PouchDB { })
	function new(name:String, opts:PouchOptions, callback:PouchError -> PouchDB -> Void):PouchDB;
	function destroy(name:String, callback:PouchError -> Void):Void;
};
extern class PouchTopLevel {
	static var PouchDB : PouchDB;
}
