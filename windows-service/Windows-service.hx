typedef AddOptions = {
	@:optional
	var displayName : String;
	@:optional
	var nodePath : String;
	@:optional
	var nodeArgs : Array<String>;
	@:optional
	var programPath : String;
	@:optional
	var programArgs : Array<String>;
};
extern class Windows-serviceTopLevel {
	static function add(name:String, ?opts:AddOptions):Void;
	static function remove(name:String):Void;
	static function run(stdoutLogStream:stream.Writable, callback:Void -> Void):Void;
	static function run(stdoutLogStream:stream.Writable, stderrLogStream:stream.Writable, callback:Void -> Void):Void;
	static function stop(?rcode:Float):Void;
}
extern class Windows-serviceTopLevel {
	static function add(name:String, ?opts:AddOptions):Void;
	static function remove(name:String):Void;
	static function run(stdoutLogStream:stream.Writable, callback:Void -> Void):Void;
	static function run(stdoutLogStream:stream.Writable, stderrLogStream:stream.Writable, callback:Void -> Void):Void;
	static function stop(?rcode:Float):Void;
}
