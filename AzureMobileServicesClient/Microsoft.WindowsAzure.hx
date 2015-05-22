typedef MobileServiceClient = {
	function new(applicationUrl:String, applicationKey:String):MobileServiceClient;
	var applicationUrl : String;
	var applicationKey : String;
	var currentUser : User;
	@:overload(function(provider:String, token:String):AsyncPromise { })
	@:overload(function(provider:String, callback:Dynamic -> User -> Void):Void { })
	@:overload(function(provider:String):AsyncPromise { })
	function login(provider:String, token:String, callback:Dynamic -> User -> Void):Void;
	function logout():Void;
	function getTable(tableName:String):MobileServiceTable;
	function withFilter(serviceFilter:Dynamic -> Dynamic -> Dynamic -> Dynamic -> Void -> Void -> Dynamic -> Dynamic -> Void -> Void):MobileServiceClient;
	function invokeApi(apiName:String, ?options:InvokeApiOptions):AsyncPromise;
};
typedef InvokeApiOptions = {
	@:optional
	var method : String;
	@:optional
	var body : Dynamic;
	@:optional
	var headers : Dynamic;
	@:optional
	var parameters : Dynamic;
};
typedef User = {
	function getIdentities():Dynamic;
	var accessTokens : Dynamic;
	var level : String;
	var userId : String;
};
typedef AsyncPromise = {
	function then(onSuccess:Dynamic -> Dynamic, ?onError:Dynamic -> Dynamic):AsyncPromise;
	function done(?onSuccess:Dynamic -> Void, ?onError:Dynamic -> Void):Void;
};
typedef MobileServiceTable = {
	>IQuery,
	function new(tableName:String, client:MobileServiceClient):MobileServiceTable;
	function getTableName():String;
	function getMobileServiceClient():MobileServiceClient;
	@:overload(function(instance:Dynamic, paramsQS:Dynamic):AsyncPromise { })
	@:overload(function(instance:Dynamic):AsyncPromise { })
	function insert(instance:Dynamic, paramsQS:Dynamic, callback:Dynamic -> Dynamic -> Dynamic):Void;
	@:overload(function(instance:Dynamic, paramsQS:Dynamic):AsyncPromise { })
	@:overload(function(instance:Dynamic):AsyncPromise { })
	function update(instance:Dynamic, paramsQS:Dynamic, callback:Dynamic -> Dynamic -> Dynamic):Void;
	@:overload(function(id:Float, paramsQS:Dynamic):AsyncPromise { })
	@:overload(function(id:Float):AsyncPromise { })
	function lookup(id:Float, paramsQS:Dynamic, callback:Dynamic -> Dynamic -> Dynamic):Void;
	@:overload(function(instance:Dynamic, paramsQS:Dynamic):AsyncPromise { })
	@:overload(function(instance:Dynamic):AsyncPromise { })
	function del(instance:Dynamic, paramsQS:Dynamic, callback:?Dynamic -> Void):Void;
	@:overload(function(query:IQuery, paramsQS:Dynamic):AsyncPromise { })
	@:overload(function(query:IQuery):AsyncPromise { })
	@:overload(function():AsyncPromise { })
	function read(query:IQuery, paramsQS:Dynamic, callback:Dynamic -> Dynamic -> Dynamic):Void;
};
typedef IQuery = {
	function read(?paramsQS:Dynamic):AsyncPromise;
	function orderBy(propName:haxe.extern.Rest<String>):IQuery;
	function orderByDescending(propName:haxe.extern.Rest<String>):IQuery;
	@:overload(function(funcProjectionFromThis:Void -> Dynamic):IQuery { })
	function select(propNameSelected:haxe.extern.Rest<String>):IQuery;
	@:overload(function(funcPredicateOnThis:haxe.extern.Rest<Dynamic> -> Bool, qValues:haxe.extern.Rest<Dynamic>):IQuery { })
	function where(mapObjFilterCriteria:Dynamic):IQuery;
	function skip(n:Float):IQuery;
	function take(n:Float):IQuery;
	function includeTotalCount():IQuery;
};
typedef WindowsAzureStatic = {
	var MobileServiceClient : MobileServiceClient;
};
