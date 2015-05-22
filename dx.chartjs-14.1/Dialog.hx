typedef Dialog = {
	function show():JQueryPromise<Dynamic>;
	function hide(?value:Dynamic):Void;
};
typedef DialogButton = {
	var text : String;
	var icon : String;
	var clickAction : Void -> Dynamic;
};
typedef DialogOptions = {
	var message : String;
	@:optional
	var title : String;
};
extern class DialogTopLevel {
	static function custom(options:DialogOptions):Dialog;
	static function custom(message:String, ?title:String):Dialog;
	static function alert(options:DialogOptions):JQueryPromise<Bool>;
	static function alert(message:String, ?title:String):JQueryPromise<Bool>;
	static function confirm(options:DialogOptions):JQueryPromise<Bool>;
	static function confirm(message:String, ?title:String):JQueryPromise<Bool>;
}
typedef CollectionContainerWidgetOptions = {
	>WidgetOptions,
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var itemTemplate : Dynamic;
	@:optional
	var itemRender : haxe.Constraints.Function;
	@:optional
	var itemClickAction : Dynamic;
	@:optional
	var itemRenderedAction : Dynamic;
	@:optional
	var noDataText : String;
	@:optional
	var dataSource : data.DataSource;
	@:optional
	var selectedIndex : Float;
	@:optional
	var itemSelectAction : Dynamic;
	@:optional
	var itemHoldAction : Dynamic;
	@:optional
	var itemHoldTimeout : Float;
};
extern class CollectionContainerWidget extends Widget {
	@:overload(function(element:JQuery, ?options:CollectionContainerWidgetOptions):Void { })
	function new(element:Element, ?options:CollectionContainerWidgetOptions):Void;
}
typedef WidgetOptions = {
	>ComponentOptions,
	@:optional
	var contentReadyAction : Dynamic;
	@:optional
	var width : Dynamic;
	@:optional
	var height : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var activeStateEnabled : Bool;
};
extern class Widget extends Component {
	@:overload(function(element:JQuery, ?options:WidgetOptions):Void { })
	function new(element:Element, ?options:WidgetOptions):Void;
	function init():Void;
	function repaint():Void;
	function addTemplate(template:ITemplate):Void;
}
typedef DxEditorOptions = {
	>WidgetOptions,
	@:optional
	var value : Dynamic;
	@:optional
	var valueChangeAction : Dynamic;
};
extern class DxEditor extends Widget {
	@:overload(function(element:JQuery, ?options:DxEditorOptions):Void { })
	function new(element:Element, ?options:DxEditorOptions):Void;
}
