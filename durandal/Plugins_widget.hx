typedef WidgetSettings = {
	var kind : String;
	@:optional
	var model : Dynamic;
	@:optional
	var view : Dynamic;
};
extern class Plugins_widgetTopLevel {
	static function registerKind(kind:String):Dynamic;
	static function mapKind(kind:String, ?viewId:String, ?moduleId:String):Dynamic;
	static function mapKindToModuleId(kind:String):String;
	static function convertKindToModulePath(kind:String):String;
	static function mapKindToViewId(kind:String):String;
	static function convertKindToViewPath(kind:String):String;
	static function create(element:HTMLElement, settings:WidgetSettings, ?bindingContext:KnockoutBindingContext):Dynamic;
}
