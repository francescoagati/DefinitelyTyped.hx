typedef Address = {
	var addressLine : String;
	var adminDistrict : String;
	var countryRegion : String;
	var district : String;
	var formattedAddress : String;
	var locality : String;
	var postalCode : String;
	var postalTown : String;
};
typedef GeocodeLocation = {
	var location : Location;
	var name : String;
	var precision : LocationPrecision;
};
typedef GeocodeRequestOptions = {
	var bounds : LocationRect;
	var callback : GeocodeResult -> Dynamic -> Dynamic;
	var count : Float;
	var errorCallback : GeocodeRequestOptions -> Dynamic;
	var timeout : Float;
	var userData : Dynamic;
	var where : String;
};
typedef GeocodeResult = {
	var parsedAddress : Address;
	var parsedKeyword : String;
	var parsedSeparator : String;
	var results : Array<PlaceResult>;
};
@:enum abstract LocationPrecision(Int) {
	var interpolated = 0;
	var rooftop = 1;
}
@:enum abstract MatchCode(Int) {
	var none = 0;
	var good = 1;
	var ambiguous = 2;
	var upHierarchy = 3;
	var modified = 4;
}
@:enum abstract MatchConfidence(Int) {
	var high = 0;
	var medium = 1;
	var low = 2;
	var unknown = 3;
}
typedef PlaceResult = {
	var bestView : LocationRect;
	var location : GeocodeLocation;
	var locations : Array<GeocodeLocation>;
	var matchCode : MatchCode;
	var matchConfidence : MatchConfidence;
	var name : String;
};
typedef ReverseGeocodeRequestOptions = {
	var callback : PlaceResult -> Dynamic -> Dynamic;
	var errorCallback : ReverseGeocodeRequestOptions -> Dynamic;
	var location : Location;
	var timeout : Float;
	var userData : Dynamic;
};
extern class SearchManager {
	function new(map:Map):Void;
	function geocode(request:GeocodeRequestOptions):Void;
	function reverseGeocode(request:ReverseGeocodeRequestOptions):Void;
	function search(request:SearchRequestOptions):Void;
}
typedef SearchParseResult = {
	var keyword : String;
	var location : GeocodeLocation;
	var matchConfidence : MatchConfidence;
};
typedef SearchRegion = {
	var address : Address;
	var geocodeLocations : Array<GeocodeLocation>;
	var explicitLocation : GeocodeLocation;
	var mapBounds : LocationRect;
	var matchCode : MatchCode;
	var matchConfidence : MatchConfidence;
	var source : String;
};
typedef SearchRequestOptions = {
	var callback : SearchResponse -> Dynamic -> Dynamic;
	var count : Float;
	var errorCallback : SearchRequestOptions -> Dynamic;
	var query : String;
	var startIndex : Float;
	var timeout : Float;
	var entityType : String;
	var userData : Dynamic;
	var what : String;
	var where : String;
};
typedef SearchResponse = {
	var alternateSearchRegions : Array<SearchRegion>;
	var hasMore : Bool;
	var parseResults : Array<SearchParseResult>;
	var responseSummary : SearchResponseSummary;
	var searchRegion : SearchRegion;
	var searchResults : Array<SearchResult>;
};
typedef SearchResponseSummary = {
	var authResultCode : Float;
	var copyright : String;
	var errorMessage : String;
	var statusCode : Float;
	var traceId : Float;
};
typedef SearchResult = {
	var address : Address;
	var city : String;
	var country : String;
	var entityType : String;
	var hoursOfOperation : String;
	var id : Float;
	var location : Location;
	var name : String;
	var phone : String;
	var postalCode : String;
	var reviewCount : Float;
	var userRating : Float;
	var website : String;
};
