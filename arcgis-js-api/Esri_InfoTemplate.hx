extern class InfoTemplate {
	var content : Dynamic;
	var title : Dynamic;
	@:overload(function(title:String, content:String):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new():Void;
	@:overload(function(template:haxe.Constraints.Function):InfoTemplate { })
	function setContent(template:String):InfoTemplate;
	@:overload(function(template:haxe.Constraints.Function):InfoTemplate { })
	function setTitle(template:String):InfoTemplate;
	function toJson():Dynamic;
}
