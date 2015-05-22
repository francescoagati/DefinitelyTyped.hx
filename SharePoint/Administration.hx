extern class DocumentCrawlLog extends SP.ClientObject {
	function new(context:SP.ClientContext, site:SP.Site):Void;
	var getCrawledUrls : Bool -> { var High : Float; var Low : Float; } -> String -> Bool -> Float -> Float -> Float -> Date -> Date -> SP.JsonObjectResult;
}
extern class SearchObjectOwner extends SP.ClientObject {
	function new(context:SP.ClientContext, lowestCurrentLevelToUse:SearchObjectLevel):Void;
}
@:enum abstract SearchObjectLevel(Int) {
	var spWeb = 0;
	var spSite = 1;
	var spSiteSubscription = 2;
	var ssa = 3;
}
