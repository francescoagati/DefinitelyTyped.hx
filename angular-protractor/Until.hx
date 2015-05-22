extern class Condition<T> extends webdriver.until.Condition<T> {

}
extern class UntilTopLevel {
	static function ableToSwitchToFrame(frame:Float):webdriver.until.Condition<Bool>;
	static function ableToSwitchToFrame(frame:webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function ableToSwitchToFrame(frame:webdriver.Locator):webdriver.until.Condition<Bool>;
	static function ableToSwitchToFrame(frame:webdriver.WebDriver -> webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function ableToSwitchToFrame(frame:Dynamic):webdriver.until.Condition<Bool>;
	static function alertIsPresent():webdriver.until.Condition<webdriver.Alert>;
	static function elementIsDisabled(element:webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function elementIsEnabled(element:webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function elementIsNotSelected(element:webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function elementIsNotVisible(element:webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function elementIsSelected(element:webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function elementIsVisible(element:webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function elementLocated(locator:webdriver.Locator):webdriver.until.Condition<webdriver.IWebElement>;
	static function elementLocated(locator:Dynamic):webdriver.until.Condition<webdriver.IWebElement>;
	static function elementTextContains(element:webdriver.IWebElement, substr:String):webdriver.until.Condition<Bool>;
	static function elementTextIs(element:webdriver.IWebElement, text:String):webdriver.until.Condition<Bool>;
	static function elementTextMatches(element:webdriver.IWebElement, regex:js.RegExp):webdriver.until.Condition<Bool>;
	static function elementsLocated(locator:webdriver.Locator):webdriver.until.Condition<Array<webdriver.IWebElement>>;
	static function elementsLocated(locator:Dynamic):webdriver.until.Condition<Array<webdriver.IWebElement>>;
	static function stalenessOf(element:webdriver.IWebElement):webdriver.until.Condition<Bool>;
	static function titleContains(substr:String):webdriver.until.Condition<Bool>;
	static function titleIs(title:String):webdriver.until.Condition<Bool>;
	static function titleMatches(regex:js.RegExp):webdriver.until.Condition<Bool>;
	static var By : IProtractorLocatorStrategy;
	static function wrapDriver(webdriver:webdriver.WebDriver, ?opt_baseUrl:String, ?opt_rootElement:String):Protractor;
	static var browser : protractor.IBrowser;
	static var by : protractor.IProtractorLocatorStrategy;
	static var By : protractor.IProtractorLocatorStrategy;
	static var element : protractor.Element;
	static var $ : CssSelectorHelper;
	static var $$ : CssArraySelectorHelper;
}
typedef Element = {
	function all(locator:webdriver.Locator):ElementArrayFinder;
};
typedef ElementFinder = {
	>webdriver.IWebElement,
	>webdriver.promise.IThenable<Dynamic>,
	function element(subLocator:webdriver.Locator):ElementFinder;
	function all(subLocator:webdriver.Locator):ElementArrayFinder;
	function $(selector:String):ElementFinder;
	function $$(selector:String):ElementArrayFinder;
	function isPresent():webdriver.promise.Promise<Bool>;
	function isElementPresent(subLocator:webdriver.Locator):webdriver.promise.Promise<Bool>;
	function locator():webdriver.Locator;
	function getWebElement():webdriver.WebElement;
	function evaluate(expression:String):ElementFinder;
	function allowAnimations(value:String):ElementFinder;
	function clone():ElementFinder;
};
typedef ElementArrayFinder = {
	>webdriver.promise.IThenable<Array<ElementFinder>>,
	function getWebElements():Array<webdriver.WebElement>;
	function get(index:Float):ElementFinder;
	function first():ElementFinder;
	function last():ElementFinder;
	function count():webdriver.promise.Promise<Float>;
	function each(fn:ElementFinder -> Float -> Void):Void;
	function map<T>(mapFn:ElementFinder -> Float -> T):webdriver.promise.Promise<Array<T>>;
	function filter(filterFn:ElementFinder -> Float -> Dynamic):ElementArrayFinder;
	@:overload(function<T>(reduceFn:T -> ElementFinder -> Float -> Array<ElementFinder> -> T, initialValue:T):webdriver.promise.Promise<T> { })
	function reduce<T>(reduceFn:T -> ElementFinder -> Float -> Array<ElementFinder> -> webdriver.promise.Promise<T>, initialValue:T):webdriver.promise.Promise<T>;
	function asElementFinders_():Array<ElementFinder>;
	function clone():ElementArrayFinder;
	function all(locator:webdriver.Locator):ElementArrayFinder;
	function $$(selector:String):ElementArrayFinder;
	function toElementFinder_():ElementFinder;
	function locator():webdriver.Locator;
	function evaluate(expression:String):ElementArrayFinder;
	function allowAnimations(value:Bool):ElementArrayFinder;
	function click():webdriver.promise.Promise<Void>;
	function sendKeys(var_args:haxe.extern.Rest<String>):webdriver.promise.Promise<Void>;
	function getTagName():webdriver.promise.Promise<Array<String>>;
	function getCssValue(cssStyleProperty:String):webdriver.promise.Promise<Array<String>>;
	function getAttribute(attributeName:String):webdriver.promise.Promise<Array<String>>;
	function getText():webdriver.promise.Promise<Array<String>>;
	function getSize():webdriver.promise.Promise<Array<webdriver.ISize>>;
	function getLocation():webdriver.promise.Promise<Array<webdriver.ILocation>>;
	function isEnabled():webdriver.promise.Promise<Array<Bool>>;
	function isSelected():webdriver.promise.Promise<Array<Bool>>;
	function submit():webdriver.promise.Promise<Void>;
	function clear():webdriver.promise.Promise<Void>;
	function isDisplayed():webdriver.promise.Promise<Array<Bool>>;
	function getOuterHtml():webdriver.promise.Promise<Array<String>>;
	function getId():webdriver.promise.Promise<Array<webdriver.IWebElementId>>;
	function getInnerHtml():webdriver.promise.Promise<Array<String>>;
};
typedef LocatorWithColumn = {
	>webdriver.Locator,
	function column(index:Float):webdriver.Locator;
};
typedef RepeaterLocator = {
	>LocatorWithColumn,
	function row(index:Float):LocatorWithColumn;
};
typedef IProtractorLocatorStrategy = {
	>webdriver.ILocatorStrategy,
	@:overload(function(name:String, script:haxe.Constraints.Function):Void { })
	function addLocator(name:String, script:String):Void;
	function binding(bindingDescriptor:String):webdriver.Locator;
	function exactBinding(bindingDescriptor:String):webdriver.Locator;
	function model(model:String):webdriver.Locator;
	function buttonText(searchText:String):webdriver.Locator;
	function partialButtonText(searchText:String):webdriver.Locator;
	function repeater(repeatDescriptor:String):RepeaterLocator;
	function cssContainingText(cssSelector:String, searchText:String):webdriver.Locator;
	function options(optionsDescriptor:String):webdriver.Locator;
};
typedef Protractor = {
	>webdriver.WebDriver,
	var driver : webdriver.WebDriver;
	function element(locator:webdriver.Locator):ElementFinder;
	function $(selector:String):ElementFinder;
	function $$(selector:String):ElementArrayFinder;
	var baseUrl : String;
	var rootEl : String;
	var ignoreSynchronization : Bool;
	var getPageTimeout : Float;
	var params : Dynamic;
	var resetUrl : String;
	function waitForAngular():webdriver.promise.Promise<Void>;
	@:overload(function(name:String, script:haxe.Constraints.Function, varArgs:haxe.extern.Rest<Dynamic>):Void { })
	function addMockModule(name:String, script:String, varArgs:haxe.extern.Rest<Dynamic>):Void;
	function clearMockModules():Void;
	function removeMockModule(name:String):Void;
	function get(destination:String, ?opt_timeout:Float):webdriver.promise.Promise<Void>;
	function refresh(?opt_timeout:Float):webdriver.promise.Promise<Void>;
	function setLocation(url:String):webdriver.promise.Promise<Void>;
	function getLocationAbsUrl():webdriver.promise.Promise<String>;
	function debugger():Void;
	function pause(?opt_debugPort:Float):Void;
};
typedef IBrowser = {
	>Protractor,
	function forkNewDriverInstance(?opt_useSameUrl:Bool, ?opt_copyMockModules:Bool):Protractor;
};
typedef CssSelectorHelper = { };
typedef CssArraySelectorHelper = { };
