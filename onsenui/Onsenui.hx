typedef StringArray = { };
typedef ObjectArray = { };
typedef PageView = {
	function getDeviceBackButtonHandler():Dynamic;
};
typedef CarouselView = {
	function next():Void;
	function prev():Void;
	function first():Void;
	function last():Void;
	function setSwipeable(swipeable:Bool):Void;
	function isSwipeable():Bool;
	function setActiveCarouselItemIndex(index:Float):Void;
	function getActiveCarouselItemIndex():Float;
	function setAutoScrollEnabled(enabled:Bool):Void;
	function isAutoScrollEnabled():Bool;
	function setAutoScrollRatio(ratio:Float):Void;
	function getAutoScrollRatio():Float;
	function setOverscrollable(overscrollable:Bool):Void;
	function isOverscrollable():Bool;
	function refresh():Void;
	function isDisabled():Bool;
	function setDisabled(disabled:Bool):Void;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef PullHookView = {
	function setDisabled(disabled:Bool):Void;
	function isDisabled():Bool;
	function setHeight(height:Float):Void;
	function setThresholdHeight(thresholdHeight:Float):Void;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef SplitView = {
	function setMainPage(pageUrl:String):Void;
	function setSecondaryPage(pageUrl:String):Void;
	function update():Void;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef DialogOptions = {
	@:optional
	var animation : String;
	@:optional
	var callback : Dynamic;
};
typedef AlertDialogView = {
	function show(?options:DialogOptions):Void;
	function hide(?options:DialogOptions):Void;
	function isShown():Bool;
	function destroy():Void;
	function setCancelable(cancelable:Bool):Void;
	function isCancelable():Bool;
	function setDisabled(disabled:Bool):Void;
	function isDisabled():Bool;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef DialogView = {
	function show(?options:DialogOptions):Void;
	function hide(?options:DialogOptions):Void;
	function isShown():Bool;
	function destroy():Void;
	function getDeviceBackButtonHandler():Dynamic;
	function setCancelable(cancelable:Bool):Void;
	function isCancelable():Bool;
	function setDisabled(disabled:Bool):Void;
	function isDisabled():Bool;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef ButtonView = {
	function startSpin():Void;
	function stopSpin():Void;
	function isSpinning():Bool;
	function setSpinAnimation(animation:String):Void;
	function setDisabled(disabled:Bool):Void;
	function isDisabled():Bool;
};
typedef SwitchView = {
	function isChecked():Bool;
	function setChecked(checked:Bool):Void;
	function getCheckboxElement():HTMLElement;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef ModalView = {
	function toggle():Void;
	function show():Void;
	function hide():Void;
	function getDeviceBackButtonHandler():Dynamic;
};
typedef NavigatorOptions = {
	@:optional
	var animation : String;
	@:optional
	var onTransitionEnd : Dynamic;
};
typedef NavigatorView = {
	function pushPage(pageUrl:String, ?options:NavigatorOptions):Void;
	function insertPage(index:Float, pageUrl:String, ?options:NavigatorOptions):Void;
	function popPage(?options:NavigatorOptions):Void;
	function resetToPage(pageUrl:String, ?options:NavigatorOptions):Void;
	function getCurrentPage():Dynamic;
	function getPages():ObjectArray;
	function getDeviceBackButtonHandler():Dynamic;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef SlidingMenuOptions = {
	@:optional
	var closeMenu : Bool;
	@:optional
	var callback : Dynamic;
};
typedef SlidingMenuView = {
	function setMainPage(pageUrl:String, ?options:SlidingMenuOptions):Void;
	function setMenuPage(pageUrl:String, ?options:SlidingMenuOptions):Void;
	function openMenu(?options:SlidingMenuOptions):Void;
	function closeMenu(?options:SlidingMenuOptions):Void;
	function toggleMenu(?options:SlidingMenuOptions):Void;
	function isMenuOpened():Bool;
	function getDeviceBackButtonHandler():Dynamic;
	function setSwipeable(swipeable:Bool):Void;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef TabbarOptions = {
	@:optional
	var keepPage : Bool;
};
typedef TabbarView = {
	function setActiveTab(index:Float, ?options:TabbarOptions):Bool;
	function getActiveTab():Float;
	function loadPage(url:String):Void;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef PopoverOptions = {
	@:optional
	var animation : String;
};
typedef PopoverView = {
	function show(target:Dynamic, ?options:PopoverOptions):Void;
	function hide(?options:PopoverOptions):Void;
	function isShown():Bool;
	function destroy():Void;
	function setCancelable(cancelable:Bool):Void;
	function isCancelable():Bool;
	function setDisabled(disabled:Bool):Void;
	function isDisabled():Bool;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef OnsStatic = {
	function ready(callback:Dynamic):Void;
	function bootstrap(?moduleName:String, ?dependencies:ObjectArray):Dynamic;
	function enableAutoStatusBarFill():Void;
	function disableAutoStatusBarFill():Void;
	function findParentComponentUntil(name:String, ?dom:Dynamic):Dynamic;
	function findComponent(selector:String, ?dom:HTMLElement):Dynamic;
	function setDefaultDeviceBackButtonListener(listener:Dynamic -> Dynamic):Void;
	function disableDeviceBackButtonHandler():Void;
	function enableDeviceBackButtonHandler():Void;
	function isReady():Bool;
	function compile(dom:HTMLElement):Void;
	function isWebView():Bool;
	function createAlertDialog(page:String):Dynamic;
	function createDialog(page:String):Dynamic;
	function createPopover(page:String):Dynamic;
	var notification : OnsNotification;
	var orientation : OnsOrientation;
	var platform : OnsPlatform;
};
typedef AlertOptions = {
	@:optional
	var message : String;
	@:optional
	var messageHTML : String;
	@:optional
	var buttonLabel : String;
	@:optional
	var buttonLabels : StringArray;
	@:optional
	var primaryButtonIndex : Float;
	@:optional
	var cancelable : Bool;
	@:optional
	var animation : String;
	@:optional
	var title : String;
	@:optional
	var modifier : String;
	@:optional
	var callback : Dynamic;
};
typedef OnsNotification = {
	function alert(options:AlertOptions):Void;
	function confirm(options:AlertOptions):Void;
	function prompt(options:AlertOptions):Void;
};
typedef OnsOrientation = {
	function isPortrait():Bool;
	function isLandscape():Bool;
	function on(eventName:String, listener:Dynamic -> Dynamic):Void;
	function once(eventName:String, listener:Dynamic -> Dynamic):Void;
	function off(eventName:String, ?listener:Dynamic -> Dynamic):Void;
};
typedef OnsPlatform = {
	function isWebView():Bool;
	function isIOS():Bool;
	function isAndroid():Bool;
	function isIPhone():Bool;
	function isIPad():Bool;
	function isBlackBerry():Bool;
	function isOpera():Bool;
	function isFirefox():Bool;
	function isSafari():Bool;
	function isChrome():Bool;
	function isIE():Bool;
	function isIOS7above():Bool;
};
extern class OnsenuiTopLevel {
	static var ons : OnsStatic;
}
