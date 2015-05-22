extern class IncomingForm extends events.EventEmitter {
	var encoding : String;
	var uploadDir : String;
	var keepExtensions : Bool;
	var maxFieldsSize : Float;
	var maxFields : Float;
	var hash : haxe.extern.EitherType<String, Bool>;
	var multiples : Bool;
	var type : String;
	var bytesReceived : Float;
	var bytesExpected : Float;
	var onPart : Part -> Void;
	function handlePart(part:Part):Void;
	function parse(req:http.IncomingMessage, ?callback:Dynamic -> Fields -> Files -> Dynamic):Void;
}
typedef Fields = { };
typedef Files = { };
typedef Part = {
	>stream.Stream,
	var headers : { };
	var name : String;
	@:optional
	var filename : String;
	@:optional
	var mime : String;
};
typedef File = {
	var size : Float;
	var path : String;
	var name : String;
	var type : String;
	@:optional
	var lastModifiedDate : Date;
	@:optional
	var hash : String;
	function toJSON():Dynamic;
};
