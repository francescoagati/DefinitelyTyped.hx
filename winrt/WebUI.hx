typedef IActivatedDeferral = {
	function complete():Void;
};
extern class ActivatedDeferral {
	function complete():Void;
}
typedef IActivatedOperation = {
	function getDeferral():Windows.UI.WebUI.ActivatedDeferral;
};
extern class ActivatedOperation {
	function getDeferral():Windows.UI.WebUI.ActivatedDeferral;
}
typedef IActivatedEventArgsDeferral = {
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
};
extern class WebUILaunchActivatedEventArgs {
	var arguments : String;
	var tileId : String;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUISearchActivatedEventArgs {
	var language : String;
	var queryText : String;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUIShareTargetActivatedEventArgs {
	var shareOperation : Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUIFileActivatedEventArgs {
	var files : Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>;
	var verb : String;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUIProtocolActivatedEventArgs {
	var uri : Windows.Foundation.Uri;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUIFileOpenPickerActivatedEventArgs {
	var fileOpenPickerUI : Windows.Storage.Pickers.Provider.FileOpenPickerUI;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUIFileSavePickerActivatedEventArgs {
	var fileSavePickerUI : Windows.Storage.Pickers.Provider.FileSavePickerUI;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUICachedFileUpdaterActivatedEventArgs {
	var cachedFileUpdaterUI : Windows.Storage.Provider.CachedFileUpdaterUI;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUIContactPickerActivatedEventArgs {
	var contactPickerUI : Windows.ApplicationModel.Contacts.Provider.ContactPickerUI;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUIDeviceActivatedEventArgs {
	var deviceInformationId : String;
	var verb : String;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUIPrintTaskSettingsActivatedEventArgs {
	var configuration : Windows.Devices.Printers.Extensions.PrintTaskConfiguration;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
extern class WebUICameraSettingsActivatedEventArgs {
	var videoDeviceController : Dynamic;
	var videoDeviceExtension : Dynamic;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
	var activatedOperation : Windows.UI.WebUI.ActivatedOperation;
}
typedef ActivatedEventHandler = { };
typedef ResumingEventHandler = { };
typedef SuspendingEventHandler = { };
typedef NavigatedEventHandler = { };
typedef IWebUINavigatedEventArgs = {
	var navigatedOperation : Windows.UI.WebUI.WebUINavigatedOperation;
};
extern class WebUINavigatedOperation {
	function getDeferral():Windows.UI.WebUI.WebUINavigatedDeferral;
}
extern class SuspendingDeferral {
	function complete():Void;
}
extern class SuspendingOperation {
	var deadline : Date;
	function getDeferral():Windows.ApplicationModel.SuspendingDeferral;
}
extern class SuspendingEventArgs {
	var suspendingOperation : Windows.ApplicationModel.SuspendingOperation;
}
typedef IWebUIBackgroundTaskInstance = {
	var succeeded : Bool;
};
typedef IWebUIBackgroundTaskInstanceStatics = {
	var current : Windows.UI.WebUI.IWebUIBackgroundTaskInstance;
};
extern class WebUIBackgroundTaskInstanceRuntimeClass {
	var succeeded : Bool;
	var instanceId : String;
	var progress : Float;
	var suspendedCount : Float;
	var task : Windows.ApplicationModel.Background.BackgroundTaskRegistration;
	var triggerDetails : Dynamic;
	var oncanceled : Dynamic;
	function getDeferral():Windows.ApplicationModel.Background.BackgroundTaskDeferral;
}
extern class WebUIBackgroundTaskInstance {
	static var current : Windows.UI.WebUI.IWebUIBackgroundTaskInstance;
}
typedef IWebUINavigatedDeferral = {
	function complete():Void;
};
extern class WebUINavigatedDeferral {
	function complete():Void;
}
typedef IWebUINavigatedOperation = {
	function getDeferral():Windows.UI.WebUI.WebUINavigatedDeferral;
};
extern class WebUINavigatedEventArgs {
	var navigatedOperation : Windows.UI.WebUI.WebUINavigatedOperation;
}
typedef IWebUIActivationStatics = {
	var onactivated : Dynamic;
	var onsuspending : Dynamic;
	var onresuming : Dynamic;
	var onnavigated : Dynamic;
};
extern class WebUIApplication {
	static var onactivated : Dynamic;
	static var onsuspending : Dynamic;
	static var onresuming : Dynamic;
	static var onnavigated : Dynamic;
}
