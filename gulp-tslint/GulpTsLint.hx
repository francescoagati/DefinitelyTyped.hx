typedef Options = {
	@:optional
	var configuration : { };
	@:optional
	var rulesDirectory : String;
	@:optional
	var emitError : Bool;
};
typedef Position = {
	var position : Float;
	var line : Float;
	var character : Float;
};
typedef Output = {
	var name : String;
	var failure : String;
	var startPosition : Position;
	var endPosition : Position;
	var ruleName : String;
};
extern class GulpTsLintTopLevel {
	static function report(?reporter:Reporter, ?options:Options):NodeJS.ReadWriteStream;
	static function report(?options:Options):NodeJS.ReadWriteStream;
}
