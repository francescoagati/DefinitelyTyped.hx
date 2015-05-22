typedef Elm = {
	function embed<P>(elmModule:ElmModule<P>, element:Node, ?initialValues:Dynamic):ElmComponent<P>;
	function fullscreen<P>(elmModule:ElmModule<P>, ?initialValues:Dynamic):ElmComponent<P>;
	function worker<P>(elmModule:ElmModule<P>, ?initialValues:Dynamic):ElmComponent<P>;
};
typedef ElmModule<P> = { };
typedef ElmComponent<P> = {
	var ports : P;
};
typedef PortToElm<V> = {
	function send(value:V):Void;
};
typedef PortFromElm<V> = {
	function subscribe(handler:V -> Void):Void;
	function unsubscribe(handler:V -> Void):Void;
};
extern class ElmTopLevel {
	static var Elm : Elm;
}
