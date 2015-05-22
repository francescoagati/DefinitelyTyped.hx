typedef NodeBuffer = { };
typedef SubnetInfo = {
	var networkAddress : String;
	var firstAddress : String;
	var lastAddress : String;
	var broadcastAddress : String;
	var subnetMask : String;
	var subnetMaskLength : Float;
	var numHosts : Float;
	var length : Float;
};
extern class IpTopLevel {
	static function isEqual(ip1:String, ip2:String):Bool;
	static function toBuffer(ip:String, ?buffer:Float, ?offset:Float):NodeBuffer;
	static function toString(ip:NodeBuffer, ?offset:Float, ?length:Float):String;
	static function fromPrefixLen(prefixLength:Float, ?family:String):String;
	static function mask(ip:String, mask:String):String;
	static function cidr(cidr:String):String;
	static function not(ip:String):String;
	static function or(ip:String, mask:String):String;
	static function isPrivate(ip:String):Bool;
	static function isPublic(ip:String):Bool;
	static function isLoopback(ip:String):Bool;
	static function loopback(?family:String):String;
	static function address(?name:String, ?family:String):String;
	static function toLong(ip:String):Float;
	static function fromLong(ip:Float):String;
	static function subnet(ip:String, subnet:String):SubnetInfo;
	static function cidrSubnet(cidr:String):SubnetInfo;
}
extern class IpTopLevel {
	static function isEqual(ip1:String, ip2:String):Bool;
	static function toBuffer(ip:String, ?buffer:Float, ?offset:Float):NodeBuffer;
	static function toString(ip:NodeBuffer, ?offset:Float, ?length:Float):String;
	static function fromPrefixLen(prefixLength:Float, ?family:String):String;
	static function mask(ip:String, mask:String):String;
	static function cidr(cidr:String):String;
	static function not(ip:String):String;
	static function or(ip:String, mask:String):String;
	static function isPrivate(ip:String):Bool;
	static function isPublic(ip:String):Bool;
	static function isLoopback(ip:String):Bool;
	static function loopback(?family:String):String;
	static function address(?name:String, ?family:String):String;
	static function toLong(ip:String):Float;
	static function fromLong(ip:Float):String;
	static function subnet(ip:String, subnet:String):SubnetInfo;
	static function cidrSubnet(cidr:String):SubnetInfo;
}
