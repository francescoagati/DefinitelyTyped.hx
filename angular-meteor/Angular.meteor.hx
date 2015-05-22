typedef IRootScopeService = {
	>angular.IRootScopeService,
	var currentUser : Meteor.User;
	var loggingIn : Bool;
};
typedef IScope = {
	>angular.IScope,
	>IRootScopeService,
	function getReactively(scopeVariableName:String, ?objectEquality:Bool):ReactiveResult;
	function subscribe(name:String, publisherArguments:haxe.extern.Rest<Dynamic>):angular.IPromise<Meteor.SubscriptionHandle>;
};
typedef IMeteorService = {
	@:overload(function<T, U>(collection:haxe.extern.EitherType<Mongo.Collection<T>, haxe.extern.EitherType<ReactiveResult, haxe.extern.EitherType<haxe.Constraints.Function, Void -> T>>>, autoClientSave:Bool, updateCollection:Mongo.Collection<U>):AngularMeteorCollection2<T, U> { })
	function collection<T>(collection:haxe.extern.EitherType<Mongo.Collection<T>, haxe.extern.EitherType<ReactiveResult, haxe.extern.EitherType<haxe.Constraints.Function, Void -> T>>>, ?autoClientSave:Bool):AngularMeteorCollection<T>;
	function object<T>(collection:Mongo.Collection<T>, selector:haxe.extern.EitherType<Mongo.Selector, haxe.extern.EitherType<Mongo.ObjectID, String>>, ?autoClientSave:Bool):AngularMeteorObject<T>;
	function subscribe(name:String, publisherArguments:haxe.extern.Rest<Dynamic>):angular.IPromise<Meteor.SubscriptionHandle>;
	function call<T>(name:String, methodArguments:haxe.extern.Rest<Dynamic>):angular.IPromise<T>;
	function waitForUser():angular.IPromise<Meteor.User>;
	function requireUser():angular.IPromise<Meteor.User>;
	function requireValidUser(validatorFn:Meteor.User -> haxe.extern.EitherType<Bool, String>):angular.IPromise<Meteor.User>;
	function loginWithPassword(user:haxe.extern.EitherType<String, haxe.extern.EitherType<{ var email : String; }, haxe.extern.EitherType<{ var username : String; }, { var id : String; }>>>, password:String):angular.IPromise<Void>;
	function createUser(options:{ @:optional
	var username : String; @:optional
	var email : String; var password : String; @:optional
	var profile : Dynamic; }):angular.IPromise<Void>;
	function changePassword(oldPassword:String, newPassword:String):angular.IPromise<Void>;
	function forgotPassword(options:{ var email : String; }):angular.IPromise<Void>;
	function resetPassword(token:String, newPassword:String):angular.IPromise<Void>;
	function verifyEmail(token:String):angular.IPromise<Void>;
	var loginWithFacebook : ILoginWithExternalService;
	var loginWithTwitter : ILoginWithExternalService;
	var loginWithGoogle : ILoginWithExternalService;
	var loginWithGithub : ILoginWithExternalService;
	var loginWithMeetup : ILoginWithExternalService;
	var loginWithWeibo : ILoginWithExternalService;
	function logout():angular.IPromise<Void>;
	function logoutOtherClients():angular.IPromise<Void>;
	function autorun(scope:angular.IScope, fn:haxe.Constraints.Function):Void;
	function getCollectionByName<T>(collectionName:String):Mongo.Collection<T>;
	function getPicture(?options:{ @:optional
	var width : Float; @:optional
	var height : Float; @:optional
	var quality : Float; }):angular.IPromise<Dynamic>;
	function session(sessionKey:String):{ var bind : IScope -> String -> Void; };
};
typedef AngularMeteorObject<T> = {
	function save(?doc:T):angular.IPromise<Float>;
	function reset():Void;
	function getRawObject():T;
	function subscribe(subscriptionName:String):AngularMeteorObject<T>;
};
typedef AngularMeteorCollection<T> = {
	>AngularMeteorCollection2<T, T>,
};
typedef AngularMeteorCollection2<T, U> = {
	>Array<T>,
	function save(?docs:haxe.extern.EitherType<U, Array<U>>):Void;
	function remove(?keys:haxe.extern.EitherType<U, haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<Array<String>, Array<Float>>>>>):Void;
	function subscribe(subscriptionName:String):AngularMeteorCollection2<T, U>;
};
typedef ILoginWithExternalService = { };
typedef ReactiveResult = { };
