typedef IPaths = {
	@:optional
	var bowerDirectory : String;
	@:optional
	var bowerrc : String;
	@:optional
	var bowerJson : String;
};
typedef IFilterFunction = { };
typedef IOptions = {
	@:optional
	var debugging : Bool;
	@:optional
	var main : haxe.extern.EitherType<String, haxe.extern.EitherType<Array<String>, Dynamic>>;
	@:optional
	var env : String;
	@:optional
	var paths : haxe.extern.EitherType<IPaths, String>;
	@:optional
	var checkExistence : Bool;
	@:optional
	var includeDev : haxe.extern.EitherType<Bool, String>;
	@:optional
	var includeSelf : Bool;
	@:optional
	var filter : haxe.extern.EitherType<js.RegExp, haxe.extern.EitherType<IFilterFunction, haxe.extern.EitherType<String, Array<String>>>>;
};
extern class Main-bower-filesTopLevel {
	static function mainBowerFiles(?options:IOptions):Array<String>;
}
extern class Main-bower-filesTopLevel {
	static function mainBowerFiles(?options:IOptions):Array<String>;
}
