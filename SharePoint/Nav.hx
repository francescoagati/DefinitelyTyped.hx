extern class NavTopLevel {
	static var ajaxNavigate : AjaxNavigate;
	static function convertRegularURLtoMDSURL(webUrl:String, fullPath:String):String;
	static function isMDSUrl(url:String):Bool;
	static function isPageUrlValid(url:String):Bool;
	static function isPortalTemplatePage(url:String):Bool;
	static function getAjaxLocationWindow():String;
	static function getSource(?defaultSource:String):String;
	static function getUrlKeyValue(keyName:String, bNoDecode:Bool, url:String, bCaseInsensitive:Bool):String;
	static function getWindowLocationNoHash(hre:String):String;
	static function goToHistoryLink(el:HTMLAnchorElement, strVersion:String):Void;
	static function getGoToLinkUrl(el:HTMLAnchorElement):String;
	static function goToLink(el:HTMLAnchorElement):Void;
	static function goToLinkOrDialogNewWindow(el:HTMLAnchorElement):Void;
	static function goToDiscussion(url:String):Void;
	static function onClickHook(evt:Event, topElm:HTMLElement):Void;
	static function pageUrlValidation(url:String, alertString:String):String;
	static function parseHash(hash:String):Dynamic;
	static function navigate(url:String):Void;
	static function removeMDSQueryParametersFromUrl(url:String):String;
	static function urlFromHashBag(hashObject:Dynamic):String;
	static function wantsNewTab(evt:Event):Bool;
}
