extern class Form extends events.EventEmitter {
	function new(?options:FormOptions):Void;
	function parse(request:http.ServerRequest, ?callback:Error -> Dynamic -> Dynamic -> Dynamic):Void;
}
typedef File = {
	var fieldName : String;
	var originalFileName : String;
	var path : String;
	var headers : Dynamic;
	var size : Float;
};
typedef Part = {
	>stream.Readable,
	var headers : Dynamic;
	var name : String;
	var filename : String;
	var byteOffset : Float;
	var byteCount : Float;
};
typedef FormOptions = {
	@:optional
	var encoding : String;
	@:optional
	var maxFieldsSize : Float;
	@:optional
	var maxFields : Float;
	@:optional
	var maxFilesSize : Float;
	@:optional
	var autoFields : Bool;
	@:optional
	var autoFiles : Bool;
	@:optional
	var uploadDir : String;
};
