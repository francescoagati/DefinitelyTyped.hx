typedef Event = {
	var type : String;
	var target : HTMLElement;
	var currentTarget : HTMLElement;
	var which : Float;
	function stopPropagation():Void;
	function stopImmediatePropagation():Void;
	function preventDefault():Void;
	function isPropagationStopped():Bool;
	function isImmediatePropagationStopped():Bool;
	function isDefaultPrevented():Bool;
};
typedef EventHandlerFunction = {
	>haxe.Constraints.Function,
};
typedef EventMap = { };
typedef LoginWithExternalServiceOptions = {
	@:optional
	var requestPermissions : Array<String>;
	@:optional
	var requestOfflineToken : Boolean;
	@:optional
	var forceApprovalPrompt : Boolean;
	@:optional
	var userEmail : String;
	@:optional
	var loginStyle : String;
};
typedef UserEmail = {
	var address : String;
	var verified : Bool;
};
typedef User = {
	@:optional
	var _id : String;
	@:optional
	var username : String;
	@:optional
	var emails : Array<Meteor.UserEmail>;
	@:optional
	var createdAt : Float;
	@:optional
	var profile : Dynamic;
	@:optional
	var services : Dynamic;
};
typedef SubscriptionHandle = {
	function stop():Void;
	function ready():Bool;
};
typedef Tinytest = {
	function add(name:String, func:haxe.Constraints.Function):Dynamic;
	function addAsync(name:String, func:haxe.Constraints.Function):Dynamic;
};
@:enum abstract StatusEnum(Int) {
	var connected = 0;
	var connecting = 1;
	var failed = 2;
	var waiting = 3;
	var offline = 4;
}
typedef LiveQueryHandle = {
	function stop():Void;
};
typedef EmailFields = {
	@:optional
	var subject : haxe.Constraints.Function;
	@:optional
	var text : haxe.Constraints.Function;
};
typedef EmailTemplates = {
	var from : String;
	var siteName : String;
	var resetPassword : Meteor.EmailFields;
	var enrollAccount : Meteor.EmailFields;
	var verifyEmail : Meteor.EmailFields;
};
typedef Error = {
	var error : Float;
	@:optional
	var reason : String;
	@:optional
	var details : String;
};
typedef Connection = {
	var id : String;
	var close : haxe.Constraints.Function;
	var onClose : haxe.Constraints.Function;
	var clientAddress : String;
	var httpHeaders : Dynamic;
};
extern class MeteorTopLevel {
	static function loginWithMeteorDeveloperAccount(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithFacebook(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithGithub(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithGoogle(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithMeetup(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithTwitter(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithWeibo(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static var Error : ErrorStatic;
	static function absoluteUrl(?path:String, ?options:{ @:optional
	var secure : Bool; @:optional
	var replaceLocalhost : Bool; @:optional
	var rootUrl : String; }):String;
	static function apply(name:String, args:Array<EJSONable>, ?options:{ @:optional
	var wait : Bool; @:optional
	var onResultReceived : haxe.Constraints.Function; }, ?asyncCallback:haxe.Constraints.Function):Dynamic;
	static function call(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function clearInterval(id:Float):Void;
	static function clearTimeout(id:Float):Void;
	static function disconnect():Void;
	static var isClient : Bool;
	static var isCordova : Bool;
	static var isServer : Bool;
	static function loggingIn():Bool;
	static function loginWith<ExternalService>(?options:{ @:optional
	var requestPermissions : Array<String>; @:optional
	var requestOfflineToken : Bool; @:optional
	var forceApprovalPrompt : Bool; @:optional
	var userEmail : String; @:optional
	var loginStyle : String; }, ?callback:haxe.Constraints.Function):Void;
	static function loginWithPassword(user:haxe.extern.EitherType<Dynamic, String>, password:String, ?callback:haxe.Constraints.Function):Void;
	static function logout(?callback:haxe.Constraints.Function):Void;
	static function logoutOtherClients(?callback:haxe.Constraints.Function):Void;
	static function methods(methods:Dynamic):Void;
	static function onConnection(callback:haxe.Constraints.Function):Void;
	static function publish(name:String, func:haxe.Constraints.Function):Void;
	static function reconnect():Void;
	static var release : String;
	static function setInterval(func:haxe.Constraints.Function, delay:Float):Float;
	static function setTimeout(func:haxe.Constraints.Function, delay:Float):Float;
	static var settings : { };
	static function startup(func:haxe.Constraints.Function):Void;
	static function status():Meteor.StatusEnum;
	static function subscribe(name:String, args:haxe.extern.Rest<Dynamic>):Meteor.SubscriptionHandle;
	static function user():Meteor.User;
	static function userId():String;
	static var users : Mongo.Collection<User>;
	static function wrapAsync(func:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
}
typedef ErrorStatic = {
	function new(error:String, ?reason:String, ?details:String):Error;
};
typedef Error = { };
extern class MeteorTopLevel {
	static function loginWithMeteorDeveloperAccount(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithFacebook(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithGithub(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithGoogle(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithMeetup(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithTwitter(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static function loginWithWeibo(?options:Meteor.LoginWithExternalServiceOptions, ?callback:haxe.Constraints.Function):Void;
	static var Error : ErrorStatic;
	static function absoluteUrl(?path:String, ?options:{ @:optional
	var secure : Bool; @:optional
	var replaceLocalhost : Bool; @:optional
	var rootUrl : String; }):String;
	static function apply(name:String, args:Array<EJSONable>, ?options:{ @:optional
	var wait : Bool; @:optional
	var onResultReceived : haxe.Constraints.Function; }, ?asyncCallback:haxe.Constraints.Function):Dynamic;
	static function call(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function clearInterval(id:Float):Void;
	static function clearTimeout(id:Float):Void;
	static function disconnect():Void;
	static var isClient : Bool;
	static var isCordova : Bool;
	static var isServer : Bool;
	static function loggingIn():Bool;
	static function loginWith<ExternalService>(?options:{ @:optional
	var requestPermissions : Array<String>; @:optional
	var requestOfflineToken : Bool; @:optional
	var forceApprovalPrompt : Bool; @:optional
	var userEmail : String; @:optional
	var loginStyle : String; }, ?callback:haxe.Constraints.Function):Void;
	static function loginWithPassword(user:haxe.extern.EitherType<Dynamic, String>, password:String, ?callback:haxe.Constraints.Function):Void;
	static function logout(?callback:haxe.Constraints.Function):Void;
	static function logoutOtherClients(?callback:haxe.Constraints.Function):Void;
	static function methods(methods:Dynamic):Void;
	static function onConnection(callback:haxe.Constraints.Function):Void;
	static function publish(name:String, func:haxe.Constraints.Function):Void;
	static function reconnect():Void;
	static var release : String;
	static function setInterval(func:haxe.Constraints.Function, delay:Float):Float;
	static function setTimeout(func:haxe.Constraints.Function, delay:Float):Float;
	static var settings : { };
	static function startup(func:haxe.Constraints.Function):Void;
	static function status():Meteor.StatusEnum;
	static function subscribe(name:String, args:haxe.extern.Rest<Dynamic>):Meteor.SubscriptionHandle;
	static function user():Meteor.User;
	static function userId():String;
	static var users : Mongo.Collection<User>;
	static function wrapAsync(func:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
}
