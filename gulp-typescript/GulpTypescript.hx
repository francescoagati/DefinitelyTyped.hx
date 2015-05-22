typedef Params = {
	@:optional
	var declarationFiles : Bool;
	@:optional
	var module : String;
	@:optional
	var noEmitOnError : Bool;
	@:optional
	var noExternalResolve : Bool;
	@:optional
	var noImplicitAny : Bool;
	@:optional
	var noLib : Bool;
	@:optional
	var removeComments : Bool;
	@:optional
	var sourceRoot : String;
	@:optional
	var sortOutput : Bool;
	@:optional
	var target : String;
};
typedef FilterSettings = {
	@:optional
	var referencedFrom : Array<String>;
};
typedef Reporter = {
	function error(error:Dynamic):Void;
};
typedef CompilationStream = {
	>NodeJS.ReadWriteStream,
	var dts : NodeJS.ReadWriteStream;
	var js : NodeJS.ReadWriteStream;
};
extern class GulpTypescriptTopLevel {
	static function createProject(params:Params):Params;
	static function filter(filters:FilterSettings):CompilationStream;
}
