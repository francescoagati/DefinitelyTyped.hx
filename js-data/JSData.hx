typedef JSDataPromise<R> = {
	function then<U>(?onFulfilled:R -> haxe.extern.EitherType<U, JSDataPromise<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, JSDataPromise<U>>):JSDataPromise<U>;
	function catch<U>(?onRejected:Dynamic -> haxe.extern.EitherType<U, JSDataPromise<U>>):JSDataPromise<U>;
	function finally<U>(?finallyCb:Void -> U):JSDataPromise<U>;
};
typedef DS = {
	function new(?config:DSConfiguration):DS;
	var errors : DSErrors;
	var definitions : Dynamic;
	var adapters : Dynamic;
	var defaults : DSConfiguration;
	function create<T>(resourceName:String, attrs:Dynamic, ?options:DSConfiguration):JSDataPromise<T>;
	function destroy(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?options:DSAdapterOperationConfiguration):JSDataPromise<Dynamic>;
	function destroyAll(resourceName:String, ?params:DSFilterParams, ?options:DSAdapterOperationConfiguration):JSDataPromise<Dynamic>;
	function find<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?options:DSAdapterOperationConfiguration):JSDataPromise<T>;
	function findAll<T>(resourceName:String, ?params:DSFilterParams, ?options:DSAdapterOperationConfiguration):JSDataPromise<Array<T>>;
	function loadRelations<T>(resourceName:String, idOrInstance:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Dynamic>>, relations:haxe.extern.EitherType<String, Array<String>>, ?options:DSAdapterOperationConfiguration):JSDataPromise<T>;
	function update<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, attrs:Dynamic, ?options:DSSaveConfiguration):JSDataPromise<T>;
	function updateAll<T>(resourceName:String, attrs:Dynamic, ?params:DSFilterParams, ?options:DSAdapterOperationConfiguration):JSDataPromise<Array<T>>;
	function reap(resourceName:String, ?options:DSConfiguration):JSDataPromise<Dynamic>;
	function refresh<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?options:DSAdapterOperationConfiguration):JSDataPromise<T>;
	function save<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?options:DSSaveConfiguration):JSDataPromise<T>;
	function changeHistory(resourceName:String, ?id:haxe.extern.EitherType<String, Float>):Array<Dynamic>;
	function changes(resourceName:String, id:haxe.extern.EitherType<String, Float>):Dynamic;
	function compute<T>(resourceName:String, idOrInstance:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Dynamic>>):T;
	function createInstance<T>(resourceName:String, ?attrs:T, ?options:DSAdapterOperationConfiguration):T;
	function defineResource<T>(resourceNameOrDefinition:haxe.extern.EitherType<String, DSResourceDefinitionConfiguration>):DSResourceDefinition<T>;
	function digest():Void;
	function eject<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?options:DSConfiguration):T;
	function ejectAll<T>(resourceName:String, params:DSFilterParams, ?options:DSConfiguration):Array<T>;
	function filter<T>(resourceName:String, params:DSFilterParams, ?options:DSConfiguration):Array<T>;
	function get<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?options:DSConfiguration):T;
	function getAll<T>(resourceName:String, ?ids:Array<haxe.extern.EitherType<String, Float>>):Array<T>;
	function hasChanges(resourceName:String, id:haxe.extern.EitherType<String, Float>):Bool;
	@:overload(function<T>(resourceName:String, items:Array<T>, ?options:DSConfiguration):Array<T> { })
	function inject<T>(resourceName:String, attrs:T, ?options:DSConfiguration):T;
	function is(resourceName:String, object:Dynamic):Bool;
	function lastModified(resourceName:String, ?id:haxe.extern.EitherType<String, Float>):Float;
	function lastSaved(resourceName:String, ?id:haxe.extern.EitherType<String, Float>):Float;
	function link<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?relations:Array<String>):T;
	function linkAll<T>(resourceName:String, params:DSFilterParams, ?relations:Array<String>):T;
	function linkInverse<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?relations:Array<String>):T;
	function previous<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>):T;
	function unlinkInverse<T>(resourceName:String, id:haxe.extern.EitherType<String, Float>, ?relations:Array<String>):T;
	function registerAdapter(adapterId:String, adapter:IDSAdapter, ?options:{ var default : Bool; }):Void;
};
typedef DSConfiguration = {
	>IDSResourceLifecycleEventHandlers,
	@:optional
	var actions : Dynamic;
	@:optional
	var allowSimpleWhere : Bool;
	@:optional
	var basePath : String;
	@:optional
	var bypassCache : Bool;
	@:optional
	var cacheResponse : Bool;
	@:optional
	var defaultAdapter : String;
	@:optional
	var defaultFilter : Array<Dynamic> -> String -> DSFilterParams -> DSConfiguration -> Array<Dynamic>;
	@:optional
	var eagerEject : Bool;
	@:optional
	var endpoint : String;
	@:optional
	var error : haxe.extern.EitherType<Bool, ?Dynamic -> haxe.extern.Rest<Dynamic> -> Void>;
	@:optional
	var fallbackAdapters : Array<String>;
	@:optional
	var findAllFallbackAdapters : Array<String>;
	@:optional
	var findAllStrategy : String;
	@:optional
	var findBelongsTo : Bool;
	@:optional
	var findFallbackAdapters : Array<String>;
	@:optional
	var findHasOne : Bool;
	@:optional
	var findHasMany : Bool;
	@:optional
	var findInverseLinks : Bool;
	@:optional
	var findStrategy : String;
	@:optional
	var idAttribute : String;
	@:optional
	var ignoredChanges : Array<haxe.extern.EitherType<js.RegExp, String>>;
	@:optional
	var keepChangeHistory : Bool;
	@:optional
	var loadFromServer : Bool;
	@:optional
	var log : haxe.extern.EitherType<Bool, ?Dynamic -> haxe.extern.Rest<Dynamic> -> Void>;
	@:optional
	var maxAge : Float;
	@:optional
	var notify : Bool;
	@:optional
	var reapAction : String;
	@:optional
	var reapInterval : Float;
	@:optional
	var resetHistoryOnInject : Bool;
	@:optional
	var strategy : String;
	@:optional
	var upsert : Bool;
	@:optional
	var useClass : Bool;
	@:optional
	var useFilter : Bool;
};
typedef DSAdapterOperationConfiguration = {
	>DSConfiguration,
	@:optional
	var adapter : String;
};
typedef DSSaveConfiguration = {
	>DSAdapterOperationConfiguration,
	@:optional
	var changesOnly : Bool;
};
typedef DSResourceDefinitionConfiguration = {
	>DSConfiguration,
	var name : String;
	@:optional
	var computed : Dynamic;
	@:optional
	var methods : Dynamic;
	@:optional
	var relations : { @:optional
	var hasMany : Dynamic; @:optional
	var hasOne : Dynamic; @:optional
	var belongsTo : Dynamic; };
};
typedef DSResourceDefinition<T> = {
	>DSResourceDefinitionConfiguration,
	function create<T>(attrs:Dynamic, ?options:DSConfiguration):JSDataPromise<T>;
	function destroy(id:haxe.extern.EitherType<String, Float>, ?options:DSAdapterOperationConfiguration):JSDataPromise<Dynamic>;
	function destroyAll(?params:DSFilterParams, ?options:DSAdapterOperationConfiguration):JSDataPromise<Dynamic>;
	function find<T>(id:haxe.extern.EitherType<String, Float>, ?options:DSAdapterOperationConfiguration):JSDataPromise<T>;
	function findAll<T>(?params:DSFilterParams, ?options:DSAdapterOperationConfiguration):JSDataPromise<Array<T>>;
	function loadRelations<T>(idOrInstance:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Dynamic>>, relations:haxe.extern.EitherType<String, Array<String>>, ?options:DSAdapterOperationConfiguration):JSDataPromise<T>;
	function update<T>(id:haxe.extern.EitherType<String, Float>, attrs:Dynamic, ?options:DSSaveConfiguration):JSDataPromise<T>;
	function updateAll<T>(attrs:Dynamic, ?params:DSFilterParams, ?options:DSAdapterOperationConfiguration):JSDataPromise<Array<T>>;
	function reap(?resourceNametions:DSConfiguration):JSDataPromise<Dynamic>;
	function refresh<T>(id:haxe.extern.EitherType<String, Float>, ?options:DSAdapterOperationConfiguration):JSDataPromise<T>;
	function save<T>(id:haxe.extern.EitherType<String, Float>, ?options:DSSaveConfiguration):JSDataPromise<T>;
	function changeHistory(?id:haxe.extern.EitherType<String, Float>):Array<Dynamic>;
	function changes(id:haxe.extern.EitherType<String, Float>):Dynamic;
	function compute<T>(idOrInstance:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, Dynamic>>):T;
	function createInstance<T>(?attrs:T, ?options:DSAdapterOperationConfiguration):T;
	function digest():Void;
	function eject<T>(id:haxe.extern.EitherType<String, Float>, ?options:DSConfiguration):T;
	function ejectAll<T>(params:DSFilterParams, ?options:DSConfiguration):Array<T>;
	function filter<T>(params:DSFilterParams, ?options:DSConfiguration):Array<T>;
	function get<T>(id:haxe.extern.EitherType<String, Float>, ?options:DSConfiguration):T;
	function getAll<T>(?ids:Array<haxe.extern.EitherType<String, Float>>):Array<T>;
	function hasChanges(id:haxe.extern.EitherType<String, Float>):Bool;
	@:overload(function<T>(items:Array<T>, ?options:DSConfiguration):Array<T> { })
	function inject<T>(attrs:T, ?options:DSConfiguration):T;
	function is(object:Dynamic):Bool;
	function lastModified(?id:haxe.extern.EitherType<String, Float>):Float;
	function lastSaved(?id:haxe.extern.EitherType<String, Float>):Float;
	function link<T>(id:haxe.extern.EitherType<String, Float>, ?relations:Array<String>):T;
	function linkAll<T>(params:DSFilterParams, ?relations:Array<String>):T;
	function linkInverse<T>(id:haxe.extern.EitherType<String, Float>, ?relations:Array<String>):T;
	function previous<T>(id:haxe.extern.EitherType<String, Float>):T;
	function unlinkInverse<T>(id:haxe.extern.EitherType<String, Float>, ?relations:Array<String>):T;
};
typedef DSFilterParams = {
	@:optional
	var where : Dynamic;
	@:optional
	var limit : Float;
	@:optional
	var skip : Float;
	@:optional
	var offset : Float;
	@:optional
	var orderBy : haxe.extern.EitherType<String, haxe.extern.EitherType<Array<String>, Array<Array<String>>>>;
	@:optional
	var sort : haxe.extern.EitherType<String, haxe.extern.EitherType<Array<String>, Array<Array<String>>>>;
};
typedef IDSResourceLifecycleValidateEventHandlers = {
	@:optional
	var beforeValidate : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
	@:optional
	var validate : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
	@:optional
	var afterValidate : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
};
typedef IDSResourceLifecycleCreateEventHandlers = {
	@:optional
	var beforeCreate : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
	@:optional
	var afterCreate : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
};
typedef IDSResourceLifecycleCreateInstanceEventHandlers = {
	@:optional
	var beforeCreateInstance : String -> Dynamic -> Void;
	@:optional
	var afterCreateInstance : String -> Dynamic -> Void;
};
typedef IDSResourceLifecycleUpdateEventHandlers = {
	@:optional
	var beforeUpdate : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
	@:optional
	var afterUpdate : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
};
typedef IDSResourceLifecycleDestroyEventHandlers = {
	@:optional
	var beforeDestroy : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
	@:optional
	var afterDestroy : String -> Dynamic -> Dynamic -> ?Dynamic -> Void -> Void;
};
typedef IDSResourceLifecycleInjectEventHandlers = {
	@:optional
	var beforeInject : String -> Dynamic -> Void;
	@:optional
	var afterInject : String -> Dynamic -> Void;
};
typedef IDSResourceLifecycleEjectEventHandlers = {
	@:optional
	var beforeEject : String -> Dynamic -> Void;
	@:optional
	var afterEject : String -> Dynamic -> Void;
};
typedef IDSResourceLifecycleReapEventHandlers = {
	@:optional
	var beforeReap : String -> Dynamic -> Void;
	@:optional
	var afterReap : String -> Dynamic -> Void;
};
typedef IDSResourceLifecycleEventHandlers = {
	>IDSResourceLifecycleCreateEventHandlers,
	>IDSResourceLifecycleCreateInstanceEventHandlers,
	>IDSResourceLifecycleValidateEventHandlers,
	>IDSResourceLifecycleUpdateEventHandlers,
	>IDSResourceLifecycleDestroyEventHandlers,
	>IDSResourceLifecycleInjectEventHandlers,
	>IDSResourceLifecycleEjectEventHandlers,
	>IDSResourceLifecycleReapEventHandlers,
};
typedef DSErrors = {
	var IllegalArgumentError : DSError;
	var IA : DSError;
	var RuntimeError : DSError;
	var R : DSError;
	var NonexistentResourceError : DSError;
	var NER : DSError;
};
typedef DSError = {
	>Error,
	function new(?message:String):DSError;
	var message : String;
	var type : String;
};
typedef IDSAdapter = {
	function create<T>(config:DSResourceDefinition<T>, attrs:Dynamic, ?options:DSConfiguration):JSDataPromise<T>;
	function destroy<T>(config:DSResourceDefinition<T>, id:haxe.extern.EitherType<String, Float>, ?options:DSConfiguration):JSDataPromise<Dynamic>;
	function destroyAll<T>(config:DSResourceDefinition<T>, params:DSFilterParams, ?options:DSConfiguration):JSDataPromise<Dynamic>;
	function find<T>(config:DSResourceDefinition<T>, id:haxe.extern.EitherType<String, Float>, ?options:DSConfiguration):JSDataPromise<T>;
	function findAll<T>(config:DSResourceDefinition<T>, ?params:DSFilterParams, ?options:DSConfiguration):JSDataPromise<T>;
	function update<T>(config:DSResourceDefinition<T>, id:haxe.extern.EitherType<String, Float>, attrs:Dynamic, ?options:DSConfiguration):JSDataPromise<T>;
	function updateAll<T>(config:DSResourceDefinition<T>, attrs:Dynamic, ?params:DSFilterParams, ?options:DSConfiguration):JSDataPromise<T>;
};
