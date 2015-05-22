typedef FtpServerOptions = {
	var getInitialCwd : FtpConnection -> ?Error -> String -> Void -> haxe.extern.EitherType<Void, String>;
	var getRoot : FtpConnection -> ?Error -> String -> Void -> haxe.extern.EitherType<Void, String>;
	@:optional
	var useWriteFile : Bool;
	@:optional
	var useReadFile : Bool;
	@:optional
	var uploadMaxSlurpSize : Float;
	@:optional
	var maxStatsAtOnce : Float;
	@:optional
	var filenameSortFunc : String -> String -> Float;
	@:optional
	var filenameSortMap : haxe.extern.EitherType<String -> String, Bool>;
	@:optional
	var dontSortFilenames : Bool;
	@:optional
	var noWildcards : Bool;
	@:optional
	var tlsOptions : tls.TlsOptions;
	@:optional
	var tlsOnly : Bool;
	@:optional
	var allowUnauthorizedTls : Bool;
	@:optional
	var pasvPortRangeStart : Float;
	@:optional
	var pasvPortRangeEnd : Float;
};
extern class FtpConnection extends events.EventEmitter {
	var server : FtpServer;
	var socket : net.Socket;
	var pasv : net.Server;
	var dataSocket : net.Socket;
	var mode : String;
	var username : String;
	var cwd : String;
	var root : String;
	var hasQuit : Bool;
	var secure : Bool;
	var pbszReceived : Bool;
}
typedef FtpFileSystem = {
	var unlink : String -> ??NodeJS.ErrnoException -> Void -> Void;
	var readdir : String -> ?NodeJS.ErrnoException -> Array<String> -> Void -> Void;
	var mkdir : haxe.extern.EitherType<String -> ??NodeJS.ErrnoException -> Void -> Void, haxe.extern.EitherType<String -> Float -> ??NodeJS.ErrnoException -> Void -> Void, String -> String -> ??NodeJS.ErrnoException -> Void -> Void>>;
	var open : haxe.extern.EitherType<String -> String -> ?NodeJS.ErrnoException -> Float -> Dynamic -> Void, haxe.extern.EitherType<String -> String -> Float -> ?NodeJS.ErrnoException -> Float -> Dynamic -> Void, String -> String -> String -> ?NodeJS.ErrnoException -> Float -> Dynamic -> Void>>;
	var close : Float -> ??NodeJS.ErrnoException -> Void -> Void;
	var rmdir : String -> ??NodeJS.ErrnoException -> Void -> Void;
	var rename : String -> String -> ??NodeJS.ErrnoException -> Void -> Void;
	var stat : String -> ?NodeJS.ErrnoException -> fs.Stats -> Dynamic -> Void;
	@:optional
	var createReadStream : String -> ?{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var fd : String; @:optional
	var mode : String; @:optional
	var bufferSize : Float; } -> fs.ReadStream;
	@:optional
	var createWriteStream : String -> ?{ @:optional
	var flags : String; @:optional
	var encoding : String; @:optional
	var string : String; } -> fs.WriteStream;
	@:optional
	var readFile : haxe.extern.EitherType<String -> String -> NodeJS.ErrnoException -> String -> Void -> Void, haxe.extern.EitherType<String -> { var encoding : String; @:optional
	var flag : String; } -> NodeJS.ErrnoException -> String -> Void -> Void, haxe.extern.EitherType<String -> { @:optional
	var flag : String; } -> NodeJS.ErrnoException -> Buffer -> Void -> Void, String -> NodeJS.ErrnoException -> Buffer -> Void -> Void>>>;
	@:optional
	var writeFile : haxe.extern.EitherType<String -> Dynamic -> ?NodeJS.ErrnoException -> Void -> Void, haxe.extern.EitherType<String -> Dynamic -> { @:optional
	var encoding : String; @:optional
	var mode : Float; @:optional
	var flag : String; } -> ?NodeJS.ErrnoException -> Void -> Void, String -> Dynamic -> { @:optional
	var encoding : String; @:optional
	var mode : String; @:optional
	var flag : String; } -> ?NodeJS.ErrnoException -> Void -> Void>>;
};
extern class FtpServer extends events.EventEmitter {
	function new(host:String, options:FtpServerOptions):Void;
	function listen(port:Float, ?host:String, ?backlog:Float, ?listeningListener:Void -> Void):Void;
	function close(?callback:Void -> Void):Void;
}
