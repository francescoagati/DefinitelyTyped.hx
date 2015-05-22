typedef WidgetOptions = {
	>DOMComponentOptions,
	@:optional
	var activeStateEnabled : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var height : Dynamic;
	@:optional
	var hoverStateEnabled : Bool;
	@:optional
	var focusStateEnabled : Bool;
	@:optional
	var visible : Bool;
	@:optional
	var width : Dynamic;
	@:optional
	var tabIndex : Float;
	@:optional
	var hint : String;
};
extern class Widget extends DOMComponent {
	function new(?options:WidgetOptions):Void;
	function repaint():Void;
	function focus():Void;
}
typedef CollectionWidgetOptions = {
	>WidgetOptions,
	@:optional
	var dataSource : Dynamic;
	@:optional
	var itemClickAction : Dynamic;
	@:optional
	var itemHoldAction : haxe.Constraints.Function;
	@:optional
	var itemHoldTimeout : Float;
	@:optional
	var itemRender : Dynamic;
	@:optional
	var itemRenderedAction : haxe.Constraints.Function;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var itemSelectAction : haxe.Constraints.Function;
	@:optional
	var itemTemplate : Dynamic;
	@:optional
	var loopItemFocus : Bool;
	@:optional
	var noDataText : String;
	@:optional
	var onContentReady : Dynamic;
	@:optional
	var contentReadyAction : Dynamic;
	@:optional
	var onItemClick : Dynamic;
	@:optional
	var onItemContextMenu : haxe.Constraints.Function;
	@:optional
	var onItemHold : haxe.Constraints.Function;
	@:optional
	var onItemRendered : haxe.Constraints.Function;
	@:optional
	var onSelectionChanged : haxe.Constraints.Function;
	@:optional
	var selectedIndex : Float;
	@:optional
	var selectedItem : Dynamic;
	@:optional
	var selectedItems : Array<Dynamic>;
	@:optional
	var onItemDeleting : haxe.Constraints.Function;
	@:optional
	var onItemDeleted : haxe.Constraints.Function;
	@:optional
	var onItemReordered : haxe.Constraints.Function;
};
extern class CollectionWidget extends Widget {
	@:overload(function(element:HTMLElement, ?options:CollectionWidgetOptions):Void { })
	function new(element:JQuery, ?options:CollectionWidgetOptions):Void;
	function selectItem(itemElement:Dynamic):Void;
	function unselectItem(itemElement:Dynamic):Void;
	function deleteItem(itemElement:Dynamic):JQueryPromise<Void>;
	function isItemSelected(itemElement:Dynamic):Bool;
	function reorderItem(itemElement:Dynamic, toItemElement:Dynamic):JQueryPromise<Void>;
}
typedef DataExpressionMixinOptions = {
	@:optional
	var dataSource : Dynamic;
	@:optional
	var displayExpr : Dynamic;
	@:optional
	var valueExpr : Dynamic;
	@:optional
	var itemRender : Dynamic;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var itemTemplate : Dynamic;
	@:optional
	var value : Dynamic;
};
typedef EditorOptions = {
	>WidgetOptions,
	@:optional
	var value : Dynamic;
	@:optional
	var onValueChanged : haxe.Constraints.Function;
	@:optional
	var valueChangeAction : haxe.Constraints.Function;
	@:optional
	var readOnly : Bool;
	@:optional
	var validationError : Dynamic;
	@:optional
	var isValid : Bool;
	@:optional
	var validationMessageMode : String;
};
extern class Editor extends Widget {

}
extern class UiTopLevel {
	static function initViewport(options:{ @:optional
	var allowZoom : Bool; @:optional
	var allowPan : Bool; @:optional
	var allowSelection : Bool; }):Void;
	static var dialog : { function alert(message:String, title:String):JQueryPromise<Void>; function confirm(message:String, title:String):JQueryPromise<Bool>; function custom(options:{ @:optional
	var title : String; @:optional
	var message : String; @:optional
	var buttons : Array<Dynamic>; }):{ function show():JQueryPromise<Dynamic>; @:overload(function(value:Dynamic):Void { })
	function hide():Void; }; };
	static function notify(message:Dynamic, type:String, displayTime:Float):Void;
	static function notify(options:Dynamic):Void;
	static var themes : { @:overload(function(themeName:String):Void { })
	function current():String; };
	static function setTemplateEngine(name:String):Void;
	static function setTemplateEngine(options:Dynamic):Void;
	static var utils : { function initMobileViewport(options:{ @:optional
	var allowZoom : Bool; @:optional
	var allowPan : Bool; @:optional
	var allowSelection : Bool; }):Void; };
}
