typedef Fixtures = {
	var path : String;
	var containerId : String;
	function body():String;
	function window():Window;
	function set(html:String):Void;
	function appendSet(html:String):Void;
	function preload(urls:haxe.extern.Rest<String>):Void;
	function load(urls:haxe.extern.Rest<String>):Void;
	function appendLoad(urls:haxe.extern.Rest<String>):Void;
	function read(urls:haxe.extern.Rest<String>):String;
	function clearCache():Void;
	function cleanUp():Void;
};
extern class FixturesTopLevel {
	static var fixtures : Fixtures;
}
