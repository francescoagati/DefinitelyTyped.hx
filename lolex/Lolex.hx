typedef Clock = {
	function setTimeout(callback:Void -> Dynamic, timeout:Float):Float;
	function setInterval(callback:Void -> Dynamic, timeout:Float):Float;
	function setImmediate(callback:Void -> Dynamic):Float;
	function clearTimeout(id:Float):Void;
	function clearInterval(id:Float):Void;
	function clearImmediate(id:Float):Void;
	function tick(ms:Float):Void;
	function uninstall():Void;
};
extern class LolexTopLevel {
	static function createClock(?now:Float):Clock;
	static function install(?now:Float, ?toFake:Array<String>):Clock;
	static function install(?context:Dynamic, ?now:Float, ?toFake:Array<String>):Clock;
}
extern class LolexTopLevel {
	static function createClock(?now:Float):Clock;
	static function install(?now:Float, ?toFake:Array<String>):Clock;
	static function install(?context:Dynamic, ?now:Float, ?toFake:Array<String>):Clock;
}
