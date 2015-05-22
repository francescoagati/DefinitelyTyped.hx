typedef SessionOptions = {
	var secret : String;
	@:optional
	var name : String;
	@:optional
	var store : Store;
	@:optional
	var cookie : express.CookieOptions;
	@:optional
	var genid : express.Request -> String;
	@:optional
	var rolling : Bool;
	@:optional
	var resave : Bool;
	@:optional
	var proxy : Bool;
	@:optional
	var saveUninitialized : Bool;
	@:optional
	var unset : String;
};
typedef Store = {
	var get : String -> Dynamic -> Express.Session -> Void -> Void;
	var set : String -> Express.Session -> Dynamic -> Void -> Void;
	var destroy : String -> Dynamic -> Void -> Void;
	@:optional
	var length : Dynamic -> Float -> Void -> Void;
	@:optional
	var clear : Dynamic -> Void -> Void;
};
extern class MemoryStore {
	var get : String -> Dynamic -> Express.Session -> Void -> Void;
	var set : String -> Express.Session -> Dynamic -> Void -> Void;
	var destroy : String -> Dynamic -> Void -> Void;
	var all : Dynamic -> { } -> Void -> Void;
	var length : Dynamic -> Float -> Void -> Void;
	var clear : Dynamic -> Void -> Void;
}
