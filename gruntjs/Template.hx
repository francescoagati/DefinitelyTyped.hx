typedef TemplateModule = {
	@:overload(function(template:String, options:Dynamic):String { })
	function process(template:String):Dynamic -> String;
	function setDelimiters(name:String):Void;
	function addDelimiters(name:String, opener:String, closer:String):Void;
	@:overload(function(?date:Float, ?format:String):String { })
	@:overload(function(?date:String, ?format:String):String { })
	function date(?date:Date, ?format:String):String;
	function today(?format:String):String;
};
