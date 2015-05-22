@:enum abstract ServiceDeviceType(Int) {
	var calendarService = 0;
	var contactsService = 1;
	var deviceStatusService = 2;
	var notesService = 3;
	var ringtonesService = 4;
	var smsService = 5;
	var tasksService = 6;
}
typedef IStorageDeviceStatics = {
	function fromId(interfaceId:String):Windows.Storage.StorageFolder;
	function getDeviceSelector():String;
};
typedef IServiceDeviceStatics = {
	function getDeviceSelector(serviceType:Windows.Devices.Portable.ServiceDeviceType):String;
	function getDeviceSelectorFromServiceId(serviceId:String):String;
};
extern class StorageDevice {
	static function fromId(interfaceId:String):Windows.Storage.StorageFolder;
	static function getDeviceSelector():String;
}
extern class ServiceDevice {
	static function getDeviceSelector(serviceType:Windows.Devices.Portable.ServiceDeviceType):String;
	static function getDeviceSelectorFromServiceId(serviceId:String):String;
}
