extern class Frame extends webdriver.stacktrace.Frame {

}
extern class Snapshot extends webdriver.stacktrace.Snapshot {

}
extern class StacktraceTopLevel {
	static function format(error:Dynamic):Dynamic;
	static function get():Array<webdriver.stacktrace.Frame>;
	static var BROWSER_SUPPORTED : Bool;
}
