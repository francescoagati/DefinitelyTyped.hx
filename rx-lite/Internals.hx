extern class PriorityQueue<TTime> {
	function new(capacity:Float):Void;
	var length : Float;
	function isHigherPriority(left:Float, right:Float):Bool;
	function percolate(index:Float):Void;
	function heapify(index:Float):Void;
	function peek():ScheduledItem<TTime>;
	function removeAt(index:Float):Void;
	function dequeue():ScheduledItem<TTime>;
	function enqueue(item:ScheduledItem<TTime>):Void;
	function remove(item:ScheduledItem<TTime>):Bool;
	static var count : Float;
}
extern class ScheduledItem<TTime> {
	function new(scheduler:IScheduler, state:Dynamic, action:IScheduler -> Dynamic -> IDisposable, dueTime:TTime, ?comparer:TTime -> TTime -> Float):Void;
	var scheduler : IScheduler;
	var state : TTime;
	var action : IScheduler -> Dynamic -> IDisposable;
	var dueTime : TTime;
	var comparer : TTime -> TTime -> Float;
	var disposable : SingleAssignmentDisposable;
	function invoke():Void;
	function compareTo(other:ScheduledItem<TTime>):Float;
	function isCancelled():Bool;
	function invokeCore():IDisposable;
}
extern class InternalsTopLevel {
	static function isEqual(left:Dynamic, right:Dynamic):Bool;
	static function addRef<T>(xs:Observable<T>, r:{ function getDisposable():IDisposable; }):Observable<T>;
}
