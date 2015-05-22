typedef Permissions = {
	@:optional
	var origins : Array<String>;
	@:optional
	var permissions : Array<String>;
};
typedef PermissionsRemovedEvent = {
	function addListener(callback:Permissions -> Void):Void;
};
typedef PermissionsAddedEvent = {
	function addListener(callback:Permissions -> Void):Void;
};
extern class Chrome.permissionsTopLevel {
	static function contains(permissions:Permissions, callback:Bool -> Void):Void;
	static function getAll(callback:Permissions -> Void):Void;
	static function request(permissions:Permissions, ?callback:Bool -> Void):Void;
	static function remove(permissions:Permissions, ?callback:Bool -> Void):Void;
	static var onRemoved : PermissionsRemovedEvent;
	static var onAdded : PermissionsAddedEvent;
}
