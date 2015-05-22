extern class PushTopLevel {
	static function send<T>(data:PushData, ?options:ParseDefaultOptions):Promise<T>;
	static function initialize(applicationId:String, javaScriptKey:String, ?masterKey:String):Void;
}
