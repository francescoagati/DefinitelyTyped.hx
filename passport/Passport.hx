typedef Passport = {
	@:overload(function(name:String, strategy:Strategy):Passport { })
	function use(strategy:Strategy):Passport;
	function unuse(name:String):Passport;
	function framework(fw:String):Passport;
	function initialize(?options:{ var userProperty : String; }):express.Handler;
	function session(?options:{ var pauseStream : Bool; }):express.Handler;
	@:overload(function(strategy:String, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler { })
	@:overload(function(strategies:Array<String>, ?callback:haxe.Constraints.Function):express.Handler { })
	@:overload(function(strategies:Array<String>, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler { })
	function authenticate(strategy:String, ?callback:haxe.Constraints.Function):express.Handler;
	@:overload(function(strategy:String, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler { })
	@:overload(function(strategies:Array<String>, ?callback:haxe.Constraints.Function):express.Handler { })
	@:overload(function(strategies:Array<String>, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler { })
	function authorize(strategy:String, ?callback:haxe.Constraints.Function):express.Handler;
	function serializeUser(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
	function deserializeUser(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
	function transformAuthInfo(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
};
typedef Strategy = {
	@:optional
	var name : String;
	function authenticate(req:express.Request, ?options:Dynamic):Void;
};
typedef Profile = {
	var provider : String;
	var id : String;
	var displayName : String;
	@:optional
	var name : { var familyName : String; var givenName : String; @:optional
	var middleName : String; };
	@:optional
	var emails : Array<{ var value : String; @:optional
	var type : String; }>;
	@:optional
	var photos : Array<{ var value : String; }>;
};
extern class PassportTopLevel {
	static function use(strategy:Strategy):Passport;
	static function use(name:String, strategy:Strategy):Passport;
	static function unuse(name:String):Passport;
	static function framework(fw:String):Passport;
	static function initialize(?options:{ var userProperty : String; }):express.Handler;
	static function session(?options:{ var pauseStream : Bool; }):express.Handler;
	static function authenticate(strategy:String, ?callback:haxe.Constraints.Function):express.Handler;
	static function authenticate(strategy:String, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler;
	static function authenticate(strategies:Array<String>, ?callback:haxe.Constraints.Function):express.Handler;
	static function authenticate(strategies:Array<String>, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler;
	static function authorize(strategy:String, ?callback:haxe.Constraints.Function):express.Handler;
	static function authorize(strategy:String, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler;
	static function authorize(strategies:Array<String>, ?callback:haxe.Constraints.Function):express.Handler;
	static function authorize(strategies:Array<String>, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler;
	static function serializeUser(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
	static function deserializeUser(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
	static function transformAuthInfo(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
}
extern class PassportTopLevel {
	static function use(strategy:Strategy):Passport;
	static function use(name:String, strategy:Strategy):Passport;
	static function unuse(name:String):Passport;
	static function framework(fw:String):Passport;
	static function initialize(?options:{ var userProperty : String; }):express.Handler;
	static function session(?options:{ var pauseStream : Bool; }):express.Handler;
	static function authenticate(strategy:String, ?callback:haxe.Constraints.Function):express.Handler;
	static function authenticate(strategy:String, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler;
	static function authenticate(strategies:Array<String>, ?callback:haxe.Constraints.Function):express.Handler;
	static function authenticate(strategies:Array<String>, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler;
	static function authorize(strategy:String, ?callback:haxe.Constraints.Function):express.Handler;
	static function authorize(strategy:String, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler;
	static function authorize(strategies:Array<String>, ?callback:haxe.Constraints.Function):express.Handler;
	static function authorize(strategies:Array<String>, options:Dynamic, ?callback:haxe.Constraints.Function):express.Handler;
	static function serializeUser(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
	static function deserializeUser(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
	static function transformAuthInfo(fn:Dynamic -> Dynamic -> Dynamic -> Void -> Void):Void;
}
