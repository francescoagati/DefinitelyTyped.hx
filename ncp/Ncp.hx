typedef Options = {
	@:optional
	var filter : js.RegExp;
	@:optional
	var transform : NodeJS.ReadableStream -> NodeJS.WritableStream -> Void;
	@:optional
	var clobber : Bool;
	@:optional
	var stopOnErr : Bool;
	@:optional
	var errs : NodeJS.WritableStream;
};
extern class NcpTopLevel {
	static function ncp(source:String, destination:String, callback:Error -> Void):Void;
	static function ncp(source:String, destination:String, options:Options, callback:Error -> Void):Void;
}
extern class NcpTopLevel {
	static function ncp(source:String, destination:String, callback:Error -> Void):Void;
	static function ncp(source:String, destination:String, options:Options, callback:Error -> Void):Void;
}
