extern class CodedValueDomain extends Domain {
	var codedValues : Array<Dynamic>;
	@:overload(function(code:String):String { })
	function getName(code:Float):String;
}
