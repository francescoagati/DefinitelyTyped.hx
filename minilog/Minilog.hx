typedef Minilog = {
	function debug(msg:Dynamic):Minilog;
	function info(msg:Dynamic):Minilog;
	function log(msg:Dynamic):Minilog;
	function warn(msg:Dynamic):Minilog;
	function error(msg:Dynamic):Minilog;
};
extern class MinilogTopLevel {
	static function Minilog(namespace:String):Minilog;
}
