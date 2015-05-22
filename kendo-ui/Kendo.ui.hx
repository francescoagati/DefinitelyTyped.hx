extern class Widget extends Observable {
	static var fn : Widget;
	static function extend(prototype:Dynamic):Widget;
	@:overload(function(element:JQuery, ?options:Dynamic):Void { })
	@:overload(function(selector:String, ?options:Dynamic):Void { })
	function new(element:Element, ?options:Dynamic):Void;
	@:overload(function(element:JQuery, ?options:Dynamic):Void { })
	@:overload(function(selector:String, ?options:Dynamic):Void { })
	function init(element:Element, ?options:Dynamic):Void;
	function destroy():Void;
	var element : JQuery;
	function setOptions(options:Dynamic):Void;
	function resize(?force:Bool):Void;
	var options : Dynamic;
	var events : Array<String>;
}
extern class Draggable extends kendo.ui.Widget {
	var element : JQuery;
	var currentTarget : JQuery;
	function new(element:Element, ?options:DraggableOptions):Void;
	var options : DraggableOptions;
}
typedef DraggableEvent = {
	@:optional
	var sender : Draggable;
};
extern class DropTarget extends kendo.ui.Widget {
	var element : JQuery;
	function new(element:Element, ?options:DropTargetOptions):Void;
	var options : DropTargetOptions;
	static function destroyGroup(groupName:String):Void;
}
typedef DropTargetOptions = {
	@:optional
	var group : String;
	@:optional
	function dragenter(e:DropTargetDragenterEvent):Void;
	@:optional
	function dragleave(e:DropTargetDragleaveEvent):Void;
	@:optional
	function drop(e:DropTargetDropEvent):Void;
};
typedef DropTargetEvent = {
	@:optional
	var sender : DropTarget;
};
typedef DropTargetDragenterEvent = {
	>DropTargetEvent,
	@:optional
	var draggable : kendo.ui.Draggable;
};
typedef DropTargetDragleaveEvent = {
	>DropTargetEvent,
	@:optional
	var draggable : kendo.ui.Draggable;
};
typedef DropTargetDropEvent = {
	>DropTargetEvent,
	@:optional
	var draggable : kendo.ui.Draggable;
};
extern class DropTargetArea extends kendo.ui.Widget {
	var element : JQuery;
	function new(element:Element, ?options:DropTargetAreaOptions):Void;
	var options : DropTargetAreaOptions;
}
typedef DropTargetAreaOptions = {
	@:optional
	var group : String;
	@:optional
	var filter : String;
	@:optional
	function dragenter(e:DropTargetAreaDragenterEvent):Void;
	@:optional
	function dragleave(e:DropTargetAreaDragleaveEvent):Void;
	@:optional
	function drop(e:DropTargetAreaDropEvent):Void;
};
typedef DropTargetAreaEvent = {
	var sender : DropTargetArea;
};
typedef DropTargetAreaDragenterEvent = {
	>DropTargetAreaEvent,
	@:optional
	var draggable : JQuery;
	@:optional
	var dropTarget : JQuery;
};
typedef DropTargetAreaDragleaveEvent = {
	>DropTargetAreaEvent,
	@:optional
	var draggable : JQuery;
	@:optional
	var dropTarget : JQuery;
};
typedef DropTargetAreaDropEvent = {
	>DropTargetAreaEvent,
	@:optional
	var draggable : kendo.ui.Draggable;
	@:optional
	var dropTarget : JQuery;
};
typedef DraggableOptions = {
	@:optional
	var axis : String;
	@:optional
	var container : JQuery;
	@:optional
	var cursorOffset : Dynamic;
	@:optional
	var distance : Float;
	@:optional
	var filter : String;
	@:optional
	var group : String;
	@:optional
	var hint : haxe.Constraints.Function;
	@:optional
	var ignore : String;
	@:optional
	function drag(e:DraggableEvent):Void;
	@:optional
	function dragcancel(e:DraggableEvent):Void;
	@:optional
	function dragend(e:DraggableEvent):Void;
	@:optional
	function dragstart(e:DraggableEvent):Void;
};
typedef GridColumnEditorOptions = {
	@:optional
	var field : String;
	@:optional
	var format : String;
	@:optional
	var model : kendo.data.Model;
	@:optional
	var values : Array<Dynamic>;
};
typedef GridColumn = {
	@:optional
	function editor(container:JQuery, options:GridColumnEditorOptions):Void;
};
extern class Kendo.uiTopLevel {
	static function progress(container:JQuery, toggle:Bool):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
}
extern class AutoComplete extends kendo.ui.Widget {
	static var fn : AutoComplete;
	static function extend(proto:Dynamic):AutoComplete;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:AutoCompleteOptions):Void;
	var options : AutoCompleteOptions;
	var dataSource : kendo.data.DataSource;
	function close():Void;
	function dataItem(index:Float):Dynamic;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function focus():Void;
	function readonly(readonly:Bool):Void;
	function refresh():Void;
	function search(word:String):Void;
	@:overload(function(item:Element):Void { })
	@:overload(function(item:JQuery):Void { })
	function select(item:String):Void;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function suggest(value:String):Void;
	@:overload(function(value:String):Void { })
	function value():String;
	var list : JQuery;
	var ul : JQuery;
}
typedef AutoCompleteAnimationClose = {
	@:optional
	var duration : Float;
	@:optional
	var effects : String;
};
typedef AutoCompleteAnimationOpen = {
	@:optional
	var duration : Float;
	@:optional
	var effects : String;
};
typedef AutoCompleteAnimation = {
	@:optional
	var close : AutoCompleteAnimationClose;
	@:optional
	var open : AutoCompleteAnimationOpen;
};
typedef AutoCompleteVirtual = {
	@:optional
	var itemHeight : Float;
	@:optional
	var valueMapper : haxe.Constraints.Function;
};
typedef AutoCompleteOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : AutoCompleteAnimation;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataTextField : String;
	@:optional
	var delay : Float;
	@:optional
	var enable : Bool;
	@:optional
	var filter : String;
	@:optional
	var fixedGroupTemplate : Dynamic;
	@:optional
	var groupTemplate : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var highlightFirst : Bool;
	@:optional
	var ignoreCase : Bool;
	@:optional
	var minLength : Float;
	@:optional
	var placeholder : String;
	@:optional
	var separator : String;
	@:optional
	var suggest : Bool;
	@:optional
	var headerTemplate : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var valuePrimitive : Bool;
	@:optional
	var virtual : AutoCompleteVirtual;
	@:optional
	function change(e:AutoCompleteChangeEvent):Void;
	@:optional
	function close(e:AutoCompleteCloseEvent):Void;
	@:optional
	function dataBound(e:AutoCompleteDataBoundEvent):Void;
	@:optional
	function filtering(e:AutoCompleteFilteringEvent):Void;
	@:optional
	function open(e:AutoCompleteOpenEvent):Void;
	@:optional
	function select(e:AutoCompleteSelectEvent):Void;
};
typedef AutoCompleteEvent = {
	var sender : AutoComplete;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef AutoCompleteChangeEvent = {
	>AutoCompleteEvent,
};
typedef AutoCompleteCloseEvent = {
	>AutoCompleteEvent,
};
typedef AutoCompleteDataBoundEvent = {
	>AutoCompleteEvent,
};
typedef AutoCompleteFilteringEvent = {
	>AutoCompleteEvent,
	@:optional
	var filter : Dynamic;
};
typedef AutoCompleteOpenEvent = {
	>AutoCompleteEvent,
};
typedef AutoCompleteSelectEvent = {
	>AutoCompleteEvent,
	@:optional
	var item : JQuery;
};
extern class Button extends kendo.ui.Widget {
	static var fn : Button;
	static function extend(proto:Dynamic):Button;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ButtonOptions):Void;
	var options : ButtonOptions;
	function enable(toggle:Bool):Void;
}
typedef ButtonOptions = {
	@:optional
	var name : String;
	@:optional
	var enable : Bool;
	@:optional
	var icon : String;
	@:optional
	var imageUrl : String;
	@:optional
	var spriteCssClass : String;
	@:optional
	function click(e:ButtonClickEvent):Void;
};
typedef ButtonEvent = {
	var sender : Button;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ButtonClickEvent = {
	>ButtonEvent,
	@:optional
	var event : Dynamic;
};
extern class Calendar extends kendo.ui.Widget {
	static var fn : Calendar;
	static function extend(proto:Dynamic):Calendar;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:CalendarOptions):Void;
	var options : CalendarOptions;
	function current():Date;
	function destroy():Void;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function max():Date;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function min():Date;
	function navigate(value:Date, view:String):Void;
	function navigateDown(value:Date):Void;
	function navigateToFuture():Void;
	function navigateToPast():Void;
	function navigateUp():Void;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function value():Date;
	function view():Dynamic;
}
typedef CalendarMonth = {
	@:optional
	var content : String;
	@:optional
	var empty : String;
};
typedef CalendarOptions = {
	@:optional
	var name : String;
	@:optional
	var culture : String;
	@:optional
	var dates : Dynamic;
	@:optional
	var depth : String;
	@:optional
	var footer : Dynamic;
	@:optional
	var format : String;
	@:optional
	var max : Date;
	@:optional
	var min : Date;
	@:optional
	var month : CalendarMonth;
	@:optional
	var start : String;
	@:optional
	var value : Date;
	@:optional
	function change(e:CalendarEvent):Void;
	@:optional
	function navigate(e:CalendarEvent):Void;
};
typedef CalendarEvent = {
	var sender : Calendar;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class ColorPalette extends kendo.ui.Widget {
	static var fn : ColorPalette;
	static function extend(proto:Dynamic):ColorPalette;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ColorPaletteOptions):Void;
	var options : ColorPaletteOptions;
	@:overload(function(?color:String):Void { })
	function value():String;
	@:overload(function(?color:kendo.Color):Void { })
	function color():kendo.Color;
	function enable(?enable:Bool):Void;
}
typedef ColorPaletteTileSize = {
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};
typedef ColorPaletteOptions = {
	@:optional
	var name : String;
	@:optional
	var palette : Dynamic;
	@:optional
	var columns : Float;
	@:optional
	var tileSize : ColorPaletteTileSize;
	@:optional
	var value : String;
	@:optional
	function change(e:ColorPaletteEvent):Void;
};
typedef ColorPaletteEvent = {
	var sender : ColorPalette;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class ColorPicker extends kendo.ui.Widget {
	static var fn : ColorPicker;
	static function extend(proto:Dynamic):ColorPicker;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ColorPickerOptions):Void;
	var options : ColorPickerOptions;
	function close():Void;
	function open():Void;
	function toggle():Void;
	@:overload(function(?color:String):Void { })
	function value():String;
	@:overload(function(?color:kendo.Color):Void { })
	function color():kendo.Color;
	function enable(?enable:Bool):Void;
}
typedef ColorPickerMessages = {
	@:optional
	var apply : String;
	@:optional
	var cancel : String;
};
typedef ColorPickerTileSize = {
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};
typedef ColorPickerOptions = {
	@:optional
	var name : String;
	@:optional
	var buttons : Bool;
	@:optional
	var columns : Float;
	@:optional
	var tileSize : ColorPickerTileSize;
	@:optional
	var messages : ColorPickerMessages;
	@:optional
	var palette : Dynamic;
	@:optional
	var opacity : Bool;
	@:optional
	var preview : Bool;
	@:optional
	var toolIcon : String;
	@:optional
	var value : String;
	@:optional
	function change(e:ColorPickerChangeEvent):Void;
	@:optional
	function select(e:ColorPickerSelectEvent):Void;
	@:optional
	function open(e:ColorPickerEvent):Void;
	@:optional
	function close(e:ColorPickerEvent):Void;
};
typedef ColorPickerEvent = {
	var sender : ColorPicker;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ColorPickerChangeEvent = {
	>ColorPickerEvent,
	@:optional
	var value : String;
};
typedef ColorPickerSelectEvent = {
	>ColorPickerEvent,
	@:optional
	var value : String;
};
extern class ComboBox extends kendo.ui.Widget {
	static var fn : ComboBox;
	static function extend(proto:Dynamic):ComboBox;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ComboBoxOptions):Void;
	var options : ComboBoxOptions;
	var dataSource : kendo.data.DataSource;
	function close():Void;
	function dataItem(?index:Float):Dynamic;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function readonly(readonly:Bool):Void;
	function focus():Void;
	function open():Void;
	function refresh():Void;
	function search(word:String):Void;
	@:overload(function(li:JQuery):Void { })
	@:overload(function(li:Float):Void { })
	@:overload(function(li:haxe.Constraints.Function):Void { })
	function select():Float;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function suggest(value:String):Void;
	@:overload(function(text:String):Void { })
	function text():String;
	function toggle(toggle:Bool):Void;
	@:overload(function(value:String):Void { })
	function value():String;
	var input : JQuery;
	var list : JQuery;
	var ul : JQuery;
}
typedef ComboBoxAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef ComboBoxAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef ComboBoxAnimation = {
	@:optional
	var close : ComboBoxAnimationClose;
	@:optional
	var open : ComboBoxAnimationOpen;
};
typedef ComboBoxVirtual = {
	@:optional
	var itemHeight : Float;
	@:optional
	var valueMapper : haxe.Constraints.Function;
};
typedef ComboBoxOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : ComboBoxAnimation;
	@:optional
	var autoBind : Bool;
	@:optional
	var cascadeFrom : String;
	@:optional
	var cascadeFromField : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataTextField : String;
	@:optional
	var dataValueField : String;
	@:optional
	var delay : Float;
	@:optional
	var enable : Bool;
	@:optional
	var filter : String;
	@:optional
	var fixedGroupTemplate : Dynamic;
	@:optional
	var groupTemplate : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var highlightFirst : Bool;
	@:optional
	var ignoreCase : String;
	@:optional
	var index : Float;
	@:optional
	var minLength : Float;
	@:optional
	var placeholder : String;
	@:optional
	var suggest : Bool;
	@:optional
	var headerTemplate : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var text : String;
	@:optional
	var value : String;
	@:optional
	var valuePrimitive : Bool;
	@:optional
	var virtual : ComboBoxVirtual;
	@:optional
	function change(e:ComboBoxChangeEvent):Void;
	@:optional
	function close(e:ComboBoxCloseEvent):Void;
	@:optional
	function dataBound(e:ComboBoxDataBoundEvent):Void;
	@:optional
	function filtering(e:ComboBoxFilteringEvent):Void;
	@:optional
	function open(e:ComboBoxOpenEvent):Void;
	@:optional
	function select(e:ComboBoxSelectEvent):Void;
	@:optional
	function cascade(e:ComboBoxCascadeEvent):Void;
};
typedef ComboBoxEvent = {
	var sender : ComboBox;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ComboBoxChangeEvent = {
	>ComboBoxEvent,
};
typedef ComboBoxCloseEvent = {
	>ComboBoxEvent,
};
typedef ComboBoxDataBoundEvent = {
	>ComboBoxEvent,
};
typedef ComboBoxFilteringEvent = {
	>ComboBoxEvent,
	@:optional
	var filter : Dynamic;
};
typedef ComboBoxOpenEvent = {
	>ComboBoxEvent,
};
typedef ComboBoxSelectEvent = {
	>ComboBoxEvent,
	@:optional
	var item : JQuery;
};
typedef ComboBoxCascadeEvent = {
	>ComboBoxEvent,
};
extern class ContextMenu extends kendo.ui.Widget {
	static var fn : ContextMenu;
	static function extend(proto:Dynamic):ContextMenu;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ContextMenuOptions):Void;
	var options : ContextMenuOptions;
	@:overload(function(item:Dynamic, referenceItem:JQuery):kendo.ui.ContextMenu { })
	function append(item:Dynamic, referenceItem:String):kendo.ui.ContextMenu;
	@:overload(function(element:JQuery):kendo.ui.ContextMenu { })
	function close(element:Element):kendo.ui.ContextMenu;
	function destroy():Void;
	@:overload(function(element:Element, enable:Bool):kendo.ui.ContextMenu { })
	@:overload(function(element:JQuery, enable:Bool):kendo.ui.ContextMenu { })
	function enable(element:String, enable:Bool):kendo.ui.ContextMenu;
	@:overload(function(item:String, referenceItem:Element):kendo.ui.ContextMenu { })
	@:overload(function(item:String, referenceItem:JQuery):kendo.ui.ContextMenu { })
	@:overload(function(item:Element, referenceItem:String):kendo.ui.ContextMenu { })
	@:overload(function(item:Element, referenceItem:Element):kendo.ui.ContextMenu { })
	@:overload(function(item:Element, referenceItem:JQuery):kendo.ui.ContextMenu { })
	@:overload(function(item:JQuery, referenceItem:String):kendo.ui.ContextMenu { })
	@:overload(function(item:JQuery, referenceItem:Element):kendo.ui.ContextMenu { })
	@:overload(function(item:JQuery, referenceItem:JQuery):kendo.ui.ContextMenu { })
	function insertAfter(item:String, referenceItem:String):kendo.ui.ContextMenu;
	@:overload(function(item:String, referenceItem:Element):kendo.ui.ContextMenu { })
	@:overload(function(item:String, referenceItem:JQuery):kendo.ui.ContextMenu { })
	@:overload(function(item:Element, referenceItem:String):kendo.ui.ContextMenu { })
	@:overload(function(item:Element, referenceItem:Element):kendo.ui.ContextMenu { })
	@:overload(function(item:Element, referenceItem:JQuery):kendo.ui.ContextMenu { })
	@:overload(function(item:JQuery, referenceItem:String):kendo.ui.ContextMenu { })
	@:overload(function(item:JQuery, referenceItem:Element):kendo.ui.ContextMenu { })
	@:overload(function(item:JQuery, referenceItem:JQuery):kendo.ui.ContextMenu { })
	function insertBefore(item:String, referenceItem:String):kendo.ui.ContextMenu;
	@:overload(function(x:Element, y:Float):kendo.ui.ContextMenu { })
	@:overload(function(x:JQuery, y:Float):kendo.ui.ContextMenu { })
	function open(x:Float, y:Float):kendo.ui.ContextMenu;
	@:overload(function(element:Element):kendo.ui.ContextMenu { })
	@:overload(function(element:JQuery):kendo.ui.ContextMenu { })
	function remove(element:String):kendo.ui.ContextMenu;
}
typedef ContextMenuAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef ContextMenuAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef ContextMenuAnimation = {
	@:optional
	var close : ContextMenuAnimationClose;
	@:optional
	var open : ContextMenuAnimationOpen;
};
typedef ContextMenuOptions = {
	@:optional
	var name : String;
	@:optional
	var alignToAnchor : Bool;
	@:optional
	var animation : ContextMenuAnimation;
	@:optional
	var closeOnClick : Bool;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var direction : String;
	@:optional
	var filter : String;
	@:optional
	var hoverDelay : Float;
	@:optional
	var orientation : String;
	@:optional
	var popupCollision : String;
	@:optional
	var showOn : String;
	@:optional
	var target : Dynamic;
	@:optional
	function close(e:ContextMenuCloseEvent):Void;
	@:optional
	function open(e:ContextMenuOpenEvent):Void;
	@:optional
	function activate(e:ContextMenuActivateEvent):Void;
	@:optional
	function deactivate(e:ContextMenuDeactivateEvent):Void;
	@:optional
	function select(e:ContextMenuSelectEvent):Void;
};
typedef ContextMenuEvent = {
	var sender : ContextMenu;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ContextMenuCloseEvent = {
	>ContextMenuEvent,
	@:optional
	var item : Element;
	@:optional
	var type : String;
	@:optional
	var target : Element;
	@:optional
	var event : JQueryEventObject;
};
typedef ContextMenuOpenEvent = {
	>ContextMenuEvent,
	@:optional
	var item : Element;
	@:optional
	var type : String;
	@:optional
	var target : Element;
	@:optional
	var event : JQueryEventObject;
};
typedef ContextMenuActivateEvent = {
	>ContextMenuEvent,
	@:optional
	var item : Element;
	@:optional
	var type : String;
	@:optional
	var target : Element;
};
typedef ContextMenuDeactivateEvent = {
	>ContextMenuEvent,
	@:optional
	var item : Element;
	@:optional
	var type : String;
	@:optional
	var target : Element;
};
typedef ContextMenuSelectEvent = {
	>ContextMenuEvent,
	@:optional
	var item : Element;
	@:optional
	var type : String;
	@:optional
	var target : Element;
};
extern class DatePicker extends kendo.ui.Widget {
	static var fn : DatePicker;
	static function extend(proto:Dynamic):DatePicker;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:DatePickerOptions):Void;
	var options : DatePickerOptions;
	function close():Void;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function readonly(readonly:Bool):Void;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function max():Date;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function min():Date;
	function open():Void;
	function setOptions(options:Dynamic):Void;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function value():Date;
}
typedef DatePickerAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef DatePickerAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef DatePickerAnimation = {
	@:optional
	var close : DatePickerAnimationClose;
	@:optional
	var open : DatePickerAnimationOpen;
};
typedef DatePickerMonth = {
	@:optional
	var content : String;
	@:optional
	var empty : String;
};
typedef DatePickerOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : DatePickerAnimation;
	@:optional
	var ARIATemplate : String;
	@:optional
	var culture : String;
	@:optional
	var dates : Dynamic;
	@:optional
	var depth : String;
	@:optional
	var footer : Dynamic;
	@:optional
	var format : String;
	@:optional
	var max : Date;
	@:optional
	var min : Date;
	@:optional
	var month : DatePickerMonth;
	@:optional
	var parseFormats : Dynamic;
	@:optional
	var start : String;
	@:optional
	var value : Date;
	@:optional
	function change(e:DatePickerChangeEvent):Void;
	@:optional
	function close(e:DatePickerCloseEvent):Void;
	@:optional
	function open(e:DatePickerOpenEvent):Void;
};
typedef DatePickerEvent = {
	var sender : DatePicker;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef DatePickerChangeEvent = {
	>DatePickerEvent,
};
typedef DatePickerCloseEvent = {
	>DatePickerEvent,
};
typedef DatePickerOpenEvent = {
	>DatePickerEvent,
};
extern class DateTimePicker extends kendo.ui.Widget {
	static var fn : DateTimePicker;
	static function extend(proto:Dynamic):DateTimePicker;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:DateTimePickerOptions):Void;
	var options : DateTimePickerOptions;
	function close(view:String):Void;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function readonly(readonly:Bool):Void;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function max():Date;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function min():Date;
	function open(view:String):Void;
	function setOptions(options:Dynamic):Void;
	function toggle(view:String):Void;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function value():Date;
}
typedef DateTimePickerAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef DateTimePickerAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef DateTimePickerAnimation = {
	@:optional
	var close : DateTimePickerAnimationClose;
	@:optional
	var open : DateTimePickerAnimationOpen;
};
typedef DateTimePickerMonth = {
	@:optional
	var content : String;
	@:optional
	var empty : String;
};
typedef DateTimePickerOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : DateTimePickerAnimation;
	@:optional
	var ARIATemplate : String;
	@:optional
	var culture : String;
	@:optional
	var dates : Dynamic;
	@:optional
	var depth : String;
	@:optional
	var footer : String;
	@:optional
	var format : String;
	@:optional
	var interval : Float;
	@:optional
	var max : Date;
	@:optional
	var min : Date;
	@:optional
	var month : DateTimePickerMonth;
	@:optional
	var parseFormats : Dynamic;
	@:optional
	var start : String;
	@:optional
	var timeFormat : String;
	@:optional
	var value : Date;
	@:optional
	function change(e:DateTimePickerChangeEvent):Void;
	@:optional
	function close(e:DateTimePickerCloseEvent):Void;
	@:optional
	function open(e:DateTimePickerOpenEvent):Void;
};
typedef DateTimePickerEvent = {
	var sender : DateTimePicker;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef DateTimePickerChangeEvent = {
	>DateTimePickerEvent,
};
typedef DateTimePickerCloseEvent = {
	>DateTimePickerEvent,
	@:optional
	var view : String;
};
typedef DateTimePickerOpenEvent = {
	>DateTimePickerEvent,
	@:optional
	var view : String;
};
extern class DropDownList extends kendo.ui.Widget {
	static var fn : DropDownList;
	static function extend(proto:Dynamic):DropDownList;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:DropDownListOptions):Void;
	var options : DropDownListOptions;
	var dataSource : kendo.data.DataSource;
	function close():Void;
	function dataItem(?index:Float):Dynamic;
	function destroy():Void;
	function focus():Void;
	function open():Void;
	function enable(enable:Bool):Void;
	function readonly(readonly:Bool):Void;
	function refresh():Void;
	function search(word:String):Void;
	@:overload(function(li:JQuery):Void { })
	@:overload(function(li:Float):Void { })
	@:overload(function(li:haxe.Constraints.Function):Void { })
	function select():Float;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	@:overload(function(text:String):Void { })
	function text():String;
	function toggle(toggle:Bool):Void;
	@:overload(function(value:String):Void { })
	function value():String;
	var span : JQuery;
	var filterInput : JQuery;
	var list : JQuery;
	var ul : JQuery;
}
typedef DropDownListAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef DropDownListAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef DropDownListAnimation = {
	@:optional
	var close : DropDownListAnimationClose;
	@:optional
	var open : DropDownListAnimationOpen;
};
typedef DropDownListVirtual = {
	@:optional
	var itemHeight : Float;
	@:optional
	var valueMapper : haxe.Constraints.Function;
};
typedef DropDownListOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : DropDownListAnimation;
	@:optional
	var autoBind : Bool;
	@:optional
	var cascadeFrom : String;
	@:optional
	var cascadeFromField : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataTextField : String;
	@:optional
	var dataValueField : String;
	@:optional
	var delay : Float;
	@:optional
	var enable : Bool;
	@:optional
	var filter : String;
	@:optional
	var fixedGroupTemplate : Dynamic;
	@:optional
	var groupTemplate : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var ignoreCase : String;
	@:optional
	var index : Float;
	@:optional
	var minLength : Float;
	@:optional
	var optionLabel : Dynamic;
	@:optional
	var optionLabelTemplate : Dynamic;
	@:optional
	var headerTemplate : Dynamic;
	@:optional
	var template : Dynamic;
	@:optional
	var valueTemplate : Dynamic;
	@:optional
	var text : String;
	@:optional
	var value : String;
	@:optional
	var valuePrimitive : Bool;
	@:optional
	var virtual : DropDownListVirtual;
	@:optional
	function change(e:DropDownListChangeEvent):Void;
	@:optional
	function close(e:DropDownListCloseEvent):Void;
	@:optional
	function dataBound(e:DropDownListDataBoundEvent):Void;
	@:optional
	function filtering(e:DropDownListFilteringEvent):Void;
	@:optional
	function open(e:DropDownListOpenEvent):Void;
	@:optional
	function select(e:DropDownListSelectEvent):Void;
	@:optional
	function cascade(e:DropDownListCascadeEvent):Void;
};
typedef DropDownListEvent = {
	var sender : DropDownList;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef DropDownListChangeEvent = {
	>DropDownListEvent,
};
typedef DropDownListCloseEvent = {
	>DropDownListEvent,
};
typedef DropDownListDataBoundEvent = {
	>DropDownListEvent,
};
typedef DropDownListFilteringEvent = {
	>DropDownListEvent,
	@:optional
	var filter : Dynamic;
};
typedef DropDownListOpenEvent = {
	>DropDownListEvent,
};
typedef DropDownListSelectEvent = {
	>DropDownListEvent,
	@:optional
	var item : JQuery;
};
typedef DropDownListCascadeEvent = {
	>DropDownListEvent,
};
extern class Editor extends kendo.ui.Widget {
	static var fn : Editor;
	static function extend(proto:Dynamic):Editor;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:EditorOptions):Void;
	var options : EditorOptions;
	function createRange(?document:Document):Range;
	function destroy():Void;
	function encodedValue():Void;
	function exec(name:String, params:Dynamic):Void;
	function focus():Void;
	function getRange():Range;
	function getSelection():Selection;
	function paste(html:String, options:Dynamic):Void;
	function selectedHtml():String;
	function refresh():Void;
	function saveAsPDF():JQueryPromise<Dynamic>;
	function selectRange(range:Range):Void;
	function update():Void;
	function state(toolName:String):Bool;
	@:overload(function(value:String):Void { })
	function value():String;
	var body : Element;
}
typedef EditorFileBrowserMessages = {
	@:optional
	var uploadFile : String;
	@:optional
	var orderBy : String;
	@:optional
	var orderByName : String;
	@:optional
	var orderBySize : String;
	@:optional
	var directoryNotFound : String;
	@:optional
	var emptyFolder : String;
	@:optional
	var deleteFile : String;
	@:optional
	var invalidFileType : String;
	@:optional
	var overwriteFile : String;
	@:optional
	var search : String;
};
typedef EditorFileBrowserSchemaModelFieldsName = {
	@:optional
	var field : String;
	@:optional
	var parse : haxe.Constraints.Function;
};
typedef EditorFileBrowserSchemaModelFieldsSize = {
	@:optional
	var field : String;
	@:optional
	var parse : haxe.Constraints.Function;
};
typedef EditorFileBrowserSchemaModelFieldsType = {
	@:optional
	var parse : haxe.Constraints.Function;
	@:optional
	var field : String;
};
typedef EditorFileBrowserSchemaModelFields = {
	@:optional
	var name : EditorFileBrowserSchemaModelFieldsName;
	@:optional
	var type : EditorFileBrowserSchemaModelFieldsType;
	@:optional
	var size : EditorFileBrowserSchemaModelFieldsSize;
};
typedef EditorFileBrowserSchemaModel = {
	@:optional
	var id : String;
	@:optional
	var fields : EditorFileBrowserSchemaModelFields;
};
typedef EditorFileBrowserSchema = { };
typedef EditorFileBrowserTransportCreate = {
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef EditorFileBrowserTransportDestroy = {
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef EditorFileBrowserTransportRead = {
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef EditorFileBrowserTransport = {
	@:optional
	var read : EditorFileBrowserTransportRead;
	@:optional
	var uploadUrl : String;
	@:optional
	var fileUrl : Dynamic;
	@:optional
	var destroy : EditorFileBrowserTransportDestroy;
	@:optional
	var create : EditorFileBrowserTransportCreate;
};
typedef EditorFileBrowser = {
	@:optional
	var fileTypes : String;
	@:optional
	var path : String;
	@:optional
	var transport : EditorFileBrowserTransport;
	@:optional
	var schema : EditorFileBrowserSchema;
	@:optional
	var messages : EditorFileBrowserMessages;
};
typedef EditorImageBrowserMessages = {
	@:optional
	var uploadFile : String;
	@:optional
	var orderBy : String;
	@:optional
	var orderByName : String;
	@:optional
	var orderBySize : String;
	@:optional
	var directoryNotFound : String;
	@:optional
	var emptyFolder : String;
	@:optional
	var deleteFile : String;
	@:optional
	var invalidFileType : String;
	@:optional
	var overwriteFile : String;
	@:optional
	var search : String;
};
typedef EditorImageBrowserSchemaModelFieldsName = {
	@:optional
	var field : String;
	@:optional
	var parse : haxe.Constraints.Function;
};
typedef EditorImageBrowserSchemaModelFieldsSize = {
	@:optional
	var field : String;
	@:optional
	var parse : haxe.Constraints.Function;
};
typedef EditorImageBrowserSchemaModelFieldsType = {
	@:optional
	var parse : haxe.Constraints.Function;
	@:optional
	var field : String;
};
typedef EditorImageBrowserSchemaModelFields = {
	@:optional
	var name : EditorImageBrowserSchemaModelFieldsName;
	@:optional
	var type : EditorImageBrowserSchemaModelFieldsType;
	@:optional
	var size : EditorImageBrowserSchemaModelFieldsSize;
};
typedef EditorImageBrowserSchemaModel = {
	@:optional
	var id : String;
	@:optional
	var fields : EditorImageBrowserSchemaModelFields;
};
typedef EditorImageBrowserSchema = { };
typedef EditorImageBrowserTransportCreate = {
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef EditorImageBrowserTransportDestroy = {
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef EditorImageBrowserTransportRead = {
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef EditorImageBrowserTransport = {
	@:optional
	var read : EditorImageBrowserTransportRead;
	@:optional
	var thumbnailUrl : Dynamic;
	@:optional
	var uploadUrl : String;
	@:optional
	var imageUrl : Dynamic;
	@:optional
	var destroy : EditorImageBrowserTransportDestroy;
	@:optional
	var create : EditorImageBrowserTransportCreate;
};
typedef EditorImageBrowser = {
	@:optional
	var fileTypes : String;
	@:optional
	var path : String;
	@:optional
	var transport : EditorImageBrowserTransport;
	@:optional
	var schema : EditorImageBrowserSchema;
	@:optional
	var messages : EditorImageBrowserMessages;
};
typedef EditorMessages = {
	@:optional
	var bold : String;
	@:optional
	var italic : String;
	@:optional
	var underline : String;
	@:optional
	var strikethrough : String;
	@:optional
	var superscript : String;
	@:optional
	var subscript : String;
	@:optional
	var justifyCenter : String;
	@:optional
	var justifyLeft : String;
	@:optional
	var justifyRight : String;
	@:optional
	var justifyFull : String;
	@:optional
	var insertUnorderedList : String;
	@:optional
	var insertOrderedList : String;
	@:optional
	var indent : String;
	@:optional
	var outdent : String;
	@:optional
	var createLink : String;
	@:optional
	var unlink : String;
	@:optional
	var insertImage : String;
	@:optional
	var insertFile : String;
	@:optional
	var insertHtml : String;
	@:optional
	var viewHtml : String;
	@:optional
	var fontName : String;
	@:optional
	var fontNameInherit : String;
	@:optional
	var fontSize : String;
	@:optional
	var fontSizeInherit : String;
	@:optional
	var formatBlock : String;
	@:optional
	var formatting : String;
	@:optional
	var foreColor : String;
	@:optional
	var backColor : String;
	@:optional
	var style : String;
	@:optional
	var emptyFolder : String;
	@:optional
	var uploadFile : String;
	@:optional
	var editAreaTitle : String;
	@:optional
	var orderBy : String;
	@:optional
	var orderBySize : String;
	@:optional
	var orderByName : String;
	@:optional
	var invalidFileType : String;
	@:optional
	var deleteFile : String;
	@:optional
	var overwriteFile : String;
	@:optional
	var directoryNotFound : String;
	@:optional
	var imageWebAddress : String;
	@:optional
	var imageAltText : String;
	@:optional
	var imageWidth : String;
	@:optional
	var imageHeight : String;
	@:optional
	var fileWebAddress : String;
	@:optional
	var fileTitle : String;
	@:optional
	var linkWebAddress : String;
	@:optional
	var linkText : String;
	@:optional
	var linkToolTip : String;
	@:optional
	var linkOpenInNewWindow : String;
	@:optional
	var dialogUpdate : String;
	@:optional
	var dialogInsert : String;
	@:optional
	var dialogCancel : String;
	@:optional
	var createTable : String;
	@:optional
	var createTableHint : String;
	@:optional
	var addColumnLeft : String;
	@:optional
	var addColumnRight : String;
	@:optional
	var addRowAbove : String;
	@:optional
	var addRowBelow : String;
	@:optional
	var deleteRow : String;
	@:optional
	var deleteColumn : String;
};
typedef EditorPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef EditorPdf = {
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var fileName : String;
	@:optional
	var forceProxy : Bool;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : EditorPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef EditorResizable = {
	@:optional
	var min : Float;
	@:optional
	var max : Float;
};
typedef EditorSerialization = {
	@:optional
	var entities : Bool;
	@:optional
	var scripts : Bool;
	@:optional
	var semantic : Bool;
};
typedef EditorToolItem = {
	@:optional
	var text : String;
	@:optional
	var value : String;
	@:optional
	var context : String;
};
typedef EditorTool = {
	@:optional
	var name : String;
	@:optional
	var tooltip : String;
	@:optional
	var exec : haxe.Constraints.Function;
	@:optional
	var items : Array<EditorToolItem>;
	@:optional
	var template : String;
};
typedef EditorExecParams = {
	@:optional
	var value : Dynamic;
};
typedef EditorPasteOptions = {
	@:optional
	var split : Bool;
};
typedef EditorOptions = {
	@:optional
	var name : String;
	@:optional
	var domain : String;
	@:optional
	var encoded : Bool;
	@:optional
	var messages : EditorMessages;
	@:optional
	var pdf : EditorPdf;
	@:optional
	var resizable : EditorResizable;
	@:optional
	var serialization : EditorSerialization;
	@:optional
	var stylesheets : Dynamic;
	@:optional
	var tools : Array<EditorTool>;
	@:optional
	var imageBrowser : EditorImageBrowser;
	@:optional
	var fileBrowser : EditorFileBrowser;
	@:optional
	function change(e:EditorEvent):Void;
	@:optional
	function execute(e:EditorExecuteEvent):Void;
	@:optional
	function keydown(e:EditorEvent):Void;
	@:optional
	function keyup(e:EditorEvent):Void;
	@:optional
	function paste(e:EditorPasteEvent):Void;
	@:optional
	function pdfExport(e:EditorPdfExportEvent):Void;
	@:optional
	function select(e:EditorEvent):Void;
};
typedef EditorEvent = {
	var sender : Editor;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef EditorExecuteEvent = {
	>EditorEvent,
	@:optional
	var name : String;
	@:optional
	var command : Dynamic;
};
typedef EditorPasteEvent = {
	>EditorEvent,
	@:optional
	var html : Dynamic;
};
typedef EditorPdfExportEvent = {
	>EditorEvent,
	@:optional
	var promise : JQueryPromise<Dynamic>;
};
extern class FlatColorPicker extends kendo.ui.Widget {
	static var fn : FlatColorPicker;
	static function extend(proto:Dynamic):FlatColorPicker;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:FlatColorPickerOptions):Void;
	var options : FlatColorPickerOptions;
	function focus():Void;
	@:overload(function(?color:String):Void { })
	function value():String;
	@:overload(function(?color:kendo.Color):Void { })
	function color():kendo.Color;
	function enable(?enable:Bool):Void;
}
typedef FlatColorPickerMessages = {
	@:optional
	var apply : String;
	@:optional
	var cancel : String;
};
typedef FlatColorPickerOptions = {
	@:optional
	var name : String;
	@:optional
	var opacity : Bool;
	@:optional
	var buttons : Bool;
	@:optional
	var value : String;
	@:optional
	var preview : Bool;
	@:optional
	var autoupdate : Bool;
	@:optional
	var messages : FlatColorPickerMessages;
	@:optional
	function change(e:FlatColorPickerChangeEvent):Void;
};
typedef FlatColorPickerEvent = {
	var sender : FlatColorPicker;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef FlatColorPickerChangeEvent = {
	>FlatColorPickerEvent,
	@:optional
	var value : String;
};
extern class Gantt extends kendo.ui.Widget {
	static var fn : Gantt;
	static function extend(proto:Dynamic):Gantt;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:GanttOptions):Void;
	var options : GanttOptions;
	var dataSource : kendo.data.DataSource;
	function clearSelection():Void;
	@:overload(function(row:Element):kendo.data.GanttTask { })
	@:overload(function(row:JQuery):kendo.data.GanttTask { })
	function dataItem(row:String):kendo.data.GanttTask;
	function destroy():Void;
	function refresh():Void;
	function refreshDependencies():Void;
	@:overload(function(dependency:kendo.data.GanttDependency):Void { })
	function removeDependency(dependency:String):Void;
	@:overload(function(task:kendo.data.GanttTask):Void { })
	function removeTask(task:String):Void;
	function saveAsPDF():JQueryPromise<Dynamic>;
	@:overload(function(row:String):Void { })
	@:overload(function(row:Element):Void { })
	@:overload(function(row:JQuery):Void { })
	function select():JQuery;
	function setDataSource(dataSource:kendo.data.GanttDataSource):Void;
	function setDependenciesDataSource(dataSource:kendo.data.GanttDependencyDataSource):Void;
	@:overload(function(?type:String):Void { })
	function view():kendo.ui.GanttView;
	var dependencies : kendo.data.GanttDependencyDataSource;
}
typedef GanttAssignments = {
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataResourceIdField : String;
	@:optional
	var dataTaskIdField : String;
	@:optional
	var dataValueField : String;
};
typedef GanttColumn = {
	@:optional
	var field : String;
	@:optional
	var title : String;
	@:optional
	var format : String;
	@:optional
	var width : Dynamic;
	@:optional
	var editable : Bool;
	@:optional
	var sortable : Bool;
};
typedef GanttCurrentTimeMarker = {
	@:optional
	var updateInterval : Float;
};
typedef GanttEditable = {
	@:optional
	var confirmation : Bool;
	@:optional
	var template : Dynamic;
};
typedef GanttMessagesActions = {
	@:optional
	var addChild : String;
	@:optional
	var append : String;
	@:optional
	var insertAfter : String;
	@:optional
	var insertBefore : String;
	@:optional
	var pdf : String;
};
typedef GanttMessagesEditor = {
	@:optional
	var assignButton : String;
	@:optional
	var editorTitle : String;
	@:optional
	var end : String;
	@:optional
	var percentComplete : String;
	@:optional
	var resources : String;
	@:optional
	var resourcesEditorTitle : String;
	@:optional
	var resourcesHeader : String;
	@:optional
	var start : String;
	@:optional
	var title : String;
	@:optional
	var unitsHeader : String;
};
typedef GanttMessagesViews = {
	@:optional
	var day : String;
	@:optional
	var end : String;
	@:optional
	var month : String;
	@:optional
	var start : String;
	@:optional
	var week : String;
	@:optional
	var year : String;
};
typedef GanttMessages = {
	@:optional
	var actions : GanttMessagesActions;
	@:optional
	var cancel : String;
	@:optional
	var deleteDependencyWindowTitle : String;
	@:optional
	var deleteTaskWindowTitle : String;
	@:optional
	var destroy : String;
	@:optional
	var editor : GanttMessagesEditor;
	@:optional
	var save : String;
	@:optional
	var views : GanttMessagesViews;
};
typedef GanttPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef GanttPdf = {
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var fileName : String;
	@:optional
	var forceProxy : Bool;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : GanttPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef GanttResources = {
	@:optional
	var dataFormatField : String;
	@:optional
	var dataColorField : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataTextField : String;
	@:optional
	var field : String;
};
typedef GanttToolbarItem = {
	@:optional
	var name : String;
	@:optional
	var template : Dynamic;
	@:optional
	var text : String;
};
typedef GanttTooltip = {
	@:optional
	var template : Dynamic;
	@:optional
	var visible : Bool;
};
typedef GanttView = {
	@:optional
	var type : String;
	@:optional
	var selected : Bool;
	@:optional
	var slotSize : Dynamic;
	@:optional
	var timeHeaderTemplate : Dynamic;
	@:optional
	var dayHeaderTemplate : Dynamic;
	@:optional
	var weekHeaderTemplate : Dynamic;
	@:optional
	var monthHeaderTemplate : Dynamic;
	@:optional
	var yearHeaderTemplate : Dynamic;
	@:optional
	var resizeTooltipFormat : String;
};
typedef GanttOptions = {
	@:optional
	var name : String;
	@:optional
	var assignments : GanttAssignments;
	@:optional
	var autoBind : Bool;
	@:optional
	var columns : Array<GanttColumn>;
	@:optional
	var currentTimeMarker : GanttCurrentTimeMarker;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dependencies : Dynamic;
	@:optional
	var editable : GanttEditable;
	@:optional
	var navigatable : Bool;
	@:optional
	var workDayStart : Date;
	@:optional
	var workDayEnd : Date;
	@:optional
	var workWeekStart : Float;
	@:optional
	var workWeekEnd : Float;
	@:optional
	var hourSpan : Float;
	@:optional
	var snap : Bool;
	@:optional
	var height : Dynamic;
	@:optional
	var listWidth : Dynamic;
	@:optional
	var messages : GanttMessages;
	@:optional
	var pdf : GanttPdf;
	@:optional
	var selectable : Bool;
	@:optional
	var showWorkDays : Bool;
	@:optional
	var showWorkHours : Bool;
	@:optional
	var toolbar : Array<GanttToolbarItem>;
	@:optional
	var tooltip : GanttTooltip;
	@:optional
	var views : Array<GanttView>;
	@:optional
	var resources : GanttResources;
	@:optional
	function dataBinding(e:GanttDataBindingEvent):Void;
	@:optional
	function dataBound(e:GanttDataBoundEvent):Void;
	@:optional
	function add(e:GanttAddEvent):Void;
	@:optional
	function edit(e:GanttEditEvent):Void;
	@:optional
	function remove(e:GanttRemoveEvent):Void;
	@:optional
	function cancel(e:GanttCancelEvent):Void;
	@:optional
	function save(e:GanttSaveEvent):Void;
	@:optional
	function change(e:GanttChangeEvent):Void;
	@:optional
	function navigate(e:GanttNavigateEvent):Void;
	@:optional
	function moveStart(e:GanttMoveStartEvent):Void;
	@:optional
	function move(e:GanttMoveEvent):Void;
	@:optional
	function moveEnd(e:GanttMoveEndEvent):Void;
	@:optional
	function pdfExport(e:GanttPdfExportEvent):Void;
	@:optional
	function resizeStart(e:GanttResizeStartEvent):Void;
	@:optional
	function resize(e:GanttResizeEvent):Void;
	@:optional
	function resizeEnd(e:GanttResizeEndEvent):Void;
};
typedef GanttEvent = {
	var sender : Gantt;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef GanttDataBindingEvent = {
	>GanttEvent,
};
typedef GanttDataBoundEvent = {
	>GanttEvent,
};
typedef GanttAddEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
	@:optional
	var dependency : kendo.data.GanttDependency;
};
typedef GanttEditEvent = {
	>GanttEvent,
	@:optional
	var container : JQuery;
	@:optional
	var task : kendo.data.GanttTask;
};
typedef GanttRemoveEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
	@:optional
	var dependencies : Dynamic;
};
typedef GanttCancelEvent = {
	>GanttEvent,
	@:optional
	var container : JQuery;
	@:optional
	var task : kendo.data.GanttTask;
};
typedef GanttSaveEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
	@:optional
	var values : Dynamic;
};
typedef GanttChangeEvent = {
	>GanttEvent,
};
typedef GanttNavigateEvent = {
	>GanttEvent,
	@:optional
	var view : String;
};
typedef GanttMoveStartEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
};
typedef GanttMoveEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
	@:optional
	var start : Date;
	@:optional
	var end : Date;
};
typedef GanttMoveEndEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
	@:optional
	var start : Date;
	@:optional
	var end : Date;
};
typedef GanttPdfExportEvent = {
	>GanttEvent,
	@:optional
	var promise : JQueryPromise<Dynamic>;
};
typedef GanttResizeStartEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
};
typedef GanttResizeEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
	@:optional
	var start : Date;
	@:optional
	var end : Date;
};
typedef GanttResizeEndEvent = {
	>GanttEvent,
	@:optional
	var task : kendo.data.GanttTask;
	@:optional
	var start : Date;
	@:optional
	var end : Date;
};
extern class Grid extends kendo.ui.Widget {
	static var fn : Grid;
	static function extend(proto:Dynamic):Grid;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:GridOptions):Void;
	var options : GridOptions;
	var dataSource : kendo.data.DataSource;
	function addRow():Void;
	@:overload(function(column:String):Void { })
	@:overload(function(column:Dynamic):Void { })
	function autoFitColumn(column:Float):Void;
	function cancelChanges():Void;
	function cancelRow():Void;
	@:overload(function(cell:Element):Float { })
	@:overload(function(cell:JQuery):Float { })
	function cellIndex(cell:String):Float;
	function clearSelection():Void;
	function closeCell(?isCancel:Bool):Void;
	@:overload(function(row:Element):Void { })
	@:overload(function(row:JQuery):Void { })
	function collapseGroup(row:String):Void;
	@:overload(function(row:Element):Void { })
	@:overload(function(row:JQuery):Void { })
	function collapseRow(row:String):Void;
	@:overload(function(cell:JQuery):Void { })
	function current():JQuery;
	@:overload(function(row:Element):kendo.data.ObservableObject { })
	@:overload(function(row:JQuery):kendo.data.ObservableObject { })
	function dataItem(row:String):kendo.data.ObservableObject;
	function destroy():Void;
	function editCell(cell:JQuery):Void;
	function editRow(row:JQuery):Void;
	@:overload(function(row:Element):Void { })
	@:overload(function(row:JQuery):Void { })
	function expandGroup(row:String):Void;
	@:overload(function(row:Element):Void { })
	@:overload(function(row:JQuery):Void { })
	function expandRow(row:String):Void;
	function getOptions():GridOptions;
	@:overload(function(column:String):Void { })
	@:overload(function(column:Dynamic):Void { })
	function hideColumn(column:Float):Void;
	@:overload(function(column:String):Void { })
	function lockColumn(column:Float):Void;
	function refresh():Void;
	@:overload(function(row:Element):Void { })
	@:overload(function(row:JQuery):Void { })
	function removeRow(row:String):Void;
	function reorderColumn(destIndex:Float, column:Dynamic):Void;
	function saveAsExcel():Void;
	function saveAsPDF():JQueryPromise<Dynamic>;
	function saveChanges():Void;
	function saveRow():Void;
	@:overload(function(rows:String):Void { })
	@:overload(function(rows:Element):Void { })
	@:overload(function(rows:JQuery):Void { })
	function select():JQuery;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function setOptions(options:Dynamic):Void;
	@:overload(function(column:String):Void { })
	@:overload(function(column:Dynamic):Void { })
	function showColumn(column:Float):Void;
	@:overload(function(column:String):Void { })
	function unlockColumn(column:Float):Void;
	var columns : Array<GridColumn>;
	var footer : JQuery;
	var pager : kendo.ui.Pager;
	var table : JQuery;
	var tbody : JQuery;
	var thead : JQuery;
	var content : JQuery;
	var lockedHeader : JQuery;
	var lockedTable : JQuery;
	var lockedContent : JQuery;
}
typedef GridAllowCopy = {
	@:optional
	var delimeter : Dynamic;
};
typedef GridColumnMenuMessages = {
	@:optional
	var columns : String;
	@:optional
	var filter : String;
	@:optional
	var sortAscending : String;
	@:optional
	var sortDescending : String;
	@:optional
	var settings : String;
	@:optional
	var done : String;
	@:optional
	var lock : String;
	@:optional
	var unlock : String;
};
typedef GridColumnMenu = {
	@:optional
	var columns : Bool;
	@:optional
	var filterable : Bool;
	@:optional
	var sortable : Bool;
	@:optional
	var messages : GridColumnMenuMessages;
};
typedef GridColumnCommandItemText = {
	@:optional
	var edit : String;
	@:optional
	var cancel : String;
	@:optional
	var update : String;
};
typedef GridColumnCommandItem = {
	@:optional
	var name : String;
	@:optional
	var text : GridColumnCommandItemText;
	@:optional
	var className : String;
	@:optional
	var click : haxe.Constraints.Function;
};
typedef GridColumnFilterableCell = {
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataTextField : String;
	@:optional
	var delay : Float;
	@:optional
	var inputWidth : Float;
	@:optional
	var suggestionOperator : String;
	@:optional
	var minLength : Float;
	@:optional
	var enabled : Bool;
	@:optional
	var operator : String;
	@:optional
	var showOperators : Bool;
	@:optional
	var template : haxe.Constraints.Function;
};
typedef GridColumnFilterable = {
	@:optional
	var cell : GridColumnFilterableCell;
	@:optional
	var multi : Bool;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var checkAll : Bool;
	@:optional
	var itemTemplate : haxe.Constraints.Function;
	@:optional
	var ui : Dynamic;
};
typedef GridColumnSortable = {
	@:optional
	var compare : haxe.Constraints.Function;
};
typedef GridColumn = {
	@:optional
	var aggregates : Dynamic;
	@:optional
	var attributes : Dynamic;
	@:optional
	var columns : Dynamic;
	@:optional
	var command : Array<GridColumnCommandItem>;
	@:optional
	var encoded : Bool;
	@:optional
	var field : String;
	@:optional
	var filterable : GridColumnFilterable;
	@:optional
	var footerTemplate : Dynamic;
	@:optional
	var format : String;
	@:optional
	var groupable : Bool;
	@:optional
	var groupHeaderTemplate : Dynamic;
	@:optional
	var groupFooterTemplate : Dynamic;
	@:optional
	var headerAttributes : Dynamic;
	@:optional
	var headerTemplate : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var locked : Bool;
	@:optional
	var lockable : Bool;
	@:optional
	var minScreenWidth : Float;
	@:optional
	var sortable : GridColumnSortable;
	@:optional
	var template : Dynamic;
	@:optional
	var title : String;
	@:optional
	var width : Dynamic;
	@:optional
	var values : Dynamic;
	@:optional
	var menu : Bool;
};
typedef GridEditable = {
	@:optional
	var confirmation : Dynamic;
	@:optional
	var cancelDelete : String;
	@:optional
	var confirmDelete : String;
	@:optional
	var createAt : String;
	@:optional
	var destroy : Bool;
	@:optional
	var mode : String;
	@:optional
	var template : Dynamic;
	@:optional
	var update : Bool;
	@:optional
	var window : Dynamic;
};
typedef GridExcel = {
	@:optional
	var allPages : Bool;
	@:optional
	var fileName : String;
	@:optional
	var filterable : Bool;
	@:optional
	var forceProxy : Bool;
	@:optional
	var proxyURL : String;
};
typedef GridFilterableMessages = {
	@:optional
	var and : String;
	@:optional
	var clear : String;
	@:optional
	var filter : String;
	@:optional
	var info : String;
	@:optional
	var isFalse : String;
	@:optional
	var isTrue : String;
	@:optional
	var or : String;
	@:optional
	var selectValue : String;
	@:optional
	var cancel : String;
	@:optional
	var operator : String;
	@:optional
	var value : String;
	@:optional
	var checkAll : String;
};
typedef GridFilterableOperatorsDate = {
	@:optional
	var eq : String;
	@:optional
	var neq : String;
	@:optional
	var gte : String;
	@:optional
	var gt : String;
	@:optional
	var lte : String;
	@:optional
	var lt : String;
};
typedef GridFilterableOperatorsEnums = {
	@:optional
	var eq : String;
	@:optional
	var neq : String;
};
typedef GridFilterableOperatorsNumber = {
	@:optional
	var eq : String;
	@:optional
	var neq : String;
	@:optional
	var gte : String;
	@:optional
	var gt : String;
	@:optional
	var lte : String;
	@:optional
	var lt : String;
};
typedef GridFilterableOperatorsString = {
	@:optional
	var eq : String;
	@:optional
	var neq : String;
	@:optional
	var startswith : String;
	@:optional
	var contains : String;
	@:optional
	var doesnotcontain : String;
	@:optional
	var endswith : String;
};
typedef GridFilterableOperators = {
	@:optional
	var string : GridFilterableOperatorsString;
	@:optional
	var number : GridFilterableOperatorsNumber;
	@:optional
	var date : GridFilterableOperatorsDate;
	@:optional
	var enums : GridFilterableOperatorsEnums;
};
typedef GridFilterable = {
	@:optional
	var extra : Bool;
	@:optional
	var messages : GridFilterableMessages;
	@:optional
	var operators : GridFilterableOperators;
	@:optional
	var mode : String;
};
typedef GridGroupableMessages = {
	@:optional
	var empty : String;
};
typedef GridGroupable = {
	@:optional
	var enabled : Bool;
	@:optional
	var showFooter : Bool;
	@:optional
	var messages : GridGroupableMessages;
};
typedef GridMessagesCommands = {
	@:optional
	var cancel : String;
	@:optional
	var canceledit : String;
	@:optional
	var create : String;
	@:optional
	var destroy : String;
	@:optional
	var edit : String;
	@:optional
	var excel : String;
	@:optional
	var save : String;
	@:optional
	var update : String;
};
typedef GridMessages = {
	@:optional
	var commands : GridMessagesCommands;
};
typedef GridPageableMessages = {
	@:optional
	var display : String;
	@:optional
	var empty : String;
	@:optional
	var page : String;
	@:optional
	var of : String;
	@:optional
	var itemsPerPage : String;
	@:optional
	var first : String;
	@:optional
	var last : String;
	@:optional
	var next : String;
	@:optional
	var previous : String;
	@:optional
	var refresh : String;
	@:optional
	var morePages : String;
};
typedef GridPageable = {
	@:optional
	var pageSize : Float;
	@:optional
	var previousNext : Bool;
	@:optional
	var numeric : Bool;
	@:optional
	var buttonCount : Float;
	@:optional
	var input : Bool;
	@:optional
	var pageSizes : Dynamic;
	@:optional
	var refresh : Bool;
	@:optional
	var info : Bool;
	@:optional
	var messages : GridPageableMessages;
};
typedef GridPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef GridPdf = {
	@:optional
	var allPages : Bool;
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var fileName : String;
	@:optional
	var forceProxy : Bool;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : GridPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef GridScrollable = {
	@:optional
	var virtual : Bool;
};
typedef GridSortable = {
	@:optional
	var allowUnsort : Bool;
	@:optional
	var mode : String;
};
typedef GridToolbarItem = {
	@:optional
	var name : String;
	@:optional
	var template : Dynamic;
	@:optional
	var text : String;
};
typedef GridOptions = {
	@:optional
	var name : String;
	@:optional
	var allowCopy : GridAllowCopy;
	@:optional
	var altRowTemplate : Dynamic;
	@:optional
	var autoBind : Bool;
	@:optional
	var columnResizeHandleWidth : Float;
	@:optional
	var columns : Array<GridColumn>;
	@:optional
	var columnMenu : GridColumnMenu;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var detailTemplate : Dynamic;
	@:optional
	var editable : GridEditable;
	@:optional
	var excel : GridExcel;
	@:optional
	var filterable : GridFilterable;
	@:optional
	var groupable : GridGroupable;
	@:optional
	var height : Dynamic;
	@:optional
	var messages : GridMessages;
	@:optional
	var mobile : Dynamic;
	@:optional
	var navigatable : Bool;
	@:optional
	var pageable : GridPageable;
	@:optional
	var pdf : GridPdf;
	@:optional
	var reorderable : Bool;
	@:optional
	var resizable : Bool;
	@:optional
	var rowTemplate : Dynamic;
	@:optional
	var scrollable : GridScrollable;
	@:optional
	var selectable : Dynamic;
	@:optional
	var sortable : GridSortable;
	@:optional
	var toolbar : Array<GridToolbarItem>;
	@:optional
	function cancel(e:GridCancelEvent):Void;
	@:optional
	function change(e:GridChangeEvent):Void;
	@:optional
	function columnHide(e:GridColumnHideEvent):Void;
	@:optional
	function columnMenuInit(e:GridColumnMenuInitEvent):Void;
	@:optional
	function columnReorder(e:GridColumnReorderEvent):Void;
	@:optional
	function columnResize(e:GridColumnResizeEvent):Void;
	@:optional
	function columnShow(e:GridColumnShowEvent):Void;
	@:optional
	function dataBinding(e:GridDataBindingEvent):Void;
	@:optional
	function dataBound(e:GridDataBoundEvent):Void;
	@:optional
	function detailCollapse(e:GridDetailCollapseEvent):Void;
	@:optional
	function detailExpand(e:GridDetailExpandEvent):Void;
	@:optional
	function detailInit(e:GridDetailInitEvent):Void;
	@:optional
	function edit(e:GridEditEvent):Void;
	@:optional
	function excelExport(e:GridExcelExportEvent):Void;
	@:optional
	function pdfExport(e:GridPdfExportEvent):Void;
	@:optional
	function filterMenuInit(e:GridFilterMenuInitEvent):Void;
	@:optional
	function remove(e:GridRemoveEvent):Void;
	@:optional
	function save(e:GridSaveEvent):Void;
	@:optional
	function saveChanges(e:GridSaveChangesEvent):Void;
	@:optional
	function columnLock(e:GridColumnLockEvent):Void;
	@:optional
	function columnUnlock(e:GridColumnUnlockEvent):Void;
};
typedef GridEvent = {
	var sender : Grid;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef GridCancelEvent = {
	>GridEvent,
	@:optional
	var container : JQuery;
	@:optional
	var model : kendo.data.Model;
};
typedef GridChangeEvent = {
	>GridEvent,
};
typedef GridColumnHideEvent = {
	>GridEvent,
	@:optional
	var column : Dynamic;
};
typedef GridColumnMenuInitEvent = {
	>GridEvent,
	@:optional
	var container : JQuery;
	@:optional
	var field : String;
};
typedef GridColumnReorderEvent = {
	>GridEvent,
	@:optional
	var column : Dynamic;
	@:optional
	var newIndex : Float;
	@:optional
	var oldIndex : Float;
};
typedef GridColumnResizeEvent = {
	>GridEvent,
	@:optional
	var column : Dynamic;
	@:optional
	var newWidth : Float;
	@:optional
	var oldWidth : Float;
};
typedef GridColumnShowEvent = {
	>GridEvent,
	@:optional
	var column : Dynamic;
};
typedef GridDataBindingEvent = {
	>GridEvent,
	@:optional
	var action : String;
	@:optional
	var index : Float;
	@:optional
	var items : Dynamic;
};
typedef GridDataBoundEvent = {
	>GridEvent,
};
typedef GridDetailCollapseEvent = {
	>GridEvent,
	@:optional
	var detailRow : JQuery;
	@:optional
	var masterRow : JQuery;
};
typedef GridDetailExpandEvent = {
	>GridEvent,
	@:optional
	var detailRow : JQuery;
	@:optional
	var masterRow : JQuery;
};
typedef GridDetailInitEvent = {
	>GridEvent,
	@:optional
	var data : kendo.data.ObservableObject;
	@:optional
	var detailCell : JQuery;
	@:optional
	var detailRow : JQuery;
	@:optional
	var masterRow : JQuery;
};
typedef GridEditEvent = {
	>GridEvent,
	@:optional
	var container : JQuery;
	@:optional
	var model : kendo.data.Model;
};
typedef GridExcelExportEvent = {
	>GridEvent,
	@:optional
	var data : Dynamic;
	@:optional
	var workbook : kendo.ooxml.Workbook;
};
typedef GridPdfExportEvent = {
	>GridEvent,
	@:optional
	var promise : JQueryPromise<Dynamic>;
};
typedef GridFilterMenuInitEvent = {
	>GridEvent,
	@:optional
	var container : JQuery;
	@:optional
	var field : String;
};
typedef GridRemoveEvent = {
	>GridEvent,
	@:optional
	var model : kendo.data.Model;
	@:optional
	var row : JQuery;
};
typedef GridSaveEvent = {
	>GridEvent,
	@:optional
	var model : kendo.data.Model;
	@:optional
	var container : JQuery;
	@:optional
	var values : Dynamic;
};
typedef GridSaveChangesEvent = {
	>GridEvent,
};
typedef GridColumnLockEvent = {
	>GridEvent,
	@:optional
	var column : Dynamic;
};
typedef GridColumnUnlockEvent = {
	>GridEvent,
	@:optional
	var column : Dynamic;
};
extern class ListView extends kendo.ui.Widget {
	static var fn : ListView;
	static function extend(proto:Dynamic):ListView;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ListViewOptions):Void;
	var options : ListViewOptions;
	var dataSource : kendo.data.DataSource;
	function add():Void;
	function cancel():Void;
	function clearSelection():Void;
	@:overload(function(row:Element):kendo.data.ObservableObject { })
	@:overload(function(row:JQuery):kendo.data.ObservableObject { })
	function dataItem(row:String):kendo.data.ObservableObject;
	function dataItems():Void;
	function destroy():Void;
	function edit(item:JQuery):Void;
	function refresh():Void;
	function remove(item:Dynamic):Void;
	function save():Void;
	@:overload(function(items:JQuery):Void { })
	@:overload(function(items:Dynamic):Void { })
	function select():JQuery;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
}
typedef ListViewOptions = {
	@:optional
	var name : String;
	@:optional
	var autoBind : Bool;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var editTemplate : haxe.Constraints.Function;
	@:optional
	var navigatable : Bool;
	@:optional
	var selectable : Dynamic;
	@:optional
	var template : haxe.Constraints.Function;
	@:optional
	var altTemplate : haxe.Constraints.Function;
	@:optional
	function cancel(e:ListViewCancelEvent):Void;
	@:optional
	function change(e:ListViewEvent):Void;
	@:optional
	function dataBound(e:ListViewEvent):Void;
	@:optional
	function dataBinding(e:ListViewEvent):Void;
	@:optional
	function edit(e:ListViewEditEvent):Void;
	@:optional
	function remove(e:ListViewRemoveEvent):Void;
	@:optional
	function save(e:ListViewSaveEvent):Void;
};
typedef ListViewEvent = {
	var sender : ListView;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ListViewCancelEvent = {
	>ListViewEvent,
	@:optional
	var container : JQuery;
	@:optional
	var model : kendo.data.Model;
};
typedef ListViewEditEvent = {
	>ListViewEvent,
	@:optional
	var item : JQuery;
	@:optional
	var model : kendo.data.Model;
};
typedef ListViewRemoveEvent = {
	>ListViewEvent,
	@:optional
	var item : JQuery;
	@:optional
	var model : kendo.data.Model;
};
typedef ListViewSaveEvent = {
	>ListViewEvent,
	@:optional
	var model : kendo.data.Model;
	@:optional
	var item : JQuery;
};
extern class MaskedTextBox extends kendo.ui.Widget {
	static var fn : MaskedTextBox;
	static function extend(proto:Dynamic):MaskedTextBox;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:MaskedTextBoxOptions):Void;
	var options : MaskedTextBoxOptions;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function readonly(readonly:Bool):Void;
	function raw():String;
	@:overload(function(value:String):Void { })
	function value():String;
}
typedef MaskedTextBoxOptions = {
	@:optional
	var name : String;
	@:optional
	var clearPromptChar : Bool;
	@:optional
	var culture : String;
	@:optional
	var mask : String;
	@:optional
	var promptChar : String;
	@:optional
	var rules : Dynamic;
	@:optional
	var unmaskOnPost : Bool;
	@:optional
	var value : String;
	@:optional
	function change(e:MaskedTextBoxChangeEvent):Void;
};
typedef MaskedTextBoxEvent = {
	var sender : MaskedTextBox;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef MaskedTextBoxChangeEvent = {
	>MaskedTextBoxEvent,
};
extern class Menu extends kendo.ui.Widget {
	static var fn : Menu;
	static function extend(proto:Dynamic):Menu;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:MenuOptions):Void;
	var options : MenuOptions;
	@:overload(function(item:Dynamic, referenceItem:JQuery):kendo.ui.Menu { })
	function append(item:Dynamic, referenceItem:String):kendo.ui.Menu;
	@:overload(function(element:Element):kendo.ui.Menu { })
	@:overload(function(element:JQuery):kendo.ui.Menu { })
	function close(element:String):kendo.ui.Menu;
	function destroy():Void;
	@:overload(function(element:Element, enable:Bool):kendo.ui.Menu { })
	@:overload(function(element:JQuery, enable:Bool):kendo.ui.Menu { })
	function enable(element:String, enable:Bool):kendo.ui.Menu;
	@:overload(function(item:String, referenceItem:Element):kendo.ui.Menu { })
	@:overload(function(item:String, referenceItem:JQuery):kendo.ui.Menu { })
	@:overload(function(item:Element, referenceItem:String):kendo.ui.Menu { })
	@:overload(function(item:Element, referenceItem:Element):kendo.ui.Menu { })
	@:overload(function(item:Element, referenceItem:JQuery):kendo.ui.Menu { })
	@:overload(function(item:JQuery, referenceItem:String):kendo.ui.Menu { })
	@:overload(function(item:JQuery, referenceItem:Element):kendo.ui.Menu { })
	@:overload(function(item:JQuery, referenceItem:JQuery):kendo.ui.Menu { })
	function insertAfter(item:String, referenceItem:String):kendo.ui.Menu;
	@:overload(function(item:String, referenceItem:Element):kendo.ui.Menu { })
	@:overload(function(item:String, referenceItem:JQuery):kendo.ui.Menu { })
	@:overload(function(item:Element, referenceItem:String):kendo.ui.Menu { })
	@:overload(function(item:Element, referenceItem:Element):kendo.ui.Menu { })
	@:overload(function(item:Element, referenceItem:JQuery):kendo.ui.Menu { })
	@:overload(function(item:JQuery, referenceItem:String):kendo.ui.Menu { })
	@:overload(function(item:JQuery, referenceItem:Element):kendo.ui.Menu { })
	@:overload(function(item:JQuery, referenceItem:JQuery):kendo.ui.Menu { })
	function insertBefore(item:String, referenceItem:String):kendo.ui.Menu;
	@:overload(function(element:Element):kendo.ui.Menu { })
	@:overload(function(element:JQuery):kendo.ui.Menu { })
	function open(element:String):kendo.ui.Menu;
	@:overload(function(element:Element):kendo.ui.Menu { })
	@:overload(function(element:JQuery):kendo.ui.Menu { })
	function remove(element:String):kendo.ui.Menu;
}
typedef MenuAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MenuAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MenuAnimation = {
	@:optional
	var close : MenuAnimationClose;
	@:optional
	var open : MenuAnimationOpen;
};
typedef MenuOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : MenuAnimation;
	@:optional
	var closeOnClick : Bool;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var direction : String;
	@:optional
	var hoverDelay : Float;
	@:optional
	var openOnClick : Bool;
	@:optional
	var orientation : String;
	@:optional
	var popupCollision : String;
	@:optional
	function close(e:MenuCloseEvent):Void;
	@:optional
	function open(e:MenuOpenEvent):Void;
	@:optional
	function activate(e:MenuActivateEvent):Void;
	@:optional
	function deactivate(e:MenuDeactivateEvent):Void;
	@:optional
	function select(e:MenuSelectEvent):Void;
};
typedef MenuEvent = {
	var sender : Menu;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef MenuCloseEvent = {
	>MenuEvent,
	@:optional
	var item : HTMLElement;
};
typedef MenuOpenEvent = {
	>MenuEvent,
	@:optional
	var item : HTMLElement;
};
typedef MenuActivateEvent = {
	>MenuEvent,
	@:optional
	var item : HTMLElement;
};
typedef MenuDeactivateEvent = {
	>MenuEvent,
	@:optional
	var item : HTMLElement;
};
typedef MenuSelectEvent = {
	>MenuEvent,
	@:optional
	var item : HTMLElement;
};
extern class MultiSelect extends kendo.ui.Widget {
	static var fn : MultiSelect;
	static function extend(proto:Dynamic):MultiSelect;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:MultiSelectOptions):Void;
	var options : MultiSelectOptions;
	var dataSource : kendo.data.DataSource;
	function close():Void;
	function dataItems():Dynamic;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function readonly(readonly:Bool):Void;
	function focus():Void;
	function open():Void;
	function refresh():Void;
	function search(word:String):Void;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function toggle(toggle:Bool):Void;
	@:overload(function(value:Dynamic):Void { })
	@:overload(function(value:String):Void { })
	function value():Dynamic;
	var input : JQuery;
	var list : JQuery;
	var ul : JQuery;
	var tagList : JQuery;
}
typedef MultiSelectAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MultiSelectAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef MultiSelectAnimation = {
	@:optional
	var close : MultiSelectAnimationClose;
	@:optional
	var open : MultiSelectAnimationOpen;
};
typedef MultiSelectVirtual = {
	@:optional
	var itemHeight : Float;
	@:optional
	var valueMapper : haxe.Constraints.Function;
};
typedef MultiSelectOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : MultiSelectAnimation;
	@:optional
	var autoBind : Bool;
	@:optional
	var autoClose : Bool;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataTextField : String;
	@:optional
	var dataValueField : String;
	@:optional
	var delay : Float;
	@:optional
	var enable : Bool;
	@:optional
	var filter : String;
	@:optional
	var fixedGroupTemplate : Dynamic;
	@:optional
	var groupTemplate : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var highlightFirst : Bool;
	@:optional
	var ignoreCase : String;
	@:optional
	var minLength : Float;
	@:optional
	var maxSelectedItems : Float;
	@:optional
	var placeholder : String;
	@:optional
	var headerTemplate : Dynamic;
	@:optional
	var itemTemplate : Dynamic;
	@:optional
	var tagTemplate : String;
	@:optional
	var value : Dynamic;
	@:optional
	var valuePrimitive : Bool;
	@:optional
	var virtual : MultiSelectVirtual;
	@:optional
	function change(e:MultiSelectChangeEvent):Void;
	@:optional
	function close(e:MultiSelectCloseEvent):Void;
	@:optional
	function dataBound(e:MultiSelectDataBoundEvent):Void;
	@:optional
	function filtering(e:MultiSelectFilteringEvent):Void;
	@:optional
	function open(e:MultiSelectOpenEvent):Void;
	@:optional
	function select(e:MultiSelectSelectEvent):Void;
};
typedef MultiSelectEvent = {
	var sender : MultiSelect;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef MultiSelectChangeEvent = {
	>MultiSelectEvent,
};
typedef MultiSelectCloseEvent = {
	>MultiSelectEvent,
};
typedef MultiSelectDataBoundEvent = {
	>MultiSelectEvent,
};
typedef MultiSelectFilteringEvent = {
	>MultiSelectEvent,
	@:optional
	var filter : Dynamic;
};
typedef MultiSelectOpenEvent = {
	>MultiSelectEvent,
};
typedef MultiSelectSelectEvent = {
	>MultiSelectEvent,
	@:optional
	var item : JQuery;
};
extern class Notification extends kendo.ui.Widget {
	static var fn : Notification;
	static function extend(proto:Dynamic):Notification;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:NotificationOptions):Void;
	var options : NotificationOptions;
	@:overload(function(data:String):Void { })
	@:overload(function(data:haxe.Constraints.Function):Void { })
	function error(data:Dynamic):Void;
	function getNotifications():JQuery;
	function hide():Void;
	@:overload(function(data:String):Void { })
	@:overload(function(data:haxe.Constraints.Function):Void { })
	function info(data:Dynamic):Void;
	@:overload(function(data:String, type:String):Void { })
	@:overload(function(data:haxe.Constraints.Function, type:String):Void { })
	function show(data:Dynamic, type:String):Void;
	@:overload(function(data:String):Void { })
	@:overload(function(data:haxe.Constraints.Function):Void { })
	function success(data:Dynamic):Void;
	@:overload(function(data:String):Void { })
	@:overload(function(data:haxe.Constraints.Function):Void { })
	function warning(data:Dynamic):Void;
}
typedef NotificationPosition = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var pinned : Bool;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef NotificationTemplate = {
	@:optional
	var type : String;
	@:optional
	var template : String;
};
typedef NotificationOptions = {
	@:optional
	var name : String;
	@:optional
	var allowHideAfter : Float;
	@:optional
	var animation : Dynamic;
	@:optional
	var appendTo : Dynamic;
	@:optional
	var autoHideAfter : Float;
	@:optional
	var button : Bool;
	@:optional
	var height : Dynamic;
	@:optional
	var hideOnClick : Bool;
	@:optional
	var position : NotificationPosition;
	@:optional
	var stacking : String;
	@:optional
	var templates : Array<NotificationTemplate>;
	@:optional
	var width : Dynamic;
	@:optional
	function hide(e:NotificationHideEvent):Void;
	@:optional
	function show(e:NotificationShowEvent):Void;
};
typedef NotificationEvent = {
	var sender : Notification;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef NotificationHideEvent = {
	>NotificationEvent,
	@:optional
	var element : JQuery;
};
typedef NotificationShowEvent = {
	>NotificationEvent,
	@:optional
	var element : JQuery;
};
extern class NumericTextBox extends kendo.ui.Widget {
	static var fn : NumericTextBox;
	static function extend(proto:Dynamic):NumericTextBox;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:NumericTextBoxOptions):Void;
	var options : NumericTextBoxOptions;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function readonly(readonly:Bool):Void;
	function focus():Void;
	@:overload(function(value:Float):Void { })
	@:overload(function(value:String):Void { })
	function max():Float;
	@:overload(function(value:Float):Void { })
	@:overload(function(value:String):Void { })
	function min():Float;
	@:overload(function(value:Float):Void { })
	@:overload(function(value:String):Void { })
	function step():Float;
	@:overload(function(value:Float):Void { })
	@:overload(function(value:String):Void { })
	function value():Float;
}
typedef NumericTextBoxOptions = {
	@:optional
	var name : String;
	@:optional
	var culture : String;
	@:optional
	var decimals : Float;
	@:optional
	var downArrowText : String;
	@:optional
	var format : String;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var placeholder : String;
	@:optional
	var spinners : Bool;
	@:optional
	var step : Float;
	@:optional
	var upArrowText : String;
	@:optional
	var value : Float;
	@:optional
	function change(e:NumericTextBoxChangeEvent):Void;
	@:optional
	function spin(e:NumericTextBoxSpinEvent):Void;
};
typedef NumericTextBoxEvent = {
	var sender : NumericTextBox;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef NumericTextBoxChangeEvent = {
	>NumericTextBoxEvent,
};
typedef NumericTextBoxSpinEvent = {
	>NumericTextBoxEvent,
};
extern class Pager extends kendo.ui.Widget {
	static var fn : Pager;
	static function extend(proto:Dynamic):Pager;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:PagerOptions):Void;
	var options : PagerOptions;
	var dataSource : kendo.data.DataSource;
	function totalPages():Float;
	function pageSize():Float;
	function page(page:Bool):Float;
	function refresh():Void;
	function destroy():Void;
}
typedef PagerMessages = {
	@:optional
	var display : String;
	@:optional
	var empty : String;
	@:optional
	var page : String;
	@:optional
	var of : String;
	@:optional
	var itemsPerPage : String;
	@:optional
	var first : String;
	@:optional
	var previous : String;
	@:optional
	var next : String;
	@:optional
	var last : String;
	@:optional
	var refresh : String;
};
typedef PagerOptions = {
	@:optional
	var name : String;
	@:optional
	var autoBind : Bool;
	@:optional
	var buttonCount : Float;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var selectTemplate : String;
	@:optional
	var linkTemplate : String;
	@:optional
	var info : Bool;
	@:optional
	var input : Bool;
	@:optional
	var numeric : Bool;
	@:optional
	var pageSizes : Dynamic;
	@:optional
	var previousNext : Bool;
	@:optional
	var refresh : Bool;
	@:optional
	var messages : PagerMessages;
	@:optional
	function change(e:PagerChangeEvent):Void;
};
typedef PagerEvent = {
	var sender : Pager;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef PagerChangeEvent = {
	>PagerEvent,
};
extern class PanelBar extends kendo.ui.Widget {
	static var fn : PanelBar;
	static function extend(proto:Dynamic):PanelBar;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:PanelBarOptions):Void;
	var options : PanelBarOptions;
	@:overload(function(item:String, referenceItem:Element):kendo.ui.PanelBar { })
	@:overload(function(item:String, referenceItem:JQuery):kendo.ui.PanelBar { })
	@:overload(function(item:Element, referenceItem:String):kendo.ui.PanelBar { })
	@:overload(function(item:Element, referenceItem:Element):kendo.ui.PanelBar { })
	@:overload(function(item:Element, referenceItem:JQuery):kendo.ui.PanelBar { })
	@:overload(function(item:JQuery, referenceItem:String):kendo.ui.PanelBar { })
	@:overload(function(item:JQuery, referenceItem:Element):kendo.ui.PanelBar { })
	@:overload(function(item:JQuery, referenceItem:JQuery):kendo.ui.PanelBar { })
	@:overload(function(item:Dynamic, referenceItem:String):kendo.ui.PanelBar { })
	@:overload(function(item:Dynamic, referenceItem:Element):kendo.ui.PanelBar { })
	@:overload(function(item:Dynamic, referenceItem:JQuery):kendo.ui.PanelBar { })
	function append(item:String, referenceItem:String):kendo.ui.PanelBar;
	function clearSelection():Void;
	@:overload(function(element:Element, useAnimation:Bool):kendo.ui.PanelBar { })
	@:overload(function(element:JQuery, useAnimation:Bool):kendo.ui.PanelBar { })
	function collapse(element:String, useAnimation:Bool):kendo.ui.PanelBar;
	function destroy():Void;
	@:overload(function(element:Element, enable:Bool):Void { })
	@:overload(function(element:JQuery, enable:Bool):Void { })
	function enable(element:String, enable:Bool):Void;
	@:overload(function(element:Element, useAnimation:Bool):kendo.ui.PanelBar { })
	@:overload(function(element:JQuery, useAnimation:Bool):kendo.ui.PanelBar { })
	function expand(element:String, useAnimation:Bool):kendo.ui.PanelBar;
	@:overload(function(item:String, referenceItem:Element):Void { })
	@:overload(function(item:String, referenceItem:JQuery):Void { })
	@:overload(function(item:Element, referenceItem:String):Void { })
	@:overload(function(item:Element, referenceItem:Element):Void { })
	@:overload(function(item:Element, referenceItem:JQuery):Void { })
	@:overload(function(item:JQuery, referenceItem:String):Void { })
	@:overload(function(item:JQuery, referenceItem:Element):Void { })
	@:overload(function(item:JQuery, referenceItem:JQuery):Void { })
	@:overload(function(item:Dynamic, referenceItem:String):Void { })
	@:overload(function(item:Dynamic, referenceItem:Element):Void { })
	@:overload(function(item:Dynamic, referenceItem:JQuery):Void { })
	function insertAfter(item:String, referenceItem:String):Void;
	@:overload(function(item:String, referenceItem:Element):kendo.ui.PanelBar { })
	@:overload(function(item:String, referenceItem:JQuery):kendo.ui.PanelBar { })
	@:overload(function(item:Element, referenceItem:String):kendo.ui.PanelBar { })
	@:overload(function(item:Element, referenceItem:Element):kendo.ui.PanelBar { })
	@:overload(function(item:Element, referenceItem:JQuery):kendo.ui.PanelBar { })
	@:overload(function(item:JQuery, referenceItem:String):kendo.ui.PanelBar { })
	@:overload(function(item:JQuery, referenceItem:Element):kendo.ui.PanelBar { })
	@:overload(function(item:JQuery, referenceItem:JQuery):kendo.ui.PanelBar { })
	@:overload(function(item:Dynamic, referenceItem:String):kendo.ui.PanelBar { })
	@:overload(function(item:Dynamic, referenceItem:Element):kendo.ui.PanelBar { })
	@:overload(function(item:Dynamic, referenceItem:JQuery):kendo.ui.PanelBar { })
	function insertBefore(item:String, referenceItem:String):kendo.ui.PanelBar;
	@:overload(function(element:Element):Void { })
	@:overload(function(element:JQuery):Void { })
	function reload(element:String):Void;
	@:overload(function(element:Element):Void { })
	@:overload(function(element:JQuery):Void { })
	function remove(element:String):Void;
	@:overload(function(?element:String):Void { })
	@:overload(function(?element:Element):Void { })
	@:overload(function(?element:JQuery):Void { })
	function select():JQuery;
}
typedef PanelBarAnimationCollapse = {
	@:optional
	var duration : Float;
	@:optional
	var effects : String;
};
typedef PanelBarAnimationExpand = {
	@:optional
	var duration : Float;
	@:optional
	var effects : String;
};
typedef PanelBarAnimation = {
	@:optional
	var collapse : PanelBarAnimationCollapse;
	@:optional
	var expand : PanelBarAnimationExpand;
};
typedef PanelBarOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : PanelBarAnimation;
	@:optional
	var contentUrls : Dynamic;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var expandMode : String;
	@:optional
	function activate(e:PanelBarActivateEvent):Void;
	@:optional
	function collapse(e:PanelBarCollapseEvent):Void;
	@:optional
	function contentLoad(e:PanelBarContentLoadEvent):Void;
	@:optional
	function error(e:PanelBarErrorEvent):Void;
	@:optional
	function expand(e:PanelBarExpandEvent):Void;
	@:optional
	function select(e:PanelBarSelectEvent):Void;
};
typedef PanelBarEvent = {
	var sender : PanelBar;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef PanelBarActivateEvent = {
	>PanelBarEvent,
	@:optional
	var item : Element;
};
typedef PanelBarCollapseEvent = {
	>PanelBarEvent,
	@:optional
	var item : Element;
};
typedef PanelBarContentLoadEvent = {
	>PanelBarEvent,
	@:optional
	var item : Element;
	@:optional
	var contentElement : Element;
};
typedef PanelBarErrorEvent = {
	>PanelBarEvent,
	@:optional
	var xhr : JQueryXHR;
	@:optional
	var status : String;
};
typedef PanelBarExpandEvent = {
	>PanelBarEvent,
	@:optional
	var item : Element;
};
typedef PanelBarSelectEvent = {
	>PanelBarEvent,
	@:optional
	var item : Element;
};
extern class PivotConfigurator extends kendo.ui.Widget {
	static var fn : PivotConfigurator;
	static function extend(proto:Dynamic):PivotConfigurator;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:PivotConfiguratorOptions):Void;
	var options : PivotConfiguratorOptions;
	var dataSource : kendo.data.DataSource;
	function destroy():Void;
	function refresh():Void;
	function setDataSource(dataSource:kendo.data.PivotDataSource):Void;
}
typedef PivotConfiguratorMessagesFieldMenuOperators = {
	@:optional
	var contains : String;
	@:optional
	var doesnotcontain : String;
	@:optional
	var startswith : String;
	@:optional
	var endswith : String;
	@:optional
	var eq : String;
	@:optional
	var neq : String;
};
typedef PivotConfiguratorMessagesFieldMenu = {
	@:optional
	var info : String;
	@:optional
	var sortAscending : String;
	@:optional
	var sortDescending : String;
	@:optional
	var filterFields : String;
	@:optional
	var filter : String;
	@:optional
	var include : String;
	@:optional
	var title : String;
	@:optional
	var clear : String;
	@:optional
	var ok : String;
	@:optional
	var cancel : String;
	@:optional
	var operators : PivotConfiguratorMessagesFieldMenuOperators;
};
typedef PivotConfiguratorMessages = {
	@:optional
	var measures : String;
	@:optional
	var columns : String;
	@:optional
	var rows : String;
	@:optional
	var measuresLabel : String;
	@:optional
	var rowsLabel : String;
	@:optional
	var columnsLabel : String;
	@:optional
	var fieldsLabel : String;
	@:optional
	var fieldMenu : PivotConfiguratorMessagesFieldMenu;
};
typedef PivotConfiguratorSortable = {
	@:optional
	var allowUnsort : Bool;
};
typedef PivotConfiguratorOptions = {
	@:optional
	var name : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var filterable : Bool;
	@:optional
	var sortable : PivotConfiguratorSortable;
	@:optional
	var height : Dynamic;
	@:optional
	var messages : PivotConfiguratorMessages;
};
typedef PivotConfiguratorEvent = {
	var sender : PivotConfigurator;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class PivotGrid extends kendo.ui.Widget {
	static var fn : PivotGrid;
	static function extend(proto:Dynamic):PivotGrid;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:PivotGridOptions):Void;
	var options : PivotGridOptions;
	var dataSource : kendo.data.DataSource;
	function cellInfo(columnIndex:Float, rowIndex:Float):Dynamic;
	@:overload(function(cell:Element):Dynamic { })
	@:overload(function(cell:JQuery):Dynamic { })
	function cellInfoByElement(cell:String):Dynamic;
	function destroy():Void;
	function refresh():Void;
	function setDataSource(dataSource:kendo.data.PivotDataSource):Void;
	function saveAsExcel():Void;
	function saveAsPDF():JQueryPromise<Dynamic>;
}
typedef PivotGridExcel = {
	@:optional
	var fileName : String;
	@:optional
	var filterable : Bool;
	@:optional
	var forceProxy : Bool;
	@:optional
	var proxyURL : String;
};
typedef PivotGridMessagesFieldMenuOperators = {
	@:optional
	var contains : String;
	@:optional
	var doesnotcontain : String;
	@:optional
	var startswith : String;
	@:optional
	var endswith : String;
	@:optional
	var eq : String;
	@:optional
	var neq : String;
};
typedef PivotGridMessagesFieldMenu = {
	@:optional
	var info : String;
	@:optional
	var sortAscending : String;
	@:optional
	var sortDescending : String;
	@:optional
	var filterFields : String;
	@:optional
	var filter : String;
	@:optional
	var include : String;
	@:optional
	var title : String;
	@:optional
	var clear : String;
	@:optional
	var ok : String;
	@:optional
	var cancel : String;
	@:optional
	var operators : PivotGridMessagesFieldMenuOperators;
};
typedef PivotGridMessages = {
	@:optional
	var measureFields : String;
	@:optional
	var columnFields : String;
	@:optional
	var rowFields : String;
	@:optional
	var fieldMenu : PivotGridMessagesFieldMenu;
};
typedef PivotGridPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef PivotGridPdf = {
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var fileName : String;
	@:optional
	var forceProxy : Bool;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : PivotGridPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef PivotGridSortable = {
	@:optional
	var allowUnsort : Bool;
};
typedef PivotGridOptions = {
	@:optional
	var name : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var autoBind : Bool;
	@:optional
	var reorderable : Bool;
	@:optional
	var excel : PivotGridExcel;
	@:optional
	var pdf : PivotGridPdf;
	@:optional
	var filterable : Bool;
	@:optional
	var sortable : PivotGridSortable;
	@:optional
	var columnWidth : Float;
	@:optional
	var height : Dynamic;
	@:optional
	var columnHeaderTemplate : Dynamic;
	@:optional
	var dataCellTemplate : Dynamic;
	@:optional
	var kpiStatusTemplate : Dynamic;
	@:optional
	var kpiTrendTemplate : Dynamic;
	@:optional
	var rowHeaderTemplate : Dynamic;
	@:optional
	var messages : PivotGridMessages;
	@:optional
	function dataBinding(e:PivotGridDataBindingEvent):Void;
	@:optional
	function dataBound(e:PivotGridDataBoundEvent):Void;
	@:optional
	function expandMember(e:PivotGridExpandMemberEvent):Void;
	@:optional
	function collapseMember(e:PivotGridCollapseMemberEvent):Void;
	@:optional
	function excelExport(e:PivotGridExcelExportEvent):Void;
	@:optional
	function pdfExport(e:PivotGridPdfExportEvent):Void;
};
typedef PivotGridEvent = {
	var sender : PivotGrid;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef PivotGridDataBindingEvent = {
	>PivotGridEvent,
};
typedef PivotGridDataBoundEvent = {
	>PivotGridEvent,
};
typedef PivotGridExpandMemberEvent = {
	>PivotGridEvent,
	@:optional
	var axis : String;
	@:optional
	var path : String;
};
typedef PivotGridCollapseMemberEvent = {
	>PivotGridEvent,
	@:optional
	var axis : String;
	@:optional
	var path : String;
};
typedef PivotGridExcelExportEvent = {
	>PivotGridEvent,
	@:optional
	var data : Dynamic;
	@:optional
	var workbook : Dynamic;
};
typedef PivotGridPdfExportEvent = {
	>PivotGridEvent,
	@:optional
	var promise : JQueryPromise<Dynamic>;
};
extern class ProgressBar extends kendo.ui.Widget {
	static var fn : ProgressBar;
	static function extend(proto:Dynamic):ProgressBar;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ProgressBarOptions):Void;
	var options : ProgressBarOptions;
	function enable(enable:Bool):Void;
	@:overload(function(value:Float):Void { })
	function value():Float;
	var progressStatus : JQuery;
	var progressWrapper : JQuery;
}
typedef ProgressBarAnimation = {
	@:optional
	var duration : Float;
};
typedef ProgressBarOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : ProgressBarAnimation;
	@:optional
	var chunkCount : Float;
	@:optional
	var enable : Bool;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var orientation : String;
	@:optional
	var reverse : Bool;
	@:optional
	var showStatus : Bool;
	@:optional
	var type : String;
	@:optional
	var value : Float;
	@:optional
	function change(e:ProgressBarChangeEvent):Void;
	@:optional
	function complete(e:ProgressBarCompleteEvent):Void;
};
typedef ProgressBarEvent = {
	var sender : ProgressBar;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ProgressBarChangeEvent = {
	>ProgressBarEvent,
	@:optional
	var value : Float;
};
typedef ProgressBarCompleteEvent = {
	>ProgressBarEvent,
	@:optional
	var value : Float;
};
extern class RangeSlider extends kendo.ui.Widget {
	static var fn : RangeSlider;
	static function extend(proto:Dynamic):RangeSlider;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:RangeSliderOptions):Void;
	var options : RangeSliderOptions;
	function destroy():Void;
	function enable(enable:Bool):Void;
	@:overload(function(selectionStart:Float, selectionEnd:Float):Void { })
	function value():Dynamic;
	function resize():Void;
}
typedef RangeSliderTooltip = {
	@:optional
	var enabled : Bool;
	@:optional
	var format : String;
	@:optional
	var template : String;
};
typedef RangeSliderOptions = {
	@:optional
	var name : String;
	@:optional
	var largeStep : Float;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var orientation : String;
	@:optional
	var selectionEnd : Float;
	@:optional
	var selectionStart : Float;
	@:optional
	var smallStep : Float;
	@:optional
	var tickPlacement : String;
	@:optional
	var tooltip : RangeSliderTooltip;
	@:optional
	function change(e:RangeSliderChangeEvent):Void;
	@:optional
	function slide(e:RangeSliderSlideEvent):Void;
};
typedef RangeSliderEvent = {
	var sender : RangeSlider;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef RangeSliderChangeEvent = {
	>RangeSliderEvent,
	@:optional
	var value : Float;
};
typedef RangeSliderSlideEvent = {
	>RangeSliderEvent,
	@:optional
	var value : Float;
};
extern class ResponsivePanel extends kendo.ui.Widget {
	static var fn : ResponsivePanel;
	static function extend(proto:Dynamic):ResponsivePanel;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ResponsivePanelOptions):Void;
	var options : ResponsivePanelOptions;
	function close():Void;
	function destroy():Void;
	function open():Void;
}
typedef ResponsivePanelOptions = {
	@:optional
	var name : String;
	@:optional
	var autoClose : Bool;
	@:optional
	var breakpoint : Float;
	@:optional
	var orientation : String;
	@:optional
	var toggleButton : String;
	@:optional
	function close(e:ResponsivePanelEvent):Void;
	@:optional
	function open(e:ResponsivePanelEvent):Void;
};
typedef ResponsivePanelEvent = {
	var sender : ResponsivePanel;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Scheduler extends kendo.ui.Widget {
	static var fn : Scheduler;
	static function extend(proto:Dynamic):Scheduler;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:SchedulerOptions):Void;
	var options : SchedulerOptions;
	var dataSource : kendo.data.DataSource;
	function addEvent(data:Dynamic):Void;
	function cancelEvent():Void;
	function data():Void;
	@:overload(function(?value:Date):Void { })
	function date():Date;
	function destroy():Void;
	@:overload(function(event:kendo.data.SchedulerEvent):Void { })
	function editEvent(event:String):Void;
	function occurrenceByUid(uid:String):kendo.data.SchedulerEvent;
	function occurrencesInRange(start:Date, end:Date):Dynamic;
	function refresh():Void;
	@:overload(function(event:kendo.data.SchedulerEvent):Void { })
	function removeEvent(event:String):Void;
	function resourcesBySlot(slot:Dynamic):Dynamic;
	function saveAsPDF():JQueryPromise<Dynamic>;
	function saveEvent():Void;
	@:overload(function(events:Dynamic, options:Dynamic):Void { })
	function select():Void;
	function setDataSource(dataSource:kendo.data.SchedulerDataSource):Void;
	function slotByPosition(xPosition:Float, yPosition:Float):Dynamic;
	@:overload(function(element:JQuery):Dynamic { })
	function slotByElement(element:Element):Dynamic;
	@:overload(function(?type:String):Void { })
	function view():kendo.ui.SchedulerView;
}
typedef SchedulerCurrentTimeMarker = {
	@:optional
	var updateInterval : Float;
	@:optional
	var useLocalTimezone : Bool;
};
typedef SchedulerEditable = {
	@:optional
	var confirmation : Dynamic;
	@:optional
	var create : Bool;
	@:optional
	var destroy : Bool;
	@:optional
	var editRecurringMode : String;
	@:optional
	var move : Bool;
	@:optional
	var resize : Bool;
	@:optional
	var template : Dynamic;
	@:optional
	var update : Bool;
	@:optional
	var window : Dynamic;
};
typedef SchedulerFooter = {
	@:optional
	var command : Dynamic;
};
typedef SchedulerGroup = {
	@:optional
	var resources : Dynamic;
	@:optional
	var orientation : String;
};
typedef SchedulerMessagesEditor = {
	@:optional
	var allDayEvent : String;
	@:optional
	var description : String;
	@:optional
	var editorTitle : String;
	@:optional
	var end : String;
	@:optional
	var endTimezone : String;
	@:optional
	var repeat : String;
	@:optional
	var separateTimezones : String;
	@:optional
	var start : String;
	@:optional
	var startTimezone : String;
	@:optional
	var timezone : String;
	@:optional
	var timezoneEditorButton : String;
	@:optional
	var timezoneEditorTitle : String;
	@:optional
	var title : String;
};
typedef SchedulerMessagesRecurrenceEditorDaily = {
	@:optional
	var interval : String;
	@:optional
	var repeatEvery : String;
};
typedef SchedulerMessagesRecurrenceEditorEnd = {
	@:optional
	var after : String;
	@:optional
	var occurrence : String;
	@:optional
	var label : String;
	@:optional
	var never : String;
	@:optional
	var mobileLabel : String;
	@:optional
	var on : String;
};
typedef SchedulerMessagesRecurrenceEditorFrequencies = {
	@:optional
	var daily : String;
	@:optional
	var monthly : String;
	@:optional
	var never : String;
	@:optional
	var weekly : String;
	@:optional
	var yearly : String;
};
typedef SchedulerMessagesRecurrenceEditorMonthly = {
	@:optional
	var day : String;
	@:optional
	var interval : String;
	@:optional
	var repeatEvery : String;
	@:optional
	var repeatOn : String;
};
typedef SchedulerMessagesRecurrenceEditorOffsetPositions = {
	@:optional
	var first : String;
	@:optional
	var second : String;
	@:optional
	var third : String;
	@:optional
	var fourth : String;
	@:optional
	var last : String;
};
typedef SchedulerMessagesRecurrenceEditorWeekdays = {
	@:optional
	var day : String;
	@:optional
	var weekday : String;
	@:optional
	var weekend : String;
};
typedef SchedulerMessagesRecurrenceEditorWeekly = {
	@:optional
	var interval : String;
	@:optional
	var repeatEvery : String;
	@:optional
	var repeatOn : String;
};
typedef SchedulerMessagesRecurrenceEditorYearly = {
	@:optional
	var of : String;
	@:optional
	var repeatEvery : String;
	@:optional
	var repeatOn : String;
	@:optional
	var interval : String;
};
typedef SchedulerMessagesRecurrenceEditor = {
	@:optional
	var daily : SchedulerMessagesRecurrenceEditorDaily;
	@:optional
	var end : SchedulerMessagesRecurrenceEditorEnd;
	@:optional
	var frequencies : SchedulerMessagesRecurrenceEditorFrequencies;
	@:optional
	var monthly : SchedulerMessagesRecurrenceEditorMonthly;
	@:optional
	var offsetPositions : SchedulerMessagesRecurrenceEditorOffsetPositions;
	@:optional
	var weekly : SchedulerMessagesRecurrenceEditorWeekly;
	@:optional
	var weekdays : SchedulerMessagesRecurrenceEditorWeekdays;
	@:optional
	var yearly : SchedulerMessagesRecurrenceEditorYearly;
};
typedef SchedulerMessagesRecurrenceMessages = {
	@:optional
	var deleteRecurring : String;
	@:optional
	var deleteWindowOccurrence : String;
	@:optional
	var deleteWindowSeries : String;
	@:optional
	var deleteWindowTitle : String;
	@:optional
	var editRecurring : String;
	@:optional
	var editWindowOccurrence : String;
	@:optional
	var editWindowSeries : String;
	@:optional
	var editWindowTitle : String;
};
typedef SchedulerMessagesViews = {
	@:optional
	var day : String;
	@:optional
	var week : String;
	@:optional
	var month : String;
	@:optional
	var agenda : String;
};
typedef SchedulerMessages = {
	@:optional
	var allDay : String;
	@:optional
	var ariaEventLabel : String;
	@:optional
	var ariaSlotLabel : String;
	@:optional
	var cancel : String;
	@:optional
	var date : String;
	@:optional
	var deleteWindowTitle : String;
	@:optional
	var destroy : String;
	@:optional
	var event : String;
	@:optional
	var defaultRowText : String;
	@:optional
	var pdf : String;
	@:optional
	var save : String;
	@:optional
	var showFullDay : String;
	@:optional
	var showWorkDay : String;
	@:optional
	var time : String;
	@:optional
	var today : String;
	@:optional
	var editor : SchedulerMessagesEditor;
	@:optional
	var recurrenceEditor : SchedulerMessagesRecurrenceEditor;
	@:optional
	var recurrenceMessages : SchedulerMessagesRecurrenceMessages;
	@:optional
	var views : SchedulerMessagesViews;
};
typedef SchedulerPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef SchedulerPdf = {
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var fileName : String;
	@:optional
	var forceProxy : Bool;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : SchedulerPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef SchedulerResource = {
	@:optional
	var dataColorField : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataTextField : String;
	@:optional
	var dataValueField : String;
	@:optional
	var field : String;
	@:optional
	var multiple : Bool;
	@:optional
	var name : String;
	@:optional
	var title : String;
	@:optional
	var valuePrimitive : Bool;
};
typedef SchedulerToolbarItem = {
	@:optional
	var name : String;
};
typedef SchedulerViewEditable = {
	@:optional
	var create : Bool;
	@:optional
	var destroy : Bool;
	@:optional
	var update : Bool;
};
typedef SchedulerViewGroup = {
	@:optional
	var orientation : String;
};
typedef SchedulerView = {
	@:optional
	var allDayEventTemplate : Dynamic;
	@:optional
	var allDaySlot : Bool;
	@:optional
	var allDaySlotTemplate : Dynamic;
	@:optional
	var columnWidth : Float;
	@:optional
	var dateHeaderTemplate : Dynamic;
	@:optional
	var dayTemplate : Dynamic;
	@:optional
	var editable : SchedulerViewEditable;
	@:optional
	var endTime : Date;
	@:optional
	var eventHeight : Float;
	@:optional
	var eventTemplate : Dynamic;
	@:optional
	var eventTimeTemplate : Dynamic;
	@:optional
	var group : SchedulerViewGroup;
	@:optional
	var majorTick : Float;
	@:optional
	var majorTimeHeaderTemplate : Dynamic;
	@:optional
	var minorTickCount : Float;
	@:optional
	var minorTimeHeaderTemplate : Dynamic;
	@:optional
	var selected : Bool;
	@:optional
	var selectedDateFormat : String;
	@:optional
	var showWorkHours : Bool;
	@:optional
	var slotTemplate : Dynamic;
	@:optional
	var startTime : Date;
	@:optional
	var title : String;
	@:optional
	var type : String;
	@:optional
	var workWeekStart : Float;
	@:optional
	var workWeekEnd : Float;
};
typedef SchedulerSelectOptions = {
	@:optional
	var events : Dynamic;
	@:optional
	var resources : Dynamic;
	@:optional
	var start : Date;
	@:optional
	var end : Date;
	@:optional
	var isAllDay : Bool;
};
typedef SchedulerOptions = {
	@:optional
	var name : String;
	@:optional
	var allDayEventTemplate : Dynamic;
	@:optional
	var allDaySlot : Bool;
	@:optional
	var autoBind : Bool;
	@:optional
	var currentTimeMarker : SchedulerCurrentTimeMarker;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var date : Date;
	@:optional
	var dateHeaderTemplate : Dynamic;
	@:optional
	var editable : SchedulerEditable;
	@:optional
	var endTime : Date;
	@:optional
	var eventTemplate : Dynamic;
	@:optional
	var footer : SchedulerFooter;
	@:optional
	var group : SchedulerGroup;
	@:optional
	var height : Dynamic;
	@:optional
	var majorTick : Float;
	@:optional
	var majorTimeHeaderTemplate : Dynamic;
	@:optional
	var max : Date;
	@:optional
	var messages : SchedulerMessages;
	@:optional
	var min : Date;
	@:optional
	var minorTickCount : Float;
	@:optional
	var minorTimeHeaderTemplate : Dynamic;
	@:optional
	var mobile : Dynamic;
	@:optional
	var pdf : SchedulerPdf;
	@:optional
	var resources : Array<SchedulerResource>;
	@:optional
	var selectable : Bool;
	@:optional
	var showWorkHours : Bool;
	@:optional
	var snap : Bool;
	@:optional
	var startTime : Date;
	@:optional
	var timezone : String;
	@:optional
	var toolbar : Array<SchedulerToolbarItem>;
	@:optional
	var views : Array<SchedulerView>;
	@:optional
	var groupHeaderTemplate : Dynamic;
	@:optional
	var width : Dynamic;
	@:optional
	var workDayStart : Date;
	@:optional
	var workDayEnd : Date;
	@:optional
	var workWeekStart : Float;
	@:optional
	var workWeekEnd : Float;
	@:optional
	function add(e:SchedulerAddEvent):Void;
	@:optional
	function cancel(e:SchedulerCancelEvent):Void;
	@:optional
	function change(e:SchedulerChangeEvent):Void;
	@:optional
	function dataBinding(e:SchedulerDataBindingEvent):Void;
	@:optional
	function dataBound(e:SchedulerDataBoundEvent):Void;
	@:optional
	function edit(e:SchedulerEditEvent):Void;
	@:optional
	function moveStart(e:SchedulerMoveStartEvent):Void;
	@:optional
	function move(e:SchedulerMoveEvent):Void;
	@:optional
	function moveEnd(e:SchedulerMoveEndEvent):Void;
	@:optional
	function navigate(e:SchedulerNavigateEvent):Void;
	@:optional
	function pdfExport(e:SchedulerPdfExportEvent):Void;
	@:optional
	function remove(e:SchedulerRemoveEvent):Void;
	@:optional
	function resizeStart(e:SchedulerResizeStartEvent):Void;
	@:optional
	function resize(e:SchedulerResizeEvent):Void;
	@:optional
	function resizeEnd(e:SchedulerResizeEndEvent):Void;
	@:optional
	function save(e:SchedulerSaveEvent):Void;
};
typedef SchedulerEvent = {
	var sender : Scheduler;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef SchedulerAddEvent = {
	>SchedulerEvent,
	@:optional
	var event : Dynamic;
};
typedef SchedulerCancelEvent = {
	>SchedulerEvent,
	@:optional
	var container : JQuery;
	@:optional
	var event : kendo.data.SchedulerEvent;
};
typedef SchedulerChangeEvent = {
	>SchedulerEvent,
	@:optional
	var start : Date;
	@:optional
	var end : Date;
	@:optional
	var events : Dynamic;
	@:optional
	var slots : Dynamic;
	@:optional
	var resources : Dynamic;
};
typedef SchedulerDataBindingEvent = {
	>SchedulerEvent,
};
typedef SchedulerDataBoundEvent = {
	>SchedulerEvent,
};
typedef SchedulerEditEvent = {
	>SchedulerEvent,
	@:optional
	var container : JQuery;
	@:optional
	var event : kendo.data.SchedulerEvent;
};
typedef SchedulerMoveStartEvent = {
	>SchedulerEvent,
	@:optional
	var event : kendo.data.SchedulerEvent;
};
typedef SchedulerMoveEvent = {
	>SchedulerEvent,
	@:optional
	var event : kendo.data.SchedulerEvent;
	@:optional
	var slot : Dynamic;
};
typedef SchedulerMoveEndEvent = {
	>SchedulerEvent,
	@:optional
	var start : Date;
	@:optional
	var end : Date;
	@:optional
	var event : kendo.data.SchedulerEvent;
	@:optional
	var slot : Dynamic;
	@:optional
	var resources : Dynamic;
};
typedef SchedulerNavigateEvent = {
	>SchedulerEvent,
	@:optional
	var action : String;
	@:optional
	var date : Date;
	@:optional
	var view : String;
};
typedef SchedulerPdfExportEvent = {
	>SchedulerEvent,
	@:optional
	var promise : JQueryPromise<Dynamic>;
};
typedef SchedulerRemoveEvent = {
	>SchedulerEvent,
	@:optional
	var event : kendo.data.SchedulerEvent;
};
typedef SchedulerResizeStartEvent = {
	>SchedulerEvent,
	@:optional
	var event : kendo.data.SchedulerEvent;
};
typedef SchedulerResizeEvent = {
	>SchedulerEvent,
	@:optional
	var event : kendo.data.SchedulerEvent;
	@:optional
	var slot : Dynamic;
};
typedef SchedulerResizeEndEvent = {
	>SchedulerEvent,
	@:optional
	var event : kendo.data.SchedulerEvent;
	@:optional
	var slot : Dynamic;
};
typedef SchedulerSaveEvent = {
	>SchedulerEvent,
	@:optional
	var container : JQuery;
	@:optional
	var event : kendo.data.SchedulerEvent;
};
extern class Slider extends kendo.ui.Widget {
	static var fn : Slider;
	static function extend(proto:Dynamic):Slider;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:SliderOptions):Void;
	var options : SliderOptions;
	function destroy():Void;
	function enable(enable:Bool):Void;
	@:overload(function(value:Float):Void { })
	function value():Float;
	function resize():Void;
}
typedef SliderTooltip = {
	@:optional
	var enabled : Bool;
	@:optional
	var format : String;
	@:optional
	var template : String;
};
typedef SliderOptions = {
	@:optional
	var name : String;
	@:optional
	var decreaseButtonTitle : String;
	@:optional
	var increaseButtonTitle : String;
	@:optional
	var largeStep : Float;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var orientation : String;
	@:optional
	var showButtons : Bool;
	@:optional
	var smallStep : Float;
	@:optional
	var tickPlacement : String;
	@:optional
	var tooltip : SliderTooltip;
	@:optional
	var value : Float;
	@:optional
	function change(e:SliderChangeEvent):Void;
	@:optional
	function slide(e:SliderSlideEvent):Void;
};
typedef SliderEvent = {
	var sender : Slider;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef SliderChangeEvent = {
	>SliderEvent,
	@:optional
	var value : Float;
};
typedef SliderSlideEvent = {
	>SliderEvent,
	@:optional
	var value : Float;
};
extern class Sortable extends kendo.ui.Widget {
	static var fn : Sortable;
	static function extend(proto:Dynamic):Sortable;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:SortableOptions):Void;
	var options : SortableOptions;
	function indexOf(element:JQuery):Float;
	function items():JQuery;
}
typedef SortableCursorOffset = {
	@:optional
	var left : Float;
	@:optional
	var top : Float;
};
typedef SortableOptions = {
	@:optional
	var name : String;
	@:optional
	var axis : String;
	@:optional
	var container : Dynamic;
	@:optional
	var connectWith : Dynamic;
	@:optional
	var cursor : String;
	@:optional
	var cursorOffset : SortableCursorOffset;
	@:optional
	var disabled : String;
	@:optional
	var filter : String;
	@:optional
	var handler : String;
	@:optional
	var hint : Dynamic;
	@:optional
	var holdToDrag : Bool;
	@:optional
	var ignore : String;
	@:optional
	var placeholder : Dynamic;
	@:optional
	function start(e:SortableStartEvent):Void;
	@:optional
	function move(e:SortableMoveEvent):Void;
	@:optional
	function end(e:SortableEndEvent):Void;
	@:optional
	function change(e:SortableChangeEvent):Void;
	@:optional
	function cancel(e:SortableCancelEvent):Void;
};
typedef SortableEvent = {
	var sender : Sortable;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef SortableStartEvent = {
	>SortableEvent,
	@:optional
	var draggableEvent : Dynamic;
	@:optional
	var item : JQuery;
};
typedef SortableMoveEvent = {
	>SortableEvent,
	@:optional
	var item : JQuery;
	@:optional
	var target : JQuery;
	@:optional
	var list : kendo.ui.Sortable;
	@:optional
	var draggableEvent : Dynamic;
};
typedef SortableEndEvent = {
	>SortableEvent,
	@:optional
	var action : String;
	@:optional
	var item : JQuery;
	@:optional
	var oldIndex : Float;
	@:optional
	var newIndex : Float;
	@:optional
	var draggableEvent : Dynamic;
};
typedef SortableChangeEvent = {
	>SortableEvent,
	@:optional
	var action : String;
	@:optional
	var item : JQuery;
	@:optional
	var oldIndex : Float;
	@:optional
	var newIndex : Float;
	@:optional
	var draggableEvent : Dynamic;
};
typedef SortableCancelEvent = {
	>SortableEvent,
	@:optional
	var item : JQuery;
};
extern class Splitter extends kendo.ui.Widget {
	static var fn : Splitter;
	static function extend(proto:Dynamic):Splitter;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:SplitterOptions):Void;
	var options : SplitterOptions;
	@:overload(function(pane:String, url:String, data:String):Void { })
	@:overload(function(pane:Element, url:String, data:Dynamic):Void { })
	@:overload(function(pane:Element, url:String, data:String):Void { })
	@:overload(function(pane:JQuery, url:String, data:Dynamic):Void { })
	@:overload(function(pane:JQuery, url:String, data:String):Void { })
	function ajaxRequest(pane:String, url:String, data:Dynamic):Void;
	function append(?config:Dynamic):JQuery;
	@:overload(function(pane:Element):Void { })
	@:overload(function(pane:JQuery):Void { })
	function collapse(pane:String):Void;
	function destroy():Void;
	@:overload(function(pane:Element):Void { })
	@:overload(function(pane:JQuery):Void { })
	function expand(pane:String):Void;
	@:overload(function(config:Dynamic, referencePane:Element):JQuery { })
	@:overload(function(config:Dynamic, referencePane:JQuery):JQuery { })
	function insertAfter(config:Dynamic, referencePane:String):JQuery;
	@:overload(function(config:Dynamic, referencePane:Element):JQuery { })
	@:overload(function(config:Dynamic, referencePane:JQuery):JQuery { })
	function insertBefore(config:Dynamic, referencePane:String):JQuery;
	@:overload(function(pane:Element, value:String):Void { })
	@:overload(function(pane:JQuery, value:String):Void { })
	function max(pane:String, value:String):Void;
	@:overload(function(pane:Element, value:String):Void { })
	@:overload(function(pane:JQuery, value:String):Void { })
	function min(pane:String, value:String):Void;
	@:overload(function(pane:Element):Void { })
	@:overload(function(pane:JQuery):Void { })
	function remove(pane:String):Void;
	@:overload(function(pane:Element, value:String):Void { })
	@:overload(function(pane:JQuery, value:String):Void { })
	function size(pane:String, value:String):Void;
	@:overload(function(pane:Element, ?expand:Bool):Void { })
	@:overload(function(pane:JQuery, ?expand:Bool):Void { })
	function toggle(pane:String, ?expand:Bool):Void;
}
typedef SplitterPane = {
	@:optional
	var collapsed : Bool;
	@:optional
	var collapsedSize : String;
	@:optional
	var collapsible : Bool;
	@:optional
	var contentUrl : String;
	@:optional
	var max : String;
	@:optional
	var min : String;
	@:optional
	var resizable : Bool;
	@:optional
	var scrollable : Bool;
	@:optional
	var size : String;
};
typedef SplitterOptions = {
	@:optional
	var name : String;
	@:optional
	var orientation : String;
	@:optional
	var panes : Array<SplitterPane>;
	@:optional
	function collapse(e:SplitterCollapseEvent):Void;
	@:optional
	function contentLoad(e:SplitterContentLoadEvent):Void;
	@:optional
	function error(e:SplitterErrorEvent):Void;
	@:optional
	function expand(e:SplitterExpandEvent):Void;
	@:optional
	function layoutChange(e:SplitterEvent):Void;
	@:optional
	function resize(e:SplitterEvent):Void;
};
typedef SplitterEvent = {
	var sender : Splitter;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef SplitterCollapseEvent = {
	>SplitterEvent,
	@:optional
	var pane : Element;
};
typedef SplitterContentLoadEvent = {
	>SplitterEvent,
	@:optional
	var pane : Element;
};
typedef SplitterErrorEvent = {
	>SplitterEvent,
	@:optional
	var xhr : JQueryXHR;
	@:optional
	var status : String;
};
typedef SplitterExpandEvent = {
	>SplitterEvent,
	@:optional
	var pane : Element;
};
extern class TabStrip extends kendo.ui.Widget {
	static var fn : TabStrip;
	static function extend(proto:Dynamic):TabStrip;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:TabStripOptions):Void;
	var options : TabStripOptions;
	function activateTab(item:JQuery):Void;
	function append(tab:Dynamic):kendo.ui.TabStrip;
	function contentElement(itemIndex:Float):Element;
	function contentHolder(itemIndex:Float):Element;
	function deactivateTab(item:JQuery):Void;
	function destroy():Void;
	@:overload(function(element:Element):kendo.ui.TabStrip { })
	@:overload(function(element:JQuery):kendo.ui.TabStrip { })
	function disable(element:String):kendo.ui.TabStrip;
	@:overload(function(element:Element, ?enable:Bool):kendo.ui.TabStrip { })
	@:overload(function(element:JQuery, ?enable:Bool):kendo.ui.TabStrip { })
	function enable(element:String, ?enable:Bool):kendo.ui.TabStrip;
	@:overload(function(item:String, referenceTab:Element):kendo.ui.TabStrip { })
	@:overload(function(item:String, referenceTab:JQuery):kendo.ui.TabStrip { })
	@:overload(function(item:Element, referenceTab:String):kendo.ui.TabStrip { })
	@:overload(function(item:Element, referenceTab:Element):kendo.ui.TabStrip { })
	@:overload(function(item:Element, referenceTab:JQuery):kendo.ui.TabStrip { })
	@:overload(function(item:JQuery, referenceTab:String):kendo.ui.TabStrip { })
	@:overload(function(item:JQuery, referenceTab:Element):kendo.ui.TabStrip { })
	@:overload(function(item:JQuery, referenceTab:JQuery):kendo.ui.TabStrip { })
	function insertAfter(item:String, referenceTab:String):kendo.ui.TabStrip;
	@:overload(function(item:String, referenceTab:Element):kendo.ui.TabStrip { })
	@:overload(function(item:String, referenceTab:JQuery):kendo.ui.TabStrip { })
	@:overload(function(item:Element, referenceTab:String):kendo.ui.TabStrip { })
	@:overload(function(item:Element, referenceTab:Element):kendo.ui.TabStrip { })
	@:overload(function(item:Element, referenceTab:JQuery):kendo.ui.TabStrip { })
	@:overload(function(item:JQuery, referenceTab:String):kendo.ui.TabStrip { })
	@:overload(function(item:JQuery, referenceTab:Element):kendo.ui.TabStrip { })
	@:overload(function(item:JQuery, referenceTab:JQuery):kendo.ui.TabStrip { })
	function insertBefore(item:String, referenceTab:String):kendo.ui.TabStrip;
	function items():HTMLCollection;
	@:overload(function(element:Element):kendo.ui.TabStrip { })
	@:overload(function(element:JQuery):kendo.ui.TabStrip { })
	function reload(element:String):kendo.ui.TabStrip;
	@:overload(function(element:Float):kendo.ui.TabStrip { })
	function remove(element:String):kendo.ui.TabStrip;
	@:overload(function(element:String):Void { })
	@:overload(function(element:Element):Void { })
	@:overload(function(element:JQuery):Void { })
	@:overload(function(element:Float):Void { })
	function select():JQuery;
	function setDataSource():Void;
	var tabGroup : JQuery;
}
typedef TabStripAnimationClose = {
	@:optional
	var duration : Float;
	@:optional
	var effects : String;
};
typedef TabStripAnimationOpen = {
	@:optional
	var duration : Float;
	@:optional
	var effects : String;
};
typedef TabStripAnimation = {
	@:optional
	var close : TabStripAnimationClose;
	@:optional
	var open : TabStripAnimationOpen;
};
typedef TabStripOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : TabStripAnimation;
	@:optional
	var collapsible : Bool;
	@:optional
	var contentUrls : Dynamic;
	@:optional
	var dataContentField : String;
	@:optional
	var dataContentUrlField : String;
	@:optional
	var dataImageUrlField : String;
	@:optional
	var dataSpriteCssClass : String;
	@:optional
	var dataTextField : String;
	@:optional
	var dataUrlField : String;
	@:optional
	var navigatable : Bool;
	@:optional
	var tabPosition : String;
	@:optional
	function activate(e:TabStripActivateEvent):Void;
	@:optional
	function contentLoad(e:TabStripContentLoadEvent):Void;
	@:optional
	function error(e:TabStripErrorEvent):Void;
	@:optional
	function select(e:TabStripSelectEvent):Void;
	@:optional
	function show(e:TabStripShowEvent):Void;
};
typedef TabStripEvent = {
	var sender : TabStrip;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef TabStripActivateEvent = {
	>TabStripEvent,
	@:optional
	var item : Element;
	@:optional
	var contentElement : Element;
};
typedef TabStripContentLoadEvent = {
	>TabStripEvent,
	@:optional
	var item : Element;
	@:optional
	var contentElement : Element;
};
typedef TabStripErrorEvent = {
	>TabStripEvent,
	@:optional
	var xhr : JQueryXHR;
	@:optional
	var status : String;
};
typedef TabStripSelectEvent = {
	>TabStripEvent,
	@:optional
	var item : Element;
	@:optional
	var contentElement : Element;
};
typedef TabStripShowEvent = {
	>TabStripEvent,
	@:optional
	var item : Element;
	@:optional
	var contentElement : Element;
};
extern class TimePicker extends kendo.ui.Widget {
	static var fn : TimePicker;
	static function extend(proto:Dynamic):TimePicker;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:TimePickerOptions):Void;
	var options : TimePickerOptions;
	function close():Void;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function readonly(readonly:Bool):Void;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function max():Date;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function min():Date;
	function open():Void;
	function setOptions(options:Dynamic):Void;
	@:overload(function(value:Date):Void { })
	@:overload(function(value:String):Void { })
	function value():Date;
}
typedef TimePickerAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef TimePickerAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef TimePickerAnimation = {
	@:optional
	var close : TimePickerAnimationClose;
	@:optional
	var open : TimePickerAnimationOpen;
};
typedef TimePickerOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : TimePickerAnimation;
	@:optional
	var culture : String;
	@:optional
	var dates : Dynamic;
	@:optional
	var format : String;
	@:optional
	var interval : Float;
	@:optional
	var max : Date;
	@:optional
	var min : Date;
	@:optional
	var parseFormats : Dynamic;
	@:optional
	var value : Date;
	@:optional
	function change(e:TimePickerChangeEvent):Void;
	@:optional
	function close(e:TimePickerCloseEvent):Void;
	@:optional
	function open(e:TimePickerOpenEvent):Void;
};
typedef TimePickerEvent = {
	var sender : TimePicker;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef TimePickerChangeEvent = {
	>TimePickerEvent,
};
typedef TimePickerCloseEvent = {
	>TimePickerEvent,
};
typedef TimePickerOpenEvent = {
	>TimePickerEvent,
};
extern class ToolBar extends kendo.ui.Widget {
	static var fn : ToolBar;
	static function extend(proto:Dynamic):ToolBar;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ToolBarOptions):Void;
	var options : ToolBarOptions;
	function add(command:Dynamic):Void;
	function destroy():Void;
	@:overload(function(command:Element, enable:Bool):Void { })
	@:overload(function(command:JQuery, enable:Bool):Void { })
	function enable(command:String, enable:Bool):Void;
	function getSelectedFromGroup(groupName:String):Void;
	@:overload(function(command:Element):Void { })
	@:overload(function(command:JQuery):Void { })
	function remove(command:String):Void;
	function toggle():Void;
}
typedef ToolBarItemButton = {
	@:optional
	var attributes : Dynamic;
	@:optional
	var click : haxe.Constraints.Function;
	@:optional
	var enable : Bool;
	@:optional
	var group : String;
	@:optional
	var icon : String;
	@:optional
	var id : String;
	@:optional
	var imageUrl : String;
	@:optional
	var selected : Bool;
	@:optional
	var showIcon : String;
	@:optional
	var showText : String;
	@:optional
	var spriteCssClass : String;
	@:optional
	var toggle : haxe.Constraints.Function;
	@:optional
	var togglable : Bool;
	@:optional
	var text : String;
	@:optional
	var url : String;
};
typedef ToolBarItemMenuButton = {
	@:optional
	var attributes : Dynamic;
	@:optional
	var enable : Bool;
	@:optional
	var icon : String;
	@:optional
	var id : String;
	@:optional
	var imageUrl : String;
	@:optional
	var spriteCssClass : String;
	@:optional
	var text : String;
	@:optional
	var url : String;
};
typedef ToolBarItem = {
	@:optional
	var attributes : Dynamic;
	@:optional
	var buttons : Array<ToolBarItemButton>;
	@:optional
	var click : haxe.Constraints.Function;
	@:optional
	var enable : Bool;
	@:optional
	var group : String;
	@:optional
	var icon : String;
	@:optional
	var id : String;
	@:optional
	var imageUrl : String;
	@:optional
	var menuButtons : Array<ToolBarItemMenuButton>;
	@:optional
	var overflow : String;
	@:optional
	var overflowTemplate : Dynamic;
	@:optional
	var primary : Bool;
	@:optional
	var selected : Bool;
	@:optional
	var showIcon : String;
	@:optional
	var showText : String;
	@:optional
	var spriteCssClass : String;
	@:optional
	var template : Dynamic;
	@:optional
	var text : String;
	@:optional
	var togglable : Bool;
	@:optional
	var toggle : haxe.Constraints.Function;
	@:optional
	var type : String;
	@:optional
	var url : String;
};
typedef ToolBarOptions = {
	@:optional
	var name : String;
	@:optional
	var resizable : Bool;
	@:optional
	var items : Array<ToolBarItem>;
	@:optional
	function click(e:ToolBarClickEvent):Void;
	@:optional
	function close(e:ToolBarCloseEvent):Void;
	@:optional
	function open(e:ToolBarOpenEvent):Void;
	@:optional
	function toggle(e:ToolBarToggleEvent):Void;
	@:optional
	function overflowClose(e:ToolBarOverflowCloseEvent):Void;
	@:optional
	function overflowOpen(e:ToolBarOverflowOpenEvent):Void;
};
typedef ToolBarEvent = {
	var sender : ToolBar;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ToolBarClickEvent = {
	>ToolBarEvent,
	@:optional
	var target : JQuery;
	@:optional
	var id : String;
};
typedef ToolBarCloseEvent = {
	>ToolBarEvent,
	@:optional
	var SplitButton : JQuery;
};
typedef ToolBarOpenEvent = {
	>ToolBarEvent,
	@:optional
	var SplitButton : JQuery;
};
typedef ToolBarToggleEvent = {
	>ToolBarEvent,
	@:optional
	var target : JQuery;
	@:optional
	var checked : Bool;
	@:optional
	var id : String;
};
typedef ToolBarOverflowCloseEvent = {
	>ToolBarEvent,
};
typedef ToolBarOverflowOpenEvent = {
	>ToolBarEvent,
};
extern class Tooltip extends kendo.ui.Widget {
	static var fn : Tooltip;
	static function extend(proto:Dynamic):Tooltip;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:TooltipOptions):Void;
	var options : TooltipOptions;
	function show(element:JQuery):Void;
	function hide():Void;
	function refresh():Void;
	function target():JQuery;
}
typedef TooltipAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef TooltipAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef TooltipAnimation = {
	@:optional
	var close : TooltipAnimationClose;
	@:optional
	var open : TooltipAnimationOpen;
};
typedef TooltipContent = {
	@:optional
	var url : String;
};
typedef TooltipOptions = {
	@:optional
	var name : String;
	@:optional
	var autoHide : Bool;
	@:optional
	var animation : TooltipAnimation;
	@:optional
	var content : TooltipContent;
	@:optional
	var callout : Bool;
	@:optional
	var filter : String;
	@:optional
	var iframe : Bool;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var position : String;
	@:optional
	var showAfter : Float;
	@:optional
	var showOn : String;
	@:optional
	function contentLoad(e:TooltipEvent):Void;
	@:optional
	function show(e:TooltipEvent):Void;
	@:optional
	function hide(e:TooltipEvent):Void;
	@:optional
	function requestStart(e:TooltipRequestStartEvent):Void;
	@:optional
	function error(e:TooltipErrorEvent):Void;
};
typedef TooltipEvent = {
	var sender : Tooltip;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef TooltipRequestStartEvent = {
	>TooltipEvent,
	@:optional
	var target : JQuery;
	@:optional
	var options : Dynamic;
};
typedef TooltipErrorEvent = {
	>TooltipEvent,
	@:optional
	var xhr : JQueryXHR;
	@:optional
	var status : String;
};
extern class Touch extends kendo.ui.Widget {
	static var fn : Touch;
	static function extend(proto:Dynamic):Touch;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:TouchOptions):Void;
	var options : TouchOptions;
	function cancel():Void;
	function destroy():Void;
}
typedef TouchOptions = {
	@:optional
	var name : String;
	@:optional
	var filter : String;
	@:optional
	var surface : JQuery;
	@:optional
	var multiTouch : Bool;
	@:optional
	var enableSwipe : Bool;
	@:optional
	var minXDelta : Float;
	@:optional
	var maxYDelta : Float;
	@:optional
	var maxDuration : Float;
	@:optional
	var minHold : Float;
	@:optional
	var doubleTapTimeout : Float;
	@:optional
	function touchstart(e:TouchTouchstartEvent):Void;
	@:optional
	function dragstart(e:TouchDragstartEvent):Void;
	@:optional
	function drag(e:TouchDragEvent):Void;
	@:optional
	function dragend(e:TouchDragendEvent):Void;
	@:optional
	function tap(e:TouchTapEvent):Void;
	@:optional
	function doubletap(e:TouchDoubletapEvent):Void;
	@:optional
	function hold(e:TouchHoldEvent):Void;
	@:optional
	function swipe(e:TouchSwipeEvent):Void;
	@:optional
	function gesturestart(e:TouchGesturestartEvent):Void;
	@:optional
	function gesturechange(e:TouchGesturechangeEvent):Void;
	@:optional
	function gestureend(e:TouchGestureendEvent):Void;
};
typedef TouchEvent = {
	var sender : Touch;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef TouchTouchstartEvent = {
	>TouchEvent,
	@:optional
	var touch : kendo.mobile.ui.TouchEventOptions;
	@:optional
	var event : JQueryEventObject;
};
typedef TouchDragstartEvent = {
	>TouchEvent,
	@:optional
	var touch : kendo.mobile.ui.TouchEventOptions;
	@:optional
	var event : JQueryEventObject;
};
typedef TouchDragEvent = {
	>TouchEvent,
	@:optional
	var touch : kendo.mobile.ui.TouchEventOptions;
	@:optional
	var event : JQueryEventObject;
};
typedef TouchDragendEvent = {
	>TouchEvent,
	@:optional
	var touch : kendo.mobile.ui.TouchEventOptions;
	@:optional
	var event : JQueryEventObject;
};
typedef TouchTapEvent = {
	>TouchEvent,
	@:optional
	var touch : kendo.mobile.ui.TouchEventOptions;
	@:optional
	var event : JQueryEventObject;
};
typedef TouchDoubletapEvent = {
	>TouchEvent,
	@:optional
	var touch : kendo.mobile.ui.TouchEventOptions;
	@:optional
	var event : JQueryEventObject;
};
typedef TouchHoldEvent = {
	>TouchEvent,
	@:optional
	var touch : kendo.mobile.ui.TouchEventOptions;
	@:optional
	var event : JQueryEventObject;
};
typedef TouchSwipeEvent = {
	>TouchEvent,
	@:optional
	var touch : kendo.mobile.ui.TouchEventOptions;
	@:optional
	var event : JQueryEventObject;
};
typedef TouchGesturestartEvent = {
	>TouchEvent,
	@:optional
	var touches : Dynamic;
	@:optional
	var event : JQueryEventObject;
	@:optional
	var distance : Float;
	@:optional
	var center : kendo.mobile.ui.Point;
};
typedef TouchGesturechangeEvent = {
	>TouchEvent,
	@:optional
	var touches : Dynamic;
	@:optional
	var event : JQueryEventObject;
	@:optional
	var distance : Float;
	@:optional
	var center : kendo.mobile.ui.Point;
};
typedef TouchGestureendEvent = {
	>TouchEvent,
	@:optional
	var touches : Dynamic;
	@:optional
	var event : JQueryEventObject;
	@:optional
	var distance : Float;
	@:optional
	var center : kendo.mobile.ui.Point;
};
extern class TreeList extends kendo.ui.Widget {
	static var fn : TreeList;
	static function extend(proto:Dynamic):TreeList;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:TreeListOptions):Void;
	var options : TreeListOptions;
	var dataSource : kendo.data.DataSource;
	@:overload(function(parentRow:Element):Void { })
	@:overload(function(parentRow:JQuery):Void { })
	function addRow(parentRow:String):Void;
	function cancelRow():Void;
	function clearSelection():Void;
	function collapse():Void;
	@:overload(function(row:Element):kendo.data.TreeListModel { })
	@:overload(function(row:JQuery):kendo.data.TreeListModel { })
	function dataItem(row:String):kendo.data.TreeListModel;
	function destroy():Void;
	function editRow(row:JQuery):Void;
	function expand():Void;
	function refresh():Void;
	@:overload(function(row:Element):Void { })
	@:overload(function(row:JQuery):Void { })
	function removeRow(row:String):Void;
	function saveAsExcel():Void;
	function saveAsPDF():JQueryPromise<Dynamic>;
	function saveRow():Void;
	@:overload(function(rows:Element):Void { })
	@:overload(function(rows:JQuery):Void { })
	function select():JQuery;
	function setDataSource(dataSource:kendo.data.TreeListDataSource):Void;
	@:overload(function(column:String):Void { })
	function showColumn(column:Float):Void;
	@:overload(function(column:String):Void { })
	function hideColumn(column:Float):Void;
	@:overload(function(column:String):Void { })
	function lockColumn(column:Float):Void;
	@:overload(function(column:String):Void { })
	function unlockColumn(column:Float):Void;
	function reorderColumn(destIndex:Float, column:Dynamic):Void;
}
typedef TreeListColumnMenuMessages = {
	@:optional
	var columns : String;
	@:optional
	var filter : String;
	@:optional
	var sortAscending : String;
	@:optional
	var sortDescending : String;
};
typedef TreeListColumnMenu = {
	@:optional
	var columns : Bool;
	@:optional
	var filterable : Bool;
	@:optional
	var sortable : Bool;
	@:optional
	var messages : TreeListColumnMenuMessages;
};
typedef TreeListColumnCommandItem = {
	@:optional
	var className : String;
	@:optional
	var click : haxe.Constraints.Function;
	@:optional
	var name : String;
	@:optional
	var text : String;
};
typedef TreeListColumnFilterable = {
	@:optional
	var ui : Dynamic;
};
typedef TreeListColumnSortable = {
	@:optional
	var compare : haxe.Constraints.Function;
};
typedef TreeListColumn = {
	@:optional
	var attributes : Dynamic;
	@:optional
	var command : Array<TreeListColumnCommandItem>;
	@:optional
	var encoded : Bool;
	@:optional
	var expandable : Bool;
	@:optional
	var field : String;
	@:optional
	var filterable : TreeListColumnFilterable;
	@:optional
	var footerTemplate : Dynamic;
	@:optional
	var format : String;
	@:optional
	var headerAttributes : Dynamic;
	@:optional
	var headerTemplate : Dynamic;
	@:optional
	var sortable : TreeListColumnSortable;
	@:optional
	var template : Dynamic;
	@:optional
	var title : String;
	@:optional
	var width : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var menu : Bool;
	@:optional
	var locked : Bool;
	@:optional
	var lockable : Bool;
};
typedef TreeListEditable = {
	@:optional
	var mode : String;
	@:optional
	var template : Dynamic;
	@:optional
	var window : Dynamic;
};
typedef TreeListExcel = {
	@:optional
	var fileName : String;
	@:optional
	var filterable : Bool;
	@:optional
	var forceProxy : Bool;
	@:optional
	var proxyURL : String;
};
typedef TreeListFilterableMessages = {
	@:optional
	var and : String;
	@:optional
	var clear : String;
	@:optional
	var filter : String;
	@:optional
	var info : String;
	@:optional
	var isFalse : String;
	@:optional
	var isTrue : String;
	@:optional
	var or : String;
	@:optional
	var selectValue : String;
	@:optional
	var cancel : String;
	@:optional
	var operator : String;
};
typedef TreeListFilterable = {
	@:optional
	var extra : Bool;
	@:optional
	var messages : TreeListFilterableMessages;
};
typedef TreeListMessagesCommands = {
	@:optional
	var canceledit : String;
	@:optional
	var create : String;
	@:optional
	var createchild : String;
	@:optional
	var destroy : String;
	@:optional
	var edit : String;
	@:optional
	var excel : String;
	@:optional
	var pdf : String;
	@:optional
	var update : String;
};
typedef TreeListMessages = {
	@:optional
	var commands : TreeListMessagesCommands;
	@:optional
	var loading : String;
	@:optional
	var noRows : String;
	@:optional
	var requestFailed : String;
	@:optional
	var retry : String;
};
typedef TreeListPdfMargin = {
	@:optional
	var bottom : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var top : Dynamic;
};
typedef TreeListPdf = {
	@:optional
	var author : String;
	@:optional
	var creator : String;
	@:optional
	var date : Date;
	@:optional
	var fileName : String;
	@:optional
	var forceProxy : Bool;
	@:optional
	var keywords : String;
	@:optional
	var landscape : Bool;
	@:optional
	var margin : TreeListPdfMargin;
	@:optional
	var paperSize : Dynamic;
	@:optional
	var proxyURL : String;
	@:optional
	var proxyTarget : String;
	@:optional
	var subject : String;
	@:optional
	var title : String;
};
typedef TreeListSortable = {
	@:optional
	var allowUnsort : Bool;
	@:optional
	var mode : String;
};
typedef TreeListToolbarItem = {
	@:optional
	var name : String;
	@:optional
	var text : String;
};
typedef TreeListOptions = {
	@:optional
	var name : String;
	@:optional
	var autoBind : Bool;
	@:optional
	var columns : Array<TreeListColumn>;
	@:optional
	var resizable : Bool;
	@:optional
	var reorderable : Bool;
	@:optional
	var columnMenu : TreeListColumnMenu;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var editable : TreeListEditable;
	@:optional
	var excel : TreeListExcel;
	@:optional
	var filterable : TreeListFilterable;
	@:optional
	var height : Dynamic;
	@:optional
	var messages : TreeListMessages;
	@:optional
	var pdf : TreeListPdf;
	@:optional
	var scrollable : Dynamic;
	@:optional
	var selectable : Dynamic;
	@:optional
	var sortable : TreeListSortable;
	@:optional
	var toolbar : Array<TreeListToolbarItem>;
	@:optional
	function cancel(e:TreeListCancelEvent):Void;
	@:optional
	function change(e:TreeListChangeEvent):Void;
	@:optional
	function collapse(e:TreeListCollapseEvent):Void;
	@:optional
	function dataBinding(e:TreeListDataBindingEvent):Void;
	@:optional
	function dataBound(e:TreeListDataBoundEvent):Void;
	@:optional
	function edit(e:TreeListEditEvent):Void;
	@:optional
	function excelExport(e:TreeListExcelExportEvent):Void;
	@:optional
	function expand(e:TreeListExpandEvent):Void;
	@:optional
	function filterMenuInit(e:TreeListFilterMenuInitEvent):Void;
	@:optional
	function pdfExport(e:TreeListPdfExportEvent):Void;
	@:optional
	function remove(e:TreeListRemoveEvent):Void;
	@:optional
	function save(e:TreeListSaveEvent):Void;
	@:optional
	function columnShow(e:TreeListColumnShowEvent):Void;
	@:optional
	function columnHide(e:TreeListColumnHideEvent):Void;
	@:optional
	function columnReorder(e:TreeListColumnReorderEvent):Void;
	@:optional
	function columnMenuInit(e:TreeListColumnMenuInitEvent):Void;
	@:optional
	function columnLock(e:TreeListColumnLockEvent):Void;
	@:optional
	function columnUnlock(e:TreeListColumnUnlockEvent):Void;
};
typedef TreeListEvent = {
	var sender : TreeList;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef TreeListCancelEvent = {
	>TreeListEvent,
	@:optional
	var container : JQuery;
	@:optional
	var model : kendo.data.TreeListModel;
};
typedef TreeListChangeEvent = {
	>TreeListEvent,
};
typedef TreeListCollapseEvent = {
	>TreeListEvent,
	@:optional
	var model : kendo.data.TreeListModel;
};
typedef TreeListDataBindingEvent = {
	>TreeListEvent,
};
typedef TreeListDataBoundEvent = {
	>TreeListEvent,
};
typedef TreeListEditEvent = {
	>TreeListEvent,
	@:optional
	var container : JQuery;
	@:optional
	var model : kendo.data.TreeListModel;
};
typedef TreeListExcelExportEvent = {
	>TreeListEvent,
	@:optional
	var data : Dynamic;
	@:optional
	var workbook : Dynamic;
};
typedef TreeListExpandEvent = {
	>TreeListEvent,
	@:optional
	var model : kendo.data.TreeListModel;
};
typedef TreeListFilterMenuInitEvent = {
	>TreeListEvent,
	@:optional
	var container : JQuery;
	@:optional
	var field : String;
};
typedef TreeListPdfExportEvent = {
	>TreeListEvent,
	@:optional
	var promise : JQueryPromise<Dynamic>;
};
typedef TreeListRemoveEvent = {
	>TreeListEvent,
	@:optional
	var model : kendo.data.TreeListModel;
	@:optional
	var row : JQuery;
};
typedef TreeListSaveEvent = {
	>TreeListEvent,
	@:optional
	var model : kendo.data.TreeListModel;
	@:optional
	var container : JQuery;
};
typedef TreeListColumnShowEvent = {
	>TreeListEvent,
	@:optional
	var column : Dynamic;
};
typedef TreeListColumnHideEvent = {
	>TreeListEvent,
	@:optional
	var column : Dynamic;
};
typedef TreeListColumnReorderEvent = {
	>TreeListEvent,
	@:optional
	var column : Dynamic;
	@:optional
	var newIndex : Float;
	@:optional
	var oldIndex : Float;
};
typedef TreeListColumnMenuInitEvent = {
	>TreeListEvent,
	@:optional
	var container : JQuery;
	@:optional
	var field : String;
};
typedef TreeListColumnLockEvent = {
	>TreeListEvent,
	@:optional
	var column : Dynamic;
};
typedef TreeListColumnUnlockEvent = {
	>TreeListEvent,
	@:optional
	var column : Dynamic;
};
extern class TreeView extends kendo.ui.Widget {
	static var fn : TreeView;
	static function extend(proto:Dynamic):TreeView;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:TreeViewOptions):Void;
	var options : TreeViewOptions;
	var dataSource : kendo.data.DataSource;
	@:overload(function(nodeData:JQuery, ?parentNode:JQuery, ?success:haxe.Constraints.Function):JQuery { })
	function append(nodeData:Dynamic, ?parentNode:JQuery, ?success:haxe.Constraints.Function):JQuery;
	@:overload(function(nodes:Element):Void { })
	@:overload(function(nodes:String):Void { })
	function collapse(nodes:JQuery):Void;
	@:overload(function(node:Element):kendo.data.Node { })
	@:overload(function(node:String):kendo.data.Node { })
	function dataItem(node:JQuery):kendo.data.Node;
	function destroy():Void;
	@:overload(function(node:Element):JQuery { })
	@:overload(function(node:String):JQuery { })
	function detach(node:JQuery):JQuery;
	@:overload(function(nodes:Element, ?enable:Bool):Void { })
	@:overload(function(nodes:String, ?enable:Bool):Void { })
	function enable(nodes:JQuery, ?enable:Bool):Void;
	@:overload(function(nodes:Element):Void { })
	@:overload(function(nodes:String):Void { })
	function expand(nodes:JQuery):Void;
	function expandPath(path:Dynamic, complete:haxe.Constraints.Function):Void;
	@:overload(function(targetNode:Dynamic):Void { })
	function expandTo(targetNode:kendo.data.Node):Void;
	function findByText(text:String):JQuery;
	function findByUid(text:String):JQuery;
	function insertAfter(nodeData:Dynamic, referenceNode:JQuery):Void;
	function insertBefore(nodeData:Dynamic, referenceNode:JQuery):Void;
	@:overload(function(node:Element):JQuery { })
	@:overload(function(node:String):JQuery { })
	function parent(node:JQuery):JQuery;
	@:overload(function(node:Element):Void { })
	@:overload(function(node:String):Void { })
	function remove(node:JQuery):Void;
	@:overload(function(?node:JQuery):Void { })
	@:overload(function(?node:Element):Void { })
	@:overload(function(?node:String):Void { })
	function select():JQuery;
	function setDataSource(dataSource:kendo.data.HierarchicalDataSource):Void;
	@:overload(function(node:JQuery, newText:String):Void { })
	@:overload(function(node:Element, newText:String):Void { })
	@:overload(function(node:String, newText:String):Void { })
	function text():String;
	@:overload(function(node:Element):Void { })
	@:overload(function(node:String):Void { })
	function toggle(node:JQuery):Void;
	function updateIndeterminate(node:JQuery):Void;
}
typedef TreeViewAnimationCollapse = {
	@:optional
	var duration : Float;
	@:optional
	var effects : String;
};
typedef TreeViewAnimationExpand = {
	@:optional
	var duration : Float;
	@:optional
	var effects : String;
};
typedef TreeViewAnimation = {
	@:optional
	var collapse : TreeViewAnimationCollapse;
	@:optional
	var expand : TreeViewAnimationExpand;
};
typedef TreeViewCheckboxes = {
	@:optional
	var checkChildren : Bool;
	@:optional
	var name : String;
	@:optional
	var template : Dynamic;
};
typedef TreeViewMessages = {
	@:optional
	var loading : String;
	@:optional
	var requestFailed : String;
	@:optional
	var retry : String;
};
typedef TreeViewOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : TreeViewAnimation;
	@:optional
	var autoBind : Bool;
	@:optional
	var checkboxes : TreeViewCheckboxes;
	@:optional
	var dataImageUrlField : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var dataSpriteCssClassField : String;
	@:optional
	var dataTextField : Dynamic;
	@:optional
	var dataUrlField : String;
	@:optional
	var dragAndDrop : Bool;
	@:optional
	var loadOnDemand : Bool;
	@:optional
	var messages : TreeViewMessages;
	@:optional
	var template : Dynamic;
	@:optional
	function change(e:TreeViewEvent):Void;
	@:optional
	function check(e:TreeViewCheckEvent):Void;
	@:optional
	function collapse(e:TreeViewCollapseEvent):Void;
	@:optional
	function dataBound(e:TreeViewDataBoundEvent):Void;
	@:optional
	function drag(e:TreeViewDragEvent):Void;
	@:optional
	function dragend(e:TreeViewDragendEvent):Void;
	@:optional
	function dragstart(e:TreeViewDragstartEvent):Void;
	@:optional
	function drop(e:TreeViewDropEvent):Void;
	@:optional
	function expand(e:TreeViewExpandEvent):Void;
	@:optional
	function navigate(e:TreeViewNavigateEvent):Void;
	@:optional
	function select(e:TreeViewSelectEvent):Void;
};
typedef TreeViewEvent = {
	var sender : TreeView;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef TreeViewCheckEvent = {
	>TreeViewEvent,
	@:optional
	var node : Element;
};
typedef TreeViewCollapseEvent = {
	>TreeViewEvent,
	@:optional
	var node : Element;
};
typedef TreeViewDataBoundEvent = {
	>TreeViewEvent,
	@:optional
	var node : JQuery;
};
typedef TreeViewDragEvent = {
	>TreeViewEvent,
	@:optional
	var sourceNode : Element;
	@:optional
	var dropTarget : Element;
	@:optional
	var pageX : Float;
	@:optional
	var pageY : Float;
	@:optional
	var statusClass : String;
	@:optional
	var setStatusClass : haxe.Constraints.Function;
};
typedef TreeViewDragendEvent = {
	>TreeViewEvent,
	@:optional
	var sourceNode : Element;
	@:optional
	var destinationNode : Element;
	@:optional
	var dropPosition : String;
};
typedef TreeViewDragstartEvent = {
	>TreeViewEvent,
	@:optional
	var sourceNode : Element;
};
typedef TreeViewDropEvent = {
	>TreeViewEvent,
	@:optional
	var sourceNode : Element;
	@:optional
	var destinationNode : Element;
	@:optional
	var valid : Bool;
	@:optional
	var setValid : haxe.Constraints.Function;
	@:optional
	var dropTarget : Element;
	@:optional
	var dropPosition : String;
};
typedef TreeViewExpandEvent = {
	>TreeViewEvent,
	@:optional
	var node : Element;
};
typedef TreeViewNavigateEvent = {
	>TreeViewEvent,
	@:optional
	var node : Element;
};
typedef TreeViewSelectEvent = {
	>TreeViewEvent,
	@:optional
	var node : Element;
};
extern class Upload extends kendo.ui.Widget {
	static var fn : Upload;
	static function extend(proto:Dynamic):Upload;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:UploadOptions):Void;
	var options : UploadOptions;
	function destroy():Void;
	function disable():Void;
	function enable(?enable:Bool):Void;
	function toggle(enable:Bool):Void;
}
typedef UploadAsync = {
	@:optional
	var autoUpload : Bool;
	@:optional
	var batch : Bool;
	@:optional
	var removeField : String;
	@:optional
	var removeUrl : String;
	@:optional
	var removeVerb : String;
	@:optional
	var saveField : String;
	@:optional
	var saveUrl : String;
	@:optional
	var withCredentials : Bool;
};
typedef UploadFile = {
	@:optional
	var extension : String;
	@:optional
	var name : String;
	@:optional
	var size : Float;
};
typedef UploadLocalization = {
	@:optional
	var cancel : String;
	@:optional
	var dropFilesHere : String;
	@:optional
	var headerStatusUploaded : String;
	@:optional
	var headerStatusUploading : String;
	@:optional
	var remove : String;
	@:optional
	var retry : String;
	@:optional
	var select : String;
	@:optional
	var statusFailed : String;
	@:optional
	var statusUploaded : String;
	@:optional
	var statusUploading : String;
	@:optional
	var uploadSelectedFiles : String;
};
typedef UploadOptions = {
	@:optional
	var name : String;
	@:optional
	var async : UploadAsync;
	@:optional
	var enabled : Bool;
	@:optional
	var files : Array<UploadFile>;
	@:optional
	var localization : UploadLocalization;
	@:optional
	var multiple : Bool;
	@:optional
	var showFileList : Bool;
	@:optional
	var template : Dynamic;
	@:optional
	function cancel(e:UploadCancelEvent):Void;
	@:optional
	function complete(e:UploadEvent):Void;
	@:optional
	function error(e:UploadErrorEvent):Void;
	@:optional
	function progress(e:UploadProgressEvent):Void;
	@:optional
	function remove(e:UploadRemoveEvent):Void;
	@:optional
	function select(e:UploadSelectEvent):Void;
	@:optional
	function success(e:UploadSuccessEvent):Void;
	@:optional
	function upload(e:UploadUploadEvent):Void;
};
typedef UploadEvent = {
	var sender : Upload;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef UploadCancelEvent = {
	>UploadEvent,
	@:optional
	var files : Dynamic;
};
typedef UploadErrorEvent = {
	>UploadEvent,
	@:optional
	var files : Dynamic;
	@:optional
	var operation : String;
	@:optional
	var XMLHttpRequest : Dynamic;
};
typedef UploadProgressEvent = {
	>UploadEvent,
	@:optional
	var files : Dynamic;
	@:optional
	var percentComplete : Float;
};
typedef UploadRemoveEvent = {
	>UploadEvent,
	@:optional
	var files : Dynamic;
	@:optional
	var data : Dynamic;
};
typedef UploadSelectEvent = {
	>UploadEvent,
	@:optional
	var e : Dynamic;
	@:optional
	var files : Dynamic;
};
typedef UploadSuccessEvent = {
	>UploadEvent,
	@:optional
	var files : Dynamic;
	@:optional
	var operation : String;
	@:optional
	var response : String;
	@:optional
	var XMLHttpRequest : Dynamic;
};
typedef UploadUploadEvent = {
	>UploadEvent,
	@:optional
	var files : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var formData : Dynamic;
	@:optional
	var XMLHttpRequest : Dynamic;
};
extern class Validator extends kendo.ui.Widget {
	static var fn : Validator;
	static function extend(proto:Dynamic):Validator;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ValidatorOptions):Void;
	var options : ValidatorOptions;
	function errors():Dynamic;
	function hideMessages():Void;
	function validate():Bool;
	@:overload(function(input:JQuery):Bool { })
	function validateInput(input:Element):Bool;
}
typedef ValidatorOptions = {
	@:optional
	var name : String;
	@:optional
	var errorTemplate : String;
	@:optional
	var messages : Dynamic;
	@:optional
	var rules : Dynamic;
	@:optional
	var validateOnBlur : Bool;
	@:optional
	function validate(e:ValidatorValidateEvent):Void;
};
typedef ValidatorEvent = {
	var sender : Validator;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ValidatorValidateEvent = {
	>ValidatorEvent,
};
extern class Window extends kendo.ui.Widget {
	static var fn : Window;
	static function extend(proto:Dynamic):Window;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:WindowOptions):Void;
	var options : WindowOptions;
	function center():kendo.ui.Window;
	function close():kendo.ui.Window;
	@:overload(function(?content:String):Void { })
	function content():Dynamic;
	function destroy():Void;
	function maximize():kendo.ui.Window;
	function minimize():kendo.ui.Window;
	function open():kendo.ui.Window;
	function pin():Void;
	function refresh(options:Dynamic):kendo.ui.Window;
	function restore():kendo.ui.Window;
	function setOptions(options:Dynamic):Void;
	@:overload(function(?text:String):Void { })
	function title():kendo.ui.Window;
	function toFront():kendo.ui.Window;
	function toggleMaximization():kendo.ui.Window;
	function unpin():Void;
}
typedef WindowAnimationClose = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef WindowAnimationOpen = {
	@:optional
	var effects : String;
	@:optional
	var duration : Float;
};
typedef WindowAnimation = {
	@:optional
	var close : WindowAnimationClose;
	@:optional
	var open : WindowAnimationOpen;
};
typedef WindowContent = {
	@:optional
	var template : String;
};
typedef WindowPosition = {
	@:optional
	var top : Dynamic;
	@:optional
	var left : Dynamic;
};
typedef WindowRefreshOptions = {
	@:optional
	var url : String;
	@:optional
	var data : Dynamic;
	@:optional
	var type : String;
	@:optional
	var template : String;
	@:optional
	var iframe : Bool;
};
typedef WindowOptions = {
	@:optional
	var name : String;
	@:optional
	var actions : Dynamic;
	@:optional
	var animation : WindowAnimation;
	@:optional
	var appendTo : Dynamic;
	@:optional
	var autoFocus : Bool;
	@:optional
	var content : WindowContent;
	@:optional
	var draggable : Bool;
	@:optional
	var iframe : Bool;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var pinned : Bool;
	@:optional
	var position : WindowPosition;
	@:optional
	var resizable : Bool;
	@:optional
	var title : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var width : Dynamic;
	@:optional
	var height : Dynamic;
	@:optional
	function activate(e:WindowEvent):Void;
	@:optional
	function close(e:WindowCloseEvent):Void;
	@:optional
	function deactivate(e:WindowEvent):Void;
	@:optional
	function dragend(e:WindowEvent):Void;
	@:optional
	function dragstart(e:WindowEvent):Void;
	@:optional
	function error(e:WindowErrorEvent):Void;
	@:optional
	function open(e:WindowEvent):Void;
	@:optional
	function refresh(e:WindowEvent):Void;
	@:optional
	function resize(e:WindowEvent):Void;
};
typedef WindowEvent = {
	var sender : Window;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef WindowCloseEvent = {
	>WindowEvent,
	@:optional
	var userTriggered : Bool;
};
typedef WindowErrorEvent = {
	>WindowEvent,
	@:optional
	var xhr : JQueryXHR;
	@:optional
	var status : String;
};
extern class Kendo.uiTopLevel {
	static function progress(container:JQuery, toggle:Bool):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
	static function plugin(widget:Dynamic, ?register:Dynamic, ?prefix:String):Void;
}
