typedef SpinnerOptions = {
	@:optional
	var lines : Float;
	@:optional
	var length : Float;
	@:optional
	var width : Float;
	@:optional
	var radius : Float;
	@:optional
	var corners : Float;
	@:optional
	var rotate : Float;
	@:optional
	var direction : Float;
	@:optional
	var color : Dynamic;
	@:optional
	var speed : Float;
	@:optional
	var trail : Float;
	@:optional
	var shadow : Bool;
	@:optional
	var hwaccel : Bool;
	@:optional
	var className : String;
	@:optional
	var zIndex : Float;
	@:optional
	var top : String;
	@:optional
	var left : String;
};
extern class Spinner {
	var el : HTMLElement;
	function new(?options:SpinnerOptions):Void;
	function spin(?target:HTMLElement):Spinner;
	function stop():Spinner;
	function lines(el:HTMLElement, o:SpinnerOptions):HTMLElement;
	function opacity(el:HTMLElement, i:Float, val:Float, o:SpinnerOptions):Void;
}
