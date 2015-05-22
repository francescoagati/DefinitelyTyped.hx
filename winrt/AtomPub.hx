typedef IResourceCollection = {
	>Windows.Web.Syndication.ISyndicationNode,
	var accepts : Windows.Foundation.Collections.IVectorView<String>;
	var categories : Windows.Foundation.Collections.IVectorView<Windows.Web.Syndication.SyndicationCategory>;
	var title : Windows.Web.Syndication.ISyndicationText;
	var uri : Windows.Foundation.Uri;
};
extern class ResourceCollection {
	var accepts : Windows.Foundation.Collections.IVectorView<String>;
	var categories : Windows.Foundation.Collections.IVectorView<Windows.Web.Syndication.SyndicationCategory>;
	var title : Windows.Web.Syndication.ISyndicationText;
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
typedef IWorkspace = {
	>Windows.Web.Syndication.ISyndicationNode,
	var collections : Windows.Foundation.Collections.IVectorView<Windows.Web.AtomPub.ResourceCollection>;
	var title : Windows.Web.Syndication.ISyndicationText;
};
extern class Workspace {
	var collections : Windows.Foundation.Collections.IVectorView<Windows.Web.AtomPub.ResourceCollection>;
	var title : Windows.Web.Syndication.ISyndicationText;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef IServiceDocument = {
	>Windows.Web.Syndication.ISyndicationNode,
	var workspaces : Windows.Foundation.Collections.IVectorView<Windows.Web.AtomPub.Workspace>;
};
extern class ServiceDocument {
	var workspaces : Windows.Foundation.Collections.IVectorView<Windows.Web.AtomPub.Workspace>;
	var attributeExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.SyndicationAttribute>;
	var baseUri : Windows.Foundation.Uri;
	var elementExtensions : Windows.Foundation.Collections.IVector<Windows.Web.Syndication.ISyndicationNode>;
	var language : String;
	var nodeName : String;
	var nodeNamespace : String;
	var nodeValue : String;
	function getXmlDocument(format:Windows.Web.Syndication.SyndicationFormat):Windows.Data.Xml.Dom.XmlDocument;
}
typedef IAtomPubClient = {
	>Windows.Web.Syndication.ISyndicationClient,
	function retrieveServiceDocumentAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.AtomPub.ServiceDocument, Windows.Web.Syndication.RetrievalProgress>;
	function retrieveMediaResourceAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IInputStream, Windows.Web.Syndication.RetrievalProgress>;
	function retrieveResourceAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.RetrievalProgress>;
	function createResourceAsync(uri:Windows.Foundation.Uri, description:String, item:Windows.Web.Syndication.SyndicationItem):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress>;
	function createMediaResourceAsync(uri:Windows.Foundation.Uri, mediaType:String, description:String, mediaStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress>;
	function updateMediaResourceAsync(uri:Windows.Foundation.Uri, mediaType:String, mediaStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function updateResourceAsync(uri:Windows.Foundation.Uri, item:Windows.Web.Syndication.SyndicationItem):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function updateResourceItemAsync(item:Windows.Web.Syndication.SyndicationItem):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function deleteResourceAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function deleteResourceItemAsync(item:Windows.Web.Syndication.SyndicationItem):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function cancelAsyncOperations():Void;
};
extern class AtomPubClient {
	@:overload(function():Void { })
	function new(serverCredential:Windows.Security.Credentials.PasswordCredential):Void;
	var bypassCacheOnRetrieve : Bool;
	var maxResponseBufferSize : Float;
	var proxyCredential : Windows.Security.Credentials.PasswordCredential;
	var serverCredential : Windows.Security.Credentials.PasswordCredential;
	var timeout : Float;
	function retrieveServiceDocumentAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.AtomPub.ServiceDocument, Windows.Web.Syndication.RetrievalProgress>;
	function retrieveMediaResourceAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IInputStream, Windows.Web.Syndication.RetrievalProgress>;
	function retrieveResourceAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.RetrievalProgress>;
	function createResourceAsync(uri:Windows.Foundation.Uri, description:String, item:Windows.Web.Syndication.SyndicationItem):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress>;
	function createMediaResourceAsync(uri:Windows.Foundation.Uri, mediaType:String, description:String, mediaStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationItem, Windows.Web.Syndication.TransferProgress>;
	function updateMediaResourceAsync(uri:Windows.Foundation.Uri, mediaType:String, mediaStream:Windows.Storage.Streams.IInputStream):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function updateResourceAsync(uri:Windows.Foundation.Uri, item:Windows.Web.Syndication.SyndicationItem):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function updateResourceItemAsync(item:Windows.Web.Syndication.SyndicationItem):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function deleteResourceAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function deleteResourceItemAsync(item:Windows.Web.Syndication.SyndicationItem):Windows.Foundation.IAsyncActionWithProgress<Windows.Web.Syndication.TransferProgress>;
	function cancelAsyncOperations():Void;
	function setRequestHeader(name:String, value:String):Void;
	function retrieveFeedAsync(uri:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperationWithProgress<Windows.Web.Syndication.SyndicationFeed, Windows.Web.Syndication.RetrievalProgress>;
}
typedef IAtomPubClientFactory = {
	function createAtomPubClientWithCredentials(serverCredential:Windows.Security.Credentials.PasswordCredential):Windows.Web.AtomPub.AtomPubClient;
};
