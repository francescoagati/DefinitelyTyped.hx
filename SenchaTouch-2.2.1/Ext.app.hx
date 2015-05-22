typedef IAction = {
	>Ext.IBase,
	@:optional
	var action : String;
	@:optional
	var application : Ext.app.IApplication;
	@:optional
	var args : Array<Dynamic>;
	@:optional
	var beforeFilters : Array<Dynamic>;
	@:optional
	var controller : Ext.app.IController;
	@:optional
	var scope : Dynamic;
	@:optional
	var url : String;
	@:optional
	function execute():Void;
	@:optional
	function getAction():String;
	@:optional
	function getApplication():Ext.app.IApplication;
	@:optional
	function getArgs():Array<Dynamic>;
	@:optional
	function getBeforeFilters():Array<Dynamic>;
	@:optional
	function getController():Ext.app.IController;
	@:optional
	function getData():Dynamic;
	@:optional
	function getScope():Dynamic;
	@:optional
	function getTitle():Dynamic;
	@:optional
	function getUrl():String;
	@:optional
	function resume():Void;
	@:optional
	function setAction(?action:String):Void;
	@:optional
	function setApplication(?application:Ext.app.IApplication):Void;
	@:optional
	function setArgs(?args:Array<Dynamic>):Void;
	@:optional
	function setBeforeFilters(?beforeFilters:Array<Dynamic>):Void;
	@:optional
	function setController(?controller:Ext.app.IController):Void;
	@:optional
	function setData(?data:Dynamic):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
	@:optional
	function setTitle(?title:Dynamic):Void;
	@:optional
	function setUrl(?url:String):Void;
};
typedef IApplication = {
	>Ext.app.IController,
	@:optional
	var appFolder : String;
	@:optional
	var controllers : Array<Dynamic>;
	@:optional
	var currentProfile : Ext.app.IProfile;
	@:optional
	var glossOnIcon : Bool;
	@:optional
	var history : Ext.app.IHistory;
	@:optional
	var icon : Dynamic;
	@:optional
	var isIconPrecomposed : Bool;
	@:optional
	var launch : Dynamic;
	@:optional
	var name : String;
	@:optional
	var phoneIcon : String;
	@:optional
	var phoneStartupScreen : String;
	@:optional
	var profiles : Array<Dynamic>;
	@:optional
	var router : Ext.app.IRouter;
	@:optional
	var startupImage : Dynamic;
	@:optional
	var statusBarStyle : String;
	@:optional
	var tabletIcon : String;
	@:optional
	var tabletStartupScreen : String;
	@:optional
	function dispatch(?action:Ext.app.IAction, ?addToHistory:Bool):Void;
	@:optional
	function getAppFolder():String;
	@:optional
	function getController(?name:String, ?profileName:String):Ext.app.IController;
	@:optional
	function getControllers():Array<Dynamic>;
	@:optional
	function getCurrentProfile():Ext.app.IProfile;
	@:optional
	function getHistory():Ext.app.IHistory;
	@:optional
	function getLaunch():Dynamic;
	@:optional
	function getName():String;
	@:optional
	function getProfiles():Array<Dynamic>;
	@:optional
	function getRouter():Ext.app.IRouter;
	@:optional
	function redirectTo(?url:Dynamic):Void;
	@:optional
	function setAppFolder(?appFolder:String):Void;
	@:optional
	function setControllers(?controllers:Array<Dynamic>):Void;
	@:optional
	function setCurrentProfile(?currentProfile:Ext.app.IProfile):Void;
	@:optional
	function setHistory(?history:Ext.app.IHistory):Void;
	@:optional
	function setLaunch(?launch:Dynamic):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setProfiles(?profiles:Array<Dynamic>):Void;
	@:optional
	function setRouter(?router:Ext.app.IRouter):Void;
};
typedef IController = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var application : Ext.app.IApplication;
	@:optional
	var before : Dynamic;
	@:optional
	var control : Dynamic;
	@:optional
	var init : Dynamic;
	@:optional
	var launch : Dynamic;
	@:optional
	var models : Array<String>;
	@:optional
	var refs : Dynamic;
	@:optional
	var routes : Dynamic;
	@:optional
	var stores : Array<String>;
	@:optional
	var views : Array<Dynamic>;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getApplication():Ext.app.IApplication;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getControl():Dynamic;
	@:optional
	function getController(?controllerName:Dynamic, ?profile:Dynamic):Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getModel(?modelName:Dynamic):Dynamic;
	@:optional
	function getModels():Array<String>;
	@:optional
	function getRefs():Dynamic;
	@:optional
	function getRoutes():Dynamic;
	@:optional
	function getStores():Array<String>;
	@:optional
	function getViews():Array<Dynamic>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function redirectTo(?place:Dynamic):Dynamic;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setApplication(?application:Ext.app.IApplication):Void;
	@:optional
	function setBefore(?before:Dynamic):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setControl(?control:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setModels(?models:Array<String>):Void;
	@:optional
	function setRefs(?refs:Dynamic):Void;
	@:optional
	function setRoutes(?routes:Dynamic):Void;
	@:optional
	function setStores(?stores:Array<String>):Void;
	@:optional
	function setViews(?views:Array<Dynamic>):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IHistory = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var actions : Array<Dynamic>;
	@:optional
	var token : String;
	@:optional
	var updateUrl : Bool;
	@:optional
	function add(?action:Ext.app.IAction, ?silent:Bool):Void;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function back():Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getActions():Array<Dynamic>;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getToken():String;
	@:optional
	function getUpdateUrl():Bool;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setActions(?actions:Array<Dynamic>):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setToken(?token:String):Void;
	@:optional
	function setUpdateUrl(?updateUrl:Bool):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IProfile = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var application : Ext.app.IApplication;
	@:optional
	var controllers : Array<Dynamic>;
	@:optional
	var models : Array<Dynamic>;
	@:optional
	var name : String;
	@:optional
	var namespace : String;
	@:optional
	var stores : Array<Dynamic>;
	@:optional
	var views : Array<Dynamic>;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getApplication():Ext.app.IApplication;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getControllers():Array<Dynamic>;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getModels():Array<Dynamic>;
	@:optional
	function getName():String;
	@:optional
	function getNamespace():String;
	@:optional
	function getStores():Array<Dynamic>;
	@:optional
	function getViews():Array<Dynamic>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isActive():Bool;
	@:optional
	function launch():Void;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setApplication(?application:Ext.app.IApplication):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setControllers(?controllers:Array<Dynamic>):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setModels(?models:Array<Dynamic>):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setNamespace(?namespace:String):Void;
	@:optional
	function setStores(?stores:Array<Dynamic>):Void;
	@:optional
	function setViews(?views:Array<Dynamic>):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IRoute = {
	>Ext.IBase,
	@:optional
	var action : String;
	@:optional
	var conditions : Dynamic;
	@:optional
	var controller : String;
	@:optional
	var url : String;
	@:optional
	var paramsInMatchString : Dynamic;
	@:optional
	function getAction():String;
	@:optional
	function getConditions():Dynamic;
	@:optional
	function getController():String;
	@:optional
	function getUrl():String;
	@:optional
	function recognize(?url:String):Dynamic;
	@:optional
	function setAction(?action:String):Void;
	@:optional
	function setConditions(?conditions:Dynamic):Void;
	@:optional
	function setController(?controller:String):Void;
	@:optional
	function setUrl(?url:String):Void;
};
typedef IRouter = {
	>Ext.IBase,
	@:optional
	var defaults : Dynamic;
	@:optional
	var routes : Array<Dynamic>;
	@:optional
	function connect(?url:String, ?params:Dynamic):Void;
	@:optional
	function draw(?fn:Dynamic):Void;
	@:optional
	function getDefaults():Dynamic;
	@:optional
	function getRoutes():Array<Dynamic>;
	@:optional
	function recognize(?url:String):Dynamic;
	@:optional
	function setDefaults(?defaults:Dynamic):Void;
	@:optional
	function setRoutes(?routes:Array<Dynamic>):Void;
};
