typedef MediaType = {
	var type : String;
	@:optional
	var q : Float;
	var params : Dynamic;
	function toString():String;
};
typedef SelectOptions = {
	@:optional
	var sortAvailable : Bool;
	@:optional
	var sortAccepted : Bool;
};
typedef MediaTypeStatic = {
	function new(s:String, ?p:Dynamic):MediaType;
	function parseMedia(type:String):MediaType;
	function splitQuotedString(str:String, ?delimiter:String, ?quote:String):Array<String>;
	function splitContentTypes(str:String):Array<String>;
	function select(availableTypes:Array<MediaType>, acceptedTypes:Array<MediaType>, ?options:SelectOptions):String;
	function mediaCmp(a:MediaType, b:MediaType):Float;
};
