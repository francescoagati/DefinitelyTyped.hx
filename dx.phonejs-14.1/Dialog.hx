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
typedef DxAutocompleteOptions = {
	>DxDropDownEditorOptions,
	@:optional
	var minSearchLength : Float;
	@:optional
	var searchTimeout : Float;
	@:optional
	var placeholder : String;
	@:optional
	var filterOperator : String;
	@:optional
	var displayExpr : String;
	@:optional
	var searchMode : String;
	@:optional
	var dataSource : data.DataSource;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var itemRender : haxe.Constraints.Function;
	@:optional
	var itemTemplate : Dynamic;
};
extern class DxAutocomplete extends DxDropDownEditor {
	@:overload(function(element:JQuery, ?options:DxAutocompleteOptions):Void { })
	function new(element:Element, ?options:DxAutocompleteOptions):Void;
}
typedef DxButtonOptions = {
	>WidgetOptions,
	@:optional
	var type : String;
	@:optional
	var text : String;
	@:optional
	var icon : String;
	@:optional
	var iconSrc : String;
	@:optional
	var clickAction : Dynamic;
};
extern class DxButton extends Widget {
	@:overload(function(element:JQuery, ?options:DxButtonOptions):Void { })
	function new(element:Element, ?options:DxButtonOptions):Void;
}
typedef DxCheckBoxOptions = {
	>DxEditorOptions,
};
extern class DxCheckBox extends DxEditor {
	@:overload(function(element:JQuery, ?options:DxCheckBoxOptions):Void { })
	function new(element:Element, ?options:DxCheckBoxOptions):Void;
}
typedef DxCalendarOptions = {
	>DxEditorOptions,
	@:optional
	var value : Date;
	@:optional
	var min : Date;
	@:optional
	var max : Date;
	@:optional
	var firstDayOfWeek : Float;
};
extern class DxCalendar extends DxEditor {
	@:overload(function(element:JQuery, ?options:DxEditorOptions):Void { })
	function new(element:Element, ?options:DxEditorOptions):Void;
}
typedef DxDateBoxOptions = {
	>DxTextEditorOptions,
	@:optional
	var format : String;
	@:optional
	var useNativePicker : Bool;
	@:optional
	var value : Date;
	@:optional
	var type : String;
	@:optional
	var min : Date;
	@:optional
	var max : Date;
	@:optional
	var useCalendar : Bool;
	@:optional
	var formatString : String;
	@:optional
	var closeOnValueChange : Bool;
	@:optional
	var calendarOptions : Dynamic;
};
extern class DxDateBox extends DxTextEditor {
	@:overload(function(element:JQuery, ?options:DxDateBoxOptions):Void { })
	function new(element:Element, ?options:DxDateBoxOptions):Void;
}
typedef DxTextEditorOptions = {
	>DxEditorOptions,
	@:optional
	var valueChangeEvent : String;
	@:optional
	var placeholder : String;
	@:optional
	var readOnly : Bool;
	@:optional
	var focusInAction : Dynamic;
	@:optional
	var focusOutAction : Dynamic;
	@:optional
	var keyDownAction : Dynamic;
	@:optional
	var keyPressAction : Dynamic;
	@:optional
	var keyUpAction : Dynamic;
	@:optional
	var changeAction : Dynamic;
	@:optional
	var enterKeyAction : Dynamic;
	@:optional
	var copyAction : Dynamic;
	@:optional
	var pasteAction : Dynamic;
	@:optional
	var cutAction : Dynamic;
	@:optional
	var inputAction : Dynamic;
	@:optional
	var showClearButton : Bool;
	@:optional
	var mode : String;
};
extern class DxTextEditor extends DxEditor {
	@:overload(function(element:JQuery, ?options:DxTextEditorOptions):Void { })
	function new(element:Element, ?options:DxTextEditorOptions):Void;
	function focus():Void;
	function blur():Void;
}
typedef DxListOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var pullRefreshEnabled : Bool;
	@:optional
	var autoPagingEnabled : Bool;
	@:optional
	var scrollingEnabled : Bool;
	@:optional
	var showScrollbar : Bool;
	@:optional
	var useNativeScrolling : Bool;
	@:optional
	var grouped : Bool;
	@:optional
	var editEnabled : Bool;
	@:optional
	var showNextButton : Bool;
	@:optional
	var groupTemplate : String;
	@:optional
	var pullingDownText : String;
	@:optional
	var pulledDownText : String;
	@:optional
	var refreshingText : String;
	@:optional
	var pageLoadingText : String;
	@:optional
	var scrollAction : Dynamic;
	@:optional
	var pullRefreshAction : Dynamic;
	@:optional
	var pageLoadingAction : Dynamic;
	@:optional
	var itemHoldAction : Dynamic;
	@:optional
	var itemSwipeAction : Dynamic;
	@:optional
	var itemHoldTimeout : Float;
	@:optional
	function groupRender(groupData:Dynamic, groupIndex:Float, groupElement:Element):Dynamic;
	@:optional
	var editConfig : { @:optional
	var itemTemplate : Dynamic; @:optional
	function itemRenderer(itemData:Dynamic, itemIndex:Float, itemElement:Element):Dynamic; @:optional
	var menuType : String; @:optional
	var menuItems : Array<Dynamic>; @:optional
	var deleteEnabled : Bool; @:optional
	var deleteMode : String; @:optional
	var selectionEnabled : Bool; @:optional
	var selectionMode : String; @:optional
	var selectionType : String; @:optional
	var reorderEnabled : Bool; };
	@:optional
	var itemDeleteAction : Dynamic;
	@:optional
	var selectedItems : Array<Dynamic>;
	@:optional
	var itemSelectAction : Dynamic;
	@:optional
	var itemUnselectAction : Dynamic;
	@:optional
	var itemReorderAction : Dynamic;
	@:optional
	var nextButtonText : String;
	@:optional
	var selectionMode : String;
};
extern class DxList extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxListOptions):Void { })
	function new(element:Element, ?options:DxListOptions):Void;
	function update():JQueryPromise<DxList>;
	function updateDimensions():JQueryPromise<DxList>;
	function refresh():JQueryPromise<DxList>;
	function reload():JQueryPromise<DxList>;
	@:overload(function(itemElement:Element):JQueryPromise<DxList> { })
	function deleteItem(itemElement:JQuery):JQueryPromise<DxList>;
	function clearSelectedItems():Void;
	@:overload(function(itemElement:Element):Bool { })
	function isItemSelected(itemElement:JQuery):Bool;
	@:overload(function(itemElement:Element):Void { })
	function selectItem(itemElement:JQuery):Void;
	@:overload(function(itemElement:Element):Void { })
	function unselectItem(itemElement:JQuery):Void;
	@:overload(function(itemElement:Element, toItemElement:Element):JQueryPromise<DxList> { })
	function reorderItem(itemElement:JQuery, toItemElement:JQuery):JQueryPromise<DxList>;
	function getSelectedItems():Array<Float>;
	function clientHeight():Float;
	function scrollHeight():Float;
	function scrollBy(distance:Float):Void;
	function scrollTo(targetLocation:Float):Void;
	function scrollTop():Float;
}
typedef DxLoadPanelOptions = {
	>DxOverlayOptions,
	@:optional
	var message : String;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var delay : Float;
	@:optional
	var showPane : Bool;
	@:optional
	var showIndicator : Bool;
	@:optional
	var indicatorSrc : String;
};
extern class DxLoadPanel extends DxOverlay {
	@:overload(function(element:JQuery, ?options:DxLoadPanelOptions):Void { })
	function new(element:Element, ?options:DxLoadPanelOptions):Void;
	function hide():Void;
	function show():Void;
	function toggle(showing:Bool):Void;
}
typedef DxLookupOptions = {
	>DxEditorOptions,
	@:optional
	var dataSource : data.DataSource;
	@:optional
	var displayValue : String;
	@:optional
	var title : String;
	@:optional
	var titleTemplate : Dynamic;
	@:optional
	var valueExpr : String;
	@:optional
	var displayExpr : String;
	@:optional
	var placeholder : String;
	@:optional
	var searchPlaceholder : String;
	@:optional
	var searchEnabled : Bool;
	@:optional
	var searchTimeout : Float;
	@:optional
	var minFilterLength : Float;
	@:optional
	var fullScreen : Bool;
	@:optional
	var itemTemplate : Dynamic;
	@:optional
	var itemRender : haxe.Constraints.Function;
	@:optional
	var showCancelButton : Bool;
	@:optional
	var showClearButton : Bool;
	@:optional
	var showDoneButton : Bool;
	@:optional
	var showNextButton : Bool;
	@:optional
	var doneButtonText : String;
	@:optional
	var cancelButtonText : String;
	@:optional
	var clearButtonText : String;
	@:optional
	var nextButtonText : String;
	@:optional
	var grouped : Bool;
	@:optional
	var groupRender : haxe.Constraints.Function;
	@:optional
	var groupTemplate : String;
	@:optional
	var pullingDownText : String;
	@:optional
	var pulledDownText : String;
	@:optional
	var refreshingText : String;
	@:optional
	var pageLoadingText : String;
	@:optional
	var noDataText : String;
	@:optional
	var scrollAction : Dynamic;
	@:optional
	var shading : Bool;
	@:optional
	var closeOnOutsideClick : Bool;
	@:optional
	var position : Dynamic;
	@:optional
	var animation : Dynamic;
	@:optional
	var shownAction : Dynamic;
	@:optional
	var hiddenAction : Dynamic;
	@:optional
	var popupWidth : Dynamic;
	@:optional
	var popupHeight : Dynamic;
	@:optional
	var autoPagingEnabled : Bool;
	@:optional
	var useNativeScrolling : Bool;
	@:optional
	var usePopover : Bool;
	@:optional
	var openAction : Dynamic;
	@:optional
	var closeAction : Dynamic;
};
extern class DxLookup extends DxEditor {
	@:overload(function(element:JQuery, ?options:DxLookupOptions):Void { })
	function new(element:Element, ?options:DxLookupOptions):Void;
	function close():Void;
	function open():Void;
}
typedef DxMapOptions = {
	>WidgetOptions,
	@:optional
	var location : Dynamic;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var zoom : Float;
	@:optional
	var mapType : String;
	@:optional
	var provider : String;
	@:optional
	var markers : Array<Dynamic>;
	@:optional
	var routes : Array<Dynamic>;
	@:optional
	var key : String;
	@:optional
	var controls : Dynamic;
	@:optional
	var mapReadyAction : Dynamic;
	@:optional
	var autoAdjust : Bool;
	@:optional
	var center : Dynamic;
	@:optional
	var markerAddedAction : Dynamic;
	@:optional
	var markerRemovedAction : Dynamic;
	@:optional
	var markerIconSrc : String;
	@:optional
	var routeAddedAction : Dynamic;
	@:optional
	var routeRemovedAction : Dynamic;
	@:optional
	var type : String;
};
extern class DxMap extends Widget {
	@:overload(function(element:JQuery, ?options:DxMapOptions):Void { })
	function new(element:Element, ?options:DxMapOptions):Void;
	function addMarker(markerOptions:Dynamic, callback:haxe.Constraints.Function):JQueryPromise<Dynamic>;
	function removeMarker(marker:Dynamic):Void;
	function addRoute(routeOptions:Dynamic, callback:haxe.Constraints.Function):JQueryPromise<Dynamic>;
	function removeRoute(route:Dynamic):Void;
}
typedef DxNavBarOptions = {
	>DxTabsOptions,
};
extern class DxNavBar extends DxTabs {
	@:overload(function(element:JQuery, ?options:DxNavBarOptions):Void { })
	function new(element:Element, ?options:DxNavBarOptions):Void;
}
typedef DxNumberBoxOptions = {
	>DxTextEditorOptions,
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var value : Float;
	@:optional
	var step : Float;
	@:optional
	var showSpinButtons : Bool;
};
extern class DxNumberBox extends DxTextEditor {
	@:overload(function(element:JQuery, ?options:DxNumberBoxOptions):Void { })
	function new(element:Element, ?options:DxNumberBoxOptions):Void;
}
typedef DxOverlayOptions = {
	>WidgetOptions,
	@:optional
	var activeStateEnabled : Bool;
	@:optional
	var shading : Bool;
	@:optional
	var closeOnOutsideClick : Bool;
	@:optional
	var position : Dynamic;
	@:optional
	var animation : Dynamic;
	@:optional
	var showingAction : Dynamic;
	@:optional
	var shownAction : Dynamic;
	@:optional
	var hidingAction : Dynamic;
	@:optional
	var hiddenAction : Dynamic;
	@:optional
	var deferRendering : Bool;
	@:optional
	var targetContainer : Dynamic;
	@:optional
	var contentTemplate : Dynamic;
};
extern class DxOverlay extends Widget {
	@:overload(function(element:JQuery, ?options:DxOverlayOptions):Void { })
	function new(element:Element, ?options:DxOverlayOptions):Void;
	function content():JQuery;
	function hide():Void;
	function show():Void;
	function toggle(showing:Bool):Void;
}
typedef DxPopupOptions = {
	>DxOverlayOptions,
	@:optional
	var title : String;
	@:optional
	var showTitle : Bool;
	@:optional
	var fullScreen : Bool;
	@:optional
	var cancelButton : Dynamic;
	@:optional
	var doneButton : Dynamic;
	@:optional
	var clearButton : Dynamic;
	@:optional
	var titleTemplate : Dynamic;
	@:optional
	var dragEnabled : Bool;
};
extern class DxPopup extends DxOverlay {
	@:overload(function(element:JQuery, ?options:DxPopupOptions):Void { })
	function new(element:Element, ?options:DxPopupOptions):Void;
}
typedef DxPopoverOptions = {
	>DxPopupOptions,
	@:optional
	var target : Dynamic;
};
extern class DxPopover extends DxPopup {
	@:overload(function(element:JQuery, ?options:DxPopoverOptions):Void { })
	function new(element:Element, ?options:DxPopoverOptions):Void;
}
typedef DxTooltipOptions = {
	>DxPopoverOptions,
	@:optional
	var target : Dynamic;
};
extern class DxTooltip extends DxPopover {
	@:overload(function(element:JQuery, ?options:DxTooltipOptions):Void { })
	function new(element:Element, ?options:DxTooltipOptions):Void;
}
typedef DxRadioGroupOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var layout : String;
	@:optional
	var name : String;
	@:optional
	var value : Dynamic;
	@:optional
	var valueExpr : String;
};
extern class DxRadioGroup extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxRadioGroupOptions):Void { })
	function new(element:Element, ?options:DxRadioGroupOptions):Void;
}
typedef DxRangeSliderOptions = {
	>DxSliderOptions,
	@:optional
	var start : Float;
	@:optional
	var end : Float;
};
extern class DxRangeSlider extends DxSlider {
	@:overload(function(element:JQuery, ?options:DxRangeSliderOptions):Void { })
	function new(element:Element, ?options:DxRangeSliderOptions):Void;
}
typedef DxScrollableOptions = {
	>ComponentOptions,
	@:optional
	var startAction : Dynamic;
	@:optional
	var scrollAction : Dynamic;
	@:optional
	var endAction : Dynamic;
	@:optional
	var stopAction : Dynamic;
	@:optional
	var inertiaAction : Dynamic;
	@:optional
	var bounceAction : Dynamic;
	@:optional
	var updateAction : Dynamic;
	@:optional
	var bounceEnabled : Bool;
	@:optional
	var direction : String;
	@:optional
	var showScrollbar : Bool;
	@:optional
	var useNative : Bool;
};
extern class DxScrollable extends Component {
	@:overload(function(element:JQuery, ?options:DxScrollableOptions):Void { })
	function new(element:Element, ?options:DxScrollableOptions):Void;
	function update():Void;
	function content():JQuery;
	function clientHeight():Float;
	function scrollHeight():Float;
	function clientWidth():Float;
	function scrollWidth():Float;
	function scrollLeft():Float;
	function scrollTop():Float;
	function scrollOffset():Dynamic;
	@:overload(function(distance:Dynamic):Void { })
	function scrollBy(distance:Float):Void;
	@:overload(function(targetLocation:Dynamic):Void { })
	function scrollTo(targetLocation:Float):Void;
}
typedef DxScrollViewOptions = {
	>DxScrollableOptions,
	@:optional
	var pullingDownText : String;
	@:optional
	var pulledDownText : String;
	@:optional
	var refreshingText : String;
	@:optional
	var reachBottomText : String;
	@:optional
	var pullDownAction : Dynamic;
	@:optional
	var reachBottomAction : Dynamic;
};
extern class DxScrollView extends DxScrollable {
	@:overload(function(element:JQuery, ?options:DxScrollViewOptions):Void { })
	function new(element:Element, ?options:DxScrollViewOptions):Void;
	function release(preventReachBottom:Bool):JQueryPromise<Dynamic>;
	function toggleLoading(showOrHide:Bool):Void;
	function refresh():Void;
}
typedef DxSelectBoxOptions = {
	>DxAutocompleteOptions,
	@:optional
	var fieldTemplate : Dynamic;
	@:optional
	var displayValue : String;
	@:optional
	var multiSelectEnabled : Bool;
	@:optional
	var values : Array<Dynamic>;
	@:optional
	var openAction : Dynamic;
	@:optional
	var closeAction : Dynamic;
};
extern class DxSelectBox extends DxAutocomplete {
	@:overload(function(element:JQuery, ?options:DxSelectBoxOptions):Void { })
	function new(element:Element, ?options:DxSelectBoxOptions):Void;
}
typedef DxSliderOptions = {
	>DxEditorOptions,
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var step : Float;
	@:optional
	var showRange : Bool;
	@:optional
	var label : { var visible : Bool; @:optional
	var format : Dynamic; @:optional
	var position : String; };
	@:optional
	var tooltip : { @:optional
	var enabled : Bool; @:optional
	var format : Dynamic; @:optional
	var position : String; @:optional
	var showMode : String; };
};
extern class DxSlider extends DxEditor {
	@:overload(function(element:JQuery, ?options:DxSliderOptions):Void { })
	function new(element:Element, ?options:DxSliderOptions):Void;
}
typedef DxTabsOptions = {
	>CollectionContainerWidgetOptions,
};
extern class DxTabs extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxTabsOptions):Void { })
	function new(element:Element, ?options:DxTabsOptions):Void;
}
typedef DxTextAreaOptions = {
	>DxTextEditorOptions,
	@:optional
	var cols : Float;
	@:optional
	var rows : Float;
};
extern class DxTextArea extends DxTextEditor {
	@:overload(function(element:JQuery, ?options:DxTextAreaOptions):Void { })
	function new(element:Element, ?options:DxTextAreaOptions):Void;
}
typedef DxTextBoxOptions = {
	>DxTextEditorOptions,
	@:optional
	var maxLength : Dynamic;
};
extern class DxTextBox extends DxTextEditor {
	@:overload(function(element:JQuery, ?options:DxTextBoxOptions):Void { })
	function new(element:Element, ?options:DxTextBoxOptions):Void;
}
typedef DxToastOptions = {
	>DxOverlayOptions,
	@:optional
	var message : String;
	@:optional
	var type : String;
	@:optional
	var displayTime : Float;
};
extern class DxToast extends DxOverlay {
	@:overload(function(element:JQuery, ?options:DxToastOptions):Void { })
	function new(element:Element, ?options:DxToastOptions):Void;
}
typedef DxToolbarOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var menuItemRender : haxe.Constraints.Function;
	@:optional
	var menuItemTemplate : Dynamic;
	@:optional
	var submenuType : String;
	@:optional
	var renderAs : String;
};
extern class DxToolbar extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxToolbarOptions):Void { })
	function new(element:Element, ?options:DxToolbarOptions):Void;
}
typedef DxDropDownEditorOptions = {
	>DxTextBoxOptions,
	@:optional
	var closeAction : Dynamic;
	@:optional
	var openAction : Dynamic;
};
extern class DxDropDownEditor extends DxTextBox {
	@:overload(function(element:JQuery, ?options:DxDropDownEditorOptions):Void { })
	function new(element:Element, ?options:DxDropDownEditorOptions):Void;
}
typedef DxLoadIndicatorOptions = {
	>WidgetOptions,
	@:optional
	var indicatorSrc : String;
};
extern class DxLoadIndicator extends Widget {
	@:overload(function(element:JQuery, ?options:DxLoadIndicatorOptions):Void { })
	function new(element:Element, ?options:DxLoadIndicatorOptions):Void;
}
typedef DxMultiViewOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var loop : Bool;
	@:optional
	var swipeEnabled : Bool;
	@:optional
	var animationEnabled : Bool;
	@:optional
	var selectedIndex : Float;
};
extern class DxMultiView extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxMultiViewOptions):Void { })
	function new(element:Element, ?options:DxMultiViewOptions):Void;
}
typedef DxGalleryOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var activeStateEnabled : Bool;
	@:optional
	var animationDuration : Float;
	@:optional
	var loop : Bool;
	@:optional
	var swipeEnabled : Bool;
	@:optional
	var indicatorEnabled : Bool;
	@:optional
	var showIndicator : Bool;
	@:optional
	var selectedIndex : Float;
	@:optional
	var slideshowDelay : Float;
	@:optional
	var showNavButtons : Bool;
};
extern class DxGallery extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxGalleryOptions):Void { })
	function new(element:Element, ?options:DxGalleryOptions):Void;
	function goToItem(?itemIndex:Float, ?animation:Bool):JQueryPromise<DxGallery>;
	function prevItem(?animation:Bool):JQueryPromise<DxGallery>;
	function nextItem(?animation:Bool):JQueryPromise<DxGallery>;
}
typedef DxActionSheetOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var usePopover : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var title : String;
	@:optional
	var showTitle : Bool;
	@:optional
	var cancelText : String;
	@:optional
	var noDataText : String;
	@:optional
	var cancelClickAction : Dynamic;
	@:optional
	var showCancelButton : Bool;
};
extern class DxActionSheet extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxActionSheetOptions):Void { })
	function new(element:Element, ?options:DxActionSheetOptions):Void;
	function toggle():Void;
	function show():Void;
	function hide():Void;
}
typedef DxDropDownMenuOptions = {
	>WidgetOptions,
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var itemClickAction : Dynamic;
	@:optional
	var dataSource : data.DataSource;
	@:optional
	var itemTemplate : Dynamic;
	@:optional
	var itemRender : haxe.Constraints.Function;
	@:optional
	var buttonText : String;
	@:optional
	var buttonIcon : String;
	@:optional
	var buttonIconSrc : String;
	@:optional
	var buttonClickAction : Dynamic;
	@:optional
	var usePopover : Bool;
};
extern class DxDropDownMenu extends Widget {
	@:overload(function(element:JQuery, ?options:DxDropDownMenuOptions):Void { })
	function new(element:Element, ?options:DxDropDownMenuOptions):Void;
}
typedef DxPanoramaOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var title : String;
	@:optional
	var backgroundImage : Dynamic;
};
extern class DxPanorama extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxPanoramaOptions):Void { })
	function new(element:Element, ?options:DxPanoramaOptions):Void;
}
typedef DxPivotOptions = {
	>CollectionContainerWidgetOptions,
};
extern class DxPivot extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxPivotOptions):Void { })
	function new(element:Element, ?options:DxPivotOptions):Void;
}
typedef DxSwitchOptions = {
	>DxEditorOptions,
	@:optional
	var onText : String;
	@:optional
	var offText : String;
};
extern class DxSwitch extends DxEditor {
	@:overload(function(element:JQuery, ?options:DxSwitchOptions):Void { })
	function new(element:Element, ?options:DxSwitchOptions):Void;
}
typedef DxTileViewOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var bounceEnabled : Bool;
	@:optional
	var showScrollbar : Bool;
	@:optional
	var listHeight : Float;
	@:optional
	var baseItemWidth : Float;
	@:optional
	var baseItemHeight : Float;
	@:optional
	var itemMargin : Float;
};
extern class DxTileView extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxTileViewOptions):Void { })
	function new(element:Element, ?options:DxTileViewOptions):Void;
}
typedef DxSlideOutOptions = {
	>CollectionContainerWidgetOptions,
	@:optional
	var activeStateEnabled : Bool;
	@:optional
	function menuItemRender(itemData:Dynamic, itemIndex:Float, itemElement:Element):Dynamic;
	@:optional
	var menuItemTemplate : Dynamic;
	@:optional
	var swipeEnabled : Bool;
	@:optional
	var menuVisible : Bool;
	@:optional
	var menuGrouped : Bool;
	@:optional
	function menuGroupRender(groupData:Dynamic, groupIndex:Float, groupElement:Element):Dynamic;
	@:optional
	var menuGroupTemplate : Dynamic;
};
extern class DxSlideOut extends CollectionContainerWidget {
	@:overload(function(element:JQuery, ?options:DxSlideOutOptions):Void { })
	function new(element:Element, ?options:DxSlideOutOptions):Void;
	function showMenu():JQueryPromise<DxSlideOut>;
	function hideMenu():JQueryPromise<DxSlideOut>;
	function toggleMenuVisibility(?showing:Bool):JQueryPromise<DxSlideOut>;
}
typedef JQuery = {
	function dxAutocomplete(?options:DevExpress.ui.DxAutocompleteOptions):JQuery;
	function dxButton(?options:DevExpress.ui.DxButtonOptions):JQuery;
	function dxCheckBox(?options:DevExpress.ui.DxCheckBoxOptions):JQuery;
	function dxCalendar(?options:DevExpress.ui.DxCalendarOptions):JQuery;
	function dxDateBox(?options:DevExpress.ui.DxDateBoxOptions):JQuery;
	function dxTextEditor(?options:DevExpress.ui.DxTextEditorOptions):JQuery;
	function dxList(?options:DevExpress.ui.DxListOptions):JQuery;
	function dxLoadPanel(?options:DevExpress.ui.DxLoadPanelOptions):JQuery;
	function dxLookup(?options:DevExpress.ui.DxLookupOptions):JQuery;
	function dxMap(?options:DevExpress.ui.DxMapOptions):JQuery;
	function dxNavBar(?options:DevExpress.ui.DxNavBarOptions):JQuery;
	function dxNumberBox(?options:DevExpress.ui.DxNumberBoxOptions):JQuery;
	function dxOverlay(?options:DevExpress.ui.DxOverlayOptions):JQuery;
	function dxPopup(?options:DevExpress.ui.DxPopupOptions):JQuery;
	function dxPopover(?options:DevExpress.ui.DxPopoverOptions):JQuery;
	function dxTooltip(?options:DevExpress.ui.DxTooltipOptions):JQuery;
	function dxRadioGroup(?options:DevExpress.ui.DxRadioGroupOptions):JQuery;
	function dxRangeSlider(?options:DevExpress.ui.DxRangeSliderOptions):JQuery;
	function dxScrollable(?options:DevExpress.ui.DxScrollableOptions):JQuery;
	function dxScrollView(?options:DevExpress.ui.DxScrollViewOptions):JQuery;
	function dxSelectBox(?options:DevExpress.ui.DxSelectBoxOptions):JQuery;
	function dxSlider(?options:DevExpress.ui.DxSliderOptions):JQuery;
	function dxTabs(?options:DevExpress.ui.DxTabsOptions):JQuery;
	function dxTextArea(?options:DevExpress.ui.DxTextAreaOptions):JQuery;
	function dxTextBox(?options:DevExpress.ui.DxTextBoxOptions):JQuery;
	function dxToast(?options:DevExpress.ui.DxToastOptions):JQuery;
	function dxToolbar(?options:DevExpress.ui.DxToolbarOptions):JQuery;
	function dxDropDownEditor(?options:DevExpress.ui.DxDropDownEditorOptions):JQuery;
	function dxLoadIndicator(?options:DevExpress.ui.DxLoadIndicatorOptions):JQuery;
	function dxMultiView(?options:DevExpress.ui.DxMultiViewOptions):JQuery;
	function dxGallery(?options:DevExpress.ui.DxGalleryOptions):JQuery;
	function dxActionSheet(?options:DevExpress.ui.DxActionSheetOptions):JQuery;
	function dxDropDownMenu(?options:DevExpress.ui.DxDropDownMenuOptions):JQuery;
	function dxPanorama(?options:DevExpress.ui.DxPanoramaOptions):JQuery;
	function dxPivot(?options:DevExpress.ui.DxPivotOptions):JQuery;
	function dxSwitch(?options:DevExpress.ui.DxSwitchOptions):JQuery;
	function dxTileView(?options:DevExpress.ui.DxTileViewOptions):JQuery;
	function dxSlideOut(?options:DevExpress.ui.DxSlideOutOptions):JQuery;
};
