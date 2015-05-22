extern class Condition<T> {
	function new(message:String, fn:WebDriver -> Dynamic):Void;
	function description():String;
	function fn(webdriver:WebDriver):Dynamic;
}
extern class UntilTopLevel {
	static function ableToSwitchToFrame(frame:Float):Condition<Bool>;
	static function ableToSwitchToFrame(frame:IWebElement):Condition<Bool>;
	static function ableToSwitchToFrame(frame:Locator):Condition<Bool>;
	static function ableToSwitchToFrame(frame:WebDriver -> IWebElement):Condition<Bool>;
	static function ableToSwitchToFrame(frame:Dynamic):Condition<Bool>;
	static function alertIsPresent():Condition<Alert>;
	static function elementIsDisabled(element:IWebElement):Condition<Bool>;
	static function elementIsEnabled(element:IWebElement):Condition<Bool>;
	static function elementIsNotSelected(element:IWebElement):Condition<Bool>;
	static function elementIsNotVisible(element:IWebElement):Condition<Bool>;
	static function elementIsSelected(element:IWebElement):Condition<Bool>;
	static function elementIsVisible(element:IWebElement):Condition<Bool>;
	static function elementLocated(locator:Locator):Condition<IWebElement>;
	static function elementLocated(locator:Dynamic):Condition<IWebElement>;
	static function elementTextContains(element:IWebElement, substr:String):Condition<Bool>;
	static function elementTextIs(element:IWebElement, text:String):Condition<Bool>;
	static function elementTextMatches(element:IWebElement, regex:js.RegExp):Condition<Bool>;
	static function elementsLocated(locator:Locator):Condition<Array<IWebElement>>;
	static function elementsLocated(locator:Dynamic):Condition<Array<IWebElement>>;
	static function stalenessOf(element:IWebElement):Condition<Bool>;
	static function titleContains(substr:String):Condition<Bool>;
	static function titleIs(title:String):Condition<Bool>;
	static function titleMatches(regex:js.RegExp):Condition<Bool>;
	static var Button : IButton;
	static var Key : IKey;
	static var Browser : IBrowser;
	static var Capability : ICapability;
	static var CommandName : ICommandName;
	static var By : ILocatorStrategy;
}
typedef ILocation = {
	var x : Float;
	var y : Float;
};
typedef ISize = {
	var width : Float;
	var height : Float;
};
typedef IButton = {
	var LEFT : Float;
	var MIDDLE : Float;
	var RIGHT : Float;
};
typedef IKey = {
	var NULL : String;
	var CANCEL : String;
	var HELP : String;
	var BACK_SPACE : String;
	var TAB : String;
	var CLEAR : String;
	var RETURN : String;
	var ENTER : String;
	var SHIFT : String;
	var CONTROL : String;
	var ALT : String;
	var PAUSE : String;
	var ESCAPE : String;
	var SPACE : String;
	var PAGE_UP : String;
	var PAGE_DOWN : String;
	var END : String;
	var HOME : String;
	var ARROW_LEFT : String;
	var LEFT : String;
	var ARROW_UP : String;
	var UP : String;
	var ARROW_RIGHT : String;
	var RIGHT : String;
	var ARROW_DOWN : String;
	var DOWN : String;
	var INSERT : String;
	var DELETE : String;
	var SEMICOLON : String;
	var EQUALS : String;
	var NUMPAD0 : String;
	var NUMPAD1 : String;
	var NUMPAD2 : String;
	var NUMPAD3 : String;
	var NUMPAD4 : String;
	var NUMPAD5 : String;
	var NUMPAD6 : String;
	var NUMPAD7 : String;
	var NUMPAD8 : String;
	var NUMPAD9 : String;
	var MULTIPLY : String;
	var ADD : String;
	var SEPARATOR : String;
	var SUBTRACT : String;
	var DECIMAL : String;
	var DIVIDE : String;
	var F1 : String;
	var F2 : String;
	var F3 : String;
	var F4 : String;
	var F5 : String;
	var F6 : String;
	var F7 : String;
	var F8 : String;
	var F9 : String;
	var F10 : String;
	var F11 : String;
	var F12 : String;
	var COMMAND : String;
	var META : String;
	var chord : haxe.extern.Rest<String> -> String;
};
extern class ActionSequence {
	function new(driver:WebDriver):Void;
	function perform():webdriver.promise.Promise<Void>;
	@:overload(function(location:ILocation):ActionSequence { })
	function mouseMove(location:IWebElement, ?opt_offset:ILocation):ActionSequence;
	@:overload(function(?opt_elementOrButton:Float):ActionSequence { })
	function mouseDown(?opt_elementOrButton:IWebElement, ?opt_button:Float):ActionSequence;
	@:overload(function(?opt_elementOrButton:Float):ActionSequence { })
	function mouseUp(?opt_elementOrButton:IWebElement, ?opt_button:Float):ActionSequence;
	@:overload(function(element:IWebElement, location:ILocation):ActionSequence { })
	function dragAndDrop(element:IWebElement, location:IWebElement):ActionSequence;
	@:overload(function(?opt_elementOrButton:Float):ActionSequence { })
	function click(?opt_elementOrButton:IWebElement, ?opt_button:Float):ActionSequence;
	@:overload(function(?opt_elementOrButton:Float):ActionSequence { })
	function doubleClick(?opt_elementOrButton:IWebElement, ?opt_button:Float):ActionSequence;
	function keyDown(key:String):ActionSequence;
	function keyUp(key:String):ActionSequence;
	function sendKeys(var_args:haxe.extern.Rest<Dynamic>):ActionSequence;
}
typedef Alert = {
	function getText():webdriver.promise.Promise<String>;
	function accept():webdriver.promise.Promise<Void>;
	function dismiss():webdriver.promise.Promise<Void>;
	function sendKeys(text:String):webdriver.promise.Promise<Void>;
};
typedef AlertPromise = {
	>Alert,
	>webdriver.promise.IThenable<Alert>,
};
typedef UnhandledAlertError = {
	>webdriver.error.Error,
	function getAlertText():String;
	function getAlert():Alert;
};
typedef IBrowser = {
	var ANDROID : String;
	var CHROME : String;
	var FIREFOX : String;
	var INTERNET_EXPLORER : String;
	var IPAD : String;
	var IPHONE : String;
	var OPERA : String;
	var PHANTOM_JS : String;
	var SAFARI : String;
	var HTMLUNIT : String;
};
typedef ProxyConfig = {
	var proxyType : String;
	@:optional
	var proxyAutoconfigUrl : String;
	@:optional
	var ftpProxy : String;
	@:optional
	var httpProxy : String;
	@:optional
	var sslProxy : String;
	@:optional
	var noProxy : String;
};
extern class Builder {
	function new():Void;
	function build():WebDriver;
	function forBrowser(name:String, ?opt_version:String, ?opt_platform:String):Builder;
	function getCapabilities():Capabilities;
	function getServerUrl():String;
	function setAlertBehavior(behavior:String):Builder;
	function setChromeOptions(options:chrome.Options):Builder;
	function setControlFlow(flow:webdriver.promise.ControlFlow):Builder;
	function setEnableNativeEvents(enabled:Bool):Builder;
	function setFirefoxOptions(options:firefox.Options):Builder;
	@:overload(function(prefs:{ }):Builder { })
	function setLoggingPrefs(prefs:webdriver.logging.Preferences):Builder;
	function setProxy(config:ProxyConfig):Builder;
	function setScrollBehavior(behavior:Float):Builder;
	function usingServer(url:String):Builder;
	@:overload(function(capabilities:Dynamic):Builder { })
	function withCapabilities(capabilities:Capabilities):Builder;
}
typedef ICapability = {
	var ACCEPT_SSL_CERTS : String;
	var BROWSER_NAME : String;
	var ELEMENT_SCROLL_BEHAVIOR : String;
	var HANDLES_ALERTS : String;
	var LOGGING_PREFS : String;
	var NATIVE_EVENTS : String;
	var PLATFORM : String;
	var PROXY : String;
	var ROTATABLE : String;
	var SECURE_SSL : String;
	var SUPPORTS_APPLICATION_CACHE : String;
	var SUPPORTS_CSS_SELECTORS : String;
	var SUPPORTS_JAVASCRIPT : String;
	var SUPPORTS_LOCATION_CONTEXT : String;
	var TAKES_SCREENSHOT : String;
	var UNEXPECTED_ALERT_BEHAVIOR : String;
	var VERSION : String;
};
extern class Capabilities {
	@:overload(function(?opt_other:Dynamic):Void { })
	function new(?opt_other:Capabilities):Void;
	function toJSON():Dynamic;
	@:overload(function(other:Dynamic):Capabilities { })
	function merge(other:Capabilities):Capabilities;
	function set(key:String, value:Dynamic):Capabilities;
	@:overload(function(prefs:{ }):Capabilities { })
	function setLoggingPrefs(prefs:webdriver.logging.Preferences):Capabilities;
	function setProxy(proxy:ProxyConfig):Capabilities;
	function setEnableNativeEvents(enabled:Bool):Capabilities;
	function setScrollBehavior(behavior:Float):Capabilities;
	function setAlertBehavior(behavior:String):Capabilities;
	function get(key:String):Dynamic;
	function has(key:String):Bool;
	static function android():Capabilities;
	static function chrome():Capabilities;
	static function firefox():Capabilities;
	static function ie():Capabilities;
	static function ipad():Capabilities;
	static function iphone():Capabilities;
	static function opera():Capabilities;
	static function phantomjs():Capabilities;
	static function safari():Capabilities;
	static function htmlunit():Capabilities;
	static function htmlunitwithjs():Capabilities;
}
typedef ICommandName = {
	var GET_SERVER_STATUS : String;
	var NEW_SESSION : String;
	var GET_SESSIONS : String;
	var DESCRIBE_SESSION : String;
	var CLOSE : String;
	var QUIT : String;
	var GET_CURRENT_URL : String;
	var GET : String;
	var GO_BACK : String;
	var GO_FORWARD : String;
	var REFRESH : String;
	var ADD_COOKIE : String;
	var GET_COOKIE : String;
	var GET_ALL_COOKIES : String;
	var DELETE_COOKIE : String;
	var DELETE_ALL_COOKIES : String;
	var GET_ACTIVE_ELEMENT : String;
	var FIND_ELEMENT : String;
	var FIND_ELEMENTS : String;
	var FIND_CHILD_ELEMENT : String;
	var FIND_CHILD_ELEMENTS : String;
	var CLEAR_ELEMENT : String;
	var CLICK_ELEMENT : String;
	var SEND_KEYS_TO_ELEMENT : String;
	var SUBMIT_ELEMENT : String;
	var GET_CURRENT_WINDOW_HANDLE : String;
	var GET_WINDOW_HANDLES : String;
	var GET_WINDOW_POSITION : String;
	var SET_WINDOW_POSITION : String;
	var GET_WINDOW_SIZE : String;
	var SET_WINDOW_SIZE : String;
	var MAXIMIZE_WINDOW : String;
	var SWITCH_TO_WINDOW : String;
	var SWITCH_TO_FRAME : String;
	var GET_PAGE_SOURCE : String;
	var GET_TITLE : String;
	var EXECUTE_SCRIPT : String;
	var EXECUTE_ASYNC_SCRIPT : String;
	var GET_ELEMENT_TEXT : String;
	var GET_ELEMENT_TAG_NAME : String;
	var IS_ELEMENT_SELECTED : String;
	var IS_ELEMENT_ENABLED : String;
	var IS_ELEMENT_DISPLAYED : String;
	var GET_ELEMENT_LOCATION : String;
	var GET_ELEMENT_LOCATION_IN_VIEW : String;
	var GET_ELEMENT_SIZE : String;
	var GET_ELEMENT_ATTRIBUTE : String;
	var GET_ELEMENT_VALUE_OF_CSS_PROPERTY : String;
	var ELEMENT_EQUALS : String;
	var SCREENSHOT : String;
	var IMPLICITLY_WAIT : String;
	var SET_SCRIPT_TIMEOUT : String;
	var SET_TIMEOUT : String;
	var ACCEPT_ALERT : String;
	var DISMISS_ALERT : String;
	var GET_ALERT_TEXT : String;
	var SET_ALERT_TEXT : String;
	var EXECUTE_SQL : String;
	var GET_LOCATION : String;
	var SET_LOCATION : String;
	var GET_APP_CACHE : String;
	var GET_APP_CACHE_STATUS : String;
	var CLEAR_APP_CACHE : String;
	var IS_BROWSER_ONLINE : String;
	var SET_BROWSER_ONLINE : String;
	var GET_LOCAL_STORAGE_ITEM : String;
	var GET_LOCAL_STORAGE_KEYS : String;
	var SET_LOCAL_STORAGE_ITEM : String;
	var REMOVE_LOCAL_STORAGE_ITEM : String;
	var CLEAR_LOCAL_STORAGE : String;
	var GET_LOCAL_STORAGE_SIZE : String;
	var GET_SESSION_STORAGE_ITEM : String;
	var GET_SESSION_STORAGE_KEYS : String;
	var SET_SESSION_STORAGE_ITEM : String;
	var REMOVE_SESSION_STORAGE_ITEM : String;
	var CLEAR_SESSION_STORAGE : String;
	var GET_SESSION_STORAGE_SIZE : String;
	var SET_SCREEN_ORIENTATION : String;
	var GET_SCREEN_ORIENTATION : String;
	var CLICK : String;
	var DOUBLE_CLICK : String;
	var MOUSE_DOWN : String;
	var MOUSE_UP : String;
	var MOVE_TO : String;
	var SEND_KEYS_TO_ACTIVE_ELEMENT : String;
	var TOUCH_SINGLE_TAP : String;
	var TOUCH_DOWN : String;
	var TOUCH_UP : String;
	var TOUCH_MOVE : String;
	var TOUCH_SCROLL : String;
	var TOUCH_DOUBLE_TAP : String;
	var TOUCH_LONG_PRESS : String;
	var TOUCH_FLICK : String;
	var GET_AVAILABLE_LOG_TYPES : String;
	var GET_LOG : String;
	var GET_SESSION_LOGS : String;
};
extern class Command {
	function new(name:String):Void;
	function getName():String;
	function setParameter(name:String, value:Dynamic):Command;
	function setParameters(parameters:Dynamic):Command;
	function getParameter(key:String):Dynamic;
	function getParameters():Dynamic;
}
typedef CommandExecutor = {
	function execute(command:Command, callback:Error -> Dynamic -> Dynamic):Void;
};
extern class EventEmitter {
	function new():Void;
	function emit(type:String, var_args:haxe.extern.Rest<Dynamic>):Void;
	function listeners(type:String):Array<{ var fn : haxe.Constraints.Function; var oneshot : Bool; var scope : Dynamic; }>;
	function addListener(type:String, listenerFn:haxe.Constraints.Function, ?opt_scope:Dynamic):EventEmitter;
	function once(type:String, listenerFn:Dynamic, ?opt_scope:Dynamic):EventEmitter;
	function on(type:String, listenerFn:haxe.Constraints.Function, ?opt_scope:Dynamic):EventEmitter;
	function removeListener(type:String, listenerFn:haxe.Constraints.Function):EventEmitter;
	function removeAllListeners(?opt_type:String):EventEmitter;
}
typedef WebDriverNavigation = {
	function new(driver:WebDriver):WebDriverNavigation;
	function to(url:String):webdriver.promise.Promise<Void>;
	function back():webdriver.promise.Promise<Void>;
	function forward():webdriver.promise.Promise<Void>;
	function refresh():webdriver.promise.Promise<Void>;
};
typedef IWebDriverOptionsCookie = {
	var name : String;
	var value : String;
	@:optional
	var path : String;
	@:optional
	var domain : String;
	@:optional
	var secure : Bool;
	@:optional
	var expiry : Float;
};
typedef WebDriverOptions = {
	function new(driver:webdriver.WebDriver):WebDriverOptions;
	@:overload(function(name:String, value:String, ?opt_path:String, ?opt_domain:String, ?opt_isSecure:Bool, ?opt_expiry:Date):webdriver.promise.Promise<Void> { })
	function addCookie(name:String, value:String, ?opt_path:String, ?opt_domain:String, ?opt_isSecure:Bool, ?opt_expiry:Float):webdriver.promise.Promise<Void>;
	function deleteAllCookies():webdriver.promise.Promise<Void>;
	function deleteCookie(name:String):webdriver.promise.Promise<Void>;
	function getCookies():webdriver.promise.Promise<Array<IWebDriverOptionsCookie>>;
	function getCookie(name:String):webdriver.promise.Promise<IWebDriverOptionsCookie>;
	function logs():WebDriverLogs;
	function timeouts():WebDriverTimeouts;
	function window():WebDriverWindow;
};
typedef WebDriverTimeouts = {
	function new(driver:WebDriver):WebDriverTimeouts;
	function implicitlyWait(ms:Float):webdriver.promise.Promise<Void>;
	function setScriptTimeout(ms:Float):webdriver.promise.Promise<Void>;
	function pageLoadTimeout(ms:Float):webdriver.promise.Promise<Void>;
};
typedef WebDriverWindow = {
	function new(driver:WebDriver):WebDriverWindow;
	function getPosition():webdriver.promise.Promise<ILocation>;
	function setPosition(x:Float, y:Float):webdriver.promise.Promise<Void>;
	function getSize():webdriver.promise.Promise<ISize>;
	function setSize(width:Float, height:Float):webdriver.promise.Promise<Void>;
	function maximize():webdriver.promise.Promise<Void>;
};
typedef WebDriverLogs = {
	function new(driver:WebDriver):WebDriverLogs;
	function get(type:String):webdriver.promise.Promise<Array<webdriver.logging.Entry>>;
	function getAvailableLogTypes():webdriver.promise.Promise<Array<String>>;
};
typedef WebDriverTargetLocator = {
	function new(driver:WebDriver):WebDriverTargetLocator;
	function activeElement():WebElementPromise;
	function defaultContent():webdriver.promise.Promise<Void>;
	@:overload(function(nameOrIndex:Float):webdriver.promise.Promise<Void> { })
	function frame(nameOrIndex:String):webdriver.promise.Promise<Void>;
	function window(nameOrHandle:String):webdriver.promise.Promise<Void>;
	function alert():AlertPromise;
};
extern class WebDriver {
	@:overload(function(session:webdriver.promise.Promise<Session>, executor:CommandExecutor, ?opt_flow:webdriver.promise.ControlFlow):Void { })
	function new(session:Session, executor:CommandExecutor, ?opt_flow:webdriver.promise.ControlFlow):Void;
	static var Navigation : WebDriverNavigation;
	static var Options : WebDriverOptions;
	static var Timeouts : WebDriverTimeouts;
	static var Window : WebDriverWindow;
	static var Logs : WebDriverLogs;
	static var TargetLocator : WebDriverTargetLocator;
	static function attachToSession(executor:CommandExecutor, sessionId:String, ?opt_flow:webdriver.promise.ControlFlow):WebDriver;
	static function createSession(executor:CommandExecutor, desiredCapabilities:Capabilities, ?opt_flow:webdriver.promise.ControlFlow):WebDriver;
	function controlFlow():webdriver.promise.ControlFlow;
	function schedule<T>(command:Command, description:String):webdriver.promise.Promise<T>;
	function getSession():webdriver.promise.Promise<Session>;
	function getCapabilities():webdriver.promise.Promise<Capabilities>;
	function quit():webdriver.promise.Promise<Void>;
	function actions():ActionSequence;
	@:overload(function<T>(script:haxe.Constraints.Function, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<T> { })
	function executeScript<T>(script:String, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<T>;
	@:overload(function<T>(script:haxe.Constraints.Function, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<T> { })
	function executeAsyncScript<T>(script:String, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<T>;
	function call<T>(fn:haxe.Constraints.Function, ?opt_scope:Dynamic, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<T>;
	@:overload(function<T>(condition:WebDriver -> Dynamic, timeout:Float, ?opt_message:String):webdriver.promise.Promise<T> { })
	function wait<T>(condition:webdriver.until.Condition<T>, timeout:Float, ?opt_message:String):webdriver.promise.Promise<T>;
	function sleep(ms:Float):webdriver.promise.Promise<Void>;
	function getWindowHandle():webdriver.promise.Promise<String>;
	function getAllWindowHandles():webdriver.promise.Promise<Array<String>>;
	function getPageSource():webdriver.promise.Promise<String>;
	function close():webdriver.promise.Promise<Void>;
	function get(url:String):webdriver.promise.Promise<Void>;
	function getCurrentUrl():webdriver.promise.Promise<String>;
	function getTitle():webdriver.promise.Promise<String>;
	@:overload(function(locatorOrElement:Dynamic, var_args:haxe.extern.Rest<Dynamic>):WebElementPromise { })
	function findElement(locatorOrElement:Locator, var_args:haxe.extern.Rest<Dynamic>):WebElementPromise;
	@:overload(function(locatorOrElement:Dynamic, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<Bool> { })
	function isElementPresent(locatorOrElement:Locator, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<Bool>;
	@:overload(function(locator:Dynamic, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<Array<WebElement>> { })
	function findElements(locator:Locator, var_args:haxe.extern.Rest<Dynamic>):webdriver.promise.Promise<Array<WebElement>>;
	function takeScreenshot():webdriver.promise.Promise<String>;
	function manage():WebDriverOptions;
	function navigate():WebDriverNavigation;
	function switchTo():WebDriverTargetLocator;
}
typedef IWebElementId = {
	var ELEMENT : String;
};
typedef IWebElement = {
	function click():webdriver.promise.Promise<Void>;
	function sendKeys(var_args:haxe.extern.Rest<String>):webdriver.promise.Promise<Void>;
	function getTagName():webdriver.promise.Promise<String>;
	function getCssValue(cssStyleProperty:String):webdriver.promise.Promise<String>;
	function getAttribute(attributeName:String):webdriver.promise.Promise<String>;
	function getText():webdriver.promise.Promise<String>;
	function getSize():webdriver.promise.Promise<ISize>;
	function getLocation():webdriver.promise.Promise<ILocation>;
	function isEnabled():webdriver.promise.Promise<Bool>;
	function isSelected():webdriver.promise.Promise<Bool>;
	function submit():webdriver.promise.Promise<Void>;
	function clear():webdriver.promise.Promise<Void>;
	function isDisplayed():webdriver.promise.Promise<Bool>;
	function getOuterHtml():webdriver.promise.Promise<String>;
	function getId():webdriver.promise.Promise<IWebElementId>;
	function getInnerHtml():webdriver.promise.Promise<String>;
};
typedef IWebElementFinders = {
	@:overload(function(locator:Dynamic):WebElementPromise { })
	function findElement(locator:Locator):WebElementPromise;
	@:overload(function(locator:Dynamic):webdriver.promise.Promise<Bool> { })
	function isElementPresent(locator:Locator):webdriver.promise.Promise<Bool>;
	@:overload(function(locator:Dynamic):webdriver.promise.Promise<Array<WebElement>> { })
	function findElements(locator:Locator):webdriver.promise.Promise<Array<WebElement>>;
};
extern class WebElement {
	@:overload(function(driver:WebDriver, id:IWebElementId):Void { })
	function new(driver:WebDriver, id:webdriver.promise.Promise<IWebElementId>):Void;
	static var ELEMENT_KEY : String;
	function getDriver():WebDriver;
	@:overload(function(locator:Dynamic):WebElementPromise { })
	function findElement(locator:Locator):WebElementPromise;
	@:overload(function(locator:Dynamic):webdriver.promise.Promise<Bool> { })
	function isElementPresent(locator:Locator):webdriver.promise.Promise<Bool>;
	@:overload(function(locator:Dynamic):webdriver.promise.Promise<Array<WebElement>> { })
	function findElements(locator:Locator):webdriver.promise.Promise<Array<WebElement>>;
	function click():webdriver.promise.Promise<Void>;
	function sendKeys(var_args:haxe.extern.Rest<String>):webdriver.promise.Promise<Void>;
	function getTagName():webdriver.promise.Promise<String>;
	function getCssValue(cssStyleProperty:String):webdriver.promise.Promise<String>;
	function getAttribute(attributeName:String):webdriver.promise.Promise<String>;
	function getText():webdriver.promise.Promise<String>;
	function getSize():webdriver.promise.Promise<ISize>;
	function getLocation():webdriver.promise.Promise<ILocation>;
	function isEnabled():webdriver.promise.Promise<Bool>;
	function isSelected():webdriver.promise.Promise<Bool>;
	function submit():webdriver.promise.Promise<Void>;
	function clear():webdriver.promise.Promise<Void>;
	function isDisplayed():webdriver.promise.Promise<Bool>;
	function getOuterHtml():webdriver.promise.Promise<String>;
	function getId():webdriver.promise.Promise<IWebElementId>;
	function getInnerHtml():webdriver.promise.Promise<String>;
	static function equals(a:WebElement, b:WebElement):webdriver.promise.Promise<Bool>;
}
extern class WebElementPromise extends WebElement {
	function cancel(?opt_reason:String):Void;
	function isPending():Bool;
	@:overload(function<R>(?opt_callback:WebElement -> R, ?opt_errback:Dynamic -> Dynamic):webdriver.promise.Promise<R> { })
	function then<R>(?opt_callback:WebElement -> webdriver.promise.Promise<R>, ?opt_errback:Dynamic -> Dynamic):webdriver.promise.Promise<R>;
	function thenCatch<R>(errback:Dynamic -> Dynamic):webdriver.promise.Promise<R>;
	function thenFinally<R>(callback:Void -> Dynamic):webdriver.promise.Promise<R>;
}
typedef ILocatorStrategy = {
	function className(value:String):Locator;
	function css(value:String):Locator;
	function id(value:String):Locator;
	function js(script:Dynamic, var_args:haxe.extern.Rest<Dynamic>):webdriver.WebDriver -> webdriver.promise.Promise<Dynamic>;
	function linkText(value:String):Locator;
	function name(value:String):Locator;
	function partialLinkText(value:String):Locator;
	function tagName(value:String):Locator;
	function xpath(value:String):Locator;
};
typedef Locator = {
	var using : String;
	var value : String;
	function toString():String;
};
extern class Session {
	@:overload(function(id:String, capabilities:Dynamic):Void { })
	function new(id:String, capabilities:Capabilities):Void;
	function getId():String;
	function getCapabilities():Capabilities;
	function getCapability(key:String):Dynamic;
	function toJSON():String;
}
