typedef IContactRemovedEventArgs = {
	var id : String;
};
extern class ContactRemovedEventArgs {
	var id : String;
}
@:enum abstract AddContactResult(Int) {
	var added = 0;
	var alreadyAdded = 1;
	var unavailable = 2;
}
typedef IContactPickerUI = {
	var desiredFields : Windows.Foundation.Collections.IVectorView<String>;
	var selectionMode : Windows.ApplicationModel.Contacts.ContactSelectionMode;
	function addContact(id:String, contact:Windows.ApplicationModel.Contacts.Contact):Windows.ApplicationModel.Contacts.Provider.AddContactResult;
	function removeContact(id:String):Void;
	function containsContact(id:String):Bool;
	var oncontactremoved : Dynamic;
};
extern class ContactPickerUI {
	var desiredFields : Windows.Foundation.Collections.IVectorView<String>;
	var selectionMode : Windows.ApplicationModel.Contacts.ContactSelectionMode;
	function addContact(id:String, contact:Windows.ApplicationModel.Contacts.Contact):Windows.ApplicationModel.Contacts.Provider.AddContactResult;
	function removeContact(id:String):Void;
	function containsContact(id:String):Bool;
	var oncontactremoved : Dynamic;
}
typedef IFileRemovedEventArgs = {
	var id : String;
};
extern class FileRemovedEventArgs {
	var id : String;
}
@:enum abstract AddFileResult(Int) {
	var added = 0;
	var alreadyAdded = 1;
	var notAllowed = 2;
	var unavailable = 3;
}
@:enum abstract FileSelectionMode(Int) {
	var single = 0;
	var multiple = 1;
}
typedef IFileOpenPickerUI = {
	var allowedFileTypes : Windows.Foundation.Collections.IVectorView<String>;
	var selectionMode : Windows.Storage.Pickers.Provider.FileSelectionMode;
	var settingsIdentifier : String;
	var title : String;
	function addFile(id:String, file:Windows.Storage.IStorageFile):Windows.Storage.Pickers.Provider.AddFileResult;
	function removeFile(id:String):Void;
	function containsFile(id:String):Bool;
	function canAddFile(file:Windows.Storage.IStorageFile):Bool;
	var onfileremoved : Dynamic;
	var onclosing : Dynamic;
};
extern class FileOpenPickerUI {
	var allowedFileTypes : Windows.Foundation.Collections.IVectorView<String>;
	var selectionMode : Windows.Storage.Pickers.Provider.FileSelectionMode;
	var settingsIdentifier : String;
	var title : String;
	function addFile(id:String, file:Windows.Storage.IStorageFile):Windows.Storage.Pickers.Provider.AddFileResult;
	function removeFile(id:String):Void;
	function containsFile(id:String):Bool;
	function canAddFile(file:Windows.Storage.IStorageFile):Bool;
	var onfileremoved : Dynamic;
	var onclosing : Dynamic;
}
extern class PickerClosingEventArgs {
	var closingOperation : Windows.Storage.Pickers.Provider.PickerClosingOperation;
	var isCanceled : Bool;
}
typedef IPickerClosingEventArgs = {
	var closingOperation : Windows.Storage.Pickers.Provider.PickerClosingOperation;
	var isCanceled : Bool;
};
extern class PickerClosingOperation {
	var deadline : Date;
	function getDeferral():Windows.Storage.Pickers.Provider.PickerClosingDeferral;
}
typedef IPickerClosingOperation = {
	var deadline : Date;
	function getDeferral():Windows.Storage.Pickers.Provider.PickerClosingDeferral;
};
extern class PickerClosingDeferral {
	function complete():Void;
}
typedef IPickerClosingDeferral = {
	function complete():Void;
};
@:enum abstract SetFileNameResult(Int) {
	var succeeded = 0;
	var notAllowed = 1;
	var unavailable = 2;
}
typedef IFileSavePickerUI = {
	var allowedFileTypes : Windows.Foundation.Collections.IVectorView<String>;
	var fileName : String;
	var settingsIdentifier : String;
	var title : String;
	function trySetFileName(value:String):Windows.Storage.Pickers.Provider.SetFileNameResult;
	var onfilenamechanged : Dynamic;
	var ontargetfilerequested : Dynamic;
};
extern class FileSavePickerUI {
	var allowedFileTypes : Windows.Foundation.Collections.IVectorView<String>;
	var fileName : String;
	var settingsIdentifier : String;
	var title : String;
	function trySetFileName(value:String):Windows.Storage.Pickers.Provider.SetFileNameResult;
	var onfilenamechanged : Dynamic;
	var ontargetfilerequested : Dynamic;
}
extern class TargetFileRequestedEventArgs {
	var request : Windows.Storage.Pickers.Provider.TargetFileRequest;
}
typedef ITargetFileRequestedEventArgs = {
	var request : Windows.Storage.Pickers.Provider.TargetFileRequest;
};
extern class TargetFileRequest {
	var targetFile : Windows.Storage.IStorageFile;
	function getDeferral():Windows.Storage.Pickers.Provider.TargetFileRequestDeferral;
}
typedef ITargetFileRequest = {
	var targetFile : Windows.Storage.IStorageFile;
	function getDeferral():Windows.Storage.Pickers.Provider.TargetFileRequestDeferral;
};
extern class TargetFileRequestDeferral {
	function complete():Void;
}
typedef ITargetFileRequestDeferral = {
	function complete():Void;
};
@:enum abstract CachedFileTarget(Int) {
	var local = 0;
	var remote = 1;
}
@:enum abstract UIStatus(Int) {
	var unavailable = 0;
	var hidden = 1;
	var visible = 2;
	var complete = 3;
}
typedef ICachedFileUpdaterUI = {
	var title : String;
	var uIStatus : Windows.Storage.Provider.UIStatus;
	var updateTarget : Windows.Storage.Provider.CachedFileTarget;
	var onfileupdaterequested : Dynamic;
	var onuirequested : Dynamic;
};
extern class CachedFileUpdaterUI {
	var title : String;
	var uIStatus : Windows.Storage.Provider.UIStatus;
	var updateTarget : Windows.Storage.Provider.CachedFileTarget;
	var onfileupdaterequested : Dynamic;
	var onuirequested : Dynamic;
}
extern class FileUpdateRequestedEventArgs {
	var request : Windows.Storage.Provider.FileUpdateRequest;
}
typedef IFileUpdateRequestedEventArgs = {
	var request : Windows.Storage.Provider.FileUpdateRequest;
};
extern class FileUpdateRequest {
	var contentId : String;
	var file : Windows.Storage.StorageFile;
	var status : Windows.Storage.Provider.FileUpdateStatus;
	function getDeferral():Windows.Storage.Provider.FileUpdateRequestDeferral;
	function updateLocalFile(value:Windows.Storage.IStorageFile):Void;
}
typedef IFileUpdateRequest = {
	var contentId : String;
	var file : Windows.Storage.StorageFile;
	var status : Windows.Storage.Provider.FileUpdateStatus;
	function getDeferral():Windows.Storage.Provider.FileUpdateRequestDeferral;
	function updateLocalFile(value:Windows.Storage.IStorageFile):Void;
};
extern class FileUpdateRequestDeferral {
	function complete():Void;
}
typedef IFileUpdateRequestDeferral = {
	function complete():Void;
};
@:enum abstract FileUpdateStatus(Int) {
	var incomplete = 0;
	var complete = 1;
	var userInputNeeded = 2;
	var currentlyUnavailable = 3;
	var failed = 4;
	var completeAndRenamed = 5;
}
@:enum abstract CachedFileOptions(Int) {
	var none = 0;
	var requireUpdateOnAccess = 1;
	var useCachedFileWhenOffline = 2;
	var denyAccessWhenOffline = 3;
}
@:enum abstract ReadActivationMode(Int) {
	var notNeeded = 0;
	var beforeAccess = 1;
}
@:enum abstract WriteActivationMode(Int) {
	var readOnly = 0;
	var notNeeded = 1;
	var afterWrite = 2;
}
typedef ICachedFileUpdaterStatics = {
	function setUpdateInformation(file:Windows.Storage.IStorageFile, contentId:String, readMode:Windows.Storage.Provider.ReadActivationMode, writeMode:Windows.Storage.Provider.WriteActivationMode, options:Windows.Storage.Provider.CachedFileOptions):Void;
};
extern class CachedFileUpdater {
	static function setUpdateInformation(file:Windows.Storage.IStorageFile, contentId:String, readMode:Windows.Storage.Provider.ReadActivationMode, writeMode:Windows.Storage.Provider.WriteActivationMode, options:Windows.Storage.Provider.CachedFileOptions):Void;
}
