extern class Notification {
	function new(containerId:SPNotifications.ContainerID, strHtml:String, ?bSticky:Bool, ?strTooltip:String, ?onclickHandler:Void -> Void, ?extraData:SPStatusNotificationData):Void;
	function get_id():String;
	function Show(bNoAnimate:Bool):Void;
	function Hide(bNoAnimate:Bool):Void;
}
extern class NotificationContainer {
	function new(id:Float, element:Dynamic, layer:Float, ?notificationLimit:Float):Void;
	function Clear():Void;
	function GetCount():Float;
	function SetEventHandler(eventId:SPNotifications.EventID, eventHandler:Dynamic):Void;
}
extern class NotifyTopLevel {
	static function addNotification(strHtml:String, bSticky:Bool):String;
	static function removeNotification(nid:String):Void;
	static function showLoadingNotification(bSticky:Bool):String;
}
extern class Status {
	static function addStatus(strTitle:String, ?strHtml:String, ?atBegining:Bool):String;
	static function appendStatus(sid:String, strTitle:String, strHtml:String):String;
	static function updateStatus(sid:String, strHtml:String):Void;
	static function setStatusPriColor(sid:String, strColor:String):Void;
	static function removeStatus(sid:String):Void;
	static function removeAllStatus(hide:Bool):Void;
	function new():Void;
}
