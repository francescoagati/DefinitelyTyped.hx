extern class Chart {
	function new():Void;
	var dir : String;
	var isMirrored : Bool;
	var textDir : String;
	function applyMirroring(plot:Dynamic, dim:Dynamic, offsets:Dynamic):haxe.Constraints.Function;
	function formatTruncatedLabel(element:Dynamic, label:Dynamic, labelType:Dynamic):Void;
	function getTextDir(text:Dynamic):Dynamic;
	function isRightToLeft():Bool;
	function render():haxe.Constraints.Function;
	function setDir(dir:Dynamic):haxe.Constraints.Function;
	function setTextDir(newTextDir:Dynamic, obj:Dynamic):haxe.Constraints.Function;
}
extern class Chart3D {
	function new():Void;
	var direction : String;
	var isMirrored : Bool;
	function applyMirroring(plot:Dynamic, dim:Dynamic, offsets:Dynamic):haxe.Constraints.Function;
	function generate():haxe.Constraints.Function;
	function isRightToLeft():Bool;
	function postscript(node:HTMLElement, lights:Dynamic, camera:Dynamic, theme:Dynamic, direction:String):Void;
	function setDir(dir:Dynamic):haxe.Constraints.Function;
}
