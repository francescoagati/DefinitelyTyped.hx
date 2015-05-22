@:enum abstract DeploymentProgressState(Int) {
	var queued = 0;
	var processing = 1;
}
typedef DeploymentProgress = {
	var state : Windows.Management.Deployment.DeploymentProgressState;
	var percentage : Float;
};
@:enum abstract DeploymentOptions(Int) {
	var none = 0;
	var forceApplicationShutdown = 1;
	var developmentMode = 2;
}
typedef IDeploymentResult = {
	var activityId : String;
	var errorText : String;
	var extendedErrorCode : Float;
};
extern class DeploymentResult {
	var activityId : String;
	var errorText : String;
	var extendedErrorCode : Float;
}
@:enum abstract PackageInstallState(Int) {
	var notInstalled = 0;
	var staged = 1;
	var installed = 2;
}
typedef IPackageUserInformation = {
	var installState : Windows.Management.Deployment.PackageInstallState;
	var userSecurityId : String;
};
extern class PackageUserInformation {
	var installState : Windows.Management.Deployment.PackageInstallState;
	var userSecurityId : String;
}
@:enum abstract PackageState(Int) {
	var normal = 0;
	var licenseInvalid = 1;
	var modified = 2;
	var tampered = 3;
}
typedef IPackageManager = {
	function addPackageAsync(packageUri:Windows.Foundation.Uri, dependencyPackageUris:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, deploymentOptions:Windows.Management.Deployment.DeploymentOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function updatePackageAsync(packageUri:Windows.Foundation.Uri, dependencyPackageUris:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, deploymentOptions:Windows.Management.Deployment.DeploymentOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function removePackageAsync(packageFullName:String):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function stagePackageAsync(packageUri:Windows.Foundation.Uri, dependencyPackageUris:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function registerPackageAsync(manifestUri:Windows.Foundation.Uri, dependencyPackageUris:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, deploymentOptions:Windows.Management.Deployment.DeploymentOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	@:overload(function(packageName:String, packagePublisher:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package> { })
	@:overload(function(packageFamilyName:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package> { })
	function findPackages():Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package>;
	@:overload(function(userSecurityId:String, packageName:String, packagePublisher:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package> { })
	@:overload(function(userSecurityId:String, packageFamilyName:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package> { })
	function findPackagesForUser(userSecurityId:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package>;
	function findUsers(packageFullName:String):Windows.Foundation.Collections.IIterable<Windows.Management.Deployment.PackageUserInformation>;
	function setPackageState(packageFullName:String, packageState:Windows.Management.Deployment.PackageState):Void;
	function findPackage(packageFullName:String):Windows.ApplicationModel.Package;
	function cleanupPackageForUserAsync(packageName:String, userSecurityId:String):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function findPackageForUser(userSecurityId:String, packageFullName:String):Windows.ApplicationModel.Package;
};
extern class PackageManager {
	function addPackageAsync(packageUri:Windows.Foundation.Uri, dependencyPackageUris:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, deploymentOptions:Windows.Management.Deployment.DeploymentOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function updatePackageAsync(packageUri:Windows.Foundation.Uri, dependencyPackageUris:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, deploymentOptions:Windows.Management.Deployment.DeploymentOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function removePackageAsync(packageFullName:String):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function stagePackageAsync(packageUri:Windows.Foundation.Uri, dependencyPackageUris:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function registerPackageAsync(manifestUri:Windows.Foundation.Uri, dependencyPackageUris:Windows.Foundation.Collections.IIterable<Windows.Foundation.Uri>, deploymentOptions:Windows.Management.Deployment.DeploymentOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	@:overload(function(packageName:String, packagePublisher:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package> { })
	@:overload(function(packageFamilyName:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package> { })
	function findPackages():Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package>;
	@:overload(function(userSecurityId:String, packageName:String, packagePublisher:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package> { })
	@:overload(function(userSecurityId:String, packageFamilyName:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package> { })
	function findPackagesForUser(userSecurityId:String):Windows.Foundation.Collections.IIterable<Windows.ApplicationModel.Package>;
	function findUsers(packageFullName:String):Windows.Foundation.Collections.IIterable<Windows.Management.Deployment.PackageUserInformation>;
	function setPackageState(packageFullName:String, packageState:Windows.Management.Deployment.PackageState):Void;
	function findPackage(packageFullName:String):Windows.ApplicationModel.Package;
	function cleanupPackageForUserAsync(packageName:String, userSecurityId:String):Windows.Foundation.IAsyncOperationWithProgress<Windows.Management.Deployment.DeploymentResult, Windows.Management.Deployment.DeploymentProgress>;
	function findPackageForUser(userSecurityId:String, packageFullName:String):Windows.ApplicationModel.Package;
}
