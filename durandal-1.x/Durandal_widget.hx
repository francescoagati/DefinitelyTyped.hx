extern class Durandal_widgetTopLevel {
	static function create(element:Dynamic, settings:Dynamic, ?bindingContext:Dynamic):Dynamic;
	static function registerKind(kind:String):Dynamic;
	static function mapKind(kind:String, ?viewId:String, ?moduleId:String):Dynamic;
	static function getParts(elements:Dynamic):Dynamic;
	static function convertKindToModuleId(kind:Dynamic):String;
	static function convertKindToViewId(kind:Dynamic):String;
}
typedef IEventSubscription = {
	function then(thenCallback:Dynamic):Void;
	function off():Void;
};
