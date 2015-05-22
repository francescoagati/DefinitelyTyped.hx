typedef FeedOptions = {
	@:optional
	var maxItemCount : Float;
	@:optional
	var continuation : String;
	@:optional
	var sessionToken : String;
};
typedef RequestOptions = {
	@:optional
	var preTriggerInclude : String;
	@:optional
	var postTriggerInclude : String;
	@:optional
	var accessCondition : { var type : String; var condition : String; };
	@:optional
	var indexingDirective : String;
	@:optional
	var consistencyLevel : String;
	@:optional
	var sessionToken : String;
	@:optional
	var resourceTokenExpirySeconds : Float;
	@:optional
	var disableAutomaticIdGeneration : Bool;
};
typedef QueryError = {
	var code : Float;
	var body : String;
};
typedef RequestCallback<TResult> = { };
typedef QueryIterator<TResultRow> = {
	function toArray(callback:QueryError -> Array<TResultRow> -> Void):Void;
};
typedef UniqueId = {
	var id : String;
};
typedef AbstractMeta = {
	>UniqueId,
	var _self : String;
	var _ts : String;
	@:optional
	var _rid : String;
	@:optional
	var _etag : String;
	@:optional
	var _attachments : String;
};
typedef NewDocument<TContent> = {
	>UniqueId,
};
typedef RetrievedDocument<TContent> = {
	>NewDocument<TContent>,
	>AbstractMeta,
};
typedef DatabaseMeta = {
	>AbstractMeta,
};
typedef CollectionMeta = {
	>AbstractMeta,
};
typedef ProcedureMeta = {
	>AbstractMeta,
	var body : String;
};
typedef AuthOptions = {
	@:optional
	var masterKey : String;
	@:optional
	var resourceTokens : Dynamic;
	@:optional
	var permissionFeed : Array<Dynamic>;
};
typedef Procedure = {
	>UniqueId,
	function body(params:haxe.extern.Rest<Dynamic>):Void;
};
typedef Collection = {
	>UniqueId,
	@:optional
	var indexingPolicy : IndexingPolicy;
};
typedef IndexingPath = {
	var IndexType : String;
	var Path : String;
	var NumericPrecision : Float;
	var StringPrecision : Float;
};
typedef IndexingPolicy = {
	var automatic : Bool;
	var indexingMode : String;
	var IncludedPath : Array<IndexingPath>;
	var ExcludedPaths : Array<String>;
};
extern class DocumentClient {
	function new(urlConnection:String, auth:AuthOptions, ?connectionPolicy:Dynamic, ?consistencyLevel:String):Void;
	function createDatabase(body:UniqueId, options:RequestOptions, callback:RequestCallback<DatabaseMeta>):Void;
	function createCollection(databaseLink:String, body:Collection, options:RequestOptions, callback:RequestCallback<CollectionMeta>):Void;
	function createStoredProcedure(collectionLink:String, procedure:Procedure, options:RequestOptions, callback:RequestCallback<ProcedureMeta>):Void;
	function createDocument<TDocument>(collectionSelfLink:String, document:NewDocument<TDocument>, options:RequestOptions, callback:RequestCallback<RetrievedDocument<TDocument>>):Void;
	function executeStoredProcedure<TDocument>(procedureLink:String, params:Array<Dynamic>, callback:RequestCallback<TDocument>):Void;
	function queryDatabases(query:String):QueryIterator<DatabaseMeta>;
	function queryCollections(databaseLink:String, query:String):QueryIterator<CollectionMeta>;
	function queryStoredProcedures(collectionLink:String, query:String):QueryIterator<ProcedureMeta>;
	function queryDocuments<TDocument>(collectionLink:String, query:String, ?options:FeedOptions):QueryIterator<RetrievedDocument<TDocument>>;
	function deleteDocument(documentLink:String, options:RequestOptions, callback:RequestCallback<Void>):Void;
	function deleteDatabase(databaseLink:String, options:RequestOptions, callback:RequestCallback<Void>):Void;
	function deleteCollection(collectionLink:String, options:RequestOptions, callback:RequestCallback<Void>):Void;
	function deleteStoredProcedure(procedureLink:String, options:RequestOptions, callback:RequestCallback<Void>):Void;
	function replaceStoredProcedure(procedureLink:String, procedure:Procedure, options:RequestOptions, callback:RequestCallback<ProcedureMeta>):Void;
}
