@:enum abstract PositionAccuracy(Int) {
	var default = 0;
	var high = 1;
}
@:enum abstract PositionStatus(Int) {
	var ready = 0;
	var initializing = 1;
	var noData = 2;
	var disabled = 3;
	var notInitialized = 4;
	var notAvailable = 5;
}
typedef IGeocoordinate = {
	var accuracy : Float;
	var altitude : Float;
	var altitudeAccuracy : Float;
	var heading : Float;
	var latitude : Float;
	var longitude : Float;
	var speed : Float;
	var timestamp : Date;
};
extern class Geocoordinate {
	var accuracy : Float;
	var altitude : Float;
	var altitudeAccuracy : Float;
	var heading : Float;
	var latitude : Float;
	var longitude : Float;
	var speed : Float;
	var timestamp : Date;
}
typedef ICivicAddress = {
	var city : String;
	var country : String;
	var postalCode : String;
	var state : String;
	var timestamp : Date;
};
extern class CivicAddress {
	var city : String;
	var country : String;
	var postalCode : String;
	var state : String;
	var timestamp : Date;
}
typedef IGeoposition = {
	var civicAddress : Windows.Devices.Geolocation.CivicAddress;
	var coordinate : Windows.Devices.Geolocation.Geocoordinate;
};
extern class Geoposition {
	var civicAddress : Windows.Devices.Geolocation.CivicAddress;
	var coordinate : Windows.Devices.Geolocation.Geocoordinate;
}
typedef IPositionChangedEventArgs = {
	var position : Windows.Devices.Geolocation.Geoposition;
};
extern class PositionChangedEventArgs {
	var position : Windows.Devices.Geolocation.Geoposition;
}
typedef IStatusChangedEventArgs = {
	var status : Windows.Devices.Geolocation.PositionStatus;
};
extern class StatusChangedEventArgs {
	var status : Windows.Devices.Geolocation.PositionStatus;
}
typedef IGeolocator = {
	var desiredAccuracy : Windows.Devices.Geolocation.PositionAccuracy;
	var locationStatus : Windows.Devices.Geolocation.PositionStatus;
	var movementThreshold : Float;
	var reportInterval : Float;
	@:overload(function(maximumAge:Float, timeout:Float):Windows.Foundation.IAsyncOperation<Windows.Devices.Geolocation.Geoposition> { })
	function getGeopositionAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Geolocation.Geoposition>;
	var onpositionchanged : Dynamic;
	var onstatuschanged : Dynamic;
};
extern class Geolocator {
	var desiredAccuracy : Windows.Devices.Geolocation.PositionAccuracy;
	var locationStatus : Windows.Devices.Geolocation.PositionStatus;
	var movementThreshold : Float;
	var reportInterval : Float;
	@:overload(function(maximumAge:Float, timeout:Float):Windows.Foundation.IAsyncOperation<Windows.Devices.Geolocation.Geoposition> { })
	function getGeopositionAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Geolocation.Geoposition>;
	var onpositionchanged : Dynamic;
	var onstatuschanged : Dynamic;
}
