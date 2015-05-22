@:enum abstract ContainerID(Int) {
	var Basic = 0;
	var Status = 1;
}
@:enum abstract EventID(Int) {
	var OnShow = 0;
	var OnHide = 1;
	var OnDisplayNotification = 2;
	var OnRemoveNotification = 3;
	var OnNotificationCountChanged = 4;
}
extern class SPStatusNotificationData {
	function new(text:String, subText:String, imageUrl:String, sip:String):Void;
}
