extern class Domain extends events.EventEmitter {
	function run(fn:haxe.Constraints.Function):Void;
	function add(emitter:events.EventEmitter):Void;
	function remove(emitter:events.EventEmitter):Void;
	function bind(cb:Error -> Dynamic -> Dynamic):Dynamic;
	function intercept(cb:Dynamic -> Dynamic):Dynamic;
	function dispose():Void;
	function addListener(event:String, listener:haxe.Constraints.Function):Domain;
	function on(event:String, listener:haxe.Constraints.Function):Domain;
	function once(event:String, listener:haxe.Constraints.Function):Domain;
	function removeListener(event:String, listener:haxe.Constraints.Function):Domain;
	function removeAllListeners(?event:String):Domain;
}
extern class DomainTopLevel {
	static function create():Domain;
}
