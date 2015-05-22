@:enum abstract PushNotificationType(Int) {
	var toast = 0;
	var tile = 1;
	var badge = 2;
	var raw = 3;
}
typedef IPushNotificationChannelManagerStatics = {
	@:overload(function(applicationId:String):Windows.Foundation.IAsyncOperation<Windows.Networking.PushNotifications.PushNotificationChannel> { })
	function createPushNotificationChannelForApplicationAsync():Windows.Foundation.IAsyncOperation<Windows.Networking.PushNotifications.PushNotificationChannel>;
	function createPushNotificationChannelForSecondaryTileAsync(tileId:String):Windows.Foundation.IAsyncOperation<Windows.Networking.PushNotifications.PushNotificationChannel>;
};
extern class PushNotificationChannel {
	var expirationTime : Date;
	var uri : String;
	function close():Void;
	var onpushnotificationreceived : Dynamic;
}
typedef IPushNotificationChannel = {
	var expirationTime : Date;
	var uri : String;
	function close():Void;
	var onpushnotificationreceived : Dynamic;
};
extern class PushNotificationReceivedEventArgs {
	var badgeNotification : Windows.UI.Notifications.BadgeNotification;
	var cancel : Bool;
	var notificationType : Windows.Networking.PushNotifications.PushNotificationType;
	var rawNotification : Windows.Networking.PushNotifications.RawNotification;
	var tileNotification : Windows.UI.Notifications.TileNotification;
	var toastNotification : Windows.UI.Notifications.ToastNotification;
}
typedef IPushNotificationReceivedEventArgs = {
	var badgeNotification : Windows.UI.Notifications.BadgeNotification;
	var cancel : Bool;
	var notificationType : Windows.Networking.PushNotifications.PushNotificationType;
	var rawNotification : Windows.Networking.PushNotifications.RawNotification;
	var tileNotification : Windows.UI.Notifications.TileNotification;
	var toastNotification : Windows.UI.Notifications.ToastNotification;
};
extern class RawNotification {
	var content : String;
}
typedef IRawNotification = {
	var content : String;
};
extern class PushNotificationChannelManager {
	@:overload(function(applicationId:String):Windows.Foundation.IAsyncOperation<Windows.Networking.PushNotifications.PushNotificationChannel> { })
	static function createPushNotificationChannelForApplicationAsync():Windows.Foundation.IAsyncOperation<Windows.Networking.PushNotifications.PushNotificationChannel>;
	static function createPushNotificationChannelForSecondaryTileAsync(tileId:String):Windows.Foundation.IAsyncOperation<Windows.Networking.PushNotifications.PushNotificationChannel>;
}
