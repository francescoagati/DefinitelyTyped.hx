typedef CronJobStatic = {
	@:overload(function(options:{ var cronTime : haxe.extern.EitherType<String, Date>; var onTick : Void -> Void; @:optional
	var onComplete : Void -> Void; @:optional
	var start : Bool; @:optional
	var timezone : String; @:optional
	var context : Dynamic; }):CronJob { })
	function new(cronTime:haxe.extern.EitherType<String, Date>, onTick:Void -> Void, ?onComplete:Void -> Void, ?start:Bool, ?timezone:String, ?context:Dynamic):CronJob;
};
typedef CronJob = {
	function start():Void;
	function stop():Void;
};
typedef CronTimeStatic = {
	function new(time:haxe.extern.EitherType<String, Date>):CronTime;
};
typedef CronTime = { };
extern class CronTopLevel {
	static var CronJob : CronJobStatic;
	static var CronTime : CronTimeStatic;
}
extern class CronTopLevel {
	static var CronJob : CronJobStatic;
	static var CronTime : CronTimeStatic;
}
