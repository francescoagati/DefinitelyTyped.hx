extern class JBinary {
	static function loadData(source:Dynamic, ?callback:String -> Dynamic -> Dynamic):Dynamic;
	static function load(source:Dynamic, ?typeSet:Dynamic, ?callback:String -> Dynamic -> Dynamic):Dynamic;
	static function saveAs(destination:Dynamic, ?mimeType:String, ?callback:String -> Dynamic -> Dynamic):Dynamic;
	static function toURI(?mimeType:String):Dynamic;
	@:overload(function(data:JDataView, typeSet:Dynamic):Void { })
	@:overload(function(bufferSize:Float, typeSet:Dynamic):Void { })
	function new(data:Array<Float>):Void;
	function read(type:String, ?offset:Float):Dynamic;
	function readAll():Dynamic;
	function write(type:String, data:Dynamic, ?offset:Float):Float;
	function writeAll(data:Dynamic):Float;
	function tell():Float;
	function seek(position:Float, ?callback:JBinary -> Dynamic -> Dynamic):Float;
	function skip(count:Float, ?callback:JBinary -> Dynamic -> Dynamic):Float;
	function slice(start:Float, end:Float, ?forceCopy:Bool):JBinary;
	function as(typeSet:Dynamic, ?modifyOriginal:Bool):JBinary;
}
