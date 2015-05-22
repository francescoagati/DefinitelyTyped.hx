extern class Chrome.desktopCaptureTopLevel {
	static function chooseDesktopMedia(sources:Array<String>, ?targetTab:chrome.tabs.Tab, ?callback:String -> Void):Void;
	static function cancelChooseDesktopMedia(desktopMediaRequestId:Float):Void;
}
