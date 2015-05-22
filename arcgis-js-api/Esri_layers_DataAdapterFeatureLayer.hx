extern class DataAdapterFeatureLayer extends FeatureLayer {
	var dataAdapter : Dynamic;
	var dataAdapterQuery : Dynamic;
	var dataAttributes : Array<String>;
	var locationProvider : LocationProviderBase;
	function new(dataAdapter:Dynamic, options:esri.DataAdapterFeatureLayerOptions):Void;
}
