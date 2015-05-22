typedef AlarmCreateInfo = {
	@:optional
	var delayInMinutes : Float;
	@:optional
	var periodInMinutes : Float;
	@:optional
	var when : Float;
};
typedef Alarm = {
	@:optional
	var periodInMinutes : Float;
	var scheduledTime : Float;
	var name : String;
};
typedef AlarmEvent = {
	>chrome.events.Event,
	function addListener(callback:Alarm -> Void):Void;
};
extern class Chrome.alarmsTopLevel {
	static function create(alarmInfo:AlarmCreateInfo):Void;
	static function create(name:String, alarmInfo:AlarmCreateInfo):Void;
	static function getAll(callback:Array<Alarm> -> Void):Void;
	static function clearAll():Void;
	static function clear(?name:String):Void;
	static function get(callback:Alarm -> Void):Void;
	static function get(name:String, callback:Alarm -> Void):Void;
	static var onAlarm : AlarmEvent;
}
