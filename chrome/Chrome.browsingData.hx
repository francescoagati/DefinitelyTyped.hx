typedef OriginTypes = {
	@:optional
	var protectedWeb : Bool;
	@:optional
	var extension : Bool;
	@:optional
	var unprotectedWeb : Bool;
};
typedef RemovalOptions = {
	@:optional
	var originTypes : OriginTypes;
	@:optional
	var since : Float;
};
typedef DataToRemove = {
	@:optional
	var webSQL : Bool;
	@:optional
	var indexedDB : Bool;
	@:optional
	var cookies : Bool;
	@:optional
	var passwords : Bool;
	@:optional
	var serverBoundCertificates : Bool;
	@:optional
	var downloads : Bool;
	@:optional
	var cache : Bool;
	@:optional
	var appcache : Bool;
	@:optional
	var fileSystems : Bool;
	@:optional
	var pluginData : Bool;
	@:optional
	var localStorage : Bool;
	@:optional
	var formData : Bool;
	@:optional
	var history : Bool;
};
extern class Chrome.browsingDataTopLevel {
	static function removePluginData(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeFormData(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeFileSystems(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function remove(options:RemovalOptions, dataToRemove:DataToRemove, ?callback:haxe.Constraints.Function):Void;
	static function removePasswords(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeCookies(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeWebSQL(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeAppcache(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeDownloads(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeLocalStorage(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeCache(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeHistory(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
	static function removeIndexedDB(options:RemovalOptions, ?callback:haxe.Constraints.Function):Void;
}
