extern class IdentifyTopLevel {
	static var path : String;
	static function readMetadata(path:String, callback:Error -> Dynamic -> Void):child_process.ChildProcess;
	static function convert(args:Dynamic, callback:Error -> Dynamic -> Void):child_process.ChildProcess;
	static function convert(args:Dynamic, timeout:Float, callback:Error -> Dynamic -> Void):child_process.ChildProcess;
}
