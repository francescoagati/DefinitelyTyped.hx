typedef RetrievalProgress = {
	var bytesRetrieved : Float;
	var totalBytesToRetrieve : Float;
};
typedef TransferProgress = {
	var bytesSent : Float;
	var totalBytesToSend : Float;
	var bytesRetrieved : Float;
	var totalBytesToRetrieve : Float;
};
@:enum abstract SyndicationFormat(Int) {
	var atom10 = 0;
	var rss20 = 1;
	var rss10 = 2;
	var rss092 = 3;
	var rss091 = 4;
	var atom03 = 5;
}
@:enum abstract SyndicationErrorStatus(Int) {
	var unknown = 0;
	var missingRequiredElement = 1;
	var missingRequiredAttribute = 2;
	var invalidXml = 3;
	var unexpectedContent = 4;
	var unsupportedFormat = 5;
}
typedef ISyndicationAttribute = {
	var name : String;
	var namespace : String;
	var value : String;
};
extern class SyndicationAttribute {
	@:overload(function():Void { })
	function new(attributeName:String, attributeNamespace:String, attributeValue:String):Void;
	var name : String;
	var namespace : String;
	var value : String;
}
typedef ISyndicationAttributeFactory = {
	function createSyndicationAttribute(attributeName:String, attributeNamespace:String, attributeValue:String):Windows.Web.Syndication.SyndicationAttribute;
};
typedef ISyndicationNode = {
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
};
extern class SyndicationNode {
	@:overload(function():Void { })
	function new(nodeName:String, nodeNamespace:String, nodeValue:String):Void;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef ISyndicationNodeFactory = {
	function createSyndicationNode(nodeName:String, nodeNamespace:String, nodeValue:String):Windows.Web.Syndication.SyndicationNode;
};
typedef ISyndicationGenerator = {
	var text : String;
	var uri : Windows.Foundation.Uri;
	var version : String;
};
extern class SyndicationGenerator {
	@:overload(function():Void { })
	function new(text:String):Void;
	var text : String;
	var uri : Windows.Foundation.Uri;
	var version : String;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef ISyndicationGeneratorFactory = {
	function createSyndicationGenerator(text:String):Windows.Web.Syndication.SyndicationGenerator;
};
typedef ISyndicationText = {
	>Windows.Web.Syndication.ISyndicationNode,
	var text : String;
	var type : String;
	var xml : Windows.Data.Xml.Dom.XmlDocument;
};
extern class SyndicationText {
	@:overload(function(text:String, type:Windows.Web.Syndication.SyndicationTextType):Void { })
	@:overload(function():Void { })
	function new(text:String):Void;
	var text : String;
	var type : String;
	var xml : Windows.Data.Xml.Dom.XmlDocument;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
@:enum abstract SyndicationTextType(Int) {
	var text = 0;
	var html = 1;
	var xhtml = 2;
}
typedef ISyndicationTextFactory = {
	@:overload(function(text:String, type:Windows.Web.Syndication.SyndicationTextType):Windows.Web.Syndication.SyndicationText { })
	function createSyndicationText(text:String):Windows.Web.Syndication.SyndicationText;
};
typedef ISyndicationContent = {
	>Windows.Web.Syndication.ISyndicationText,
	>Windows.Web.Syndication.ISyndicationNode,
	var sourceUri : Windows.Foundation.Uri;
};
extern class SyndicationContent {
	@:overload(function(sourceUri:Windows.Foundation.Uri):Void { })
	@:overload(function():Void { })
	function new(text:String, type:Windows.Web.Syndication.SyndicationTextType):Void;
	var text : String;
	var type : String;
	var xml : Windows.Data.Xml.Dom.XmlDocument;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	var sourceUri : Windows.Foundation.Uri;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef ISyndicationContentFactory = {
	@:overload(function(sourceUri:Windows.Foundation.Uri):Windows.Web.Syndication.SyndicationContent { })
	function createSyndicationContent(text:String, type:Windows.Web.Syndication.SyndicationTextType):Windows.Web.Syndication.SyndicationContent;
};
typedef ISyndicationLink = {
	>Windows.Web.Syndication.ISyndicationNode,
	var length : Float;
	var mediaType : String;
	var relationship : String;
	var resourceLanguage : String;
	var title : String;
	var uri : Windows.Foundation.Uri;
};
extern class SyndicationLink {
	@:overload(function(uri:Windows.Foundation.Uri, relationship:String, title:String, mediaType:String, length:Float):Void { })
	@:overload(function():Void { })
	function new(uri:Windows.Foundation.Uri):Void;
	var length : Float;
	var mediaType : String;
	var relationship : String;
	var resourceLanguage : String;
	var title : String;
	var uri : Windows.Foundation.Uri;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef ISyndicationLinkFactory = {
	@:overload(function(uri:Windows.Foundation.Uri, relationship:String, title:String, mediaType:String, length:Float):Windows.Web.Syndication.SyndicationLink { })
	function createSyndicationLink(uri:Windows.Foundation.Uri):Windows.Web.Syndication.SyndicationLink;
};
typedef ISyndicationPerson = {
	>Windows.Web.Syndication.ISyndicationNode,
	var email : String;
	var name : String;
	var uri : Windows.Foundation.Uri;
};
extern class SyndicationPerson {
	@:overload(function(name:String, email:String, uri:Windows.Foundation.Uri):Void { })
	@:overload(function():Void { })
	function new(name:String):Void;
	var email : String;
	var name : String;
	var uri : Windows.Foundation.Uri;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef ISyndicationPersonFactory = {
	@:overload(function(name:String, email:String, uri:Windows.Foundation.Uri):Windows.Web.Syndication.SyndicationPerson { })
	function createSyndicationPerson(name:String):Windows.Web.Syndication.SyndicationPerson;
};
typedef ISyndicationCategory = {
	>Windows.Web.Syndication.ISyndicationNode,
	var label : String;
	var scheme : String;
	var term : String;
};
extern class SyndicationCategory {
	@:overload(function(term:String, scheme:String, label:String):Void { })
	@:overload(function():Void { })
	function new(term:String):Void;
	var label : String;
	var scheme : String;
	var term : String;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef ISyndicationCategoryFactory = {
	@:overload(function(term:String, scheme:String, label:String):Windows.Web.Syndication.SyndicationCategory { })
	function createSyndicationCategory(term:String):Windows.Web.Syndication.SyndicationCategory;
};
typedef ISyndicationItem = {
	>Windows.Web.Syndication.ISyndicationNode,
	var authors : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationPerson>;
	var categories : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationCategory>;
	var commentsUri : Windows.Foundation.Uri;
	var content : Windows.Web.Syndication.SyndicationContent;
	var contributors : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationPerson>;
	var eTag : String;
	var editMediaUri : Windows.Foundation.Uri;
	var editUri : Windows.Foundation.Uri;
	var id : String;
	var itemUri : Windows.Foundation.Uri;
	var lastUpdatedTime : Date;
	var links : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationLink>;
	var publishedDate : Date;
	var rights : Windows.Web.Syndication.ISyndicationText;
	var source : Windows.Web.Syndication.SyndicationFeed;
	var summary : Windows.Web.Syndication.ISyndicationText;
	var title : Windows.Web.Syndication.ISyndicationText;
	function load(item:String):Void;
	function loadFromXml(itemDocument:Windows.Data.Xml.Dom.XmlDocument):Void;
};
extern class SyndicationFeed {
	@:overload(function():Void { })
	function new(title:String, subtitle:String, uri:Windows.Foundation.Uri):Void;
	var authors : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationPerson>;
	var categories : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationCategory>;
	var contributors : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationPerson>;
	var firstUri : Windows.Foundation.Uri;
	var generator : Windows.Web.Syndication.SyndicationGenerator;
	var iconUri : Windows.Foundation.Uri;
	var id : String;
	var imageUri : Windows.Foundation.Uri;
	var items : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationItem>;
	var lastUpdatedTime : Date;
	var lastUri : Windows.Foundation.Uri;
	var links : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationLink>;
	var nextUri : Windows.Foundation.Uri;
	var previousUri : Windows.Foundation.Uri;
	var rights : Windows.Web.Syndication.ISyndicationText;
	var sourceFormat : Windows.Web.Syndication.SyndicationFormat;
	var subtitle : Windows.Web.Syndication.ISyndicationText;
	var title : Windows.Web.Syndication.ISyndicationText;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function load(feed:String):Void;
	function loadFromXml(feedDocument:Windows.Data.Xml.Dom.XmlDocument):Void;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
extern class SyndicationItem {
	@:overload(function():Void { })
	function new(title:String, content:Windows.Web.Syndication.SyndicationContent, uri:Windows.Foundation.Uri):Void;
	var authors : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationPerson>;
	var categories : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationCategory>;
	var commentsUri : Windows.Foundation.Uri;
	var content : Windows.Web.Syndication.SyndicationContent;
	var contributors : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationPerson>;
	var eTag : String;
	var editMediaUri : Windows.Foundation.Uri;
	var editUri : Windows.Foundation.Uri;
	var id : String;
	var itemUri : Windows.Foundation.Uri;
	var lastUpdatedTime : Date;
	var links : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationLink>;
	var publishedDate : Date;
	var rights : Windows.Web.Syndication.ISyndicationText;
	var source : Windows.Web.Syndication.SyndicationFeed;
	var summary : Windows.Web.Syndication.ISyndicationText;
	var title : Windows.Web.Syndication.ISyndicationText;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function load(item:String):Void;
	function loadFromXml(itemDocument:Windows.Data.Xml.Dom.XmlDocument):Void;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef ISyndicationItemFactory = {
	function createSyndicationItem(title:String, content:Windows.Web.Syndication.SyndicationContent, uri:Windows.Foundation.Uri):Windows.Web.Syndication.SyndicationItem;
};
typedef ISyndicationFeed = {
	>Windows.Web.Syndication.ISyndicationNode,
	var authors : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationPerson>;
	var categories : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationCategory>;
	var contributors : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationPerson>;
	var firstUri : Windows.Foundation.Uri;
	var generator : Windows.Web.Syndication.SyndicationGenerator;
	var iconUri : Windows.Foundation.Uri;
	var id : String;
	var imageUri : Windows.Foundation.Uri;
	var items : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationItem>;
	var lastUpdatedTime : Date;
	var lastUri : Windows.Foundation.Uri;
	var links : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationLink>;
	var nextUri : Windows.Foundation.Uri;
	var previousUri : Windows.Foundation.Uri;
	var rights : Windows.Web.Syndication.ISyndicationText;
	var sourceFormat : Windows.Web.Syndication.SyndicationFormat;
	var subtitle : Windows.Web.Syndication.ISyndicationText;
	var title : Windows.Web.Syndication.ISyndicationText;
	function load(feed:String):Void;
	function loadFromXml(feedDocument:Windows.Data.Xml.Dom.XmlDocument):Void;
};
typedef ISyndicationFeedFactory = {
	function createSyndicationFeed(title:String, subtitle:String, uri:Windows.Foundation.Uri):Windows.Web.Syndication.SyndicationFeed;
};
typedef ISyndicationClient = {
	var bypassCacheOnRetrieve : Bool;
	var maxResponseBufferSize : Float;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	var timeout : Float;
	function setRequestHeader(name:String, value:String):Void;
	function retrieveFeedAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationFeed, Windows.Web.Syndication.RetrievalProgress>;
};
extern class SyndicationClient {
	@:overload(function():Void { })
	function new(serverCredential:Windows.Security.Credentials.PasswordCredential):Void;
	var bypassCacheOnRetrieve : Bool;
	var maxResponseBufferSize : Float;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	var timeout : Float;
	function setRequestHeader(name:String, value:String):Void;
	function retrieveFeedAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationFeed, Windows.Web.Syndication.RetrievalProgress>;
}
typedef ISyndicationClientFactory = {
	function createSyndicationClient(serverCredential:Windows.Security.Credentials.PasswordCredential):Windows.Web.Syndication.SyndicationClient;
};
typedef ISyndicationErrorStatics = {
	function getStatus(hresult:Float):Windows.Web.Syndication.SyndicationErrorStatus;
};
extern class SyndicationError {
	static function getStatus(hresult:Float):Windows.Web.Syndication.SyndicationErrorStatus;
}
