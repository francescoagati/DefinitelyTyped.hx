typedef XSSFilters = {
	function inHTMLComment(s:String):String;
	function inHTMLData(s:String):String;
	function inDoubleQuotedAttr(s:String):String;
	function inSingleQuotedAttr(s:String):String;
	function inUnQuotedAttr(s:String):String;
	function uriInHTMLComment(s:String):String;
	function uriInHTMLData(s:String):String;
	function uriInDoubleQuotedAttr(s:String):String;
	function uriInSingleQuotedAttr(s:String):String;
	function uriInUnQuotedAttr(s:String):String;
	function uriPathInHTMLComment(s:String):String;
	function uriPathInHTMLData(s:String):String;
	function uriPathInDoubleQuotedAttr(s:String):String;
	function uriPathInSingleQuotedAttr(s:String):String;
	function uriPathInUnQuotedAttr(s:String):String;
	function uriQueryInHTMLComment(s:String):String;
	function uriQueryInHTMLData(s:String):String;
	function uriQueryInDoubleQuotedAttr(s:String):String;
	function uriQueryInSingleQuotedAttr(s:String):String;
	function uriQueryInUnQuotedAttr(s:String):String;
	function uriComponentInHTMLComment(s:String):String;
	function uriComponentInHTMLData(s:String):String;
	function uriComponentInDoubleQuotedAttr(s:String):String;
	function uriComponentInSingleQuotedAttr(s:String):String;
	function uriComponentInUnQuotedAttr(s:String):String;
	function uriFragmentInHTMLComment(s:String):String;
	function uriFragmentInHTMLData(s:String):String;
	function uriFragmentInDoubleQuotedAttr(s:String):String;
	function uriFragmentInSingleQuotedAttr(s:String):String;
	function uriFragmentInUnQuotedAttr(s:String):String;
};
extern class Xss-filtersTopLevel {
	static var xssFilters : XSSFilters;
}
extern class Xss-filtersTopLevel {
	static var xssFilters : XSSFilters;
}
