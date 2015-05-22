typedef Url = {
	function get(object:{ var shortUrl : String; @:optional
	var projection : String; @:optional
	var fields : String; }):HttpRequest<GoogleApiUrlShortenerUrlResource>;
	function insert(object:{ @:optional
	var fields : String; @:optional
	var RequestBody : String; }):HttpRequest<GoogleApiUrlShortenerUrlResource>;
	function list(object:{ @:optional
	var projection : String; @:optional
	var start-token : String; @:optional
	var fields : String; }):HttpRequest<GoogleApiUrlShortenerUrlResource>;
};
typedef GoogleApiUrlShortenerUrlResource = {
	var kind : String;
	var id : String;
	var longUrl : String;
	var status : String;
	var created : String;
	var analytics : { var allTime : GoogleApiUrlShortenerUrlResourceAnalyticsObject; var month : GoogleApiUrlShortenerUrlResourceAnalyticsObject; var week : GoogleApiUrlShortenerUrlResourceAnalyticsObject; var day : GoogleApiUrlShortenerUrlResourceAnalyticsObject; var twoHours : GoogleApiUrlShortenerUrlResourceAnalyticsObject; };
};
typedef GoogleApiUrlShortenerUrlResourceAnalyticsObject = {
	var shortUrlClicks : String;
	var longUrlClicks : String;
	var referrers : Array<GoogleApiUrlShortenerUrlResourceAnalyticsArrayObject>;
	var countries : Array<GoogleApiUrlShortenerUrlResourceAnalyticsArrayObject>;
	var browsers : Array<GoogleApiUrlShortenerUrlResourceAnalyticsArrayObject>;
	var platforms : Array<GoogleApiUrlShortenerUrlResourceAnalyticsArrayObject>;
};
typedef GoogleApiUrlShortenerUrlResourceAnalyticsArrayObject = {
	var count : String;
	var id : String;
};
