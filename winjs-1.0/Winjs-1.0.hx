typedef Element = {
	var winControl : Dynamic;
};
typedef IOHelper = {
	function exists(filename:String):WinJS.Promise<Bool>;
	function readText(fileName:String, ?def:String):WinJS.Promise<String>;
	function remove(fileName:String):WinJS.Promise<Void>;
	function writeText(fileName:String, text:String):WinJS.Promise<Float>;
};
