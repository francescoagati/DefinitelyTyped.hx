extern class SearchConfigurationPortability extends SP.ClientObject {
	function new(context:SP.ClientContext):Void;
	var get_importWarnings : Void -> String;
	var exportSearchConfiguration : Administration.SearchObjectOwner -> SP.JsonObjectResult;
	var importSearchConfiguration : Administration.SearchObjectOwner -> String -> Void;
	var deleteSearchConfiguration : Administration.SearchObjectOwner -> String -> Void;
}
extern class SearchConfigurationPortabilityPropertyNames {
	static var importWarnings : String;
}
