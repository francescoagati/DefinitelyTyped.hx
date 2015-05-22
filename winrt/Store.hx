typedef LicenseChangedEventHandler = { };
typedef ICurrentApp = {
	var appId : String;
	var licenseInformation : Windows.ApplicationModel.Store.LicenseInformation;
	var linkUri : Windows.Foundation.Uri;
	function requestAppPurchaseAsync(includeReceipt:Bool):Windows.Foundation.IAsyncOperation<String>;
	function requestProductPurchaseAsync(productId:String, includeReceipt:Bool):Windows.Foundation.IAsyncOperation<String>;
	function loadListingInformationAsync():Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Store.ListingInformation>;
	function getAppReceiptAsync():Windows.Foundation.IAsyncOperation<String>;
	function getProductReceiptAsync(productId:String):Windows.Foundation.IAsyncOperation<String>;
};
extern class LicenseInformation {
	var expirationDate : Date;
	var isActive : Bool;
	var isTrial : Bool;
	var productLicenses : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Store.ProductLicense>;
	var onlicensechanged : Dynamic;
}
extern class ListingInformation {
	var ageRating : Float;
	var currentMarket : String;
	var description : String;
	var formattedPrice : String;
	var name : String;
	var productListings : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Store.ProductListing>;
}
typedef ICurrentAppSimulator = {
	var appId : String;
	var licenseInformation : Windows.ApplicationModel.Store.LicenseInformation;
	var linkUri : Windows.Foundation.Uri;
	function requestAppPurchaseAsync(includeReceipt:Bool):Windows.Foundation.IAsyncOperation<String>;
	function requestProductPurchaseAsync(productId:String, includeReceipt:Bool):Windows.Foundation.IAsyncOperation<String>;
	function loadListingInformationAsync():Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Store.ListingInformation>;
	function getAppReceiptAsync():Windows.Foundation.IAsyncOperation<String>;
	function getProductReceiptAsync(productId:String):Windows.Foundation.IAsyncOperation<String>;
	function reloadSimulatorAsync(simulatorSettingsFile:Windows.Storage.StorageFile):Windows.Foundation.IAsyncAction;
};
typedef ILicenseInformation = {
	var expirationDate : Date;
	var isActive : Bool;
	var isTrial : Bool;
	var productLicenses : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Store.ProductLicense>;
	var onlicensechanged : Dynamic;
};
extern class ProductLicense {
	var expirationDate : Date;
	var isActive : Bool;
	var productId : String;
}
typedef IProductLicense = {
	var expirationDate : Date;
	var isActive : Bool;
	var productId : String;
};
typedef IListingInformation = {
	var ageRating : Float;
	var currentMarket : String;
	var description : String;
	var formattedPrice : String;
	var name : String;
	var productListings : Windows.Foundation.Collections.IMapView<String, Windows.ApplicationModel.Store.ProductListing>;
};
extern class ProductListing {
	var formattedPrice : String;
	var name : String;
	var productId : String;
}
typedef IProductListing = {
	var formattedPrice : String;
	var name : String;
	var productId : String;
};
extern class CurrentApp {
	static var appId : String;
	static var licenseInformation : Windows.ApplicationModel.Store.LicenseInformation;
	static var linkUri : Windows.Foundation.Uri;
	static function requestAppPurchaseAsync(includeReceipt:Bool):Windows.Foundation.IAsyncOperation<String>;
	static function requestProductPurchaseAsync(productId:String, includeReceipt:Bool):Windows.Foundation.IAsyncOperation<String>;
	static function loadListingInformationAsync():Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Store.ListingInformation>;
	static function getAppReceiptAsync():Windows.Foundation.IAsyncOperation<String>;
	static function getProductReceiptAsync(productId:String):Windows.Foundation.IAsyncOperation<String>;
}
extern class CurrentAppSimulator {
	static var appId : String;
	static var licenseInformation : Windows.ApplicationModel.Store.LicenseInformation;
	static var linkUri : Windows.Foundation.Uri;
	static function requestAppPurchaseAsync(includeReceipt:Bool):Windows.Foundation.IAsyncOperation<String>;
	static function requestProductPurchaseAsync(productId:String, includeReceipt:Bool):Windows.Foundation.IAsyncOperation<String>;
	static function loadListingInformationAsync():Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Store.ListingInformation>;
	static function getAppReceiptAsync():Windows.Foundation.IAsyncOperation<String>;
	static function getProductReceiptAsync(productId:String):Windows.Foundation.IAsyncOperation<String>;
	static function reloadSimulatorAsync(simulatorSettingsFile:Windows.Storage.StorageFile):Windows.Foundation.IAsyncAction;
}
