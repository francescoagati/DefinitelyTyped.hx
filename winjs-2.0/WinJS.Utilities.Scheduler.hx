@:enum abstract Priority(Int) {
	var aboveNormal = 0;
	var belowNormal = 1;
	var high = 2;
	var idle = 3;
	var max = 4;
	var min = 5;
	var normal = 6;
}
typedef IJob = {
	function cancel():Void;
	function pause():Void;
	function resume():Void;
	var completed : Bool;
	var id : Float;
	var name : String;
	var owner : IOwnerToken;
	var priority : Priority;
};
typedef IJobInfo = {
	function setPromise(promise:Promise<Dynamic>):Void;
	function setWork(work:haxe.Constraints.Function):Void;
	var job : IJob;
	var shouldYield : Bool;
};
typedef IOwnerToken = {
	function cancelAll():Void;
};
extern class WinJS.Utilities.SchedulerTopLevel {
	static var currentPriority : Priority;
	static function createOwnerToken():IOwnerToken;
	static function execHigh<U>(callback:Void -> U):U;
	static function retrieveState():String;
	static function requestDrain(?priority:Priority, ?name:String):Promise<Dynamic>;
	static function schedule(work:IJobInfo -> Dynamic, ?priority:Priority, ?thisArg:Dynamic, ?name:String):IJob;
	static function schedulePromiseAboveNormal<U>(?promiseValue:U, ?jobName:String):Promise<U>;
	static function schedulePromiseBelowNormal<U>(?promiseValue:U, ?jobName:String):Promise<U>;
	static function schedulePromiseHigh<U>(?promiseValue:U, ?jobName:String):Promise<U>;
	static function schedulePromiseIdle<U>(?promiseValue:U, ?jobName:String):Promise<U>;
	static function schedulePromiseNormal<U>(?promiseValue:U, ?jobName:String):Promise<U>;
}
