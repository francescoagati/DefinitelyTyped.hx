extern class SuspendingEventArgs {
	var suspendingOperation : Windows.ApplicationModel.SuspendingOperation;
}
typedef ISuspendingDeferral = {
	function complete():Void;
};
extern class SuspendingDeferral {
	function complete():Void;
}
typedef ISuspendingOperation = {
	var deadline : Date;
	function getDeferral():Windows.ApplicationModel.SuspendingDeferral;
};
extern class SuspendingOperation {
	var deadline : Date;
	function getDeferral():Windows.ApplicationModel.SuspendingDeferral;
}
typedef ISuspendingEventArgs = {
	var suspendingOperation : Windows.ApplicationModel.SuspendingOperation;
};
typedef PackageVersion = {
	var major : Float;
	var minor : Float;
	var build : Float;
	var revision : Float;
};
typedef IPackageId = {
	var architecture : Windows.System.ProcessorArchitecture;
	var familyName : String;
	var fullName : String;
	var name : String;
	var publisher : String;
	var publisherId : String;
	var resourceId : String;
	var version : Windows.ApplicationModel.PackageVersion;
};
extern class PackageId {
	var architecture : Windows.System.ProcessorArchitecture;
	var familyName : String;
	var fullName : String;
	var name : String;
	var publisher : String;
	var publisherId : String;
	var resourceId : String;
	var version : Windows.ApplicationModel.PackageVersion;
}
typedef IPackage = {
	var dependencies : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Package>;
	var description : String;
	var displayName : String;
	var id : Windows.ApplicationModel.PackageId;
	var installedLocation : Windows.Storage.StorageFolder;
	var isBundle : Bool;
	var isDevelopmentMode : Bool;
	var isFramework : Bool;
	var isResourcePackage : Bool;
	var logo : Windows.Foundation.Uri;
	var publisherDisplayName : String;
};
extern class Package {
	static var current : Windows.ApplicationModel.Package;
	var dependencies : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Package>;
	var description : String;
	var displayName : String;
	var id : Windows.ApplicationModel.PackageId;
	var installedLocation : Windows.Storage.StorageFolder;
	var isBundle : Bool;
	var isDevelopmentMode : Bool;
	var isFramework : Bool;
	var isResourcePackage : Bool;
	var logo : Windows.Foundation.Uri;
	var publisherDisplayName : String;
}
typedef IPackageStatics = {
	var current : Windows.ApplicationModel.Package;
};
typedef IDesignModeStatics = {
	var designModeEnabled : Bool;
};
extern class DesignMode {
	static var designModeEnabled : Bool;
}
