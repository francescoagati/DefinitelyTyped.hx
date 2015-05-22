extern class ShellTopLevel {
	static function showItemInFolder(fullPath:String):Void;
	static function openItem(fullPath:String):Void;
	static function openExternal(url:String):Void;
	static function moveItemToTrash(fullPath:String):Void;
	static function beep():Void;
}
typedef Window = {
	function open(url:String, ?frameName:String, ?features:String):GitHubElectron.BrowserWindowProxy;
};
typedef File = {
	var path : String;
};
