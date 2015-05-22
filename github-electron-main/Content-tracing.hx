extern class Content-tracingTopLevel {
	static function getCategories(callback:Array<Dynamic> -> Void):Void;
	static function startRecording(categoryFilter:String, options:Float, callback:haxe.Constraints.Function):Void;
	static function stopRecording(resultFilePath:String, callback:String -> Void):Void;
	static function startMonitoring(categoryFilter:String, options:Float, callback:haxe.Constraints.Function):Void;
	static function stopMonitoring(callback:haxe.Constraints.Function):Void;
	static function captureMonitoringSnapshot(resultFilePath:String, callback:String -> Void):Void;
	static function getTraceBufferUsage(callback:haxe.Constraints.Function):Void;
	static function setWatchEvent(categoryName:String, eventName:String, callback:haxe.Constraints.Function):Void;
	static function cancelWatchEvent():Void;
	static var DEFAULT_OPTIONS : Float;
	static var ENABLE_SYSTRACE : Float;
	static var ENABLE_SAMPLING : Float;
	static var RECORD_CONTINUOUSLY : Float;
}
