extern class AssetsTopLevel {
	static function getBinary(assetPath:String, ?asyncCallback:haxe.Constraints.Function):EJSON;
	static function getText(assetPath:String, ?asyncCallback:haxe.Constraints.Function):String;
}
