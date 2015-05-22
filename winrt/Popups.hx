@:enum abstract MessageDialogOptions(Int) {
	var none = 0;
	var acceptUserInputAfterDelay = 1;
}
typedef IMessageDialog = {
	var cancelCommandIndex : Float;
	var commands : Windows.Foundation.Collections.IVector<Windows.UI.Popups.IUICommand>;
	var content : String;
	var defaultCommandIndex : Float;
	var options : Windows.UI.Popups.MessageDialogOptions;
	var title : String;
	function showAsync():Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
};
typedef IMessageDialogFactory = {
	function create(content:String):Windows.UI.Popups.MessageDialog;
	function createWithTitle(content:String, title:String):Windows.UI.Popups.MessageDialog;
};
extern class MessageDialog {
	@:overload(function(content:String, title:String):Void { })
	function new(content:String):Void;
	var cancelCommandIndex : Float;
	var commands : Windows.Foundation.Collections.IVector<Windows.UI.Popups.IUICommand>;
	var content : String;
	var defaultCommandIndex : Float;
	var options : Windows.UI.Popups.MessageDialogOptions;
	var title : String;
	function showAsync():Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
}
@:enum abstract Placement(Int) {
	var default = 0;
	var above = 1;
	var below = 2;
	var left = 3;
	var right = 4;
}
typedef UICommandInvokedHandler = { };
typedef IUICommand = {
	var id : Dynamic;
	var invoked : Windows.UI.Popups.UICommandInvokedHandler;
	var label : String;
};
typedef IUICommandFactory = {
	function create(label:String):Windows.UI.Popups.UICommand;
	function createWithHandler(label:String, action:Windows.UI.Popups.UICommandInvokedHandler):Windows.UI.Popups.UICommand;
	function createWithHandlerAndId(label:String, action:Windows.UI.Popups.UICommandInvokedHandler, commandId:Dynamic):Windows.UI.Popups.UICommand;
};
extern class UICommand {
	@:overload(function(label:String, action:Windows.UI.Popups.UICommandInvokedHandler):Void { })
	@:overload(function(label:String, action:Windows.UI.Popups.UICommandInvokedHandler, commandId:Dynamic):Void { })
	@:overload(function():Void { })
	function new(label:String):Void;
	var id : Dynamic;
	var invoked : Windows.UI.Popups.UICommandInvokedHandler;
	var label : String;
}
extern class UICommandSeparator {
	var id : Dynamic;
	var invoked : Windows.UI.Popups.UICommandInvokedHandler;
	var label : String;
}
typedef IPopupMenu = {
	var commands : Windows.Foundation.Collections.IVector<Windows.UI.Popups.IUICommand>;
	function showAsync(invocationPoint:Windows.Foundation.Point):Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
	@:overload(function(selection:Windows.Foundation.Rect, preferredPlacement:Windows.UI.Popups.Placement):Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand> { })
	function showForSelectionAsync(selection:Windows.Foundation.Rect):Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
};
extern class PopupMenu {
	var commands : Windows.Foundation.Collections.IVector<Windows.UI.Popups.IUICommand>;
	function showAsync(invocationPoint:Windows.Foundation.Point):Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
	@:overload(function(selection:Windows.Foundation.Rect, preferredPlacement:Windows.UI.Popups.Placement):Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand> { })
	function showForSelectionAsync(selection:Windows.Foundation.Rect):Windows.Foundation.IAsyncOperation<Windows.UI.Popups.IUICommand>;
}
