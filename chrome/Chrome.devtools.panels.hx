typedef PanelShownEvent = {
	>chrome.events.Event,
	function addListener(callback:chrome.windows.Window -> Void):Void;
};
typedef PanelHiddenEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef PanelSearchEvent = {
	>chrome.events.Event,
	function addListener(callback:String -> ?String -> Void):Void;
};
typedef ExtensionPanel = {
	function createStatusButton(iconPath:String, tooltipText:String, disabled:Bool):Button;
	var onShown : PanelShownEvent;
	var onHidden : PanelHiddenEvent;
	var onSearch : PanelSearchEvent;
};
typedef ButtonClickedEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef Button = {
	function update(?iconPath:String, ?tooltipText:String, ?disabled:Bool):Void;
	var onClicked : ButtonClickedEvent;
};
typedef SelectionChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef ElementsPanel = {
	function createSidebarPane(title:String, ?callback:ExtensionSidebarPane -> Void):Void;
	var onSelectionChanged : SelectionChangedEvent;
};
typedef ExtensionSidebarPaneShownEvent = {
	>chrome.events.Event,
	function addListener(callback:chrome.windows.Window -> Void):Void;
};
typedef ExtensionSidebarPaneHiddenEvent = {
	>chrome.events.Event,
	function addListener(callback:haxe.Constraints.Function):Void;
};
typedef ExtensionSidebarPane = {
	function setHeight(height:String):Void;
	function setExpression(expression:String, ?rootTitle:String, ?callback:haxe.Constraints.Function):Void;
	function setObject(jsonObject:String, ?rootTitle:String, ?callback:haxe.Constraints.Function):Void;
	function setPage(path:String):Void;
	var onShown : ExtensionSidebarPaneShownEvent;
	var onHidden : ExtensionSidebarPaneHiddenEvent;
};
extern class Chrome.devtools.panelsTopLevel {
	static var elements : ElementsPanel;
	static function create(title:String, iconPath:String, pagePath:String, ?callback:ExtensionPanel -> Void):Void;
	static function setOpenResourceHandler(callback:chrome.devtools.inspectedWindow.Resource -> Void):Void;
}
