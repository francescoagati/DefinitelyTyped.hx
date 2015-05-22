typedef Callback = { };
typedef Options = {
	@:optional
	var default : String;
	@:optional
	var trim : Bool;
	@:optional
	var validator : Dynamic;
	@:optional
	var retry : Bool;
	@:optional
	var silent : Bool;
	@:optional
	var input : NodeJS.ReadableStream;
	@:optional
	var output : NodeJS.WritableStream;
};
extern class PromptlyTopLevel {
	static function prompt(message:String, ?fn:Callback):Dynamic;
	static function prompt(message:String, opts:Options, ?fn:Callback):Dynamic;
	static function password(message:String, ?fn:Callback):Dynamic;
	static function password(message:String, opts:Options, ?fn:Callback):Dynamic;
	static function confirm(message:String, ?fn:Callback):Dynamic;
	static function confirm(message:String, opts:Options, ?fn:Callback):Dynamic;
	static function choose(message:String, choices:Array<String>, ?fn:Callback):Dynamic;
	static function choose(message:String, choices:Array<String>, opts:Options, ?fn:Callback):Dynamic;
}
extern class PromptlyTopLevel {
	static function prompt(message:String, ?fn:Callback):Dynamic;
	static function prompt(message:String, opts:Options, ?fn:Callback):Dynamic;
	static function password(message:String, ?fn:Callback):Dynamic;
	static function password(message:String, opts:Options, ?fn:Callback):Dynamic;
	static function confirm(message:String, ?fn:Callback):Dynamic;
	static function confirm(message:String, opts:Options, ?fn:Callback):Dynamic;
	static function choose(message:String, choices:Array<String>, ?fn:Callback):Dynamic;
	static function choose(message:String, choices:Array<String>, opts:Options, ?fn:Callback):Dynamic;
}
