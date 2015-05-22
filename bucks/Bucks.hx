typedef BucksStatic = {
	var VERSION : String;
	var DEBUG : Bool;
	var running : Array<Bucks>;
	var living : Array<Bucks>;
	function new():Bucks;
	function onError(onError:Error -> Bucks -> Dynamic):Void;
};
typedef Bucks = {
	function add(task:TaskWithNext):Bucks;
	function then(onSuccess:Dynamic -> ?Task -> Dynamic):Bucks;
	function empty():Bucks;
	function error(onError:Error -> ?Task -> Dynamic):Bucks;
	function parallel(tasks:Array<TaskWithNext>):Bucks;
	function waterfall(tasks:Array<TaskWithNext>):Bucks;
	function delay(ms:Float):Bucks;
	function dispose():Void;
	function destroy(?err:Error):Bucks;
	function end(?callback:Task, ?errback:Error -> Dynamic):Void;
};
typedef TaskWithNext = { };
typedef Task = { };
