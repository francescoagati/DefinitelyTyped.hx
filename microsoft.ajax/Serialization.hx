extern class JavaScriptSerializer {
	function new():Void;
	static function serialize(value:Dynamic):String;
	static function deserialize(value:String):Dynamic;
}
