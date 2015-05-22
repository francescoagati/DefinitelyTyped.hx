typedef Mocha = {
	function setup(options:MochaSetupOptions):Mocha;
	function run(?callback:Void -> Void):Void;
	@:overload(function(reporter:String):Mocha { })
	function reporter(reporter:Void -> Void):Mocha;
	function growl():Mocha;
};
typedef MochaSetupOptions = {
	@:optional
	var slow : Float;
	@:optional
	var timeout : Float;
	@:optional
	var ui : String;
	@:optional
	var globals : Array<Dynamic>;
	@:optional
	var reporter : Dynamic;
	@:optional
	var bail : Bool;
	@:optional
	var ignoreLeaks : Bool;
	@:optional
	var grep : Dynamic;
};
typedef MochaDone = { };
extern class Mocha {
	function new(?options:{ @:optional
	var grep : js.RegExp; @:optional
	var ui : String; @:optional
	var reporter : String; @:optional
	var timeout : Float; @:optional
	var bail : Bool; }):Void;
	function bail(?value:Bool):Mocha;
	function addFile(file:String):Mocha;
	function reporter(value:String):Mocha;
	function ui(value:String):Mocha;
	@:overload(function(value:js.RegExp):Mocha { })
	function grep(value:String):Mocha;
	function invert():Mocha;
	function ignoreLeaks(value:Bool):Mocha;
	function checkLeaks():Mocha;
	function growl():Mocha;
	@:overload(function(values:Array<String>):Mocha { })
	function globals(value:String):Mocha;
	function useColors(value:Bool):Mocha;
	function useInlineDiffs(value:Bool):Mocha;
	function timeout(value:Float):Mocha;
	function slow(value:Float):Mocha;
	function enableTimeouts(value:Bool):Mocha;
	function asyncOnly(value:Bool):Mocha;
	function noHighlighting(value:Bool):Mocha;
	function run(?onComplete:Float -> Void):Void;
}
extern class MochaTopLevel {
	static var mocha : Mocha;
	static var describe : { function only(description:String, spec:Void -> Void):Void; function skip(description:String, spec:Void -> Void):Void; function timeout(ms:Float):Void; };
	static var context : { function only(contextTitle:String, spec:Void -> Void):Void; function skip(contextTitle:String, spec:Void -> Void):Void; function timeout(ms:Float):Void; };
	static var suite : { function only(suiteTitle:String, spec:Void -> Void):Void; function skip(suiteTitle:String, spec:Void -> Void):Void; function timeout(ms:Float):Void; };
	static var it : { @:overload(function(expectation:String, ?assertion:MochaDone -> Void):Void { })
	function only(expectation:String, ?assertion:Void -> Void):Void; @:overload(function(expectation:String, ?assertion:MochaDone -> Void):Void { })
	function skip(expectation:String, ?assertion:Void -> Void):Void; function timeout(ms:Float):Void; };
	static var test : { @:overload(function(expectation:String, ?assertion:MochaDone -> Void):Void { })
	function only(expectation:String, ?assertion:Void -> Void):Void; @:overload(function(expectation:String, ?assertion:MochaDone -> Void):Void { })
	function skip(expectation:String, ?assertion:Void -> Void):Void; function timeout(ms:Float):Void; };
	static function before(action:Void -> Void):Void;
	static function before(action:MochaDone -> Void):Void;
	static function setup(action:Void -> Void):Void;
	static function setup(action:MochaDone -> Void):Void;
	static function after(action:Void -> Void):Void;
	static function after(action:MochaDone -> Void):Void;
	static function teardown(action:Void -> Void):Void;
	static function teardown(action:MochaDone -> Void):Void;
	static function beforeEach(action:Void -> Void):Void;
	static function beforeEach(action:MochaDone -> Void):Void;
	static function suiteSetup(action:Void -> Void):Void;
	static function suiteSetup(action:MochaDone -> Void):Void;
	static function afterEach(action:Void -> Void):Void;
	static function afterEach(action:MochaDone -> Void):Void;
	static function suiteTeardown(action:Void -> Void):Void;
	static function suiteTeardown(action:MochaDone -> Void):Void;
}
extern class MochaTopLevel {
	static var mocha : Mocha;
	static var describe : { function only(description:String, spec:Void -> Void):Void; function skip(description:String, spec:Void -> Void):Void; function timeout(ms:Float):Void; };
	static var context : { function only(contextTitle:String, spec:Void -> Void):Void; function skip(contextTitle:String, spec:Void -> Void):Void; function timeout(ms:Float):Void; };
	static var suite : { function only(suiteTitle:String, spec:Void -> Void):Void; function skip(suiteTitle:String, spec:Void -> Void):Void; function timeout(ms:Float):Void; };
	static var it : { @:overload(function(expectation:String, ?assertion:MochaDone -> Void):Void { })
	function only(expectation:String, ?assertion:Void -> Void):Void; @:overload(function(expectation:String, ?assertion:MochaDone -> Void):Void { })
	function skip(expectation:String, ?assertion:Void -> Void):Void; function timeout(ms:Float):Void; };
	static var test : { @:overload(function(expectation:String, ?assertion:MochaDone -> Void):Void { })
	function only(expectation:String, ?assertion:Void -> Void):Void; @:overload(function(expectation:String, ?assertion:MochaDone -> Void):Void { })
	function skip(expectation:String, ?assertion:Void -> Void):Void; function timeout(ms:Float):Void; };
	static function before(action:Void -> Void):Void;
	static function before(action:MochaDone -> Void):Void;
	static function setup(action:Void -> Void):Void;
	static function setup(action:MochaDone -> Void):Void;
	static function after(action:Void -> Void):Void;
	static function after(action:MochaDone -> Void):Void;
	static function teardown(action:Void -> Void):Void;
	static function teardown(action:MochaDone -> Void):Void;
	static function beforeEach(action:Void -> Void):Void;
	static function beforeEach(action:MochaDone -> Void):Void;
	static function suiteSetup(action:Void -> Void):Void;
	static function suiteSetup(action:MochaDone -> Void):Void;
	static function afterEach(action:Void -> Void):Void;
	static function afterEach(action:MochaDone -> Void):Void;
	static function suiteTeardown(action:Void -> Void):Void;
	static function suiteTeardown(action:MochaDone -> Void):Void;
}
