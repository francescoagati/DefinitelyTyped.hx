typedef IPrintTaskConfigurationSaveRequestedDeferral = {
	function complete():Void;
};
extern class PrintTaskConfigurationSaveRequestedDeferral {
	function complete():Void;
}
typedef IPrintTaskConfigurationSaveRequest = {
	var deadline : Date;
	function cancel():Void;
	function save(printerExtensionContext:Dynamic):Void;
	function getDeferral():Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedDeferral;
};
extern class PrintTaskConfigurationSaveRequest {
	var deadline : Date;
	function cancel():Void;
	function save(printerExtensionContext:Dynamic):Void;
	function getDeferral():Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequestedDeferral;
}
typedef IPrintTaskConfigurationSaveRequestedEventArgs = {
	var request : Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequest;
};
extern class PrintTaskConfigurationSaveRequestedEventArgs {
	var request : Windows.Devices.Printers.Extensions.PrintTaskConfigurationSaveRequest;
}
typedef IPrintTaskConfiguration = {
	var printerExtensionContext : Dynamic;
	var onsaverequested : Dynamic;
};
extern class PrintTaskConfiguration {
	var printerExtensionContext : Dynamic;
	var onsaverequested : Dynamic;
}
typedef IPrintNotificationEventDetails = {
	var eventData : String;
	var printerName : String;
};
extern class PrintNotificationEventDetails {
	var eventData : String;
	var printerName : String;
}
typedef IPrintExtensionContextStatic = {
	function fromDeviceId(deviceId:String):Dynamic;
};
extern class PrintExtensionContext {
	static function fromDeviceId(deviceId:String):Dynamic;
}
