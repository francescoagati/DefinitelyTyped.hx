extern class Dispatcher {
	function new(stores:Dynamic):Void;
	function addStore(name:String, store:Store):Void;
	function dispatch(action:haxe.Constraints.Function):Void;
	function doDispatchLoop(action:haxe.Constraints.Function):Void;
	function waitForStores(store:Store, stores:Array<String>, fn:haxe.Constraints.Function):Void;
}
extern class Flux extends EventEmitter3.EventEmitter {
	function new(stores:Dynamic, actions:Dynamic):Void;
	function addActions(actions:Dynamic):Void;
	@:overload(function(names:Array<String>, action:haxe.Constraints.Function):Void { })
	function addAction(args:haxe.extern.Rest<haxe.extern.EitherType<String, haxe.Constraints.Function>>):Void;
	function store(name:String):Dynamic;
	function addStore(name:String, store:Store):Void;
	function addStores(stores:Dynamic):Void;
	var stores : Dynamic;
	var actions : Dynamic;
}
typedef Store = {
	>EventEmitter3.EventEmitter,
	@:overload(function(args:Array<haxe.extern.EitherType<String, haxe.Constraints.Function>>):Void { })
	function bindActions(args:haxe.extern.Rest<haxe.extern.EitherType<String, haxe.Constraints.Function>>):Void;
	function waitFor(stores:Array<String>, fn:haxe.Constraints.Function):Void;
};
typedef StoreSpec = {
	@:optional
	function initialize(?instance:Dynamic, ?options:{ }):Void;
	@:optional
	var actions : Dynamic;
};
typedef StoreClass = {
	function new(?options:{ }):Dynamic;
};
typedef Context = {
	var flux : Flux;
};
typedef FluxMixin = {
	function getFlux():Flux;
};
typedef FluxChildMixin = {
	function getFlux():Flux;
};
typedef StoreWatchMixin<StoreState> = {
	function getStateFromFlux():StoreState;
};
extern class FluxxorTopLevel {
	static function FluxMixin(React:React.Exports):FluxMixin;
	static function FluxChildMixin(React:React.Exports):FluxChildMixin;
	static function StoreWatchMixin<StoreState>(storeNames:haxe.extern.Rest<String>):StoreWatchMixin<StoreState>;
	static function createStore(spec:StoreSpec):StoreClass;
	static var version : String;
}
