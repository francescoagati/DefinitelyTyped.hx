typedef CustomElementInit = {
	var prototype : HTMLElement;
	@:optional
	var extends : String;
};
typedef CustomElementsPolyfill = {
	var hasNative : Bool;
	var flags : Dynamic;
	var ready : Bool;
	var useNative : Bool;
};
typedef HTMLImportsPolyfill = {
	var IMPORT_LINK_TYPE : String;
	var isIE : Bool;
	var flags : Dynamic;
	var ready : Bool;
	var rootDocument : Document;
	var useNative : Bool;
	function whenReady(callback:Void -> Void):Void;
};
typedef Polyfill = {
	var flags : Dynamic;
};
