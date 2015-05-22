@:enum abstract AccountPictureKind(Int) {
	var smallImage = 0;
	var largeImage = 1;
	var video = 2;
}
@:enum abstract SetAccountPictureResult(Int) {
	var success = 0;
	var changeDisabled = 1;
	var largeOrDynamicError = 2;
	var videoFrameSizeError = 3;
	var fileSizeError = 4;
	var failure = 5;
}
typedef IUserInformationStatics = {
	var accountPictureChangeEnabled : Bool;
	var nameAccessAllowed : Bool;
	function getAccountPicture(kind:Windows.System.UserProfile.AccountPictureKind):Windows.Storage.IStorageFile;
	function setAccountPictureAsync(image:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.System.UserProfile.SetAccountPictureResult>;
	function setAccountPicturesAsync(smallImage:Windows.Storage.IStorageFile, largeImage:Windows.Storage.IStorageFile, video:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.System.UserProfile.SetAccountPictureResult>;
	function setAccountPictureFromStreamAsync(image:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.System.UserProfile.SetAccountPictureResult>;
	function setAccountPicturesFromStreamsAsync(smallImage:Windows.Storage.Streams.IRandomAccessStream, largeImage:Windows.Storage.Streams.IRandomAccessStream, video:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.System.UserProfile.SetAccountPictureResult>;
	var onaccountpicturechanged : Dynamic;
	function getDisplayNameAsync():Windows.Foundation.IAsyncOperation<String>;
	function getFirstNameAsync():Windows.Foundation.IAsyncOperation<String>;
	function getLastNameAsync():Windows.Foundation.IAsyncOperation<String>;
	function getPrincipalNameAsync():Windows.Foundation.IAsyncOperation<String>;
	function getSessionInitiationProtocolUriAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Uri>;
	function getDomainNameAsync():Windows.Foundation.IAsyncOperation<String>;
};
extern class UserInformation {
	static var accountPictureChangeEnabled : Bool;
	static var nameAccessAllowed : Bool;
	static function getAccountPicture(kind:Windows.System.UserProfile.AccountPictureKind):Windows.Storage.IStorageFile;
	static function setAccountPictureAsync(image:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.System.UserProfile.SetAccountPictureResult>;
	static function setAccountPicturesAsync(smallImage:Windows.Storage.IStorageFile, largeImage:Windows.Storage.IStorageFile, video:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncOperation<Windows.System.UserProfile.SetAccountPictureResult>;
	static function setAccountPictureFromStreamAsync(image:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.System.UserProfile.SetAccountPictureResult>;
	static function setAccountPicturesFromStreamsAsync(smallImage:Windows.Storage.Streams.IRandomAccessStream, largeImage:Windows.Storage.Streams.IRandomAccessStream, video:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncOperation<Windows.System.UserProfile.SetAccountPictureResult>;
	static var onaccountpicturechanged : Dynamic;
	static function getDisplayNameAsync():Windows.Foundation.IAsyncOperation<String>;
	static function getFirstNameAsync():Windows.Foundation.IAsyncOperation<String>;
	static function getLastNameAsync():Windows.Foundation.IAsyncOperation<String>;
	static function getPrincipalNameAsync():Windows.Foundation.IAsyncOperation<String>;
	static function getSessionInitiationProtocolUriAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Uri>;
	static function getDomainNameAsync():Windows.Foundation.IAsyncOperation<String>;
}
typedef ILockScreenStatics = {
	var originalImageFile : Windows.Foundation.Uri;
	function getImageStream():Windows.Storage.Streams.IRandomAccessStream;
	function setImageFileAsync(value:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	function setImageStreamAsync(value:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncAction;
};
extern class LockScreen {
	static var originalImageFile : Windows.Foundation.Uri;
	static function getImageStream():Windows.Storage.Streams.IRandomAccessStream;
	static function setImageFileAsync(value:Windows.Storage.IStorageFile):Windows.Foundation.IAsyncAction;
	static function setImageStreamAsync(value:Windows.Storage.Streams.IRandomAccessStream):Windows.Foundation.IAsyncAction;
}
typedef IGlobalizationPreferencesStatics = {
	var calendars : Windows.Foundation.Collections.IVectorView<String>;
	var clocks : Windows.Foundation.Collections.IVectorView<String>;
	var currencies : Windows.Foundation.Collections.IVectorView<String>;
	var homeGeographicRegion : String;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var weekStartsOn : Windows.Globalization.DayOfWeek;
};
extern class GlobalizationPreferences {
	static var calendars : Windows.Foundation.Collections.IVectorView<String>;
	static var clocks : Windows.Foundation.Collections.IVectorView<String>;
	static var currencies : Windows.Foundation.Collections.IVectorView<String>;
	static var homeGeographicRegion : String;
	static var languages : Windows.Foundation.Collections.IVectorView<String>;
	static var weekStartsOn : Windows.Globalization.DayOfWeek;
}
