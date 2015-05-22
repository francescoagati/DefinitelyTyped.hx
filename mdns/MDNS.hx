typedef DnsSdError = {
	>Error,
	@:optional
	var errorCode : Float;
};
typedef AdvertisementOptions = {
	@:optional
	var name : String;
	@:optional
	var interfaceIndex : Float;
	@:optional
	var networkInterface : String;
	@:optional
	var txtRecord : Dynamic;
	@:optional
	var host : Dynamic;
	@:optional
	var domain : Dynamic;
	@:optional
	var flags : Dynamic;
	@:optional
	var context : Dynamic;
};
typedef AdvertisementCreatable = {
	function new(serviceType:ServiceType, port:Float, ?options:AdvertisementOptions, ?callback:DnsSdError -> Service -> Void):Advertisement;
};
typedef Advertisement = {
	>NodeJS.EventEmitter,
	function start():Void;
	function stop():Void;
};
typedef BrowserOptions = {
	@:optional
	var resolverSequence : Array<Service -> Void -> Void -> Bool>;
	@:optional
	var interfaceIndex : Float;
	@:optional
	var networkInterface : String;
	@:optional
	var domain : Dynamic;
	@:optional
	var context : Dynamic;
	@:optional
	var flags : Dynamic;
};
typedef Browser = {
	>NodeJS.EventEmitter,
	function start():Dynamic;
	function stop():Dynamic;
};
typedef BrowserStatic = {
	function new(serviceType:ServiceType, ?options:BrowserOptions):Browser;
	var defaultResolverSequence : Array<Service -> Void -> Void -> Bool>;
};
typedef Service = {
	var addresses : Array<String>;
	var flags : Float;
	var fullname : String;
	var host : String;
	var interfaceIndex : Float;
	@:optional
	var name : String;
	var networkInterface : String;
	var port : Float;
	var replyDomain : String;
	var type : ServiceType;
};
typedef ServiceType = {
	@:overload(function(name:String, protocol:String, subtypes:haxe.extern.Rest<String>):ServiceType { })
	@:overload(function(serviceTypeIdentifier:Array<String>):ServiceType { })
	@:overload(function(serviceTypeIdentifier:{ var name : String; var protocol : String; @:optional
	var subtypes : Array<String>; }):ServiceType { })
	@:overload(function(serviceType:ServiceType):ServiceType { })
	function new(serviceTypeIdentifier:String):ServiceType;
	var fullyQualified : Bool;
	var name : String;
	var protocol : String;
	var subtypes : Array<String>;
	function toString():String;
	function fromString(serviceTypeIdentifier:String):ServiceType;
	function toArray():Array<String>;
	function fromArray(serviceTypeIdentifier:Array<String>):ServiceType;
	@:overload(function(serviceType:ServiceType):ServiceType { })
	function fromJSON(serviceTypeIdentifier:{ var name : String; var protocol : String; @:optional
	var subtypes : Array<String>; }):ServiceType;
};
typedef MDNSResolverSequenceTasks = { };
typedef DefaultResolverSequenceTasks = {
	>MDNSResolverSequenceTasks,
	function DNSServiceResolve(?options:{ var flags : Dynamic; }):Service -> Void -> Void -> Bool;
	function DNSServiceGetAddrInfo(?options:Dynamic):Service -> Void -> Void -> Bool;
	function getaddrinfo(?options:Dynamic):Service -> Void -> Void -> Bool;
	function makeAddressesUnique():Service -> Void -> Void -> Bool;
	function filterAddresses(fn:String -> ?Float -> ?Array<String> -> Bool):Void;
	function logService():Void;
};
extern class MDNSTopLevel {
	static var Advertisement : AdvertisementCreatable;
	static var Browser : BrowserStatic;
	static var ServiceType : ServiceType;
	static var rst : DefaultResolverSequenceTasks;
	static function tcp(name:String, subtypes:haxe.extern.Rest<String>):ServiceType;
	static function udp(name:String, subtypes:haxe.extern.Rest<String>):ServiceType;
	static function makeServiceType(name:String, protocol:String, subtypes:haxe.extern.Rest<String>):ServiceType;
	static function makeServiceType(serviceTypeIdentifier:String):ServiceType;
	static function makeServiceType(serviceTypeIdentifier:Array<String>):ServiceType;
	static function makeServiceType(serviceTypeIdentifier:{ var name : String; var protocol : String; @:optional
	var subtypes : Array<String>; }):ServiceType;
	static function makeServiceType(serviceType:ServiceType):ServiceType;
	static function createBrowser(serviceType:ServiceType, ?options:BrowserOptions):Browser;
	static function createAdvertisement(serviceType:ServiceType, port:Float, ?options:AdvertisementOptions, ?callback:DnsSdError -> Service -> Void):Advertisement;
	static function resolve(service:Service, ?sequence:Array<Service -> Void -> Void -> Bool>, ?callback:DnsSdError -> Service -> Void):Void;
	static function browseThemAll(options:BrowserOptions):Browser;
	static function loopbackInterface():Dynamic;
	static var isAvahi : Bool;
	static var _DNS_SD_H : Float;
	static var kDNSServiceMaxDomainName : String;
	static var kDNSServiceMaxServiceName : Float;
	static var kDNSServiceOutputFlags : Dynamic;
	static var kDNSServiceProperty_DaemonVersion : Float;
	static var kDNSServiceClass_IN : Float;
	static var kDNSServiceErr_NoError : Float;
	static var kDNSServiceErr_Unknown : Float;
	static var kDNSServiceErr_NoSuchName : Float;
	static var kDNSServiceErr_NoMemory : Float;
	static var kDNSServiceErr_BadParam : Float;
	static var kDNSServiceErr_BadReference : Float;
	static var kDNSServiceErr_BadState : Float;
	static var kDNSServiceErr_BadFlags : Float;
	static var kDNSServiceErr_Unsupported : Float;
	static var kDNSServiceErr_NotInitialized : Float;
	static var kDNSServiceErr_AlreadyRegistered : Float;
	static var kDNSServiceErr_NameConflict : Float;
	static var kDNSServiceErr_Invalid : Float;
	static var kDNSServiceErr_Firewall : Float;
	static var kDNSServiceErr_Incompatible : Float;
	static var kDNSServiceErr_BadInterfaceIndex : Float;
	static var kDNSServiceErr_Refused : Float;
	static var kDNSServiceErr_NoSuchRecord : Float;
	static var kDNSServiceErr_NoAuth : Float;
	static var kDNSServiceErr_NoSuchKey : Float;
	static var kDNSServiceErr_NATTraversal : Float;
	static var kDNSServiceErr_DoubleNAT : Float;
	static var kDNSServiceErr_BadTime : Float;
	static var kDNSServiceErr_BadSig : Float;
	static var kDNSServiceErr_BadKey : Float;
	static var kDNSServiceErr_Transient : Float;
	static var kDNSServiceErr_ServiceNotRunning : Float;
	static var kDNSServiceErr_NATPortMappingUnsupported : Float;
	static var kDNSServiceErr_NATPortMappingDisabled : Float;
	static var kDNSServiceErr_NoRouter : Float;
	static var kDNSServiceErr_PollingMode : Float;
	static var kDNSServiceErr_Timeout : Float;
	static var kDNSServiceType_A : Float;
	static var kDNSServiceType_NS : Float;
	static var kDNSServiceType_MD : Float;
	static var kDNSServiceType_MF : Float;
	static var kDNSServiceType_CNAME : Float;
	static var kDNSServiceType_SOA : Float;
	static var kDNSServiceType_MB : Float;
	static var kDNSServiceType_MG : Float;
	static var kDNSServiceType_MR : Float;
	static var kDNSServiceType_NULL : Float;
	static var kDNSServiceType_WKS : Float;
	static var kDNSServiceType_PTR : Float;
	static var kDNSServiceType_HINFO : Float;
	static var kDNSServiceType_MINFO : Float;
	static var kDNSServiceType_MX : Float;
	static var kDNSServiceType_TXT : Float;
	static var kDNSServiceType_RP : Float;
	static var kDNSServiceType_AFSDB : Float;
	static var kDNSServiceType_X25 : Float;
	static var kDNSServiceType_ISDN : Float;
	static var kDNSServiceType_RT : Float;
	static var kDNSServiceType_NSAP : Float;
	static var kDNSServiceType_NSAP_PTR : Float;
	static var kDNSServiceType_SIG : Float;
	static var kDNSServiceType_KEY : Float;
	static var kDNSServiceType_PX : Float;
	static var kDNSServiceType_GPOS : Float;
	static var kDNSServiceType_AAAA : Float;
	static var kDNSServiceType_LOC : Float;
	static var kDNSServiceType_NXT : Float;
	static var kDNSServiceType_EID : Float;
	static var kDNSServiceType_NIMLOC : Float;
	static var kDNSServiceType_SRV : Float;
	static var kDNSServiceType_ATMA : Float;
	static var kDNSServiceType_NAPTR : Float;
	static var kDNSServiceType_KX : Float;
	static var kDNSServiceType_CERT : Float;
	static var kDNSServiceType_A6 : Float;
	static var kDNSServiceType_DNAME : Float;
	static var kDNSServiceType_SINK : Float;
	static var kDNSServiceType_OPT : Float;
	static var kDNSServiceType_APL : Float;
	static var kDNSServiceType_DS : Float;
	static var kDNSServiceType_SSHFP : Float;
	static var kDNSServiceType_IPSECKEY : Float;
	static var kDNSServiceType_RRSIG : Float;
	static var kDNSServiceType_NSEC : Float;
	static var kDNSServiceType_DNSKEY : Float;
	static var kDNSServiceType_DHCID : Float;
	static var kDNSServiceType_NSEC3 : Float;
	static var kDNSServiceType_NSEC3PARAM : Float;
	static var kDNSServiceType_HIP : Float;
	static var kDNSServiceType_SPF : Float;
	static var kDNSServiceType_UINFO : Float;
	static var kDNSServiceType_UID : Float;
	static var kDNSServiceType_GID : Float;
	static var kDNSServiceType_UNSPEC : Float;
	static var kDNSServiceType_TKEY : Float;
	static var kDNSServiceType_TSIG : Float;
	static var kDNSServiceType_IXFR : Float;
	static var kDNSServiceType_AXFR : Float;
	static var kDNSServiceType_MAILB : Float;
	static var kDNSServiceType_MAILA : Float;
	static var kDNSServiceType_ANY : Float;
	static var kDNSServiceFlagsMoreComing : Float;
	static var kDNSServiceFlagsAdd : Float;
	static var kDNSServiceFlagsDefault : Float;
	static var kDNSServiceFlagsNoAutoRename : Float;
	static var kDNSServiceFlagsShared : Float;
	static var kDNSServiceFlagsUnique : Float;
	static var kDNSServiceFlagsBrowseDomains : Float;
	static var kDNSServiceFlagsRegistrationDomains : Float;
	static var kDNSServiceFlagsLongLivedQuery : Float;
	static var kDNSServiceFlagsAllowRemoteQuery : Float;
	static var kDNSServiceFlagsForceMulticast : Float;
	static var kDNSServiceFlagsKnownUnique : Float;
	static var kDNSServiceFlagsReturnIntermediates : Float;
	static var kDNSServiceFlagsNonBrowsable : Float;
	static var kDNSServiceFlagsShareConnection : Float;
	static var kDNSServiceFlagsSuppressUnusable : Float;
	static var kDNSServiceFlagsWakeOnResolve : Float;
	static var kDNSServiceFlagsBackgroundTrafficClass : Float;
	static var kDNSServiceFlagsIncludeAWDL : Float;
	static var kDNSServiceFlagsValidate : Float;
	static var kDNSServiceFlagsSecure : Float;
	static var kDNSServiceFlagsInsecure : Float;
	static var kDNSServiceFlagsBogus : Float;
	static var kDNSServiceFlagsIndeterminate : Float;
	static var kDNSServiceFlagsUnicastResponse : Float;
	static var kDNSServiceFlagsValidateOptional : Float;
	static var kDNSServiceFlagsWakeOnlyService : Float;
	static var kDNSServiceProtocol_IPv4 : Float;
	static var kDNSServiceProtocol_IPv6 : Float;
	static var kDNSServiceProtocol_UDP : Float;
	static var kDNSServiceProtocol_TCP : Float;
}
