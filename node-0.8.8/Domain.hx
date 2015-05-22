typedef Domain = {
	>events.NodeEventEmitter,
};
extern class DomainTopLevel {
	static function create():Domain;
	static function run(fn:haxe.Constraints.Function):Void;
	static function add(emitter:events.NodeEventEmitter):Void;
	static function remove(emitter:events.NodeEventEmitter):Void;
	static function bind(cb:Error -> Dynamic -> Dynamic):Dynamic;
	static function intercept(cb:Dynamic -> Dynamic):Dynamic;
	static function dispose():Void;
}
