typedef SelectFn = { };
typedef NamespaceMap = { };
extern class XPathResult {
	static var ANY_TYPE : Float;
	static var NUMBER_TYPE : Float;
	static var STRING_TYPE : Float;
	static var BOOLEAN_TYPE : Float;
	static var UNORDERED_NODE_ITERATOR_TYPE : Float;
	static var ORDERED_NODE_ITERATOR_TYPE : Float;
	static var UNORDERED_NODE_SNAPSHOT_TYPE : Float;
	static var ORDERED_NODE_SNAPSHOT_TYPE : Float;
	static var ANY_UNORDERED_NODE_TYPE : Float;
	static var FIRST_ORDERED_NODE_TYPE : Float;
	var resultType : Float;
	function iterateNext():Node;
	function snapshotItem(index:Float):Node;
	var snapshotLength : Float;
	var booleanValue : Bool;
	var numberValue : Float;
	var stringValue : String;
	var singleNodeValue : Node;
}
typedef XPathExpression = {
	function evaluate(contextNode:Node, resultType:Float, ?result:XPathResult):XPathResult;
};
typedef XPathNSResolver = {
	function lookupNamespaceURI(prefix:String):String;
};
extern class XpathTopLevel {
	static var select : SelectFn;
	static function select1(xpathText:String, contextNode:Node):Dynamic;
	static function selectWithResolver(xpathText:String, contextNode:Node, resolver:XPathNSResolver, ?single:Bool):Dynamic;
	static function evaluate(xpathText:String, contextNode:Node, resolver:XPathNSResolver, resultType:Float, ?result:XPathResult):XPathResult;
	static function useNamespaces(namespaceMappings:NamespaceMap):Dynamic;
	static function createExpression(xpathText:String, namespaceURLMapper:XPathNSResolver):XPathExpression;
	static function createNSResolver(node:Node):XPathNSResolver;
}
extern class XpathTopLevel {
	static var select : SelectFn;
	static function select1(xpathText:String, contextNode:Node):Dynamic;
	static function selectWithResolver(xpathText:String, contextNode:Node, resolver:XPathNSResolver, ?single:Bool):Dynamic;
	static function evaluate(xpathText:String, contextNode:Node, resolver:XPathNSResolver, resultType:Float, ?result:XPathResult):XPathResult;
	static function useNamespaces(namespaceMappings:NamespaceMap):Dynamic;
	static function createExpression(xpathText:String, namespaceURLMapper:XPathNSResolver):XPathExpression;
	static function createNSResolver(node:Node):XPathNSResolver;
}
