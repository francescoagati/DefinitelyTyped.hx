typedef Options = {
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var secure : haxe.extern.EitherType<String, Bool>;
	@:optional
	var secureOptions : tls.ConnectionOptions;
	@:optional
	var user : String;
	@:optional
	var password : String;
	@:optional
	var connTimeout : Float;
	@:optional
	var pasvTimeout : Float;
	@:optional
	var keepalive : Float;
};
typedef ListingElement = {
	var type : String;
	var name : String;
	var size : String;
	var date : Date;
	@:optional
	var rights : { var user : String; var group : String; var other : String; };
	@:optional
	var owner : String;
	@:optional
	var group : String;
	@:optional
	var target : String;
	@:optional
	var sticky : Bool;
};
extern class Client extends events.EventEmitter {
	function new():Void;
	function connect(?config:Client.Options):Void;
	function end():Void;
	function destroy():Void;
	@:overload(function(path:String, callback:Error -> Array<Client.ListingElement> -> Void):Void { })
	@:overload(function(useCompression:Bool, callback:Error -> Array<Client.ListingElement> -> Void):Void { })
	@:overload(function(callback:Error -> Array<Client.ListingElement> -> Void):Void { })
	function list(path:String, useCompression:Bool, callback:Error -> Array<Client.ListingElement> -> Void):Void;
	@:overload(function(path:String, useCompression:Bool, callback:Error -> NodeJS.ReadableStream -> Void):Void { })
	function get(path:String, callback:Error -> NodeJS.ReadableStream -> Void):Void;
	@:overload(function(input:haxe.extern.EitherType<NodeJS.ReadableStream, haxe.extern.EitherType<Buffer, String>>, destPath:String, callback:Error -> Void):Void { })
	function put(input:haxe.extern.EitherType<NodeJS.ReadableStream, haxe.extern.EitherType<Buffer, String>>, destPath:String, useCompression:Bool, callback:Error -> Void):Void;
	@:overload(function(input:haxe.extern.EitherType<NodeJS.ReadableStream, haxe.extern.EitherType<Buffer, String>>, destPath:String, callback:Error -> Void):Void { })
	function append(input:haxe.extern.EitherType<NodeJS.ReadableStream, haxe.extern.EitherType<Buffer, String>>, destPath:String, useCompression:Bool, callback:Error -> Void):Void;
	function rename(oldPath:String, newPath:String, callback:Error -> Void):Void;
	function logout(callback:Error -> Void):Void;
	function delete(path:String, callback:Error -> Void):Void;
	function cwd(path:String, callback:Error -> ?String -> Void):Void;
	function abort(callback:Error -> Void):Void;
	function site(command:String, callback:Error -> String -> Float -> Void):Void;
	function status(callback:Error -> String -> Void):Void;
	function ascii(callback:Error -> Void):Void;
	function binary(callback:Error -> Void):Void;
	@:overload(function(path:String, callback:Error -> Void):Void { })
	function mkdir(path:String, recursive:Bool, callback:Error -> Void):Void;
	@:overload(function(path:String, callback:Error -> Void):Void { })
	function rmdir(path:String, recursive:Bool, callback:Error -> Void):Void;
	function cdup(callback:Error -> Void):Void;
	function pwd(callback:Error -> String -> Void):Void;
	function system(callback:Error -> String -> Void):Void;
	@:overload(function(path:String, callback:Error -> Array<Client.ListingElement> -> Void):Void { })
	@:overload(function(useCompression:Bool, callback:Error -> Array<Client.ListingElement> -> Void):Void { })
	@:overload(function(callback:Error -> Array<Client.ListingElement> -> Void):Void { })
	function listSafe(path:String, useCompression:Bool, callback:Error -> Array<Client.ListingElement> -> Void):Void;
	function size(path:String, callback:Error -> Float -> Void):Void;
	function lastMod(path:String, callback:Error -> Date -> Void):Void;
	function restart(byteOffset:Float, callback:Error -> Void):Void;
}
