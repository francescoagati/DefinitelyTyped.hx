typedef StatsOpts = {
	@:optional
	var bucket_precision : Float;
	@:optional
	var buckets : Array<Float>;
	@:optional
	var bucket_extension_interval : Float;
	@:optional
	var store_data : Bool;
	@:optional
	var sampling : Bool;
};
typedef Bucket = {
	var bucket : Float;
	var range : Array<Float>;
	var count : Float;
};
extern class Stats {
	function new(?opts:StatsOpts):Void;
	@:overload(function(args:Array<Float>):Void { })
	function push(args:haxe.extern.Rest<Float>):Void;
	function pop():Float;
	function shift():Float;
	function unshift(args:haxe.extern.Rest<Float>):Void;
	var length : Float;
	function reset():Void;
	function copy():Stats;
	function amean():Float;
	function gmean():Float;
	function median():Float;
	function percentile(n:Float):Float;
	function range():Array<Float>;
	function distribution():Array<Bucket>;
	function stddev():Float;
	function gstddev():Float;
	function moe():Float;
	function band_pass(low:Float, high:Float, ?open:Bool):Stats;
	function iqr():Stats;
}
