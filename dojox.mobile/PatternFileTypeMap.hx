typedef Map = {
	var .*.html : String;
	var .*.json : String;
};
typedef SuffixFileTypeMap = {
	var map : Dynamic;
	function add(key:String, contentType:String):Void;
	function getContentType(fileName:String):Void;
};
