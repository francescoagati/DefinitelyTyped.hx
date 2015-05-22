typedef FPSMeterOptions = {
	@:optional
	var interval : Float;
	@:optional
	var smoothing : Float;
	@:optional
	var show : String;
	@:optional
	var toggleOn : String;
	@:optional
	var decimals : Float;
	@:optional
	var maxFps : Float;
	@:optional
	var threshold : Float;
	@:optional
	var position : String;
	@:optional
	var zIndex : Float;
	@:optional
	var left : String;
	@:optional
	var top : String;
	@:optional
	var right : String;
	@:optional
	var bottom : String;
	@:optional
	var margin : String;
	@:optional
	var theme : String;
	@:optional
	var heat : Float;
	@:optional
	var graph : Float;
	@:optional
	var history : Float;
};
extern class FPSMeter {
	function new(?anchor:HTMLElement, ?options:FPSMeterOptions):Void;
	var options : FPSMeterOptions;
	function tick():Void;
	function tickStart():Void;
	function pause():FPSMeter;
	function resume():FPSMeter;
	function set(name:String, value:Dynamic):FPSMeter;
	function showDuration():FPSMeter;
	function showFps():FPSMeter;
	function toggle():FPSMeter;
	function hide():FPSMeter;
	function show():FPSMeter;
	function destroy():Void;
}
