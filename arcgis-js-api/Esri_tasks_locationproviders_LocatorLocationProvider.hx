extern class LocatorLocationProvider extends LocationProviderRemoteBase {
	var addressFields : Dynamic;
	var locator : Locator;
	function new(options:esri.LocatorLocationProviderOptions):Void;
}
