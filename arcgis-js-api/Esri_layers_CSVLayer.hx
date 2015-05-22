extern class CSVLayer extends FeatureLayer {
	var columnDelimiter : String;
	var latitudeFieldName : String;
	var longitudeFieldName : String;
	var url : String;
	function new(url:String, ?options:esri.CSVLayerOptions):Void;
}
