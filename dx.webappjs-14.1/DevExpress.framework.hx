typedef DxViewOptions = {
	var name : String;
	@:optional
	var title : String;
	@:optional
	var layout : String;
};
extern class DxView extends Component {
	function new(?options:DxViewOptions):Void;
}
typedef DxLayoutOptions = {
	var name : String;
	var controller : String;
};
extern class DxLayout extends Component {
	function new(?options:DxLayoutOptions):Void;
}
typedef DxViewPlaceholderOptions = {
	var viewName : String;
};
extern class DxViewPlaceholder extends Component {
	function new(?options:DxLayoutOptions):Void;
}
typedef DxTransitionOptions = {
	var name : String;
	var type : String;
};
extern class DxTransition extends Component {
	function new(?options:DxLayoutOptions):Void;
}
typedef DxContentPlaceholderOptions = {
	var name : String;
	var transition : String;
};
extern class DxContentPlaceholder extends Component {
	function new(?options:DxLayoutOptions):Void;
}
typedef DxContentOptions = {
	var targetPlaceholder : String;
};
extern class DxContent extends Component {
	function new(?options:DxLayoutOptions):Void;
}
typedef DxCommandOptions = {
	>ComponentOptions,
	var id : String;
	@:optional
	var action : Dynamic;
	@:optional
	var icon : String;
	@:optional
	var title : String;
	@:optional
	var iconSrc : String;
	@:optional
	var visible : Bool;
};
extern class DxCommand extends Component {
	var beforeExecute : JQueryCallback;
	var afterExecute : JQueryCallback;
	@:overload(function(element:Element, ?options:DxCommandOptions):Void { })
	function new(element:JQuery, ?options:DxCommandOptions):Void;
	function execute():Void;
}
extern class DxCommandContainer extends Component {
	@:overload(function(element:JQuery, ?options:ComponentOptions):Void { })
	@:overload(function(element:Element, ?options:ComponentOptions):Void { })
	function new(options:ComponentOptions):Void;
}
typedef CommandMap = { };
extern class CommandMapping {
	function new():Void;
	static var defaultMapping : CommandMap;
	function mapCommands(containerId:String, commandMappings:Array<Dynamic>):CommandMapping;
	function unmapCommands(containerId:String, commandIds:Array<String>):Void;
	function getCommandMappingForContainer(commandId:String, containerId:String):Dynamic;
	function load(config:CommandMap):CommandMapping;
}
typedef IViewCache = {
	var viewRemoved : JQueryCallback;
	function setView(key:String, viewInfo:Dynamic):Void;
	function removeView(key:String):Dynamic;
	function hasView(viewInfo:Dynamic):Bool;
	function getView(key:String):Dynamic;
	function clear():Void;
};
extern class ViewCache {
	var viewRemoved : JQueryCallback;
	function new():Void;
	function setView(key:String, viewInfo:Dynamic):Void;
	function removeView(key:String):Dynamic;
	function hasView(viewInfo:Dynamic):Bool;
	function getView(key:String):Dynamic;
	function clear():Void;
}
extern class NullViewCache {
	var viewRemoved : JQueryCallback;
	function new():Void;
	function setView(key:String, viewInfo:Dynamic):Void;
	function removeView(key:String):Dynamic;
	function hasView(viewInfo:Dynamic):Bool;
	function getView(key:String):Dynamic;
	function clear():Void;
}
extern class CapacityViewCacheDecorator {
	var viewRemoved : JQueryCallback;
	function new(options:{ var size : Float; var viewCache : IViewCache; }):Void;
	function setView(key:String, viewInfo:Dynamic):Void;
	function removeView(key:String):Dynamic;
	function hasView(viewInfo:Dynamic):Bool;
	function getView(key:String):Dynamic;
	function clear():Void;
}
extern class ConditionalViewCacheDecorator {
	var viewRemoved : JQueryCallback;
	function new(options:{ var filter : String -> Dynamic -> Bool; var viewCache : IViewCache; }):Void;
	function setView(key:String, viewInfo:Dynamic):Void;
	function removeView(key:String):Dynamic;
	function hasView(viewInfo:Dynamic):Bool;
	function getView(key:String):Dynamic;
	function clear():Void;
}
extern class HistoryDependentViewCacheDecorator {
	var viewRemoved : JQueryCallback;
	function new(options:{ var navigationManager : StackBasedNavigationManager; var viewCache : IViewCache; }):Void;
	function setView(key:String, viewInfo:Dynamic):Void;
	function removeView(key:String):Dynamic;
	function hasView(viewInfo:Dynamic):Bool;
	function getView(key:String):Dynamic;
	function clear():Void;
}
typedef IStorage = {
	function getItem(key:String):Dynamic;
	function setItem(key:String, value:Dynamic):Void;
	function removeItem(key:String):Void;
};
extern class MemoryKeyValueStorage {
	function new():Void;
	function getItem(key:String):Dynamic;
	function setItem(key:String, value:Dynamic):Void;
	function removeItem(key:String):Void;
}
typedef StateManagerOptions = {
	@:optional
	var storage : IStorage;
	@:optional
	var stateSources : Array<Dynamic>;
};
extern class StateManager {
	var storage : IStorage;
	var stateSources : Array<Dynamic>;
	function new(?options:StateManagerOptions):Void;
	function addStateSource(stateSource:Dynamic):Void;
	function removeStateSource(stateSource:Dynamic):Void;
	function saveState():Void;
	function restoreState():Void;
	function clearState():Void;
}
extern class Route {
	function new(pattern:String, ?defaults:Dynamic, ?constraints:Dynamic):Void;
	function parse(url:String):Dynamic;
	function format(routeValues:Dynamic):String;
	function formatSegment(value:Dynamic):String;
	function parseSegment():Dynamic;
}
extern class MvcRouter {
	function new():Void;
	function register(pattern:String, ?defaults:Dynamic, ?constraints:Dynamic):Void;
	function parse(uri:String):Dynamic;
	function format(obj:Dynamic):String;
}
typedef BrowserAdapterOptions = {
	var window : Window;
};
extern class DefaultBrowserAdapter {
	function new(?options:BrowserAdapterOptions):Void;
	function replaceState(uri:String):Void;
	function pushState(uri:String):Void;
	function createRootPage():Void;
	function getWindowName():String;
	function setWindowName(windowName:String):Void;
	function back():Void;
	function getHash():String;
	function isRootPage():Bool;
}
extern class OldBrowserAdapter extends DefaultBrowserAdapter {

}
extern class HistorylessBrowserAdapter extends DefaultBrowserAdapter {

}
typedef INavigationDevice = {
	var init : haxe.Constraints.Function;
	function setUri(uri:String):Void;
	function getUri():String;
	function back():Void;
};
extern class StackBasedNavigationDevice extends HistoryBasedNavigationDevice {
	var uriChanged : JQueryCallback;
	function new(?options:BrowserAdapterOptions):Void;
}
extern class HistoryBasedNavigationDevice {
	var backInitiated : JQueryCallback;
	var init : haxe.Constraints.Function;
	function setUri(uri:String):Void;
	function getUri():String;
	function back():Void;
}
extern class NavigationStack {
	var items : Array<Dynamic>;
	var currentIndex : Float;
	var itemsRemoved : JQueryCallback;
	function new():Void;
	function currentItem():Dynamic;
	function back(uri:String):Void;
	function forward():Void;
	function navigate(uri:Dynamic, ?replaceCurrent:Bool):Dynamic;
	function getPreviousItem():Dynamic;
	function canBack():Bool;
	function clear():Void;
}
typedef NavigationManagerOptions = {
	@:optional
	var stateStorageKey : String;
	@:optional
	var navigationDevice : INavigationDevice;
	@:optional
	var keepPositionInStack : Bool;
};
typedef INavigationManager = {
	var navigating : JQueryCallback;
	var navigated : JQueryCallback;
	var navigatingBack : JQueryCallback;
	var navigationCanceled : JQueryCallback;
	var itemRemoved : JQueryCallback;
	function navigate(uri:Dynamic, ?options:{ @:optional
	var root : Bool; @:optional
	var target : String; @:optional
	var direction : String; }):Void;
	@:overload(function(alternate:Dynamic):Void { })
	function back():Void;
	function canBack():Bool;
	function rootUri():String;
	function currentItem():Dynamic;
	function previousItem():Dynamic;
	function saveState():Void;
	function removeState():Void;
	function restoreState():Void;
};
extern class StackBasedNavigationManager extends HistoryBasedNavigationManager {
	function init():JQueryPromise<Dynamic>;
	var currentStack : NavigationStack;
	var navigationStacks : { };
	var navigating : JQueryCallback;
	var navigated : JQueryCallback;
	var navigatingBack : JQueryCallback;
	var navigationCanceled : JQueryCallback;
	var itemRemoved : JQueryCallback;
	function new(?options:NavigationManagerOptions):Void;
	function navigate(uri:Dynamic, ?options:{ @:optional
	var root : Bool; @:optional
	var target : String; @:optional
	var direction : String; }):Void;
	function currentIndex():Float;
	function getItemByIndex(index:Float):Dynamic;
	function clearHistory():Void;
}
extern class HistoryBasedNavigationManager {
	var navigating : JQueryCallback;
	var navigated : JQueryCallback;
	var navigatingBack : JQueryCallback;
	var navigationCanceled : JQueryCallback;
	var itemRemoved : JQueryCallback;
	function new(?options:NavigationManagerOptions):Void;
	function navigate(uri:Dynamic, ?options:{ @:optional
	var root : Bool; @:optional
	var target : String; @:optional
	var direction : String; }):Void;
	@:overload(function(alternate:Dynamic):Void { })
	function back():Void;
	function canBack():Bool;
	function rootUri():String;
	function currentItem():Dynamic;
	function previousItem():Dynamic;
	function saveState():Void;
	function removeState():Void;
	function restoreState():Void;
}
