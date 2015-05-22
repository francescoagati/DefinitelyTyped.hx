extern class NoMatchError {
	var name : String;
	var message : String;
	var constr : Dynamic;
	@:overload(function(message:String):Void { })
	@:overload(function(message:String, constr:Dynamic):Void { })
	function new():Void;
}
extern class ServiceSettingsTopLevel {
	static var DEFAULT_PROTOCOL : String;
	static function noMatchConnectionString(connectionString:String):Void;
	static function noMatchSettings(settings:Dynamic):Void;
	static function parseAndValidateKeys(connectionString:String, validKeys:Array<String>):Array<String>;
	static function getValidator(requirements:Dictionary<Requirement>, isRequired:Bool, atLeastOne:Bool):ValidatorFunction;
	static function setting(name:String):Array<String>;
	static function atLeastOne(args:haxe.extern.Rest<Dynamic>):ValidatorFunction;
	static function optional(args:haxe.extern.Rest<Dynamic>):ValidatorFunction;
	static function allRequired(args:haxe.extern.Rest<Dynamic>):ValidatorFunction;
	static function settingWithFunc(name:String, predicate:haxe.Constraints.Function):Array<Requirement>;
	static function matchedSpecification(settings:Dictionary<Dynamic>):Bool;
	static function parseHost(uri:String):url.Url;
}
extern class StorageServiceSettings {
	var _name : String;
	var _key : String;
	var _blobEndpointUri : String;
	var _queueEndpointUri : String;
	var _tableEndpointUri : String;
	var _usePathStyleUri : Bool;
	function new(name:String, key:String, blobEndpointUri:String, queueEndpointUri:String, tableEndpointUri:String, usePathStyleUri:Bool):Void;
	@:overload(function(proxy:String):StorageServiceSettings { })
	static function _getDevelopmentStorageAccount():StorageServiceSettings;
	static function getDevelopmentStorageAccountSettings():StorageServiceSettings;
	static function _getDefaultServiceEndpoint(settings:Dictionary<String>, dns:String):String;
	static function _createStorageServiceSettings(settings:Dictionary<String>, blobEndpointUri:String, queueEndpointUri:String, tableEndpointUri:String):StorageServiceSettings;
	static function createFromSettings(settings:Dictionary<String>):StorageServiceSettings;
	static function createFromConnectionString(connectionString:String):StorageServiceSettings;
	static function createExplicitlyOrFromEnvironment(storageAccount:String, storageAccessKey:String, host:String):StorageServiceSettings;
	static function isDevelopmentStorage(storageAccount:String, storageAccessKey:String, parsedHost:String):Bool;
	static function createFromConfig(config:Dynamic):StorageServiceSettings;
	static function customizeConfig(config:Dynamic):Void;
}
extern class ServiceBusSettings {

}
extern class ServiceManagementSettinsg {

}
