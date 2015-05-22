extern class FacebookUtilsTopLevel {
	static function init(?options:Dynamic):Void;
	static function isLinked(user:User):Bool;
	static function link(user:User, permissions:Dynamic, ?options:ParseDefaultOptions):Void;
	static function logIn(permissions:Dynamic, ?options:ParseDefaultOptions):Void;
	static function unlink(user:User, ?options:ParseDefaultOptions):Void;
}
