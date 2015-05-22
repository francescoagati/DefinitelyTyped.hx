typedef Range = {
	var startPos : Float;
	var endPos : Float;
};
typedef Options = {
	@:optional
	var _id : String;
	@:optional
	var filename : String;
	@:optional
	var mode : String;
	@:optional
	var range : Range;
	@:optional
	var chunkSize : Float;
	@:optional
	var content_type : String;
	@:optional
	var root : String;
	@:optional
	var metadata : Dynamic;
};
typedef WriteStream = {
	>NodeJS.WritableStream,
	var writable : Bool;
	var name : String;
	var id : String;
	var options : Options;
	var mode : String;
};
typedef ReadStream = {
	>NodeJS.ReadableStream,
	var readable : Bool;
	var paused : Bool;
};
