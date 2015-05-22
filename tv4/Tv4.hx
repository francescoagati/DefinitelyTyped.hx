typedef TV4ErrorCodes = { };
typedef TV4Error = {
	var code : Float;
	var message : String;
	var dataPath : String;
	var schemaPath : String;
};
typedef TV4SchemaMap = { };
typedef TV4BaseResult = {
	var missing : Array<String>;
	var valid : Bool;
};
typedef TV4SingleResult = {
	>TV4BaseResult,
	var error : TV4Error;
};
typedef TV4MultiResult = {
	>TV4BaseResult,
	var errors : Array<TV4Error>;
};
typedef TV4 = {
	function validateResult(data:Dynamic, schema:Dynamic):TV4SingleResult;
	function validateMultiple(data:Dynamic, schema:Dynamic):TV4MultiResult;
	function addSchema(uri:String, schema:Dynamic):Bool;
	function getSchema(uri:String):Dynamic;
	function normSchema(schema:Dynamic, baseUri:String):Dynamic;
	function resolveUrl(base:String, href:String):String;
	function freshApi():TV4;
	function dropSchemas():Void;
	function reset():Void;
	function getMissingUris(?exp:js.RegExp):Array<String>;
	function getSchemaUris(?exp:js.RegExp):Array<String>;
	function getSchemaMap():TV4SchemaMap;
	var errorCodes : TV4ErrorCodes;
};
extern class Tv4TopLevel {
	static var tv4 : TV4;
}
extern class Tv4TopLevel {
	static var tv4 : TV4;
}
