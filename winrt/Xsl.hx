typedef IXsltProcessor = {
	function transformToString(inputNode:Windows.Data.Xml.Dom.IXmlNode):String;
};
typedef IXsltProcessorFactory = {
	function createInstance(document:Windows.Data.Xml.Dom.XmlDocument):Windows.Data.Xml.Xsl.XsltProcessor;
};
extern class XsltProcessor {
	function new(document:Windows.Data.Xml.Dom.XmlDocument):Void;
	function transformToString(inputNode:Windows.Data.Xml.Dom.IXmlNode):String;
}
