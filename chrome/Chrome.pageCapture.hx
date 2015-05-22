typedef SaveDetails = {
	var tabId : Float;
};
extern class Chrome.pageCaptureTopLevel {
	static function saveAsMHTML(details:SaveDetails, callback:Dynamic -> Void):Void;
}
