typedef Services = {
	var spellingServiceEnabled : chrome.types.ChromeSetting;
	var searchSuggestEnabled : chrome.types.ChromeSetting;
	var instantEnabled : chrome.types.ChromeSetting;
	var alternateErrorPagesEnabled : chrome.types.ChromeSetting;
	var safeBrowsingEnabled : chrome.types.ChromeSetting;
	var autofillEnabled : chrome.types.ChromeSetting;
	var translationServiceEnabled : chrome.types.ChromeSetting;
};
typedef Network = {
	var networkPredictionEnabled : chrome.types.ChromeSetting;
};
typedef Websites = {
	var thirdPartyCookiesAllowed : chrome.types.ChromeSetting;
	var referrersEnabled : chrome.types.ChromeSetting;
	var hyperlinkAuditingEnabled : chrome.types.ChromeSetting;
	var protectedContentEnabled : chrome.types.ChromeSetting;
};
extern class Chrome.privacyTopLevel {
	static var services : Services;
	static var network : Network;
	static var websites : Websites;
}
