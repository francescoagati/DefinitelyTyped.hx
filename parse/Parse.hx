typedef ParseDefaultOptions = {
	@:optional
	var wait : Bool;
	@:optional
	var silent : Bool;
	@:optional
	var success : haxe.Constraints.Function;
	@:optional
	var error : haxe.Constraints.Function;
	@:optional
	var useMasterKey : Bool;
};
typedef CollectionOptions = {
	@:optional
	var model : Dynamic;
	@:optional
	var query : Query;
	@:optional
	var comparator : String;
};
typedef CollectionAddOptions = {
	@:optional
	var at : Float;
};
typedef RouterOptions = {
	var routes : Dynamic;
};
typedef NavigateOptions = {
	@:optional
	var trigger : Bool;
};
typedef ViewOptions = {
	@:optional
	var model : Dynamic;
	@:optional
	var collection : Dynamic;
	@:optional
	var el : Dynamic;
	@:optional
	var id : String;
	@:optional
	var className : String;
	@:optional
	var tagName : String;
	@:optional
	var attributes : Array<Dynamic>;
};
typedef PushData = {
	@:optional
	var channels : Array<String>;
	@:optional
	var push_time : Date;
	@:optional
	var expiration_time : Date;
	@:optional
	var expiration_interval : Float;
	@:optional
	var where : Query;
	@:optional
	var data : Dynamic;
	@:optional
	var alert : String;
	@:optional
	var badge : String;
	@:optional
	var sound : String;
	@:optional
	var title : String;
};
typedef IPromise<T> = {
	@:overload(function<U>(resolvedCallback:T -> U, ?rejectedCallback:Dynamic -> IPromise<U>):IPromise<U> { })
	@:overload(function<U>(resolvedCallback:T -> U, ?rejectedCallback:Dynamic -> U):IPromise<U> { })
	function then<U>(resolvedCallback:T -> IPromise<U>, ?rejectedCallback:Dynamic -> IPromise<U>):IPromise<T>;
};
typedef Promise<T> = {
	function always(callback:haxe.Constraints.Function):Promise<T>;
	function as():Promise<T>;
	function done(callback:haxe.Constraints.Function):Promise<T>;
	function error():Promise<T>;
	function fail(callback:haxe.Constraints.Function):Promise<T>;
	function is():Promise<T>;
	function reject(error:Dynamic):Void;
	function resolve(result:Dynamic):Void;
	@:overload(function<U>(resolvedCallback:T -> U, ?rejectedCallback:Dynamic -> IPromise<U>):IPromise<T> { })
	@:overload(function<U>(resolvedCallback:T -> U, ?rejectedCallback:Dynamic -> U):IPromise<T> { })
	function then<U>(resolvedCallback:T -> Promise<U>, ?rejectedCallback:Dynamic -> Promise<U>):IPromise<T>;
	function when(promises:Array<Promise<T>>):Promise<T>;
};
typedef IBaseObject = {
	function toJSON():Dynamic;
};
extern class BaseObject {
	function toJSON():Dynamic;
}
extern class ACL extends BaseObject {
	var permissionsById : Dynamic;
	function new(?arg1:Dynamic):Void;
	function setPublicReadAccess(allowed:Bool):Void;
	function getPublicReadAccess():Bool;
	function setPublicWriteAccess(allowed:Bool):Void;
	function getPublicWriteAccess():Bool;
	@:overload(function(userId:String, allowed:Bool):Void { })
	function setReadAccess(userId:User, allowed:Bool):Void;
	@:overload(function(userId:String):Bool { })
	function getReadAccess(userId:User):Bool;
	@:overload(function(role:String, allowed:Bool):Void { })
	function setRoleReadAccess(role:Role, allowed:Bool):Void;
	@:overload(function(role:String):Bool { })
	function getRoleReadAccess(role:Role):Bool;
	@:overload(function(role:String, allowed:Bool):Void { })
	function setRoleWriteAccess(role:Role, allowed:Bool):Void;
	@:overload(function(role:String):Bool { })
	function getRoleWriteAccess(role:Role):Bool;
	@:overload(function(userId:String, allowed:Bool):Void { })
	function setWriteAccess(userId:User, allowed:Bool):Void;
	@:overload(function(userId:String):Bool { })
	function getWriteAccess(userId:User):Bool;
}
extern class File {
	function new(name:String, data:Dynamic, ?type:String):Void;
	function name():String;
	function url():String;
	function save<T>(?options:ParseDefaultOptions):Promise<T>;
}
extern class GeoPoint extends BaseObject {
	var latitude : Float;
	var longitude : Float;
	function new(?arg1:Dynamic, ?arg2:Dynamic):Void;
	function current(?options:ParseDefaultOptions):GeoPoint;
	function radiansTo(point:GeoPoint):Float;
	function kilometersTo(point:GeoPoint):Float;
	function milesTo(point:GeoPoint):Float;
}
extern class History {
	var handlers : Array<Dynamic>;
	var interval : Float;
	var fragment : String;
	function checkUrl(?e:Dynamic):Void;
	function getFragment(?fragment:String, ?forcePushState:Bool):String;
	function getHash(windowOverride:Window):String;
	function loadUrl(fragmentOverride:Dynamic):Bool;
	function navigate(fragment:String, ?options:Dynamic):Dynamic;
	function route(route:Dynamic, callback:haxe.Constraints.Function):Void;
	function start(options:Dynamic):Bool;
	function stop():Void;
}
extern class Relation extends BaseObject {
	var parent : Dynamic;
	var key : String;
	var targetClassName : String;
	function new(?parent:Dynamic, ?key:String):Void;
	function add(object:Dynamic):Void;
	function query():Query;
	function remove(object:Dynamic):Void;
}
extern class Object extends BaseObject {
	var id : Dynamic;
	var attributes : Dynamic;
	var cid : String;
	var changed : Bool;
	var className : String;
	@:overload(function(?attributes:Array<String>, ?options:Dynamic):Void { })
	function new(?className:String, ?options:Dynamic):Void;
	static function extend(className:String, ?protoProps:Dynamic, ?classProps:Dynamic):Dynamic;
	static function fetchAll<T>(list:Array<Dynamic>, options:ParseDefaultOptions):Promise<T>;
	static function fetchAllIfNeeded<T>(list:Array<Dynamic>, options:ParseDefaultOptions):Promise<T>;
	static function destroyAll<T>(list:Array<Dynamic>, ?options:ParseDefaultOptions):Promise<T>;
	static function saveAll<T>(list:Array<Dynamic>, ?options:ParseDefaultOptions):Promise<T>;
	function initialize():Void;
	function add(attr:String, item:Dynamic):Dynamic;
	function addUnique(attr:String, item:Dynamic):Dynamic;
	function change(options:Dynamic):Dynamic;
	function changedAttributes(diff:Dynamic):Bool;
	function clear(options:Dynamic):Dynamic;
	function clone():Dynamic;
	function destroy<T>(?options:ParseDefaultOptions):Promise<T>;
	function dirty(attr:String):Bool;
	function dirtyKeys():Array<String>;
	function escape(attr:String):String;
	function existed():Bool;
	function fetch<T>(?options:ParseDefaultOptions):Promise<T>;
	function get(attr:String):Dynamic;
	function getACL():ACL;
	function has(attr:String):Bool;
	function hasChanged(attr:String):Bool;
	function increment(attr:String, ?amount:Float):Dynamic;
	function isValid():Bool;
	function op(attr:String):Dynamic;
	function previous(attr:String):Dynamic;
	function previousAttributes():Dynamic;
	function relation(attr:String):Relation;
	function remove(attr:String, item:Dynamic):Dynamic;
	function save<T>(?options:ParseDefaultOptions, ?arg2:Dynamic, ?arg3:Dynamic):Promise<T>;
	function set(key:String, value:Dynamic, ?options:ParseDefaultOptions):Bool;
	function setACL(acl:ACL, ?options:ParseDefaultOptions):Bool;
	function unset(attr:String, ?options:Dynamic):Dynamic;
	function validate(attrs:Dynamic, ?options:ParseDefaultOptions):Bool;
}
extern class Installation extends Dynamic {
	var badge : Dynamic;
	var channels : Array<String>;
	var timeZone : Dynamic;
	var deviceType : String;
	var pushType : String;
	var installationId : String;
	var deviceToken : String;
	var channelUris : String;
	var appName : String;
	var appVersion : String;
	var parseVersion : String;
	var appIdentifier : String;
}
extern class Collection<T> extends Events {
	var model : Dynamic;
	var models : Array<Dynamic>;
	var query : Query;
	var comparator : Dynamic -> Dynamic;
	function new(?models:Array<Dynamic>, ?options:CollectionOptions):Void;
	static function extend(instanceProps:Dynamic, classProps:Dynamic):Dynamic;
	function initialize():Void;
	function add(models:Array<Dynamic>, ?options:CollectionAddOptions):Collection<T>;
	function at(index:Float):Dynamic;
	function chain():_Chain<Collection<T>>;
	function fetch(?options:ParseDefaultOptions):Promise<T>;
	function create(model:Dynamic, ?options:ParseDefaultOptions):Dynamic;
	function get(id:String):Dynamic;
	function getByCid(cid:Dynamic):Dynamic;
	function pluck(attr:String):Array<Dynamic>;
	@:overload(function(models:Array<Dynamic>, ?options:ParseDefaultOptions):Collection<T> { })
	function remove(model:Dynamic, ?options:ParseDefaultOptions):Collection<T>;
	function reset(models:Array<Dynamic>, ?options:ParseDefaultOptions):Collection<T>;
	function sort(?options:ParseDefaultOptions):Collection<T>;
	function toJSON():Dynamic;
}
extern class Events {
	@:overload(function(?eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Events { })
	static function off(events:Array<String>, ?callback:haxe.Constraints.Function, ?context:Dynamic):Events;
	@:overload(function(eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Events { })
	static function on(events:Array<String>, ?callback:haxe.Constraints.Function, ?context:Dynamic):Events;
	@:overload(function(eventName:String, args:haxe.extern.Rest<Dynamic>):Events { })
	static function trigger(events:Array<String>):Events;
	@:overload(function(eventName:String, callback:haxe.Constraints.Function, ?context:Dynamic):Events { })
	static function bind():Events;
	@:overload(function(?eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Events { })
	static function unbind():Events;
}
extern class Query extends BaseObject {
	var objectClass : Dynamic;
	var className : String;
	function new(objectClass:Dynamic):Void;
	static function or(var_args:haxe.extern.Rest<Query>):Query;
	@:overload(function(key:Array<String>):Query { })
	function addAscending(key:String):Query;
	@:overload(function(key:Array<String>):Query { })
	function addDescending(key:String):Query;
	@:overload(function(key:Array<String>):Query { })
	function ascending(key:String):Query;
	function collection(?items:Array<Dynamic>, ?options:ParseDefaultOptions):Collection<Dynamic>;
	function containedIn(key:String, values:Array<Dynamic>):Query;
	function contains(key:String, substring:String):Query;
	function containsAll(key:String, values:Array<Dynamic>):Query;
	function count<T>(?options:ParseDefaultOptions):Promise<T>;
	@:overload(function(key:Array<String>):Query { })
	function descending(key:String):Query;
	function doesNotExist(key:String):Query;
	function doesNotMatchKeyInQuery(key:String, queryKey:String, query:Query):Query;
	function doesNotMatchQuery(key:String, query:Query):Query;
	function each<T>(callback:haxe.Constraints.Function, ?options:ParseDefaultOptions):Promise<T>;
	function endsWith(key:String, suffix:String):Query;
	function equalTo(key:String, value:Dynamic):Query;
	function exists(key:String):Query;
	function find<T>(?options:ParseDefaultOptions):Promise<T>;
	function first<T>(?options:ParseDefaultOptions):Promise<T>;
	function get(objectId:String, ?options:ParseDefaultOptions):Promise<Dynamic>;
	function greaterThan(key:String, value:Dynamic):Query;
	function greaterThanOrEqualTo(key:String, value:Dynamic):Query;
	@:overload(function(keys:Array<String>):Query { })
	function include(key:String):Query;
	function lessThan(key:String, value:Dynamic):Query;
	function lessThanOrEqualTo(key:String, value:Dynamic):Query;
	function limit(n:Float):Query;
	function matches(key:String, regex:js.RegExp, modifiers:Dynamic):Query;
	function matchesKeyInQuery(key:String, queryKey:String, query:Query):Query;
	function matchesQuery(key:String, query:Query):Query;
	function near(key:String, point:GeoPoint):Query;
	function notContainedIn(key:String, values:Array<Dynamic>):Query;
	function notEqualTo(key:String, value:Dynamic):Query;
	function select(keys:haxe.extern.Rest<String>):Query;
	function skip(n:Float):Query;
	function startsWith(key:String, prefix:String):Query;
	function withinGeoBox(key:String, southwest:GeoPoint, northeast:GeoPoint):Query;
	function withinKilometers(key:String, point:GeoPoint, maxDistance:Float):Query;
	function withinMiles(key:String, point:GeoPoint, maxDistance:Float):Query;
	function withinRadians(key:String, point:GeoPoint, maxDistance:Float):Query;
}
extern class Role extends Dynamic {
	function new(name:String, acl:ACL):Void;
	function getRoles():Relation;
	function getUsers():Relation;
	function getName():String;
	function setName(name:String, ?options:ParseDefaultOptions):Dynamic;
}
extern class Router extends Events {
	var routes : Array<Dynamic>;
	function new(?options:RouterOptions):Void;
	static function extend(instanceProps:Dynamic, classProps:Dynamic):Dynamic;
	function initialize():Void;
	@:overload(function(fragment:String, ?trigger:Bool):Router { })
	function navigate(fragment:String, ?options:NavigateOptions):Router;
	function route(route:String, name:String, callback:haxe.Constraints.Function):Router;
}
extern class User extends Dynamic {
	static function current():User;
	@:overload(function<T>(attrs:Dynamic, ?options:ParseDefaultOptions):Promise<T> { })
	static function signUp<T>(username:String, password:String, attrs:Dynamic, ?options:ParseDefaultOptions):Promise<T>;
	@:overload(function<T>(?options:ParseDefaultOptions):Promise<T> { })
	static function logIn<T>(username:String, password:String, ?options:ParseDefaultOptions):Promise<T>;
	static function logOut():Void;
	static function allowCustomUserClass(isAllowed:Bool):Void;
	static function become<T>(sessionToken:String, ?options:ParseDefaultOptions):Promise<T>;
	static function requestPasswordReset<T>(email:String, ?options:ParseDefaultOptions):Promise<T>;
	function fetch<T>(?options:ParseDefaultOptions):Promise<T>;
	function save<T>(arg1:Dynamic, arg2:Dynamic, arg3:Dynamic):Promise<T>;
	function authenticated():Bool;
	function isCurrent():Bool;
	function getEmail():String;
	function setEmail(email:String, options:ParseDefaultOptions):Bool;
	function getUsername():String;
	function setUsername(username:String, ?options:ParseDefaultOptions):Bool;
	function setPassword(password:String, ?options:ParseDefaultOptions):Bool;
	function getSessionToken():String;
}
extern class View<T> extends Events {
	var model : Dynamic;
	var collection : Dynamic;
	var id : String;
	var cid : String;
	var className : String;
	var tagName : String;
	var el : Dynamic;
	var $el : JQuery;
	var attributes : Dynamic;
	function new(?options:ViewOptions):Void;
	static function extend(properties:Dynamic, ?classProperties:Dynamic):Dynamic;
	function $(?selector:String):JQuery;
	@:overload(function(element:JQuery, ?delegate:Bool):View<T> { })
	function setElement(element:HTMLElement, ?delegate:Bool):View<T>;
	function render():View<T>;
	function remove():View<T>;
	function make(tagName:Dynamic, ?attributes:Dynamic, ?content:Dynamic):Dynamic;
	function delegateEvents(?events:Dynamic):Dynamic;
	function undelegateEvents():Dynamic;
}
extern class ParseTopLevel {
	static var applicationId : String;
	static var javaScriptKey : String;
	static var masterKey : String;
	static var serverURL : String;
	static var VERSION : String;
}
