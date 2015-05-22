typedef CAS = {
	>Dynamic,
};
extern class Result {
	var cas : CAS;
	var flags : Float;
	var value : Dynamic;
}
typedef CouchbaseError = {
	>Error,
	var code : Float;
	var innerError : Error;
	var reason : String;
};
typedef ConnectCallback = { };
typedef DDocCallback = { };
typedef KeyCallback = { };
typedef MultiCallback = { };
typedef QueryCallback = { };
typedef StatsCallback = { };
typedef ConnectionOptions = {
	@:optional
	var host : Dynamic;
	@:optional
	var bucket : String;
	@:optional
	var password : String;
};
typedef AddOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var flags : Float;
	@:optional
	var format : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
};
typedef AddMultiOptionsForValue = {
	var value : Dynamic;
	@:optional
	var expiry : Float;
	@:optional
	var flags : Float;
	@:optional
	var format : Float;
};
typedef AddMultiOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var flags : Float;
	@:optional
	var format : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
	@:optional
	var spooled : Bool;
};
typedef AppendOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var flags : Float;
	@:optional
	var format : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
	var cas : CAS;
};
typedef AppendMultiOptionsForValue = {
	var value : Dynamic;
	@:optional
	var cas : CAS;
	@:optional
	var expiry : Float;
};
typedef AppendMultiOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
	@:optional
	var spooled : Bool;
};
typedef DecrOptions = {
	@:optional
	var offset : Float;
	@:optional
	var initial : Float;
	@:optional
	var expiry : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
};
typedef DecrMultiOptionsForValue = {
	@:optional
	var offset : Float;
	@:optional
	var initial : Float;
	@:optional
	var expiry : Float;
};
typedef DecrMultiOptions = {
	@:optional
	var spooled : Bool;
};
typedef GetOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var format : Float;
};
typedef GetMultiOptions = {
	@:optional
	var spooled : Bool;
	@:optional
	var format : Float;
};
typedef GetReplicaOptions = {
	@:optional
	var index : Float;
	@:optional
	var format : Float;
};
typedef GetReplicaMultiOptions = {
	@:optional
	var spooled : Bool;
	@:optional
	var format : Float;
};
typedef IncrOptions = {
	>DecrOptions,
};
typedef IncrMultiOptionsForValue = {
	>DecrMultiOptionsForValue,
};
typedef IncrMultiOptions = {
	>DecrMultiOptions,
};
typedef LockOptions = {
	@:optional
	var lockTime : Float;
};
typedef LockMultiOptions = {
	@:optional
	var spooled : Bool;
	@:optional
	var format : Float;
};
typedef ObserveOptions = {
	var cas : CAS;
};
typedef ObserveMultiOptionsForValue = {
	var cas : CAS;
};
typedef ObserveMultiOptions = {
	@:optional
	var spooled : Bool;
};
typedef PrependOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var flags : Float;
	@:optional
	var format : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
	@:optional
	var cas : CAS;
};
typedef PrependMultiOptionsFoValue = {
	var value : Dynamic;
	var cas : CAS;
	@:optional
	var expiry : Float;
};
typedef PrependMultiOptions = {
	@:optional
	var spooled : Bool;
	@:optional
	var expiry : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
};
typedef RemoveOptions = {
	@:optional
	var cas : CAS;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
};
typedef RemoveMultiOptionsForValue = {
	@:optional
	var cas : CAS;
};
typedef RemoveMultiOptions = {
	@:optional
	var spooled : Bool;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
};
typedef ReplaceOptions = {
	>SetOptions,
};
typedef ReplaceMultiOptionsForValue = {
	>SetMultiOptionsForValue,
};
typedef ReplaceMultiOptions = {
	>SetMultiOptions,
};
typedef SetOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var flags : Float;
	@:optional
	var format : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
	@:optional
	var cas : CAS;
};
typedef SetMultiOptionsForValue = {
	var value : Dynamic;
	@:optional
	var cas : CAS;
	@:optional
	var expiry : Float;
	@:optional
	var flags : Float;
	@:optional
	var format : Float;
};
typedef SetMultiOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var flags : Float;
	@:optional
	var format : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
	@:optional
	var spooled : Bool;
};
typedef TouchOptions = {
	@:optional
	var expiry : Float;
	@:optional
	var persist_to : Float;
	@:optional
	var replicate_to : Float;
	@:optional
	var cas : CAS;
};
typedef UnlockOptions = {
	var cas : CAS;
};
typedef UnlockMultiOptionsForValue = {
	var cas : CAS;
};
typedef UnlockMultiOptions = {
	@:optional
	var spooled : Bool;
};
extern class Connection {
	@:overload(function(options:ConnectionOptions, callback:ConnectCallback):Void { })
	function new(callback:ConnectCallback):Void;
	var clientVersion : Array<Dynamic>;
	var connectionTimeout : Float;
	var lcbVersion : Array<Dynamic>;
	var operationTimeout : Float;
	var serverNodes : Array<String>;
	@:overload(function(key:String, value:Dynamic, options:AddOptions, callback:KeyCallback):Void { })
	function add(key:String, value:Dynamic, callback:KeyCallback):Void;
	function addMulti(kv:{ }, options:AddMultiOptions, callback:MultiCallback):Void;
	@:overload(function(key:String, fragment:String, options:AppendOptions, callback:KeyCallback):Void { })
	@:overload(function(key:String, fragment:Buffer, callback:KeyCallback):Void { })
	@:overload(function(key:String, fragment:Buffer, options:AppendOptions, callback:KeyCallback):Void { })
	function append(key:String, fragment:String, callback:KeyCallback):Void;
	function appendMulti(kv:{ }, options:AppendMultiOptions, callback:MultiCallback):Void;
	@:overload(function(key:String, options:DecrOptions, callback:KeyCallback):Void { })
	function decr(key:String, callback:KeyCallback):Void;
	function decrMulti(kv:{ }, options:DecrMultiOptions, callback:MultiCallback):Void;
	@:overload(function(key:String, options:GetOptions, callback:KeyCallback):Void { })
	function get(key:String, callback:KeyCallback):Void;
	function getMulti(kv:Array<String>, options:{ }, callback:MultiCallback):Void;
	function getDesignDoc(name:String, callback:DDocCallback):Void;
	@:overload(function(key:String, options:GetReplicaOptions, callback:KeyCallback):Void { })
	function getReplica(key:String, callback:KeyCallback):Void;
	function getReplicaMulti(kv:Array<String>, options:GetReplicaMultiOptions, callback:MultiCallback):Void;
	@:overload(function(key:String, options:IncrOptions, callback:KeyCallback):Void { })
	function incr(key:String, callback:KeyCallback):Void;
	function incrMulti(kv:{ }, options:IncrMultiOptions, callback:MultiCallback):Void;
	@:overload(function(key:String, options:LockOptions, callback:KeyCallback):Void { })
	function lock(key:String, callback:KeyCallback):Void;
	function lockMulti(kv:Array<String>, options:{ }, callback:MultiCallback):Void;
	function observe(key:String, options:ObserveOptions, callback:KeyCallback):Void;
	function observeMulti(kv:{ }, options:{ }, callback:MultiCallback):Void;
	@:overload(function(event:Connect, listener:Error -> Dynamic):Void { })
	@:overload(function(event:Error, listener:Error -> Dynamic):Void { })
	function on(event:String, listener:haxe.Constraints.Function):Void;
	@:overload(function(key:String, fragment:String, options:PrependOptions, callback:KeyCallback):Void { })
	@:overload(function(key:String, fragment:Buffer, callback:KeyCallback):Void { })
	@:overload(function(key:String, fragment:Buffer, options:PrependOptions, callback:KeyCallback):Void { })
	function prepend(key:String, fragment:String, callback:KeyCallback):Void;
	function prependMulti(kv:{ }, options:{ }, callback:MultiCallback):Void;
	@:overload(function(key:String, options:RemoveOptions, callback:KeyCallback):Void { })
	function remove(key:String, callback:KeyCallback):Void;
	@:overload(function(kv:Array<String>, options:RemoveMultiOptions, callback:MultiCallback):Void { })
	function removeMulti(kv:{ }, options:RemoveMultiOptions, callback:MultiCallback):Void;
	function removeDesignDoc(name:String, callback:DDocCallback):Void;
	@:overload(function(key:String, value:Dynamic, options:ReplaceOptions, callback:KeyCallback):Void { })
	function replace(key:String, value:Dynamic, callback:KeyCallback):Void;
	function replaceMulti(kv:{ }, options:ReplaceMultiOptions, callback:MultiCallback):Void;
	@:overload(function(key:String, value:Dynamic, options:SetOptions, callback:KeyCallback):Void { })
	function set(key:String, value:Dynamic, callback:KeyCallback):Void;
	function setMulti(kv:{ }, options:SetMultiOptions, callback:MultiCallback):Void;
	function setDesignDoc(name:String, data:Dynamic, callback:DDocCallback):Void;
	function shutdown():Void;
	@:overload(function(key:String, callback:StatsCallback):Void { })
	function stats(callback:StatsCallback):Void;
	function strError(code:Float):String;
	@:overload(function(key:String, options:TouchOptions, callback:KeyCallback):Void { })
	function touch(key:String, callback:KeyCallback):Void;
	function unlock(key:String, options:UnlockOptions, callback:KeyCallback):Void;
	function unlockMulti(kv:{ }, options:{ }, callback:UnlockMultiOptions):Void;
	@:overload(function(ddoc:String, name:String, query:Dynamic):ViewQuery { })
	function view(ddoc:String, name:String):ViewQuery;
}
extern class ViewQuery {
	function firstPage(q:Dynamic, callback:haxe.Constraints.Function):Void;
	function query(q:Dynamic, callback:haxe.Constraints.Function):Void;
}
extern class CouchbaseTopLevel {
	static var errors : { var success : Float; var authContinue : Float; var authError : Float; var deltaBadVal : Float; var objectTooBig : Float; var serverBusy : Float; var cLibInternal : Float; var cLibInvalidArgument : Float; var cLibOutOfMemory : Float; var invalidRange : Float; var cLibGenericError : Float; var temporaryError : Float; var keyAlreadyExists : Float; var keyNotFound : Float; var failedToOpenLibrary : Float; var failedToFindSymbol : Float; var networkError : Float; var wrongServer : Float; var notMyVBucket : Float; var notStored : Float; var notSupported : Float; var unknownCommand : Float; var unknownHost : Float; var protocolError : Float; var timedOut : Float; var connectError : Float; var bucketNotFound : Float; var clientOutOfMemory : Float; var clientTemporaryError : Float; var badHandle : Float; var serverBug : Float; var invalidHostFormat : Float; var notEnoughNodes : Float; var duplicateItems : Float; var noMatchingServerForKey : Float; var badEnvironmentVariable : Float; var outOfMemory : Float; var invalidArguments : Float; var schedulingError : Float; var checkResults : Float; var genericError : Float; var durabilityFailed : Float; var restError : Float; };
	static var format : { var raw : Float; var json : Float; var utf8 : Float; var auto : Float; };
}
extern class CouchbaseTopLevel {
	static var errors : { var success : Float; var authContinue : Float; var authError : Float; var deltaBadVal : Float; var objectTooBig : Float; var serverBusy : Float; var cLibInternal : Float; var cLibInvalidArgument : Float; var cLibOutOfMemory : Float; var invalidRange : Float; var cLibGenericError : Float; var temporaryError : Float; var keyAlreadyExists : Float; var keyNotFound : Float; var failedToOpenLibrary : Float; var failedToFindSymbol : Float; var networkError : Float; var wrongServer : Float; var notMyVBucket : Float; var notStored : Float; var notSupported : Float; var unknownCommand : Float; var unknownHost : Float; var protocolError : Float; var timedOut : Float; var connectError : Float; var bucketNotFound : Float; var clientOutOfMemory : Float; var clientTemporaryError : Float; var badHandle : Float; var serverBug : Float; var invalidHostFormat : Float; var notEnoughNodes : Float; var duplicateItems : Float; var noMatchingServerForKey : Float; var badEnvironmentVariable : Float; var outOfMemory : Float; var invalidArguments : Float; var schedulingError : Float; var checkResults : Float; var genericError : Float; var durabilityFailed : Float; var restError : Float; };
	static var format : { var raw : Float; var json : Float; var utf8 : Float; var auto : Float; };
}
