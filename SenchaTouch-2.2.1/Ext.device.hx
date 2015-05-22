typedef ICamera = {
	>Ext.IBase,
	>Ext.device.camera.IAbstract,
};
extern class Camera {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function capture(?options:Dynamic, ?scope:Dynamic, ?destination:String, ?encoding:String, ?width:Float, ?height:Float):Void;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef ICommunicator = {
	>Ext.IBase,
};
extern class Communicator {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IConnection = {
	>Ext.IBase,
	>Ext.device.connection.IAbstract,
};
extern class Connection {
	static var CELL_2G : String;
	static var CELL_3G : String;
	static var CELL_4G : String;
	static var ETHERNET : String;
	static var NONE : String;
	static var UNKNOWN : String;
	static var WIFI : String;
	static var self : Ext.IClass;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function destroy():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getBubbleEvents():Dynamic;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getListeners():Dynamic;
	static function getOnline():Bool;
	static function getType():String;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isOnline():Bool;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function setOnline(?online:Bool):Void;
	static function setType(?type:Dynamic):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
}
typedef IContacts = {
	>Ext.IBase,
	>Ext.device.contacts.IAbstract,
	>Ext.device.contacts.ISencha,
};
extern class Contacts {
	static var self : Ext.IClass;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function destroy():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getBubbleEvents():Dynamic;
	static function getContacts(?config:Dynamic):Array<Dynamic>;
	static function getId():String;
	static function getIncludeImages():Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function getListeners():Dynamic;
	static function getLocalizedLabel(?config:Dynamic):String;
	static function getThumbnail(?config:Dynamic):String;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setIncludeImages(?includeImages:Bool):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
}
typedef IDevice = {
	>Ext.IBase,
	>Ext.device.device.IAbstract,
};
extern class Device {
	static var name : String;
	static var platform : String;
	static var scheme : Dynamic;
	static var self : Ext.IClass;
	static var uuid : String;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function destroy():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getBubbleEvents():Dynamic;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getListeners():Dynamic;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function openURL(?url:String):Void;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
}
typedef IGeolocation = {
	>Ext.IBase,
	>Ext.device.geolocation.IAbstract,
};
extern class Geolocation {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearWatch():Void;
	static function destroy():Void;
	static function getAllowHighAccuracy():Bool;
	static function getCurrentPosition(?config:Dynamic):Void;
	static function getFrequency():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function getMaximumAge():Float;
	static function getTimeout():Float;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function setAllowHighAccuracy(?allowHighAccuracy:Bool):Void;
	static function setFrequency(?frequency:Float):Void;
	static function setMaximumAge(?maximumAge:Float):Void;
	static function setTimeout(?timeout:Float):Void;
	static function statics():Ext.IClass;
	static function watchPosition(?config:Dynamic):Void;
}
typedef INotification = {
	>Ext.IBase,
	>Ext.device.notification.IAbstract,
};
extern class Notification {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function show(?config:Dynamic):Void;
	static function statics():Ext.IClass;
	static function vibrate():Void;
}
typedef IOrientation = {
	>Ext.IBase,
	>Ext.device.orientation.IAbstract,
};
extern class Orientation {
	static var self : Ext.IClass;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function destroy():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getBubbleEvents():Dynamic;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getListeners():Dynamic;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
}
typedef IPurchases = {
	>Ext.IBase,
	>Ext.device.purchases.ISencha,
};
extern class Purchases {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function canMakePayments(?config:Dynamic):Void;
	static function destroy():Void;
	static function getCompletedPurchases(?config:Dynamic):Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function getProducts(?config:Dynamic):Void;
	static function getPurchases(?config:Dynamic):Void;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IPush = {
	>Ext.IBase,
	>Ext.device.push.IAbstract,
};
extern class Push {
	static var ALERT : Float;
	static var BADGE : Float;
	static var SOUND : Float;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function register(?config:Dynamic):Void;
	static function statics():Ext.IClass;
}
typedef ISQLite = {
	>Ext.IBase,
	>Ext.device.sqlite.ISencha,
};
extern class SQLite {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function openDatabase(?config:Dynamic):Ext.device.sqlite.IDatabase;
	static function statics():Ext.IClass;
}
