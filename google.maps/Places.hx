extern class AutocompleteService extends MVCObject {
	function new():Void;
	function getPlacePredictions(request:AutocompletionRequest, callback:Array<AutocompletePrediction> -> PlacesServiceStatus -> Void):Void;
	function getQueryPredictions(request:QueryAutocompletionRequest, callback:Array<QueryAutocompletePrediction> -> PlacesServiceStatus -> Void):Void;
}
typedef AutocompletionRequest = {
	var input : String;
	@:optional
	var bounds : LatLngBounds;
	@:optional
	var componentRestrictions : ComponentRestrictions;
	@:optional
	var location : LatLng;
	@:optional
	var offset : Float;
	@:optional
	var radius : Float;
	@:optional
	var types : Array<String>;
};
typedef QueryAutocompletionRequest = {
	var input : String;
	@:optional
	var bounds : LatLngBounds;
	@:optional
	var location : LatLng;
	@:optional
	var offset : Float;
	@:optional
	var radius : Float;
};
typedef AutocompletePrediction = {
	var description : String;
	var matched_substrings : Array<PredictionSubstring>;
	var place_id : String;
	var terms : Array<PredictionTerm>;
	var types : Array<String>;
};
typedef PredictionTerm = {
	var offset : Float;
	var value : String;
};
typedef PredictionSubstring = {
	var length : Float;
	var offset : Float;
};
typedef QueryAutocompletePrediction = {
	var description : String;
	var matched_substrings : Array<PredictionSubstring>;
	var place_id : String;
	var terms : Array<PredictionTerm>;
};
extern class Autocomplete extends MVCObject {
	function new(inputField:HTMLInputElement, ?opts:AutocompleteOptions):Void;
	function getBounds():LatLngBounds;
	function getPlace():PlaceResult;
	function setBounds(bounds:LatLngBounds):Void;
	function setComponentRestrictions(restrictions:ComponentRestrictions):Void;
	function setTypes(types:Array<String>):Void;
}
typedef AutocompleteOptions = {
	@:optional
	var bounds : LatLngBounds;
	@:optional
	var componentRestrictions : ComponentRestrictions;
	@:optional
	var types : Array<String>;
};
typedef ComponentRestrictions = {
	var country : String;
};
typedef PhotoOptions = {
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
};
typedef PlaceAspectRating = {
	var rating : Float;
	var type : String;
};
typedef PlaceDetailsRequest = {
	var placeId : String;
	@:optional
	var reference : String;
};
typedef PlaceGeometry = {
	var location : LatLng;
	var viewport : LatLngBounds;
};
typedef PlacePhoto = {
	var height : Float;
	var html_attributions : Array<String>;
	var width : Float;
	function getUrl(opts:PhotoOptions):String;
};
typedef PlaceResult = {
	var address_components : Array<GeocoderAddressComponent>;
	var aspects : Array<PlaceAspectRating>;
	var formatted_address : String;
	var formatted_phone_number : String;
	var geometry : PlaceGeometry;
	var html_attributions : Array<String>;
	var icon : String;
	@:optional
	var id : String;
	var international_phone_number : String;
	var name : String;
	var permanently_closed : Bool;
	var photos : Array<PlacePhoto>;
	var place_id : String;
	var price_level : Float;
	var rating : Float;
	@:optional
	var reference : String;
	var reviews : Array<PlaceReview>;
	var types : Array<String>;
	var url : String;
	var vicinity : String;
	var website : String;
};
typedef PlaceReview = {
	var aspects : Array<PlaceAspectRating>;
	var author_name : String;
	var author_url : String;
	var language : String;
	var text : String;
};
typedef PlaceSearchRequest = {
	var bounds : LatLngBounds;
	var keyword : String;
	var location : LatLng;
	@:optional
	var maxPriceLevel : Float;
	@:optional
	var minPriceLevel : Float;
	var name : String;
	var openNow : Bool;
	var radius : Float;
	var rankBy : RankBy;
	var types : Array<String>;
};
typedef PlaceSearchPagination = {
	function nextPage():Void;
	var hasNextPage : Bool;
};
extern class PlacesService {
	@:overload(function(attrContainer:Map):Void { })
	function new(attrContainer:HTMLDivElement):Void;
	function getDetails(request:PlaceDetailsRequest, callback:PlaceResult -> PlacesServiceStatus -> Void):Void;
	function nearbySearch(request:PlaceSearchRequest, callback:Array<PlaceResult> -> PlacesServiceStatus -> PlaceSearchPagination -> Void):Void;
	function radarSearch(request:RadarSearchRequest, callback:Array<PlaceResult> -> PlacesServiceStatus -> Void):Void;
	function textSearch(request:TextSearchRequest, callback:Array<PlaceResult> -> PlacesServiceStatus -> Void):Void;
}
@:enum abstract PlacesServiceStatus(Int) {
	var INVALID_REQUEST = 0;
	var OK = 1;
	var OVER_QUERY_LIMIT = 2;
	var REQUEST_DENIED = 3;
	var UNKNOWN_ERROR = 4;
	var ZERO_RESULTS = 5;
}
typedef RadarSearchRequest = {
	var bounds : LatLngBounds;
	var keyword : String;
	var location : LatLng;
	var name : String;
	var radius : Float;
	var types : Array<String>;
};
@:enum abstract RankBy(Int) {
	var DISTANCE = 0;
	var PROMINENCE = 1;
}
extern class SearchBox extends MVCObject {
	function new(inputField:HTMLInputElement, ?opts:SearchBoxOptions):Void;
	function getBounds():LatLngBounds;
	function setBounds(bounds:LatLngBounds):Void;
	function getPlaces():Array<PlaceResult>;
}
typedef SearchBoxOptions = {
	var bounds : LatLngBounds;
};
typedef TextSearchRequest = {
	var bounds : LatLngBounds;
	var location : LatLng;
	var query : String;
	var radius : Float;
	var types : Array<String>;
};
