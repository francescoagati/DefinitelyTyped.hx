typedef Device = {
	var cordova : String;
	var model : String;
	var platform : String;
	var uuid : String;
	var version : String;
};
extern class DeviceTopLevel {
	static var device : Device;
}
