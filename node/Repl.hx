typedef ReplOptions = {
	@:optional
	var prompt : String;
	@:optional
	var input : NodeJS.ReadableStream;
	@:optional
	var output : NodeJS.WritableStream;
	@:optional
	var terminal : Bool;
	@:optional
	var eval : haxe.Constraints.Function;
	@:optional
	var useColors : Bool;
	@:optional
	var useGlobal : Bool;
	@:optional
	var ignoreUndefined : Bool;
	@:optional
	var writer : haxe.Constraints.Function;
};
extern class ReplTopLevel {
	static function start(options:ReplOptions):events.EventEmitter;
}
