typedef FirebaseAuthResult = {
	var auth : Dynamic;
	var expires : Float;
};
typedef FirebaseDataSnapshot = {
	function exists():Bool;
	function val():Dynamic;
	function child(childPath:String):FirebaseDataSnapshot;
	@:overload(function(childAction:FirebaseDataSnapshot -> Bool):Bool { })
	function forEach(childAction:FirebaseDataSnapshot -> Void):Bool;
	function hasChild(childPath:String):Bool;
	function hasChildren():Bool;
	function key():String;
	function name():String;
	function numChildren():Float;
	function ref():Firebase;
	function getPriority():Dynamic;
	function exportVal():Dynamic;
};
typedef FirebaseOnDisconnect = {
	function set(value:Dynamic, ?onComplete:Dynamic -> Void):Void;
	@:overload(function(value:Dynamic, priority:Float, ?onComplete:Dynamic -> Void):Void { })
	function setWithPriority(value:Dynamic, priority:String, ?onComplete:Dynamic -> Void):Void;
	function update(value:Dynamic, ?onComplete:Dynamic -> Void):Void;
	function remove(?onComplete:Dynamic -> Void):Void;
	function cancel(?onComplete:Dynamic -> Void):Void;
};
typedef FirebaseQuery = {
	function on(eventType:String, callback:FirebaseDataSnapshot -> ?String -> Void, ?cancelCallback:Dynamic -> Void, ?context:Dynamic):FirebaseDataSnapshot -> ?String -> Void;
	function off(?eventType:String, ?callback:FirebaseDataSnapshot -> ?String -> Void, ?context:Dynamic):Void;
	@:overload(function(eventType:String, successCallback:FirebaseDataSnapshot -> Void, ?failureCallback:Dynamic -> Void, ?context:Dynamic):Void { })
	function once(eventType:String, successCallback:FirebaseDataSnapshot -> Void, ?context:Dynamic):Void;
	function orderByChild(key:String):FirebaseQuery;
	function orderByKey():FirebaseQuery;
	function orderByValue():FirebaseQuery;
	function orderByPriority():FirebaseQuery;
	function limit(limit:Float):FirebaseQuery;
	@:overload(function(value:Float, ?key:String):FirebaseQuery { })
	function startAt(value:String, ?key:String):FirebaseQuery;
	@:overload(function(value:Float, ?key:String):FirebaseQuery { })
	function endAt(value:String, ?key:String):FirebaseQuery;
	@:overload(function(value:Float, ?key:String):FirebaseQuery { })
	function equalTo(value:String, ?key:String):FirebaseQuery;
	function limitToFirst(limit:Float):FirebaseQuery;
	function limitToLast(limit:Float):FirebaseQuery;
	function ref():Firebase;
};
typedef Firebase = {
	>FirebaseQuery,
	function auth(authToken:String, ?onComplete:Dynamic -> FirebaseAuthResult -> Void, ?onCancel:Dynamic -> Void):Void;
	function authWithCustomToken(autoToken:String, onComplete:Dynamic -> FirebaseAuthData -> Void, ?options:Dynamic):Void;
	function authAnonymously(onComplete:Dynamic -> FirebaseAuthData -> Void, ?options:Dynamic):Void;
	function authWithPassword(credentials:FirebaseCredentials, onComplete:Dynamic -> FirebaseAuthData -> Void, ?options:Dynamic):Void;
	function authWithOAuthPopup(provider:String, onComplete:Dynamic -> FirebaseAuthData -> Void, ?options:Dynamic):Void;
	function authWithOAuthRedirect(provider:String, onComplete:Dynamic -> Void, ?options:Dynamic):Void;
	@:overload(function(provider:String, credentials:Dynamic, onComplete:Dynamic -> FirebaseAuthData -> Void, ?options:Dynamic):Void { })
	function authWithOAuthToken(provider:String, credentials:String, onComplete:Dynamic -> FirebaseAuthData -> Void, ?options:Dynamic):Void;
	function getAuth():FirebaseAuthData;
	function onAuth(onComplete:FirebaseAuthData -> Void, ?context:Dynamic):Void;
	function offAuth(onComplete:FirebaseAuthData -> Void, ?context:Dynamic):Void;
	function unauth():Void;
	function child(childPath:String):Firebase;
	function parent():Firebase;
	function root():Firebase;
	function key():String;
	function name():String;
	function toString():String;
	function set(value:Dynamic, ?onComplete:Dynamic -> Void):Void;
	function update(value:Dynamic, ?onComplete:Dynamic -> Void):Void;
	function remove(?onComplete:Dynamic -> Void):Void;
	function push(?value:Dynamic, ?onComplete:Dynamic -> Void):Firebase;
	@:overload(function(value:Dynamic, priority:Float, ?onComplete:Dynamic -> Void):Void { })
	function setWithPriority(value:Dynamic, priority:String, ?onComplete:Dynamic -> Void):Void;
	@:overload(function(priority:Float, ?onComplete:Dynamic -> Void):Void { })
	function setPriority(priority:String, ?onComplete:Dynamic -> Void):Void;
	function transaction(updateFunction:Dynamic -> Dynamic, ?onComplete:Dynamic -> Bool -> FirebaseDataSnapshot -> Void, ?applyLocally:Bool):Void;
	function createUser(credentials:FirebaseCredentials, onComplete:Dynamic -> Void):Void;
	function changeEmail(credentials:FirebaseChangeEmailCredentials, onComplete:Dynamic -> Void):Void;
	function changePassword(credentials:FirebaseChangePasswordCredentials, onComplete:Dynamic -> Void):Void;
	function removeUser(credentials:FirebaseCredentials, onComplete:Dynamic -> Void):Void;
	function resetPassword(credentials:FirebaseResetPasswordCredentials, onComplete:Dynamic -> Void):Void;
	function onDisconnect():FirebaseOnDisconnect;
};
typedef FirebaseStatic = {
	function new(firebaseURL:String):Firebase;
	function goOffline():Void;
	function goOnline():Void;
	var ServerValue : { var TIMESTAMP : Dynamic; };
};
typedef FirebaseAuthData = {
	var uid : String;
	var provider : String;
	var token : String;
	var expires : Float;
	var auth : Dynamic;
};
typedef FirebaseCredentials = {
	var email : String;
	var password : String;
};
typedef FirebaseChangePasswordCredentials = {
	var email : String;
	var oldPassword : String;
	var newPassword : String;
};
typedef FirebaseChangeEmailCredentials = {
	var oldEmail : String;
	var newEmail : String;
	var password : String;
};
typedef FirebaseResetPasswordCredentials = {
	var email : String;
};
extern class FirebaseTopLevel {
	static var Firebase : FirebaseStatic;
}
