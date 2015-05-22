typedef Pagespeedapi = {
	function runpagespeed(object:{ var url : String; @:optional
	var locale : String; @:optional
	var rule : Array<String>; @:optional
	var screenshot : Bool; @:optional
	var stategy : String; @:optional
	var fields : String; }):HttpRequest<GoogleApiPageSpeedOnlineResource>;
};
typedef GoogleApiPageSpeedOnlineResource = {
	var kind : String;
	var id : String;
	var responseCode : Float;
	var title : String;
	var score : Float;
	var pageStats : { var numberResources : Float; var numberHosts : Float; var totalRequestBytes : String; var numberStaticResources : Float; var htmlResponseBytes : String; var textResponseBytes : String; var cssResponsebytes : String; var imageResponseBytes : String; var javascriptResponsebytes : String; var flashResponseBytes : String; var otherResponsebytes : String; var numberJsResources : Float; var numberCssResources : Float; };
	var formattedResults : { var locale : String; var ruleResults : { var AvoidBadRequests : GoogleApiPageSpeedOnlineRuleResource; var AvoidCharsetInMetaTag : GoogleApiPageSpeedOnlineRuleResource; var AvoidCssImport : GoogleApiPageSpeedOnlineRuleResource; var AvoidLandingPageRedirects : GoogleApiPageSpeedOnlineRuleResource; var AvoidLongRunningScripts : GoogleApiPageSpeedOnlineRuleResource; var DeferParsingJavaScript : GoogleApiPageSpeedOnlineRuleResource; var EnableGzipCompression : GoogleApiPageSpeedOnlineRuleResource; var InlineSmallCss : GoogleApiPageSpeedOnlineRuleResource; var InlineSmallJavaScript : GoogleApiPageSpeedOnlineRuleResource; var LeverageBrowserCaching : GoogleApiPageSpeedOnlineRuleResource; var MinifyCss : GoogleApiPageSpeedOnlineRuleResource; var MinifyHTML : GoogleApiPageSpeedOnlineRuleResource; var MinifyJavaScript : GoogleApiPageSpeedOnlineRuleResource; var MinimizeRedirects : GoogleApiPageSpeedOnlineRuleResource; var MinimizeRequestSize : GoogleApiPageSpeedOnlineRuleResource; var OptimizeImages : GoogleApiPageSpeedOnlineRuleResource; var OptimizeTheOrderOfStylesAndScripts : GoogleApiPageSpeedOnlineRuleResource; var PreferAsyncResources : GoogleApiPageSpeedOnlineRuleResource; var PutCssInTheDocumentHead : GoogleApiPageSpeedOnlineRuleResource; var RemoveQueryStringsFromStaticResources : GoogleApiPageSpeedOnlineRuleResource; var ServerResourcesFromAConsistentUrl : GoogleApiPageSpeedOnlineRuleResource; var ServerScaledImages : GoogleApiPageSpeedOnlineRuleResource; var ServeResponseTime : GoogleApiPageSpeedOnlineRuleResource; var SpecifyACacheValidator : GoogleApiPageSpeedOnlineRuleResource; var SpecifyAVaryAcceptEncodingHeader : GoogleApiPageSpeedOnlineRuleResource; var SpecifyCharsetEarly : GoogleApiPageSpeedOnlineRuleResource; var SpecifyImageDimensions : GoogleApiPageSpeedOnlineRuleResource; var SpriteImages : GoogleApiPageSpeedOnlineRuleResource; }; };
	var version : { var major : Float; var minor : Float; };
	var invalidRules : Array<String>;
};
typedef GoogleApiPageSpeedOnlineRuleResource = {
	var localizedRuleName : String;
	var ruleScore : Float;
	var ruleImpact : Float;
	var urlBlocks : Array<{ var header : { var format : String; var args : Array<{ var type : String; var value : String; }>; }; var urls : Array<{ var result : { var format : String; var args : Array<{ var type : String; var value : String; }>; }; var details : Array<{ var format : String; var args : Array<{ var type : String; var value : String; }>; }>; }>; }>;
};
