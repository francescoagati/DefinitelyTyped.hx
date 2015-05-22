typedef Available = { };
typedef Html = {
	@:overload(function(node:HTMLElement, cont:HTMLElement, params:Dynamic):Dynamic { })
	@:overload(function(node:HTMLElement, cont:NodeList, params:Dynamic):Dynamic { })
	function set(node:HTMLElement, cont:String, params:Dynamic):Dynamic;
};
