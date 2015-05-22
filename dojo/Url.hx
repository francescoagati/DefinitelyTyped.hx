typedef Authority = { };
typedef Password = { };
typedef Port = { };
typedef Fragment = { };
typedef Query = { };
typedef User = { };
typedef Scheme = { };
typedef Xhr = { };
typedef Xhr = {
	var contentHandlers : Dynamic;
	function del(args:Dynamic):Dynamic;
	@:overload(function(inputNode:String):Dynamic { })
	function fieldToObject(inputNode:HTMLElement):Dynamic;
	@:overload(function(formNode:String, prettyPrint:Bool):Dynamic { })
	function formToJson(formNode:HTMLElement, prettyPrint:Bool):Dynamic;
	@:overload(function(formNode:String):Dynamic { })
	function formToObject(formNode:HTMLElement):Dynamic;
	@:overload(function(formNode:String):Dynamic { })
	function formToQuery(formNode:HTMLElement):Dynamic;
	function get(args:Dynamic):Dynamic;
	function objectToQuery(map:Dynamic):Dynamic;
	function post(args:Dynamic):Dynamic;
	function put(args:Dynamic):Dynamic;
	function queryToObject(str:String):Dynamic;
};
