@:enum abstract IndexedResourceType(Int) {
	var string = 0;
	var path = 1;
}
typedef IResourceIndexer = {
	function indexFilePath(filePath:Windows.Foundation.Uri):Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate;
	function indexFileContentsAsync(file:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate>>;
};
extern class IndexedResourceCandidate {
	var metadata : Windows.Foundation.Collections.IMapView<String, String>;
	var qualifiers : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Management.IndexedResourceQualifier>;
	var type : Windows.ApplicationModel.Resources.Management.IndexedResourceType;
	var uri : Windows.Foundation.Uri;
	var valueAsString : String;
	function getQualifierValue(qualifierName:String):String;
}
typedef IResourceIndexerFactory = {
	function createResourceIndexer(projectRoot:Windows.Foundation.Uri):Windows.ApplicationModel.Resources.Management.ResourceIndexer;
};
extern class ResourceIndexer {
	function new(projectRoot:Windows.Foundation.Uri):Void;
	function indexFilePath(filePath:Windows.Foundation.Uri):Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate;
	function indexFileContentsAsync(file:Windows.Foundation.Uri):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Management.IndexedResourceCandidate>>;
}
typedef IIndexedResourceQualifier = {
	var qualifierName : String;
	var qualifierValue : String;
};
typedef IIndexedResourceCandidate = {
	var metadata : Windows.Foundation.Collections.IMapView<String, String>;
	var qualifiers : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Resources.Management.IndexedResourceQualifier>;
	var type : Windows.ApplicationModel.Resources.Management.IndexedResourceType;
	var uri : Windows.Foundation.Uri;
	var valueAsString : String;
	function getQualifierValue(qualifierName:String):String;
};
extern class IndexedResourceQualifier {
	var qualifierName : String;
	var qualifierValue : String;
}
