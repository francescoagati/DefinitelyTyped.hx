extern class DocTest {
	function new():Void;
	var errors : Array<Dynamic>;
	function getTests(moduleName:String):Dynamic;
	function getTestsFromString(data:String):Dynamic;
	function run(moduleName:Dynamic):Void;
	function runTest(commands:Dynamic, expected:Dynamic):Dynamic;
}
