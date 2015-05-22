typedef Entity = {
	>Ti.XML.Node,
	var notationName : String;
	var publicId : String;
	var systemId : String;
	function getNotationName():String;
	function getPublicId():String;
	function getSystemId():String;
};
typedef Node = {
	>Ti.Proxy,
	var ATTRIBUTE_NODE : Float;
	var CDATA_SECTION_NODE : Float;
	var COMMENT_NODE : Float;
	var DOCUMENT_FRAGMENT_NODE : Float;
	var DOCUMENT_NODE : Float;
	var DOCUMENT_TYPE_NODE : Float;
	var ELEMENT_NODE : Float;
	var ENTITY_NODE : Float;
	var ENTITY_REFERENCE_NODE : Float;
	var NOTATION_NODE : Float;
	var PROCESSING_INSTRUCTION_NODE : Float;
	var TEXT_NODE : Float;
	var attributes : Ti.XML.NamedNodeMap;
	var childNodes : Ti.XML.NodeList;
	var firstChild : Ti.XML.Node;
	var lastChild : Ti.XML.Node;
	var localName : String;
	var namespaceURI : String;
	var nextSibling : Ti.XML.Node;
	var nodeName : String;
	var nodeType : Float;
	var nodeValue : String;
	var ownerDocument : Ti.XML.Document;
	var parentNode : Ti.XML.Node;
	var prefix : String;
	var previousSibling : Ti.XML.Node;
	var text : String;
	var textContent : String;
	function appendChild(newChild:Ti.XML.Node):Ti.XML.Node;
	function cloneNode(deep:Bool):Ti.XML.Node;
	function getAttributes():Ti.XML.NamedNodeMap;
	function getChildNodes():Ti.XML.NodeList;
	function getFirstChild():Ti.XML.Node;
	function getLastChild():Ti.XML.Node;
	function getLocalName():String;
	function getNamespaceURI():String;
	function getNextSibling():Ti.XML.Node;
	function getNodeName():String;
	function getNodeType():Float;
	function getNodeValue():String;
	function getOwnerDocument():Ti.XML.Document;
	function getParentNode():Ti.XML.Node;
	function getPrefix():String;
	function getPreviousSibling():Ti.XML.Node;
	function getText():String;
	function getTextContent():String;
	function hasAttributes():Bool;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Ti.XML.Node, refChild:Ti.XML.Node):Ti.XML.Node;
	function isSupported(feature:String, version:String):Bool;
	function normalize():Void;
	function removeChild(oldChild:Ti.XML.Node):Ti.XML.Node;
	function replaceChild(newChild:Ti.XML.Node, oldChild:Ti.XML.Node):Ti.XML.Node;
	function setLocalName(localName:String):Void;
	function setNodeValue(nodeValue:String):Void;
	function setPrefix(prefix:String):Void;
};
@:enum abstract EntityReference(Int) {

}
typedef CharacterData = {
	>Ti.XML.Node,
	var data : String;
	var length : Float;
	function appendData(arg:String):Void;
	function deleteData(offset:Float, count:Float):Void;
	function getData():String;
	function getLength():Float;
	function insertData(offset:Float, arg:String):Void;
	function replaceData(offset:Float, count:Float, arg:String):Void;
	function setData(data:String):Void;
	function substringData(offset:Float, count:Float):String;
};
typedef DOMImplementation = {
	>Ti.Proxy,
	function createDocument(namespaceURI:String, qualifiedName:String, doctype:Ti.XML.DocumentType):Ti.XML.Document;
	function createDocumentType(qualifiedName:String, publicId:String, systemId:String):Ti.XML.DocumentType;
	function hasFeature(feature:String, version:String):Bool;
};
typedef Document = {
	>Ti.XML.Node,
	var doctype : Ti.XML.DocumentType;
	var documentElement : Ti.XML.Element;
	var implementation : Ti.XML.DOMImplementation;
	function createAttribute(name:String):Ti.XML.Attr;
	function createAttributeNS(namespaceURI:String, name:String):Ti.XML.Attr;
	function createCDATASection(data:String):Ti.XML.CDATASection;
	function createComment(data:String):Ti.XML.Comment;
	function createDocumentFragment():Ti.XML.DocumentFragment;
	function createElement(tagName:String):Ti.XML.Element;
	function createElementNS(namespaceURI:String, name:String):Ti.XML.Element;
	function createEntityReference(name:String):Ti.XML.EntityReference;
	function createProcessingInstruction(target:String, data:String):Ti.XML.ProcessingInstruction;
	function createTextNode(data:String):Ti.XML.Text;
	function getDoctype():Ti.XML.DocumentType;
	function getDocumentElement():Ti.XML.Element;
	function getElementById(elementId:String):Ti.XML.Element;
	function getElementsByTagName(tagname:String):Ti.XML.NodeList;
	function getElementsByTagNameNS(namespaceURI:String, localname:String):Ti.XML.NodeList;
	function getImplementation():Ti.XML.DOMImplementation;
	function importNode(importedNode:Ti.XML.Node, deep:Bool):Ti.XML.Node;
};
typedef Attr = {
	>Ti.XML.Node,
	var name : String;
	var ownerElement : Ti.XML.Element;
	var specified : Bool;
	var value : String;
	function getName():String;
	function getOwnerElement():Ti.XML.Element;
	function getSpecified():Bool;
	function getValue():String;
	function setValue(value:String):Void;
};
typedef ProcessingInstruction = {
	>Ti.Proxy,
	var data : String;
	var target : String;
	function getData():String;
	function getTarget():String;
	function setData(data:String):Void;
};
typedef NamedNodeMap = {
	>Ti.Proxy,
	var length : Float;
	function getLength():Float;
	function getNamedItem(name:String):Ti.XML.Node;
	function getNamedItemNS(namespaceURI:String, localName:String):Ti.XML.Node;
	function item(index:Float):Ti.XML.Node;
	function removeNamedItem(name:String):Ti.XML.Node;
	function removeNamedItemNS(namespaceURI:String, localName:String):Ti.XML.Node;
	function setNamedItem(node:Ti.XML.Node):Ti.XML.Node;
	function setNamedItemNS(node:Ti.XML.Node):Ti.XML.Node;
};
@:enum abstract CDATASection(Int) {

}
typedef Text = {
	>Ti.XML.CharacterData,
	function splitText(offset:Float):Ti.XML.Text;
};
@:enum abstract Comment(Int) {

}
@:enum abstract DocumentFragment(Int) {

}
typedef Notation = {
	>Ti.Proxy,
	var publicId : String;
	var systemId : String;
	function getPublicId():String;
	function getSystemId():String;
};
typedef NodeList = {
	>Ti.Proxy,
	var length : Float;
	function getLength():Float;
	function item(index:Float):Ti.XML.Node;
};
typedef DocumentType = {
	>Ti.XML.Node,
	var entities : Ti.XML.NamedNodeMap;
	var internalSubset : String;
	var name : String;
	var notations : Ti.XML.NamedNodeMap;
	var publicId : String;
	var systemId : String;
	function getEntities():Ti.XML.NamedNodeMap;
	function getInternalSubset():String;
	function getName():String;
	function getNotations():Ti.XML.NamedNodeMap;
	function getPublicId():String;
	function getSystemId():String;
};
typedef Element = {
	>Ti.XML.Node,
	var tagName : String;
	function getAttribute(name:String):String;
	function getAttributeNS(namespaceURI:String, localName:String):String;
	function getAttributeNode(name:String):Ti.XML.Attr;
	function getAttributeNodeNS(namespaceURI:String, localName:String):Ti.XML.Attr;
	function getElementsByTagName(name:String):Ti.XML.NodeList;
	function getElementsByTagNameNS(namespaceURI:String, localName:String):Ti.XML.NodeList;
	function getTagName():String;
	function hasAttribute(name:String):Bool;
	function hasAttributeNS(namespaceURI:String, localName:String):Bool;
	function removeAttribute(name:String):Void;
	function removeAttributeNS(namespaceURI:String, localName:String):Void;
	function removeAttributeNode(oldAttr:Ti.XML.Attr):Void;
	function setAttribute(name:String, value:String):Void;
	function setAttributeNS(namespaceURI:String, qualifiedName:String, value:String):Void;
	function setAttributeNode(newAttr:Ti.XML.Attr):Ti.XML.Attr;
	function setAttributeNodeNS(newAttr:Ti.XML.Attr):Ti.XML.Attr;
};
extern class XMLTopLevel {
	static var apiName : String;
	static var bubbleParent : Bool;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getBubbleParent():Bool;
	static function parseString(xml:String):Ti.XML.Document;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function serializeToString(node:Ti.XML.Node):String;
	static function setBubbleParent(bubbleParent:Bool):Void;
}
@:enum abstract BlobStream(Int) {

}
typedef IOStream = {
	>Ti.Proxy,
	function close():Void;
	function isReadable():Bool;
	function isWriteable():Bool;
	function read(buffer:Ti.Buffer, ?offset:Float, ?length:Float):Float;
	function write(buffer:Ti.Buffer, ?offset:Float, ?length:Float):Float;
};
