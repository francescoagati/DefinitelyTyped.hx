typedef ISettingsCommandFactory = {
	function create(settingsCommandId:Dynamic, label:String, handler:Windows.UI.Popups.UICommandInvokedHandler):Windows.UI.ApplicationSettings.SettingsCommand;
};
extern class SettingsCommand {
	function new(settingsCommandId:Dynamic, label:String, handler:Windows.UI.Popups.UICommandInvokedHandler):Void;
	var id : Dynamic;
	var invoked : Windows.UI.Popups.UICommandInvokedHandler;
	var label : String;
}
typedef ISettingsPaneCommandsRequest = {
	var applicationCommands : Windows.Foundation.Collections.IVector<Windows.UI.ApplicationSettings.SettingsCommand>;
};
extern class SettingsPaneCommandsRequest {
	var applicationCommands : Windows.Foundation.Collections.IVector<Windows.UI.ApplicationSettings.SettingsCommand>;
}
typedef ISettingsPaneCommandsRequestedEventArgs = {
	var request : Windows.UI.ApplicationSettings.SettingsPaneCommandsRequest;
};
extern class SettingsPaneCommandsRequestedEventArgs {
	var request : Windows.UI.ApplicationSettings.SettingsPaneCommandsRequest;
}
@:enum abstract SettingsEdgeLocation(Int) {
	var right = 0;
	var left = 1;
}
typedef ISettingsPaneStatics = {
	var edge : Windows.UI.ApplicationSettings.SettingsEdgeLocation;
	function getForCurrentView():Windows.UI.ApplicationSettings.SettingsPane;
	function show():Void;
};
extern class SettingsPane {
	var oncommandsrequested : Dynamic;
	static var edge : Windows.UI.ApplicationSettings.SettingsEdgeLocation;
	static function getForCurrentView():Windows.UI.ApplicationSettings.SettingsPane;
	static function show():Void;
}
typedef ISettingsPane = {
	var oncommandsrequested : Dynamic;
};
