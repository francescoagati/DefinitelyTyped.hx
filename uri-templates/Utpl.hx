typedef URITemplate = {
	function fillFromObject(vars:Dynamic):String;
	function fill(callback:String -> String):String;
	function fromUri(uri:String):Dynamic;
};
