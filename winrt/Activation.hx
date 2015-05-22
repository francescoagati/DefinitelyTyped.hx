typedef ISplashScreen = {
	var imageLocation : Windows.Foundation.Rect;
	var ondismissed : Dynamic;
};
extern class SplashScreen {
	var imageLocation : Windows.Foundation.Rect;
	var ondismissed : Dynamic;
}
@:enum abstract ApplicationExecutionState(Int) {
	var notRunning = 0;
	var running = 1;
	var suspended = 2;
	var terminated = 3;
	var closedByUser = 4;
}
@:enum abstract ActivationKind(Int) {
	var launch = 0;
	var search = 1;
	var shareTarget = 2;
	var file = 3;
	var protocol = 4;
	var fileOpenPicker = 5;
	var fileSavePicker = 6;
	var cachedFileUpdater = 7;
	var contactPicker = 8;
	var device = 9;
	var printTaskSettings = 10;
	var cameraSettings = 11;
}
typedef IActivatedEventArgs = {
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
};
typedef ILaunchActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var arguments : String;
	var tileId : String;
};
extern class LaunchActivatedEventArgs {
	var arguments : String;
	var tileId : String;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef ISearchActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var language : String;
	var queryText : String;
};
extern class SearchActivatedEventArgs {
	var language : String;
	var queryText : String;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef IShareTargetActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var shareOperation : Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation;
};
extern class ShareTargetActivatedEventArgs {
	var shareOperation : Windows.ApplicationModel.DataTransfer.ShareTarget.ShareOperation;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef IFileActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var files : Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>;
	var verb : String;
};
extern class FileActivatedEventArgs {
	var files : Windows.Foundation.Collections.IVectorView<Windows.Storage.IStorageItem>;
	var verb : String;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef IProtocolActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var uri : Windows.Foundation.Uri;
};
extern class ProtocolActivatedEventArgs {
	var uri : Windows.Foundation.Uri;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef IFileOpenPickerActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var fileOpenPickerUI : Windows.Storage.Pickers.Provider.FileOpenPickerUI;
};
extern class FileOpenPickerActivatedEventArgs {
	var fileOpenPickerUI : Windows.Storage.Pickers.Provider.FileOpenPickerUI;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef IFileSavePickerActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var fileSavePickerUI : Windows.Storage.Pickers.Provider.FileSavePickerUI;
};
extern class FileSavePickerActivatedEventArgs {
	var fileSavePickerUI : Windows.Storage.Pickers.Provider.FileSavePickerUI;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef ICachedFileUpdaterActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var cachedFileUpdaterUI : Windows.Storage.Provider.CachedFileUpdaterUI;
};
extern class CachedFileUpdaterActivatedEventArgs {
	var cachedFileUpdaterUI : Windows.Storage.Provider.CachedFileUpdaterUI;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef IContactPickerActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var contactPickerUI : Windows.ApplicationModel.Contacts.Provider.ContactPickerUI;
};
extern class ContactPickerActivatedEventArgs {
	var contactPickerUI : Windows.ApplicationModel.Contacts.Provider.ContactPickerUI;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef IDeviceActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var deviceInformationId : String;
	var verb : String;
};
extern class DeviceActivatedEventArgs {
	var deviceInformationId : String;
	var verb : String;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef IPrintTaskSettingsActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var configuration : Windows.Devices.Printers.Extensions.PrintTaskConfiguration;
};
extern class PrintTaskSettingsActivatedEventArgs {
	var configuration : Windows.Devices.Printers.Extensions.PrintTaskConfiguration;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
typedef ICameraSettingsActivatedEventArgs = {
	>Windows.ApplicationModel.Activation.IActivatedEventArgs,
	var videoDeviceController : Dynamic;
	var videoDeviceExtension : Dynamic;
};
extern class CameraSettingsActivatedEventArgs {
	var videoDeviceController : Dynamic;
	var videoDeviceExtension : Dynamic;
	var kind : Windows.ApplicationModel.Activation.ActivationKind;
	var previousExecutionState : Windows.ApplicationModel.Activation.ApplicationExecutionState;
	var splashScreen : Windows.ApplicationModel.Activation.SplashScreen;
}
