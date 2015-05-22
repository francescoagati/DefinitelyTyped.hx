@:enum abstract NodeType(Int) {
	var invalid = 0;
	var elementNode = 1;
	var attributeNode = 2;
	var textNode = 3;
	var dataSectionNode = 4;
	var entityReferenceNode = 5;
	var entityNode = 6;
	var processingInstructionNode = 7;
	var commentNode = 8;
	var documentNode = 9;
	var documentTypeNode = 10;
	var documentFragmentNode = 11;
	var notationNode = 12;
}
typedef IXmlNodeSelector = {
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
};
extern class XmlNodeList {
	var length : Float;
	var size : Float;
	function item(index:Float):Windows.Data.Xml.Dom.IXmlNode;
	function getAt(index:Float):Windows.Data.Xml.Dom.IXmlNode;
	function indexOf(value:Windows.Data.Xml.Dom.IXmlNode):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.Data.Xml.Dom.IXmlNode>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Data.Xml.Dom.IXmlNode>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Data.Xml.Dom.IXmlNode>>):Array<Windows.Data.Xml.Dom.IXmlNode>;
	function join(seperator:String):String;
	function pop():Windows.Data.Xml.Dom.IXmlNode;
	function push(items:haxe.extern.Rest<Windows.Data.Xml.Dom.IXmlNode>):Void;
	function reverse():Array<Windows.Data.Xml.Dom.IXmlNode>;
	function shift():Windows.Data.Xml.Dom.IXmlNode;
	@:overload(function(start:Float, end:Float):Array<Windows.Data.Xml.Dom.IXmlNode> { })
	function slice(start:Float):Array<Windows.Data.Xml.Dom.IXmlNode>;
	@:overload(function(compareFn:Windows.Data.Xml.Dom.IXmlNode -> Windows.Data.Xml.Dom.IXmlNode -> Float):Array<Windows.Data.Xml.Dom.IXmlNode> { })
	function sort():Array<Windows.Data.Xml.Dom.IXmlNode>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Data.Xml.Dom.IXmlNode>):Array<Windows.Data.Xml.Dom.IXmlNode> { })
	function splice(start:Float):Array<Windows.Data.Xml.Dom.IXmlNode>;
	function unshift(items:haxe.extern.Rest<Windows.Data.Xml.Dom.IXmlNode>):Float;
	@:overload(function(searchElement:Windows.Data.Xml.Dom.IXmlNode, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Data.Xml.Dom.IXmlNode):Float;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Void):Void;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool, thisArg:Dynamic):Array<Windows.Data.Xml.Dom.IXmlNode> { })
	function filter(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool):Array<Windows.Data.Xml.Dom.IXmlNode>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic):Dynamic;
}
extern class XmlNamedNodeMap {
	var length : Float;
	var size : Float;
	function item(index:Float):Windows.Data.Xml.Dom.IXmlNode;
	function getNamedItem(name:String):Windows.Data.Xml.Dom.IXmlNode;
	function setNamedItem(node:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeNamedItem(name:String):Windows.Data.Xml.Dom.IXmlNode;
	function getNamedItemNS(namespaceUri:Dynamic, name:String):Windows.Data.Xml.Dom.IXmlNode;
	function removeNamedItemNS(namespaceUri:Dynamic, name:String):Windows.Data.Xml.Dom.IXmlNode;
	function setNamedItemNS(node:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function getAt(index:Float):Windows.Data.Xml.Dom.IXmlNode;
	function indexOf(value:Windows.Data.Xml.Dom.IXmlNode):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.Data.Xml.Dom.IXmlNode>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Data.Xml.Dom.IXmlNode>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Data.Xml.Dom.IXmlNode>>):Array<Windows.Data.Xml.Dom.IXmlNode>;
	function join(seperator:String):String;
	function pop():Windows.Data.Xml.Dom.IXmlNode;
	function push(items:haxe.extern.Rest<Windows.Data.Xml.Dom.IXmlNode>):Void;
	function reverse():Array<Windows.Data.Xml.Dom.IXmlNode>;
	function shift():Windows.Data.Xml.Dom.IXmlNode;
	@:overload(function(start:Float, end:Float):Array<Windows.Data.Xml.Dom.IXmlNode> { })
	function slice(start:Float):Array<Windows.Data.Xml.Dom.IXmlNode>;
	@:overload(function(compareFn:Windows.Data.Xml.Dom.IXmlNode -> Windows.Data.Xml.Dom.IXmlNode -> Float):Array<Windows.Data.Xml.Dom.IXmlNode> { })
	function sort():Array<Windows.Data.Xml.Dom.IXmlNode>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Data.Xml.Dom.IXmlNode>):Array<Windows.Data.Xml.Dom.IXmlNode> { })
	function splice(start:Float):Array<Windows.Data.Xml.Dom.IXmlNode>;
	function unshift(items:haxe.extern.Rest<Windows.Data.Xml.Dom.IXmlNode>):Float;
	@:overload(function(searchElement:Windows.Data.Xml.Dom.IXmlNode, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Data.Xml.Dom.IXmlNode):Float;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Void):Void;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool, thisArg:Dynamic):Array<Windows.Data.Xml.Dom.IXmlNode> { })
	function filter(callbackfn:Windows.Data.Xml.Dom.IXmlNode -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Bool):Array<Windows.Data.Xml.Dom.IXmlNode>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Data.Xml.Dom.IXmlNode> -> Dynamic):Dynamic;
}
extern class XmlDocument {
	var doctype : Windows.Data.Xml.Dom.XmlDocumentType;
	var documentElement : Windows.Data.Xml.Dom.XmlElement;
	var documentUri : String;
	var implementation : Windows.Data.Xml.Dom.XmlDomImplementation;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function createElement(tagName:String):Windows.Data.Xml.Dom.XmlElement;
	function createDocumentFragment():Windows.Data.Xml.Dom.XmlDocumentFragment;
	function createTextNode(data:String):Windows.Data.Xml.Dom.XmlText;
	function createComment(data:String):Windows.Data.Xml.Dom.XmlComment;
	function createProcessingInstruction(target:String, data:String):Windows.Data.Xml.Dom.XmlProcessingInstruction;
	function createAttribute(name:String):Windows.Data.Xml.Dom.XmlAttribute;
	function createEntityReference(name:String):Windows.Data.Xml.Dom.XmlEntityReference;
	function getElementsByTagName(tagName:String):Windows.Data.Xml.Dom.XmlNodeList;
	function createCDataSection(data:String):Windows.Data.Xml.Dom.XmlCDataSection;
	function createAttributeNS(namespaceUri:Dynamic, qualifiedName:String):Windows.Data.Xml.Dom.XmlAttribute;
	function createElementNS(namespaceUri:Dynamic, qualifiedName:String):Windows.Data.Xml.Dom.XmlElement;
	function getElementById(elementId:String):Windows.Data.Xml.Dom.XmlElement;
	function importNode(node:Windows.Data.Xml.Dom.IXmlNode, deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
	@:overload(function(xml:String, loadSettings:Windows.Data.Xml.Dom.XmlLoadSettings):Void { })
	function loadXml(xml:String):Void;
	function saveToFileAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	@:overload(function(uri:Windows.Foundation.Uri, loadSettings:Windows.Data.Xml.Dom.XmlLoadSettings):Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument> { })
	static function loadFromUriAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument>;
	@:overload(function(file:Windows.Storage.IStorageFile, loadSettings:Windows.Data.Xml.Dom.XmlLoadSettings):Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument> { })
	static function loadFromFileAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument>;
}
typedef IXmlNodeSerializer = {
	var innerText : String;
	function getXml():String;
};
typedef IXmlNode = {
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
};
typedef IXmlDomImplementation = {
	function hasFeature(feature:String, version:Dynamic):Bool;
};
typedef IXmlDocumentType = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var entities : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var name : String;
	var notations : Windows.Data.Xml.Dom.XmlNamedNodeMap;
};
typedef IXmlAttribute = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var name : String;
	var specified : Bool;
	var value : String;
};
typedef IXmlDocumentFragment = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
};
typedef IXmlElement = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var tagName : String;
	function getAttribute(attributeName:String):String;
	function setAttribute(attributeName:String, attributeValue:String):Void;
	function removeAttribute(attributeName:String):Void;
	function getAttributeNode(attributeName:String):Windows.Data.Xml.Dom.XmlAttribute;
	function setAttributeNode(newAttribute:Windows.Data.Xml.Dom.XmlAttribute):Windows.Data.Xml.Dom.XmlAttribute;
	function removeAttributeNode(attributeNode:Windows.Data.Xml.Dom.XmlAttribute):Windows.Data.Xml.Dom.XmlAttribute;
	function getElementsByTagName(tagName:String):Windows.Data.Xml.Dom.XmlNodeList;
	function setAttributeNS(namespaceUri:Dynamic, qualifiedName:String, value:String):Void;
	function getAttributeNS(namespaceUri:Dynamic, localName:String):String;
	function removeAttributeNS(namespaceUri:Dynamic, localName:String):Void;
	function setAttributeNodeNS(newAttribute:Windows.Data.Xml.Dom.XmlAttribute):Windows.Data.Xml.Dom.XmlAttribute;
	function getAttributeNodeNS(namespaceUri:Dynamic, localName:String):Windows.Data.Xml.Dom.XmlAttribute;
};
extern class XmlAttribute {
	var name : String;
	var specified : Bool;
	var value : String;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
typedef IDtdNotation = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var publicId : Dynamic;
	var systemId : Dynamic;
};
typedef IDtdEntity = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var notationName : Dynamic;
	var publicId : Dynamic;
	var systemId : Dynamic;
};
typedef IXmlEntityReference = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
};
typedef IXmlProcessingInstruction = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var data : String;
	var target : String;
};
typedef IXmlCharacterData = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var data : String;
	var length : Float;
	function substringData(offset:Float, count:Float):String;
	function appendData(data:String):Void;
	function insertData(offset:Float, data:String):Void;
	function deleteData(offset:Float, count:Float):Void;
	function replaceData(offset:Float, count:Float, data:String):Void;
};
typedef IXmlComment = {
	>Windows.Data.Xml.Dom.IXmlCharacterData,
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
};
typedef IXmlText = {
	>Windows.Data.Xml.Dom.IXmlCharacterData,
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	function splitText(offset:Float):Windows.Data.Xml.Dom.IXmlText;
};
typedef IXmlCDataSection = {
	>Windows.Data.Xml.Dom.IXmlText,
	>Windows.Data.Xml.Dom.IXmlCharacterData,
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
};
typedef IXmlDocument = {
	>Windows.Data.Xml.Dom.IXmlNode,
	>Windows.Data.Xml.Dom.IXmlNodeSelector,
	>Windows.Data.Xml.Dom.IXmlNodeSerializer,
	var doctype : Windows.Data.Xml.Dom.XmlDocumentType;
	var documentElement : Windows.Data.Xml.Dom.XmlElement;
	var documentUri : String;
	var implementation : Windows.Data.Xml.Dom.XmlDomImplementation;
	function createElement(tagName:String):Windows.Data.Xml.Dom.XmlElement;
	function createDocumentFragment():Windows.Data.Xml.Dom.XmlDocumentFragment;
	function createTextNode(data:String):Windows.Data.Xml.Dom.XmlText;
	function createComment(data:String):Windows.Data.Xml.Dom.XmlComment;
	function createProcessingInstruction(target:String, data:String):Windows.Data.Xml.Dom.XmlProcessingInstruction;
	function createAttribute(name:String):Windows.Data.Xml.Dom.XmlAttribute;
	function createEntityReference(name:String):Windows.Data.Xml.Dom.XmlEntityReference;
	function getElementsByTagName(tagName:String):Windows.Data.Xml.Dom.XmlNodeList;
	function createCDataSection(data:String):Windows.Data.Xml.Dom.XmlCDataSection;
	function createAttributeNS(namespaceUri:Dynamic, qualifiedName:String):Windows.Data.Xml.Dom.XmlAttribute;
	function createElementNS(namespaceUri:Dynamic, qualifiedName:String):Windows.Data.Xml.Dom.XmlElement;
	function getElementById(elementId:String):Windows.Data.Xml.Dom.XmlElement;
	function importNode(node:Windows.Data.Xml.Dom.IXmlNode, deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
};
extern class XmlDocumentType {
	var entities : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var name : String;
	var notations : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
extern class XmlDomImplementation {
	function hasFeature(feature:String, version:Dynamic):Bool;
}
extern class XmlElement {
	var tagName : String;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function getAttribute(attributeName:String):String;
	function setAttribute(attributeName:String, attributeValue:String):Void;
	function removeAttribute(attributeName:String):Void;
	function getAttributeNode(attributeName:String):Windows.Data.Xml.Dom.XmlAttribute;
	function setAttributeNode(newAttribute:Windows.Data.Xml.Dom.XmlAttribute):Windows.Data.Xml.Dom.XmlAttribute;
	function removeAttributeNode(attributeNode:Windows.Data.Xml.Dom.XmlAttribute):Windows.Data.Xml.Dom.XmlAttribute;
	function getElementsByTagName(tagName:String):Windows.Data.Xml.Dom.XmlNodeList;
	function setAttributeNS(namespaceUri:Dynamic, qualifiedName:String, value:String):Void;
	function getAttributeNS(namespaceUri:Dynamic, localName:String):String;
	function removeAttributeNS(namespaceUri:Dynamic, localName:String):Void;
	function setAttributeNodeNS(newAttribute:Windows.Data.Xml.Dom.XmlAttribute):Windows.Data.Xml.Dom.XmlAttribute;
	function getAttributeNodeNS(namespaceUri:Dynamic, localName:String):Windows.Data.Xml.Dom.XmlAttribute;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
extern class XmlDocumentFragment {
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
extern class XmlText {
	var data : String;
	var length : Float;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function splitText(offset:Float):Windows.Data.Xml.Dom.IXmlText;
	function substringData(offset:Float, count:Float):String;
	function appendData(data:String):Void;
	function insertData(offset:Float, data:String):Void;
	function deleteData(offset:Float, count:Float):Void;
	function replaceData(offset:Float, count:Float, data:String):Void;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
extern class XmlComment {
	var data : String;
	var length : Float;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function substringData(offset:Float, count:Float):String;
	function appendData(data:String):Void;
	function insertData(offset:Float, data:String):Void;
	function deleteData(offset:Float, count:Float):Void;
	function replaceData(offset:Float, count:Float, data:String):Void;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
extern class XmlProcessingInstruction {
	var data : String;
	var target : String;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
extern class XmlEntityReference {
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
extern class XmlCDataSection {
	var data : String;
	var length : Float;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function splitText(offset:Float):Windows.Data.Xml.Dom.IXmlText;
	function substringData(offset:Float, count:Float):String;
	function appendData(data:String):Void;
	function insertData(offset:Float, data:String):Void;
	function deleteData(offset:Float, count:Float):Void;
	function replaceData(offset:Float, count:Float, data:String):Void;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
typedef IXmlNamedNodeMap = {
	>Windows.Foundation.Collections.IVectorView<Windows.Data.Xml.Dom.IXmlNode>,
	>Windows.Foundation.Collections.IIterable<Windows.Data.Xml.Dom.IXmlNode>,
	var length : Float;
	function item(index:Float):Windows.Data.Xml.Dom.IXmlNode;
	function getNamedItem(name:String):Windows.Data.Xml.Dom.IXmlNode;
	function setNamedItem(node:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeNamedItem(name:String):Windows.Data.Xml.Dom.IXmlNode;
	function getNamedItemNS(namespaceUri:Dynamic, name:String):Windows.Data.Xml.Dom.IXmlNode;
	function removeNamedItemNS(namespaceUri:Dynamic, name:String):Windows.Data.Xml.Dom.IXmlNode;
	function setNamedItemNS(node:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
};
typedef IXmlNodeList = {
	>Windows.Foundation.Collections.IVectorView<Windows.Data.Xml.Dom.IXmlNode>,
	>Windows.Foundation.Collections.IIterable<Windows.Data.Xml.Dom.IXmlNode>,
	var length : Float;
	function item(index:Float):Windows.Data.Xml.Dom.IXmlNode;
};
typedef IXmlLoadSettings = {
	var elementContentWhiteSpace : Bool;
	var maxElementDepth : Float;
	var prohibitDtd : Bool;
	var resolveExternals : Bool;
	var validateOnParse : Bool;
};
typedef IXmlDocumentIO = {
	@:overload(function(xml:String, loadSettings:Windows.Data.Xml.Dom.XmlLoadSettings):Void { })
	function loadXml(xml:String):Void;
	function saveToFileAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
};
extern class XmlLoadSettings {
	var elementContentWhiteSpace : Bool;
	var maxElementDepth : Float;
	var prohibitDtd : Bool;
	var resolveExternals : Bool;
	var validateOnParse : Bool;
}
typedef IXmlDocumentStatics = {
	@:overload(function(uri:Windows.Foundation.Uri, loadSettings:Windows.Data.Xml.Dom.XmlLoadSettings):Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument> { })
	function loadFromUriAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument>;
	@:overload(function(file:Windows.Storage.IStorageFile, loadSettings:Windows.Data.Xml.Dom.XmlLoadSettings):Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument> { })
	function loadFromFileAsync(file:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.Data.Xml.Dom.XmlDocument>;
};
extern class DtdNotation {
	var publicId : Dynamic;
	var systemId : Dynamic;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
extern class DtdEntity {
	var notationName : Dynamic;
	var publicId : Dynamic;
	var systemId : Dynamic;
	var attributes : Windows.Data.Xml.Dom.XmlNamedNodeMap;
	var childNodes : Windows.Data.Xml.Dom.XmlNodeList;
	var firstChild : Windows.Data.Xml.Dom.IXmlNode;
	var lastChild : Windows.Data.Xml.Dom.IXmlNode;
	var localName : Dynamic;
	var namespaceUri : Dynamic;
	var nextSibling : Windows.Data.Xml.Dom.IXmlNode;
	var nodeName : String;
	var nodeType : Windows.Data.Xml.Dom.NodeType;
	var nodeValue : Dynamic;
	var ownerDocument : Windows.Data.Xml.Dom.XmlDocument;
	var parentNode : Windows.Data.Xml.Dom.IXmlNode;
	var prefix : Dynamic;
	var previousSibling : Windows.Data.Xml.Dom.IXmlNode;
	var innerText : String;
	function hasChildNodes():Bool;
	function insertBefore(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function replaceChild(newChild:Windows.Data.Xml.Dom.IXmlNode, referenceChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function removeChild(childNode:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function appendChild(newChild:Windows.Data.Xml.Dom.IXmlNode):Windows.Data.Xml.Dom.IXmlNode;
	function cloneNode(deep:Bool):Windows.Data.Xml.Dom.IXmlNode;
	function normalize():Void;
	function selectSingleNode(xpath:String):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodes(xpath:String):Windows.Data.Xml.Dom.XmlNodeList;
	function selectSingleNodeNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.IXmlNode;
	function selectNodesNS(xpath:String, namespaces:Dynamic):Windows.Data.Xml.Dom.XmlNodeList;
	function getXml():String;
}
