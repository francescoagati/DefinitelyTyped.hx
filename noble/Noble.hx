extern class Peripheral extends events.EventEmitter {
	var uuid : String;
	var advertisement : Advertisement;
	var rssi : Float;
	var services : Array<String>;
	var state : String;
	function connect(?callback:String -> Void):Void;
	function disconnect(?callback:Void -> Void):Void;
	function updateRssi(?callback:String -> Float -> Void):Void;
	function discoverServices(serviceUUIDs:Array<String>, ?callback:String -> Array<Service> -> Void):Void;
	function discoverAllServicesAndCharacteristics(?callback:String -> Array<Service> -> Array<Characteristic> -> Void):Void;
	function discoverSomeServicesAndCharacteristics(serviceUUIDs:Array<String>, characteristicUUIDs:Array<String>, ?callback:String -> Array<Service> -> Array<Characteristic> -> Void):Void;
	function readHandle(handle:NodeBuffer, callback:String -> NodeBuffer -> Void):Void;
	function writeHandle(handle:NodeBuffer, data:NodeBuffer, withoutResponse:Bool, callback:String -> Void):Void;
	function toString():String;
	@:overload(function(event:Connect, listener:String -> Void):events.EventEmitter { })
	@:overload(function(event:Disconnect, listener:String -> Void):events.EventEmitter { })
	@:overload(function(event:RssiUpdate, listener:Float -> Void):events.EventEmitter { })
	@:overload(function(event:ServicesDiscover, listener:Array<Service> -> Void):events.EventEmitter { })
	function on(event:String, listener:haxe.Constraints.Function):events.EventEmitter;
}
typedef Advertisement = {
	var localName : String;
	var serviceData : NodeBuffer;
	var txPowerLevel : Float;
	var manufacturerData : NodeBuffer;
	var serviceUuids : Array<String>;
};
extern class Service extends events.EventEmitter {
	var uuid : String;
	var name : String;
	var type : String;
	var includedServiceUuids : Array<String>;
	var characteristics : Array<Characteristic>;
	function discoverIncludedServices(serviceUUIDs:Array<String>, ?callback:String -> Array<String> -> Void):Void;
	function discoverCharacteristics(characteristicUUIDs:Array<String>, ?callback:String -> Array<Characteristic> -> Void):Void;
	function toString():String;
	@:overload(function(event:IncludedServicesDiscover, listener:Array<String> -> Void):events.EventEmitter { })
	@:overload(function(event:CharacteristicsDiscover, listener:Array<Characteristic> -> Void):events.EventEmitter { })
	function on(event:String, listener:haxe.Constraints.Function):events.EventEmitter;
}
extern class Characteristic extends events.EventEmitter {
	var uuid : String;
	var name : String;
	var type : String;
	var properties : Array<String>;
	var descriptors : Array<Descriptor>;
	function read(?callback:String -> NodeBuffer -> Void):Void;
	function write(data:NodeBuffer, notify:Bool, ?callback:String -> Void):Void;
	function broadcast(broadcast:Bool, ?callback:String -> Void):Void;
	function notify(notify:Bool, ?callback:String -> Void):Void;
	function discoverDescriptors(?callback:String -> Array<Descriptor> -> Void):Void;
	function toString():String;
	@:overload(function(event:String, option:Bool, listener:haxe.Constraints.Function):events.EventEmitter { })
	@:overload(function(event:Read, listener:NodeBuffer -> Bool -> Void):events.EventEmitter { })
	@:overload(function(event:Write, withoutResponse:Bool, listener:String -> Void):events.EventEmitter { })
	@:overload(function(event:Broadcast, listener:String -> Void):events.EventEmitter { })
	@:overload(function(event:Notify, listener:String -> Void):events.EventEmitter { })
	@:overload(function(event:DescriptorsDiscover, listener:Array<Descriptor> -> Void):events.EventEmitter { })
	function on(event:String, listener:haxe.Constraints.Function):events.EventEmitter;
}
extern class Descriptor extends events.EventEmitter {
	var uuid : String;
	var name : String;
	var type : String;
	function readValue(?callback:String -> NodeBuffer -> Void):Void;
	function writeValue(data:NodeBuffer, ?callback:String -> Void):Void;
	function toString():String;
	@:overload(function(event:ValueRead, listener:String -> NodeBuffer -> Void):events.EventEmitter { })
	@:overload(function(event:ValueWrite, listener:String -> Void):events.EventEmitter { })
	function on(event:String, listener:haxe.Constraints.Function):events.EventEmitter;
}
extern class NobleTopLevel {
	static function startScanning():Void;
	static function startScanning(serviceUUIDs:Array<String>):Void;
	static function startScanning(serviceUUIDs:Array<String>, allowDuplicates:Bool):Void;
	static function stopScanning():Void;
	static function on(event:String, listener:haxe.Constraints.Function):events.EventEmitter;
	static function on(event:StateChange, listener:String -> Void):events.EventEmitter;
	static function on(event:ScanStart, listener:Void -> Void):events.EventEmitter;
	static function on(event:ScanStop, listener:Void -> Void):events.EventEmitter;
	static function on(event:Discover, listener:Peripheral -> Void):events.EventEmitter;
}
extern class NobleTopLevel {
	static function startScanning():Void;
	static function startScanning(serviceUUIDs:Array<String>):Void;
	static function startScanning(serviceUUIDs:Array<String>, allowDuplicates:Bool):Void;
	static function stopScanning():Void;
	static function on(event:String, listener:haxe.Constraints.Function):events.EventEmitter;
	static function on(event:StateChange, listener:String -> Void):events.EventEmitter;
	static function on(event:ScanStart, listener:Void -> Void):events.EventEmitter;
	static function on(event:ScanStop, listener:Void -> Void):events.EventEmitter;
	static function on(event:Discover, listener:Peripheral -> Void):events.EventEmitter;
}
