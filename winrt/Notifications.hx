@:enum abstract NotificationSetting(Int) {
	var enabled = 0;
	var disabledForApplication = 1;
	var disabledForUser = 2;
	var disabledByGroupPolicy = 3;
	var disabledByManifest = 4;
}
@:enum abstract ToastDismissalReason(Int) {
	var userCanceled = 0;
	var applicationHidden = 1;
	var timedOut = 2;
}
@:enum abstract BadgeTemplateType(Int) {
	var badgeGlyph = 0;
	var badgeNumber = 1;
}
@:enum abstract TileTemplateType(Int) {
	var tileSquareImage = 0;
	var tileSquareBlock = 1;
	var tileSquareText01 = 2;
	var tileSquareText02 = 3;
	var tileSquareText03 = 4;
	var tileSquareText04 = 5;
	var tileSquarePeekImageAndText01 = 6;
	var tileSquarePeekImageAndText02 = 7;
	var tileSquarePeekImageAndText03 = 8;
	var tileSquarePeekImageAndText04 = 9;
	var tileWideImage = 10;
	var tileWideImageCollection = 11;
	var tileWideImageAndText01 = 12;
	var tileWideImageAndText02 = 13;
	var tileWideBlockAndText01 = 14;
	var tileWideBlockAndText02 = 15;
	var tileWidePeekImageCollection01 = 16;
	var tileWidePeekImageCollection02 = 17;
	var tileWidePeekImageCollection03 = 18;
	var tileWidePeekImageCollection04 = 19;
	var tileWidePeekImageCollection05 = 20;
	var tileWidePeekImageCollection06 = 21;
	var tileWidePeekImageAndText01 = 22;
	var tileWidePeekImageAndText02 = 23;
	var tileWidePeekImage01 = 24;
	var tileWidePeekImage02 = 25;
	var tileWidePeekImage03 = 26;
	var tileWidePeekImage04 = 27;
	var tileWidePeekImage05 = 28;
	var tileWidePeekImage06 = 29;
	var tileWideSmallImageAndText01 = 30;
	var tileWideSmallImageAndText02 = 31;
	var tileWideSmallImageAndText03 = 32;
	var tileWideSmallImageAndText04 = 33;
	var tileWideSmallImageAndText05 = 34;
	var tileWideText01 = 35;
	var tileWideText02 = 36;
	var tileWideText03 = 37;
	var tileWideText04 = 38;
	var tileWideText05 = 39;
	var tileWideText06 = 40;
	var tileWideText07 = 41;
	var tileWideText08 = 42;
	var tileWideText09 = 43;
	var tileWideText10 = 44;
	var tileWideText11 = 45;
}
@:enum abstract ToastTemplateType(Int) {
	var toastImageAndText01 = 0;
	var toastImageAndText02 = 1;
	var toastImageAndText03 = 2;
	var toastImageAndText04 = 3;
	var toastText01 = 4;
	var toastText02 = 5;
	var toastText03 = 6;
	var toastText04 = 7;
}
@:enum abstract PeriodicUpdateRecurrence(Int) {
	var halfHour = 0;
	var hour = 1;
	var sixHours = 2;
	var twelveHours = 3;
	var daily = 4;
}
typedef IToastDismissedEventArgs = {
	var reason : Windows.UI.Notifications.ToastDismissalReason;
};
typedef IToastFailedEventArgs = {
	var errorCode : Float;
};
typedef ITileUpdateManagerStatics = {
	@:overload(function(applicationId:String):Windows.UI.Notifications.TileUpdater { })
	function createTileUpdaterForApplication():Windows.UI.Notifications.TileUpdater;
	function createTileUpdaterForSecondaryTile(tileId:String):Windows.UI.Notifications.TileUpdater;
	function getTemplateContent(type:Windows.UI.Notifications.TileTemplateType):Windows.Data.Xml.Dom.XmlDocument;
};
extern class TileUpdater {
	var setting : Windows.UI.Notifications.NotificationSetting;
	function update(notification:Windows.UI.Notifications.TileNotification):Void;
	function clear():Void;
	function enableNotificationQueue(enable:Bool):Void;
	function addToSchedule(scheduledTile:Windows.UI.Notifications.ScheduledTileNotification):Void;
	function removeFromSchedule(scheduledTile:Windows.UI.Notifications.ScheduledTileNotification):Void;
	function getScheduledTileNotifications():Windows.Foundation.Collections.IVectorView<Windows.UI.Notifications.ScheduledTileNotification>;
	@:overload(function(tileContent:Windows.Foundation.Uri, startTime:Date, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void { })
	function startPeriodicUpdate(tileContent:Windows.Foundation.Uri, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void;
	function stopPeriodicUpdate():Void;
	@:overload(function(tileContents:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, startTime:Date, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void { })
	function startPeriodicUpdateBatch(tileContents:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void;
}
typedef ITileUpdater = {
	var setting : Windows.UI.Notifications.NotificationSetting;
	function update(notification:Windows.UI.Notifications.TileNotification):Void;
	function clear():Void;
	function enableNotificationQueue(enable:Bool):Void;
	function addToSchedule(scheduledTile:Windows.UI.Notifications.ScheduledTileNotification):Void;
	function removeFromSchedule(scheduledTile:Windows.UI.Notifications.ScheduledTileNotification):Void;
	function getScheduledTileNotifications():Windows.Foundation.Collections.IVectorView<Windows.UI.Notifications.ScheduledTileNotification>;
	@:overload(function(tileContent:Windows.Foundation.Uri, startTime:Date, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void { })
	function startPeriodicUpdate(tileContent:Windows.Foundation.Uri, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void;
	function stopPeriodicUpdate():Void;
	@:overload(function(tileContents:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, startTime:Date, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void { })
	function startPeriodicUpdateBatch(tileContents:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void;
};
extern class TileNotification {
	function new(content:Windows.Data.Xml.Dom.XmlDocument):Void;
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var expirationTime : Date;
	var tag : String;
}
extern class ScheduledTileNotification {
	function new(content:Windows.Data.Xml.Dom.XmlDocument, deliveryTime:Date):Void;
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var deliveryTime : Date;
	var expirationTime : Date;
	var id : String;
	var tag : String;
}
typedef IBadgeUpdateManagerStatics = {
	@:overload(function(applicationId:String):Windows.UI.Notifications.BadgeUpdater { })
	function createBadgeUpdaterForApplication():Windows.UI.Notifications.BadgeUpdater;
	function createBadgeUpdaterForSecondaryTile(tileId:String):Windows.UI.Notifications.BadgeUpdater;
	function getTemplateContent(type:Windows.UI.Notifications.BadgeTemplateType):Windows.Data.Xml.Dom.XmlDocument;
};
extern class BadgeUpdater {
	function update(notification:Windows.UI.Notifications.BadgeNotification):Void;
	function clear():Void;
	@:overload(function(badgeContent:Windows.Foundation.Uri, startTime:Date, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void { })
	function startPeriodicUpdate(badgeContent:Windows.Foundation.Uri, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void;
	function stopPeriodicUpdate():Void;
}
typedef IBadgeUpdater = {
	function update(notification:Windows.UI.Notifications.BadgeNotification):Void;
	function clear():Void;
	@:overload(function(badgeContent:Windows.Foundation.Uri, startTime:Date, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void { })
	function startPeriodicUpdate(badgeContent:Windows.Foundation.Uri, requestedInterval:Windows.UI.Notifications.PeriodicUpdateRecurrence):Void;
	function stopPeriodicUpdate():Void;
};
extern class BadgeNotification {
	function new(content:Windows.Data.Xml.Dom.XmlDocument):Void;
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var expirationTime : Date;
}
typedef IToastNotificationManagerStatics = {
	@:overload(function(applicationId:String):Windows.UI.Notifications.ToastNotifier { })
	function createToastNotifier():Windows.UI.Notifications.ToastNotifier;
	function getTemplateContent(type:Windows.UI.Notifications.ToastTemplateType):Windows.Data.Xml.Dom.XmlDocument;
};
extern class ToastNotifier {
	var setting : Windows.UI.Notifications.NotificationSetting;
	function show(notification:Windows.UI.Notifications.ToastNotification):Void;
	function hide(notification:Windows.UI.Notifications.ToastNotification):Void;
	function addToSchedule(scheduledToast:Windows.UI.Notifications.ScheduledToastNotification):Void;
	function removeFromSchedule(scheduledToast:Windows.UI.Notifications.ScheduledToastNotification):Void;
	function getScheduledToastNotifications():Windows.Foundation.Collections.IVectorView<Windows.UI.Notifications.ScheduledToastNotification>;
}
typedef IToastNotifier = {
	var setting : Windows.UI.Notifications.NotificationSetting;
	function show(notification:Windows.UI.Notifications.ToastNotification):Void;
	function hide(notification:Windows.UI.Notifications.ToastNotification):Void;
	function addToSchedule(scheduledToast:Windows.UI.Notifications.ScheduledToastNotification):Void;
	function removeFromSchedule(scheduledToast:Windows.UI.Notifications.ScheduledToastNotification):Void;
	function getScheduledToastNotifications():Windows.Foundation.Collections.IVectorView<Windows.UI.Notifications.ScheduledToastNotification>;
};
extern class ToastNotification {
	function new(content:Windows.Data.Xml.Dom.XmlDocument):Void;
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var expirationTime : Date;
	var ondismissed : Dynamic;
	var onactivated : Dynamic;
	var onfailed : Dynamic;
}
extern class ScheduledToastNotification {
	@:overload(function(content:Windows.Data.Xml.Dom.XmlDocument, deliveryTime:Date, snoozeInterval:Float, maximumSnoozeCount:Float):Void { })
	function new(content:Windows.Data.Xml.Dom.XmlDocument, deliveryTime:Date):Void;
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var deliveryTime : Date;
	var id : String;
	var maximumSnoozeCount : Float;
	var snoozeInterval : Float;
}
typedef ITileNotificationFactory = {
	function createTileNotification(content:Windows.Data.Xml.Dom.XmlDocument):Windows.UI.Notifications.TileNotification;
};
typedef ITileNotification = {
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var expirationTime : Date;
	var tag : String;
};
typedef IBadgeNotificationFactory = {
	function createBadgeNotification(content:Windows.Data.Xml.Dom.XmlDocument):Windows.UI.Notifications.BadgeNotification;
};
typedef IBadgeNotification = {
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var expirationTime : Date;
};
typedef IToastNotificationFactory = {
	function createToastNotification(content:Windows.Data.Xml.Dom.XmlDocument):Windows.UI.Notifications.ToastNotification;
};
typedef IToastNotification = {
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var expirationTime : Date;
	var ondismissed : Dynamic;
	var onactivated : Dynamic;
	var onfailed : Dynamic;
};
extern class ToastDismissedEventArgs {
	var reason : Windows.UI.Notifications.ToastDismissalReason;
}
extern class ToastFailedEventArgs {
	var errorCode : Float;
}
typedef IScheduledToastNotificationFactory = {
	@:overload(function(content:Windows.Data.Xml.Dom.XmlDocument, deliveryTime:Date, snoozeInterval:Float, maximumSnoozeCount:Float):Windows.UI.Notifications.ScheduledToastNotification { })
	function createScheduledToastNotification(content:Windows.Data.Xml.Dom.XmlDocument, deliveryTime:Date):Windows.UI.Notifications.ScheduledToastNotification;
};
typedef IScheduledToastNotification = {
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var deliveryTime : Date;
	var id : String;
	var maximumSnoozeCount : Float;
	var snoozeInterval : Float;
};
typedef IScheduledTileNotificationFactory = {
	function createScheduledTileNotification(content:Windows.Data.Xml.Dom.XmlDocument, deliveryTime:Date):Windows.UI.Notifications.ScheduledTileNotification;
};
typedef IScheduledTileNotification = {
	var content : Windows.Data.Xml.Dom.XmlDocument;
	var deliveryTime : Date;
	var expirationTime : Date;
	var id : String;
	var tag : String;
};
extern class TileUpdateManager {
	@:overload(function(applicationId:String):Windows.UI.Notifications.TileUpdater { })
	static function createTileUpdaterForApplication():Windows.UI.Notifications.TileUpdater;
	static function createTileUpdaterForSecondaryTile(tileId:String):Windows.UI.Notifications.TileUpdater;
	static function getTemplateContent(type:Windows.UI.Notifications.TileTemplateType):Windows.Data.Xml.Dom.XmlDocument;
}
extern class BadgeUpdateManager {
	@:overload(function(applicationId:String):Windows.UI.Notifications.BadgeUpdater { })
	static function createBadgeUpdaterForApplication():Windows.UI.Notifications.BadgeUpdater;
	static function createBadgeUpdaterForSecondaryTile(tileId:String):Windows.UI.Notifications.BadgeUpdater;
	static function getTemplateContent(type:Windows.UI.Notifications.BadgeTemplateType):Windows.Data.Xml.Dom.XmlDocument;
}
extern class ToastNotificationManager {
	@:overload(function(applicationId:String):Windows.UI.Notifications.ToastNotifier { })
	static function createToastNotifier():Windows.UI.Notifications.ToastNotifier;
	static function getTemplateContent(type:Windows.UI.Notifications.ToastTemplateType):Windows.Data.Xml.Dom.XmlDocument;
}
