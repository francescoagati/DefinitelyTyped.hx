typedef Document = {
	function registerElement(name:String, prototype:webcomponents.CustomElementInit):Void;
};
typedef Window = {
	var CustomElements : webcomponents.CustomElementsPolyfill;
	var HTMLImports : webcomponents.HTMLImportsPolyfill;
	var WebComponents : webcomponents.Polyfill;
};
