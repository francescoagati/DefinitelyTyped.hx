typedef IResourceLoader = {
	function getString(resource:String):String;
};
extern class ResourceLoader {
	@:overload(function():Void { })
	function new(name:String):Void;
	function getString(resource:String):String;
	static function getStringForReference(uri:Windows.Foundation.Uri):String;
}
typedef IResourceLoaderStatics = {
	function getStringForReference(uri:Windows.Foundation.Uri):String;
};
typedef IResourceLoaderFactory = {
	function createResourceLoaderByName(name:String):Windows.ApplicationModel.Resources.ResourceLoader;
};
