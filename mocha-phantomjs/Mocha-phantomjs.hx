typedef MochaPhantomJsWindowOptions = {
	>Window,
	var env : Dynamic;
	var failures : Float;
	var ended : Bool;
	var started : Bool;
	function run():Void;
};
typedef Window = {
	function mochaPhantomJS():MochaPhantomJsWindowOptions;
};
typedef MochaPhantomJSOptions = {
	@:optional
	var headers : Dynamic;
	@:optional
	var cookies : Array<Dynamic>;
	@:optional
	var viewportSize : Float;
	@:optional
	var timeout : Float;
	@:optional
	var file : String;
};
typedef MochaPhantomJS = {
	var url : String;
	var columns : Float;
	var mochaStartWait : Float;
	var startTime : Date;
	var output : Dynamic;
	function run():Void;
	function customizeMocha(options:MochaPhantomJSOptions):Void;
};
extern class Mocha-phantomjsTopLevel {
	static var mochaPhantomJS : MochaPhantomJS;
}
