extern class FormData {
	function append(key:String, value:Dynamic):FormData;
	function getHeaders():Dynamic;
	function pipe(to:Dynamic):Dynamic;
}
