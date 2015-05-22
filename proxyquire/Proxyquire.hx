typedef Proxyquire = {
	@:overload(function<T>(request:String, stubs:Dynamic):T { })
	function load(request:String, stubs:Dynamic):Dynamic;
	function noCallThru():Proxyquire;
	function callThru():Proxyquire;
	function noPreserveCache():Void;
	function preserveCache():Void;
};
extern class ProxyquireTopLevel {
	static var p : Proxyquire;
}
extern class ProxyquireTopLevel {
	static var p : Proxyquire;
}
