extern class StandardGeographyQueryLocationProvider extends LocationProviderRemoteBase {
	var geographyQueryTemplate : String;
	var queryParameters : Dynamic;
	var standardGeographyQueryTask : StandardGeographyQueryTask;
	function new(options:esri.StandardGeographyQueryLocationProviderOptions):Void;
}
