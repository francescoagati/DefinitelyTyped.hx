typedef AngularFireService = { };
typedef AngularFire = {
	function $asArray():AngularFireArray;
	function $asObject():AngularFireObject;
	function $ref():Firebase;
	function $push(data:Dynamic):ng.IPromise<Firebase>;
	@:overload(function(data:Dynamic):ng.IPromise<Firebase> { })
	function $set(key:String, data:Dynamic):ng.IPromise<Firebase>;
	function $remove(?key:String):ng.IPromise<Firebase>;
	@:overload(function(data:Dynamic):ng.IPromise<Firebase> { })
	function $update(key:String, data:Dynamic):ng.IPromise<Firebase>;
	@:overload(function(key:String, updateFn:Dynamic -> Dynamic, ?applyLocally:Bool):ng.IPromise<FirebaseDataSnapshot> { })
	function $transaction(updateFn:Dynamic -> Dynamic, ?applyLocally:Bool):ng.IPromise<FirebaseDataSnapshot>;
};
typedef AngularFireObject = {
	>AngularFireSimpleObject,
	var $id : String;
	var $priority : Float;
	var $value : Dynamic;
	function $remove():ng.IPromise<Firebase>;
	function $save():ng.IPromise<Firebase>;
	@:overload(function(?resolve:AngularFireObject -> ng.IPromise<{ }>, ?reject:Dynamic -> Dynamic):ng.IPromise<AngularFireObject> { })
	@:overload(function(?resolve:AngularFireObject -> Void, ?reject:Dynamic -> Dynamic):ng.IPromise<AngularFireObject> { })
	function $loaded(?resolve:AngularFireObject -> ng.IHttpPromise<{ }>, ?reject:Dynamic -> Dynamic):ng.IPromise<AngularFireObject>;
	function $ref():AngularFire;
	function $bindTo(scope:ng.IScope, varName:String):ng.IPromise<Dynamic>;
	function $watch(callback:haxe.Constraints.Function, ?context:Dynamic):haxe.Constraints.Function;
	function $destroy():Void;
};
typedef AngularFireObjectService = {
	function $extend(ChildClass:Dynamic, ?methods:Dynamic):Dynamic;
};
typedef AngularFireArray = {
	>Array<AngularFireSimpleObject>,
	function $add(newData:Dynamic):ng.IPromise<Firebase>;
	function $save(recordOrIndex:Dynamic):ng.IPromise<Firebase>;
	function $remove(recordOrIndex:Dynamic):ng.IPromise<Firebase>;
	function $getRecord(key:String):AngularFireSimpleObject;
	function $keyAt(recordOrIndex:Dynamic):String;
	function $indexFor(key:String):Float;
	@:overload(function(?resolve:AngularFireArray -> ng.IPromise<{ }>, ?reject:Dynamic -> Dynamic):ng.IPromise<AngularFireArray> { })
	@:overload(function(?resolve:AngularFireArray -> Void, ?reject:Dynamic -> Dynamic):ng.IPromise<AngularFireArray> { })
	function $loaded(?resolve:AngularFireArray -> ng.IHttpPromise<{ }>, ?reject:Dynamic -> Dynamic):ng.IPromise<AngularFireArray>;
	function $ref():AngularFire;
	function $watch(cb:String -> String -> String -> Void, ?context:Dynamic):haxe.Constraints.Function;
	function $destroy():Void;
};
typedef AngularFireArrayService = {
	function $extend(ChildClass:Dynamic, ?methods:Dynamic):Dynamic;
};
typedef AngularFireSimpleObject = {
	var $id : String;
	var $priority : Float;
	var $value : Dynamic;
};
typedef AngularFireAuthService = { };
typedef AngularFireAuth = {
	function $authWithCustomToken(authToken:String, ?options:Dynamic):ng.IPromise<Dynamic>;
	function $authAnonymously(?options:Dynamic):ng.IPromise<Dynamic>;
	function $authWithPassword(credentials:FirebaseCredentials, ?options:Dynamic):ng.IPromise<Dynamic>;
	function $authWithOAuthPopup(provider:String, ?options:Dynamic):ng.IPromise<Dynamic>;
	function $authWithOAuthRedirect(provider:String, ?options:Dynamic):ng.IPromise<Dynamic>;
	function $authWithOAuthToken(provider:String, credentials:haxe.extern.EitherType<Dynamic, String>, ?options:Dynamic):ng.IPromise<Dynamic>;
	function $getAuth():FirebaseAuthData;
	function $onAuth(callback:haxe.Constraints.Function, ?context:Dynamic):haxe.Constraints.Function;
	function $unauth():Void;
	function $waitForAuth():ng.IPromise<Dynamic>;
	function $requireAuth():ng.IPromise<Dynamic>;
	function $createUser(credentials:FirebaseCredentials):ng.IPromise<Dynamic>;
	function $removeUser(credentials:FirebaseCredentials):ng.IPromise<Dynamic>;
	function $changeEmail(credentials:FirebaseChangeEmailCredentials):ng.IPromise<Dynamic>;
	function $changePassword(credentials:FirebaseChangePasswordCredentials):ng.IPromise<Dynamic>;
	function $resetPassword(credentials:FirebaseResetPasswordCredentials):ng.IPromise<Dynamic>;
};
