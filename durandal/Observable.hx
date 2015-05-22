extern class ObservableTopLevel {
	static function convertObject(obj:Dynamic):Void;
	static function convertProperty(obj:Dynamic, propertyName:String, ?original:Dynamic):KnockoutObservable<Dynamic>;
	static function defineProperty<T>(obj:Dynamic, propertyName:String, ?evaluatorOrOptions:KnockoutComputedDefine<T>):Dynamic;
	static function install(config:Dynamic):Void;
}
