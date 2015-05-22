typedef DxValidatorOptions = {
	>DOMComponentOptions,
	@:optional
	var validationRules : Array<Dynamic>;
	@:optional
	var name : String;
	@:optional
	var adapter : Dynamic;
	@:optional
	var validationGroup : String;
	@:optional
	var onValidated : validationEngine.ValidatorValidationResult -> Void;
};
extern class DxValidator extends DOMComponent {
	@:overload(function(element:Element, ?options:DxValidatorOptions):Void { })
	function new(element:JQuery, ?options:DxValidatorOptions):Void;
	function validate():validationEngine.ValidatorValidationResult;
}
extern class DxValidationGroup extends DOMComponent {
	@:overload(function(element:Element):Void { })
	function new(element:JQuery):Void;
	function validate():validationEngine.ValidationGroupValidationResult;
}
typedef DxValidationSummaryOptions = {
	>CollectionWidgetOptions,
	@:optional
	var validationGroup : String;
};
extern class DxValidationSummary extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxValidationSummaryOptions):Void { })
	function new(element:JQuery, ?options:DxValidationSummaryOptions):Void;
}
typedef DxTooltipOptions = {
	>DxPopoverOptions,
};
extern class DxTooltip extends DxPopover {
	@:overload(function(element:Element, ?options:DxTooltipOptions):Void { })
	function new(element:JQuery, ?options:DxTooltipOptions):Void;
}
typedef DxDropDownListOptions = {
	>DxDropDownEditorOptions,
	@:optional
	var displayValue : String;
	@:optional
	var minSearchLength : Float;
	@:optional
	var searchExpr : Dynamic;
	@:optional
	var searchMode : String;
	@:optional
	var searchTimeout : Float;
	@:optional
	var onValueChanged : haxe.Constraints.Function;
	@:optional
	var valueChangeEvent : String;
	@:optional
	var searchEnabled : Bool;
	@:optional
	var pagingEnabled : Bool;
};
extern class DxDropDownList extends DxDropDownEditor {
	@:overload(function(element:Element, ?options:DxDropDownListOptions):Void { })
	function new(element:JQuery, ?options:DxDropDownListOptions):Void;
}
typedef DxToolbarOptions = {
	>CollectionWidgetOptions,
	@:optional
	var menuItemRender : Dynamic;
	@:optional
	var menuItemTemplate : Dynamic;
	@:optional
	var renderAs : String;
};
extern class DxToolbar extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxToolbarOptions):Void { })
	function new(element:JQuery, ?options:DxToolbarOptions):Void;
}
typedef DxToastOptions = {
	>DxOverlayOptions,
	@:optional
	var animation : fx.AnimationOptions;
	@:optional
	var displayTime : Float;
	@:optional
	var height : Dynamic;
	@:optional
	var message : String;
	@:optional
	var position : PositionOptions;
	@:optional
	var shading : Bool;
	@:optional
	var type : String;
	@:optional
	var width : Dynamic;
	@:optional
	var closeOnBackButton : Bool;
};
extern class DxToast extends DxOverlay {
	@:overload(function(element:Element, ?options:DxToastOptions):Void { })
	function new(element:JQuery, ?options:DxToastOptions):Void;
}
typedef DxTextEditorOptions = {
	>EditorOptions,
	@:optional
	var onChange : haxe.Constraints.Function;
	@:optional
	var changeAction : haxe.Constraints.Function;
	@:optional
	var onCopy : haxe.Constraints.Function;
	@:optional
	var copyAction : haxe.Constraints.Function;
	@:optional
	var onCut : haxe.Constraints.Function;
	@:optional
	var cutAction : haxe.Constraints.Function;
	@:optional
	var onEnterKey : haxe.Constraints.Function;
	@:optional
	var enterKeyAction : haxe.Constraints.Function;
	@:optional
	var onFocusIn : haxe.Constraints.Function;
	@:optional
	var focusInAction : haxe.Constraints.Function;
	@:optional
	var onFocusOut : haxe.Constraints.Function;
	@:optional
	var focusOutAction : haxe.Constraints.Function;
	@:optional
	var onInput : haxe.Constraints.Function;
	@:optional
	var inputAction : haxe.Constraints.Function;
	@:optional
	var onKeyDown : haxe.Constraints.Function;
	@:optional
	var keyDownAction : haxe.Constraints.Function;
	@:optional
	var onKeyPress : haxe.Constraints.Function;
	@:optional
	var keyPressAction : haxe.Constraints.Function;
	@:optional
	var onKeyUp : haxe.Constraints.Function;
	@:optional
	var keyUpAction : haxe.Constraints.Function;
	@:optional
	var onPaste : haxe.Constraints.Function;
	@:optional
	var pasteAction : haxe.Constraints.Function;
	@:optional
	var placeholder : String;
	@:optional
	var showClearButton : Bool;
	@:optional
	var value : Dynamic;
	@:optional
	var valueUpdateAction : haxe.Constraints.Function;
	@:optional
	var valueChangeAction : haxe.Constraints.Function;
	@:optional
	var valueChangeEvent : String;
	@:optional
	var valueUpdateEvent : String;
	@:optional
	var spellcheck : Bool;
};
extern class DxTextEditor extends Editor {
	@:overload(function(element:Element, ?options:DxTextEditorOptions):Void { })
	function new(element:JQuery, ?options:DxTextEditorOptions):Void;
	function blur():Void;
	function focus():Void;
}
typedef DxTextBoxOptions = {
	>DxTextEditorOptions,
	@:optional
	var maxLength : Dynamic;
	@:optional
	var mode : String;
};
extern class DxTextBox extends DxTextEditor {
	@:overload(function(element:Element, ?options:DxTextBoxOptions):Void { })
	function new(element:JQuery, ?options:DxTextBoxOptions):Void;
}
typedef DxTextAreaOptions = {
	>DxTextBoxOptions,
	@:optional
	var spellcheck : Bool;
};
extern class DxTextArea extends DxTextBox {
	@:overload(function(element:Element, ?options:DxTextAreaOptions):Void { })
	function new(element:JQuery, ?options:DxTextAreaOptions):Void;
}
typedef DxTabsOptions = {
	>CollectionWidgetOptions,
	@:optional
	var scrollByContent : Bool;
	@:optional
	var scrollingEnabled : Bool;
	@:optional
	var showNavButtons : Bool;
};
extern class DxTabs extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxTabsOptions):Void { })
	function new(element:JQuery, ?options:DxTabsOptions):Void;
}
typedef DxTabPanelOptions = {
	>DxMultiViewOptions,
	@:optional
	var onTitleClick : Dynamic;
	@:optional
	var onTitleHold : haxe.Constraints.Function;
	@:optional
	var onTitleRendered : haxe.Constraints.Function;
	@:optional
	var titleTemplate : Dynamic;
};
extern class DxTabPanel extends DxMultiView {
	@:overload(function(element:Element, ?options:DxTabPanelOptions):Void { })
	function new(element:JQuery, ?options:DxTabPanelOptions):Void;
}
typedef DxSelectBoxOptions = {
	>DxDropDownListOptions,
	@:optional
	var fieldTemplate : Dynamic;
	@:optional
	var placeholder : String;
	@:optional
	var editEnabled : Bool;
};
extern class DxSelectBox extends DxDropDownList {
	@:overload(function(element:Element, ?options:DxSelectBoxOptions):Void { })
	function new(element:JQuery, ?options:DxSelectBoxOptions):Void;
	function close():Void;
	function open():Void;
}
typedef DxTagBoxOptions = {
	>DxSelectBoxOptions,
	@:optional
	var values : Array<Dynamic>;
	@:optional
	var value : Dynamic;
	@:optional
	var onValueChanged : { var component : DxTagBox; var element : JQuery; var model : Dynamic; var value : Dynamic; var values : Dynamic; var itemData : Dynamic; var jQueryEvent : JQueryEventObject; } -> Void;
};
extern class DxTagBox extends DxSelectBox {
	@:overload(function(element:Element, ?options:DxTagBoxOptions):Void { })
	function new(element:JQuery, ?options:DxTagBoxOptions):Void;
}
typedef DxScrollViewOptions = {
	>DxScrollableOptions,
	@:optional
	var onPullDown : haxe.Constraints.Function;
	@:optional
	var pullDownAction : haxe.Constraints.Function;
	@:optional
	var pulledDownText : String;
	@:optional
	var pullingDownText : String;
	@:optional
	var onReachBottom : haxe.Constraints.Function;
	@:optional
	var reachBottomAction : haxe.Constraints.Function;
	@:optional
	var reachBottomText : String;
	@:optional
	var refreshingText : String;
	function isFull():Bool;
	function refresh():Void;
	function release(preventScrollBottom:Bool):JQueryPromise<Void>;
	function toggleLoading(showOrHide:Bool):Void;
};
extern class DxScrollView extends DxScrollable {
	@:overload(function(element:Element, ?options:DxScrollViewOptions):Void { })
	function new(element:JQuery, ?options:DxScrollViewOptions):Void;
}
typedef DxScrollableLocation = {
	@:optional
	var top : Float;
	@:optional
	var left : Float;
};
typedef DxScrollableOptions = {
	>DOMComponentOptions,
	@:optional
	var direction : String;
	@:optional
	var disabled : Bool;
	@:optional
	var onScroll : haxe.Constraints.Function;
	@:optional
	var scrollAction : haxe.Constraints.Function;
	@:optional
	var showScrollbar : String;
	@:optional
	var onUpdated : haxe.Constraints.Function;
	@:optional
	var updateAction : haxe.Constraints.Function;
	@:optional
	var useNative : Bool;
};
extern class DxScrollable extends DOMComponent {
	@:overload(function(element:Element, ?options:DxScrollableOptions):Void { })
	function new(element:JQuery, ?options:DxScrollableOptions):Void;
	function clientHeight():Float;
	function clientWidth():Float;
	function content():JQuery;
	@:overload(function(distanceObject:DxScrollableLocation):Void { })
	function scrollBy(distance:Float):Void;
	function scrollHeight():Float;
	function scrollLeft():Float;
	function scrollOffset():DxScrollableLocation;
	@:overload(function(targetLocation:DxScrollableLocation):Void { })
	function scrollTo(targetLocation:Float):Void;
	function scrollToElement(element:Element):Void;
	function scrollTop():Float;
	function scrollWidth():Float;
	function update():Void;
}
typedef DxRadioGroupOptions = {
	>CollectionWidgetOptions,
	@:optional
	var layout : String;
};
extern class DxRadioGroup extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxRadioGroupOptions):Void { })
	function new(element:JQuery, ?options:DxRadioGroupOptions):Void;
}
typedef DxPopupOptions = {
	>DxOverlayOptions,
	@:optional
	var animation : fx.AnimationOptions;
	@:optional
	var dragEnabled : Bool;
	@:optional
	var fullScreen : Bool;
	@:optional
	var position : PositionOptions;
	@:optional
	var showTitle : Bool;
	@:optional
	var title : String;
	@:optional
	var titleTemplate : Dynamic;
	@:optional
	var width : Dynamic;
	@:optional
	var buttons : Array<Dynamic>;
	@:optional
	var onTitleRendered : haxe.Constraints.Function;
};
extern class DxPopup extends DxOverlay {
	@:overload(function(element:Element, ?options:DxPopupOptions):Void { })
	function new(element:JQuery, ?options:DxPopupOptions):Void;
}
typedef DxPopoverOptions = {
	>DxPopupOptions,
	@:optional
	var animation : fx.AnimationOptions;
	@:optional
	var height : Dynamic;
	@:optional
	var position : PositionOptions;
	@:optional
	var shading : Bool;
	@:optional
	var showTitle : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var width : Dynamic;
};
extern class DxPopover extends DxPopup {
	@:overload(function(element:Element, ?options:DxPopoverOptions):Void { })
	function new(element:JQuery, ?options:DxPopoverOptions):Void;
}
typedef DxOverlayOptions = {
	>WidgetOptions,
	@:optional
	var animation : fx.AnimationOptions;
	@:optional
	var closeOnBackButton : Bool;
	@:optional
	var closeOnOutsideClick : Dynamic;
	@:optional
	var contentTemplate : Dynamic;
	@:optional
	var deferRendering : Bool;
	@:optional
	var dragEnabled : Bool;
	@:optional
	var height : Dynamic;
	@:optional
	var onHidden : haxe.Constraints.Function;
	@:optional
	var hiddenAction : haxe.Constraints.Function;
	@:optional
	var onHiding : haxe.Constraints.Function;
	@:optional
	var hidingAction : haxe.Constraints.Function;
	@:optional
	var position : PositionOptions;
	@:optional
	var shading : Bool;
	@:optional
	var shadingColor : String;
	@:optional
	var onShowing : haxe.Constraints.Function;
	@:optional
	var showingAction : haxe.Constraints.Function;
	@:optional
	var onShown : haxe.Constraints.Function;
	@:optional
	var shownAction : haxe.Constraints.Function;
	@:optional
	var visible : Bool;
	@:optional
	var width : Dynamic;
};
extern class DxOverlay extends Widget {
	@:overload(function(element:Element, ?options:DxOverlayOptions):Void { })
	function new(element:JQuery, ?options:DxOverlayOptions):Void;
	function content():JQuery;
	function hide():JQueryPromise<Void>;
	function repaint():Void;
	function show():JQueryPromise<Void>;
	function toggle(showing:Bool):JQueryPromise<Void>;
}
typedef DxNumberBoxOptions = {
	>DxTextEditorOptions,
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var showSpinButtons : Bool;
	@:optional
	var useTouchSpinButtons : Bool;
	@:optional
	var step : Float;
	@:optional
	var value : Float;
};
extern class DxNumberBox extends DxTextEditor {
	@:overload(function(element:Element, ?options:DxNumberBoxOptions):Void { })
	function new(element:JQuery, ?options:DxNumberBoxOptions):Void;
}
typedef DxNavBarOptions = {
	>DxTabsOptions,
};
extern class DxNavBar extends DxTabs {
	@:overload(function(element:Element, ?options:DxNavBarOptions):Void { })
	function new(element:JQuery, ?options:DxNavBarOptions):Void;
}
typedef DxMultiViewOptions = {
	>CollectionWidgetOptions,
	@:optional
	var animationEnabled : Bool;
	@:optional
	var loop : Bool;
	@:optional
	var selectedIndex : Float;
	@:optional
	var swipeEnabled : Bool;
};
extern class DxMultiView extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxMultiViewOptions):Void { })
	function new(element:JQuery, ?options:DxMultiViewOptions):Void;
}
typedef DxMapOptions = {
	>WidgetOptions,
	@:optional
	var autoAdjust : Bool;
	@:optional
	var bounds : { @:optional
	var northEast : { @:optional
	var lat : Float; @:optional
	var lng : Float; }; @:optional
	var southWest : { @:optional
	var lat : Float; @:optional
	var lng : Float; }; @:optional
	var center : { @:optional
	var lat : Float; @:optional
	var lng : Float; }; @:optional
	var onClick : Dynamic; @:optional
	var clickAction : Dynamic; @:optional
	var controls : Bool; @:optional
	var height : Float; @:optional
	var key : { @:optional
	var bing : String; @:optional
	var google : String; @:optional
	var googleStatic : String; }; @:optional
	var location : { @:optional
	var lat : Float; @:optional
	var lng : Float; }; @:optional
	var onMarkerAdded : haxe.Constraints.Function; @:optional
	var markerAddedAction : haxe.Constraints.Function; @:optional
	var markerIconSrc : String; @:optional
	var onMarkerRemoved : haxe.Constraints.Function; @:optional
	var markerRemovedAction : haxe.Constraints.Function; @:optional
	var markers : Array<Dynamic>; @:optional
	var provider : String; @:optional
	var onReady : haxe.Constraints.Function; @:optional
	var readyAction : haxe.Constraints.Function; @:optional
	var onRouteAdded : haxe.Constraints.Function; @:optional
	var routeAddedAction : haxe.Constraints.Function; @:optional
	var onRouteRemoved : haxe.Constraints.Function; @:optional
	var routeRemovedAction : haxe.Constraints.Function; @:optional
	var routes : Array<Dynamic>; @:optional
	var type : String; @:optional
	var width : Float; @:optional
	var zoom : Float; function addMarker(markerOptions:Dynamic):JQueryPromise<Dynamic>; function addRoute(options:Dynamic):JQueryPromise<Dynamic>; function removeMarker(marker:Dynamic):JQueryPromise<Void>; function removeRoute(route:Dynamic):JQueryPromise<Void>; };
};
extern class DxMap extends Widget {
	@:overload(function(element:Element, ?options:DxMapOptions):Void { })
	function new(element:JQuery, ?options:DxMapOptions):Void;
}
typedef DxLookupOptions = {
	>DxDropDownListOptions,
	@:optional
	var animation : fx.AnimationOptions;
	@:optional
	var autoPagingEnabled : Bool;
	@:optional
	var cancelButtonText : String;
	@:optional
	var clearButtonText : String;
	@:optional
	var closeOnOutsideClick : Dynamic;
	@:optional
	var doneButtonText : String;
	@:optional
	var fullScreen : Bool;
	@:optional
	var grouped : Bool;
	@:optional
	var groupRender : Dynamic;
	@:optional
	var groupTemplate : Dynamic;
	@:optional
	var nextButtonText : String;
	@:optional
	var noDataText : String;
	@:optional
	var onPageLoading : haxe.Constraints.Function;
	@:optional
	var pageLoadingAction : haxe.Constraints.Function;
	@:optional
	var pageLoadingText : String;
	@:optional
	var placeholder : String;
	@:optional
	var popupHeight : Dynamic;
	@:optional
	var popupWidth : Dynamic;
	@:optional
	var position : PositionOptions;
	@:optional
	var pulledDownText : String;
	@:optional
	var pullingDownText : String;
	@:optional
	var onPullRefresh : haxe.Constraints.Function;
	@:optional
	var pullRefreshAction : haxe.Constraints.Function;
	@:optional
	var pullRefreshEnabled : Bool;
	@:optional
	var refreshingText : String;
	@:optional
	var onScroll : haxe.Constraints.Function;
	@:optional
	var scrollAction : haxe.Constraints.Function;
	@:optional
	var searchEnabled : Bool;
	@:optional
	var searchPlaceholder : String;
	@:optional
	var shading : Bool;
	@:optional
	var showCancelButton : Bool;
	@:optional
	var showDoneButton : Bool;
	@:optional
	var showNextButton : Bool;
	@:optional
	var title : String;
	@:optional
	var titleTemplate : Dynamic;
	@:optional
	var useNativeScrolling : Bool;
	@:optional
	var usePopover : Bool;
	@:optional
	var onValueChanged : haxe.Constraints.Function;
	@:optional
	var contentReadyAction : haxe.Constraints.Function;
	@:optional
	var onContentReady : haxe.Constraints.Function;
	@:optional
	var titleRender : Dynamic;
	@:optional
	var onTitleRendered : haxe.Constraints.Function;
};
extern class DxLookup extends DxDropDownList {
	@:overload(function(element:Element, ?options:DxLookupOptions):Void { })
	function new(element:JQuery, ?options:DxLookupOptions):Void;
}
typedef DxLoadPanelOptions = {
	>DxOverlayOptions,
	@:optional
	var animation : fx.AnimationOptions;
	@:optional
	var delay : Float;
	@:optional
	var height : Float;
	@:optional
	var indicatorSrc : String;
	@:optional
	var message : String;
	@:optional
	var showIndicator : Bool;
	@:optional
	var showPane : Bool;
	@:optional
	var width : Float;
};
extern class DxLoadPanel extends DxOverlay {
	@:overload(function(element:Element, ?options:DxLoadPanelOptions):Void { })
	function new(element:JQuery, ?options:DxLoadPanelOptions):Void;
}
typedef DxLoadIndicatorOptions = {
	>WidgetOptions,
	@:optional
	var indicatorSrc : String;
};
extern class DxLoadIndicator extends Widget {
	@:overload(function(element:Element, ?options:DxLoadIndicatorOptions):Void { })
	function new(element:JQuery, ?options:DxLoadIndicatorOptions):Void;
}
typedef DxListOptions = {
	>CollectionWidgetOptions,
	@:optional
	var autoPagingEnabled : Bool;
	@:optional
	var pagingEnabled : Bool;
	@:optional
	var editConfig : { @:optional
	var deleteEnabled : Bool; @:optional
	var deleteMode : String; @:optional
	var deleteType : String; @:optional
	var itemRender : Dynamic; @:optional
	var itemTemplate : Dynamic; @:optional
	var menuItems : Array<Dynamic>; @:optional
	var menuType : String; @:optional
	var reorderEnabled : Bool; @:optional
	var selectionEnabled : Bool; @:optional
	var selectionMode : String; @:optional
	var selectionType : String; @:optional
	var editEnabled : Bool; @:optional
	var indicateLoading : Bool; };
	@:optional
	var grouped : Bool;
	@:optional
	var groupRender : Dynamic;
	@:optional
	var groupTemplate : Dynamic;
	@:optional
	var onItemDeleted : haxe.Constraints.Function;
	@:optional
	var itemDeleteAction : haxe.Constraints.Function;
	@:optional
	var onItemReordered : haxe.Constraints.Function;
	@:optional
	var itemReorderAction : haxe.Constraints.Function;
	@:optional
	var onItemClick : Dynamic;
	@:optional
	var onItemSwipe : haxe.Constraints.Function;
	@:optional
	var itemSwipeAction : haxe.Constraints.Function;
	@:optional
	var nextButtonText : String;
	@:optional
	var onPageLoading : haxe.Constraints.Function;
	@:optional
	var pageLoadingAction : haxe.Constraints.Function;
	@:optional
	var pageLoadingText : String;
	@:optional
	var pulledDownText : String;
	@:optional
	var pullingDownText : String;
	@:optional
	var onPullRefresh : haxe.Constraints.Function;
	@:optional
	var pullRefreshAction : haxe.Constraints.Function;
	@:optional
	var pullRefreshEnabled : Bool;
	@:optional
	var refreshingText : String;
	@:optional
	var onScroll : haxe.Constraints.Function;
	@:optional
	var scrollAction : haxe.Constraints.Function;
	@:optional
	var scrollingEnabled : Bool;
	@:optional
	var selectionMode : String;
	@:optional
	var showNextButton : Bool;
	@:optional
	var showScrollbar : Bool;
	@:optional
	var useNativeScrolling : Bool;
	@:optional
	var itemUnselectAction : haxe.Constraints.Function;
	@:optional
	var onItemContextMenu : haxe.Constraints.Function;
	@:optional
	var onItemHold : haxe.Constraints.Function;
	@:optional
	var collapsibleGroups : Bool;
};
extern class DxList extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxListOptions):Void { })
	function new(element:JQuery, ?options:DxListOptions):Void;
	function clientHeight():Float;
	@:overload(function(itemElement:Element):JQueryPromise<Void> { })
	function deleteItem(itemIndex:Dynamic):JQueryPromise<Void>;
	@:overload(function(itemElement:Element):Bool { })
	function isItemSelected(itemIndex:Dynamic):Bool;
	function refresh():Void;
	function reload():Void;
	@:overload(function(itemIndex:Dynamic, toItemIndex:Dynamic):JQueryPromise<Void> { })
	function reorderItem(itemElement:Element, toItemElement:Element):JQueryPromise<Void>;
	function scrollBy(distance:Float):Void;
	function scrollHeight():Float;
	function scrollTo(location:Float):Void;
	@:overload(function(itemIndex:Dynamic):Void { })
	function scrollToItem(itemElement:Element):Void;
	function scrollTop():Float;
	@:overload(function(itemIndex:Dynamic):Void { })
	function selectItem(itemElement:Element):Void;
	@:overload(function(itemIndex:Dynamic):Void { })
	function unselectItem(itemElement:Element):Void;
	function update():JQueryPromise<Void>;
	function updateDimensions():JQueryPromise<Void>;
	function expandGroup(groupIndex:Float):JQueryPromise<Void>;
	function collapseGroup(groupIndex:Float):JQueryPromise<Void>;
}
typedef DxGalleryOptions = {
	>CollectionWidgetOptions,
	@:optional
	var animationDuration : Float;
	@:optional
	var indicatorEnabled : Bool;
	@:optional
	var loop : Bool;
	@:optional
	var selectedIndex : Float;
	@:optional
	var showIndicator : Bool;
	@:optional
	var showNavButtons : Bool;
	@:optional
	var slideshowDelay : Float;
	@:optional
	var swipeEnabled : Bool;
};
extern class DxGallery extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxGalleryOptions):Void { })
	function new(element:JQuery, ?options:DxGalleryOptions):Void;
	function goToItem(itemIndex:Float, animation:Bool):JQueryPromise<Dynamic>;
	function nextItem(animation:Bool):JQueryPromise<Dynamic>;
	function prevItem(animation:Bool):JQueryPromise<Dynamic>;
}
typedef DxDropDownEditorOptions = {
	>DxTextBoxOptions,
	@:optional
	var onClosed : haxe.Constraints.Function;
	@:optional
	var onOpened : haxe.Constraints.Function;
	@:optional
	var opened : Bool;
	@:optional
	var closeAction : haxe.Constraints.Function;
	@:optional
	var openAction : haxe.Constraints.Function;
	@:optional
	var shownAction : haxe.Constraints.Function;
	@:optional
	var hiddenAction : haxe.Constraints.Function;
};
extern class DxDropDownEditor extends DxTextBox {
	@:overload(function(element:Element, ?options:DxDropDownEditorOptions):Void { })
	function new(element:JQuery, ?options:DxDropDownEditorOptions):Void;
	function close():Void;
	function open():Void;
}
typedef DxDateBoxOptions = {
	>DxTextEditorOptions,
	@:optional
	var calendarOptions : DxCalendarOptions;
	@:optional
	var closeOnValueChange : Bool;
	@:optional
	var format : String;
	@:optional
	var formatString : String;
	@:optional
	var max : Date;
	@:optional
	var min : Date;
	@:optional
	var placeholder : String;
	@:optional
	var useCalendar : Bool;
	@:optional
	var value : Date;
	@:optional
	var useNative : Bool;
	@:optional
	var interval : Float;
};
extern class DxDateBox extends DxTextEditor {
	@:overload(function(element:Element, ?options:DxDateBoxOptions):Void { })
	function new(element:JQuery, ?options:DxDateBoxOptions):Void;
}
typedef DxCheckBoxOptions = {
	>EditorOptions,
	@:optional
	var checked : Bool;
	@:optional
	var value : Bool;
	@:optional
	var text : String;
};
extern class DxCheckBox extends Editor {
	@:overload(function(element:Element, ?options:DxCheckBoxOptions):Void { })
	function new(element:JQuery, ?options:DxCheckBoxOptions):Void;
}
typedef DxCalendarOptions = {
	>EditorOptions,
	@:optional
	var currentDate : Date;
	@:optional
	var firstDayOfWeek : Float;
	@:optional
	var max : Date;
	@:optional
	var min : Date;
};
extern class DxCalendar extends Editor {
	@:overload(function(element:Element, ?options:DxCalendarOptions):Void { })
	function new(element:JQuery, ?options:DxCalendarOptions):Void;
}
typedef DxButtonOptions = {
	>WidgetOptions,
	@:optional
	var onClick : Dynamic;
	@:optional
	var clickAction : Dynamic;
	@:optional
	var icon : String;
	@:optional
	var iconSrc : String;
	@:optional
	var text : String;
	@:optional
	var type : String;
	@:optional
	var validationGroup : String;
};
extern class DxButton extends Widget {
	@:overload(function(element:Element, ?options:DxButtonOptions):Void { })
	function new(element:JQuery, ?options:DxButtonOptions):Void;
}
typedef DxBoxOptions = {
	>CollectionWidget,
	@:optional
	var align : String;
	@:optional
	var direction : String;
	@:optional
	var crossAlign : String;
};
extern class DxBox extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxBoxOptions):Void { })
	function new(element:JQuery, ?options:DxBoxOptions):Void;
}
typedef DxResponsiveBoxOptions = {
	>CollectionWidgetOptions,
	@:optional
	var rows : Array<Dynamic>;
	@:optional
	var cols : Array<Dynamic>;
	@:optional
	var screenByWidth : Float -> String;
	@:optional
	var singleColumnScreen : String;
};
extern class DxResponsiveBox extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxBoxOptions):Void { })
	function new(element:JQuery, ?options:DxBoxOptions):Void;
}
typedef DxAutocompleteOptions = {
	>DxDropDownListOptions,
	@:optional
	var minSearchLength : Float;
	@:optional
	var maxItemCount : Float;
	@:optional
	var selectedItem : Dynamic;
};
extern class DxAutocomplete extends DxDropDownList {
	@:overload(function(element:Element, ?options:DxAutocompleteOptions):Void { })
	function new(element:JQuery, ?options:DxAutocompleteOptions):Void;
	function open():Void;
	function close():Void;
}
typedef DxAccordionOptions = {
	>CollectionWidgetOptions,
	@:optional
	var animationDuration : Float;
	@:optional
	var height : Dynamic;
	@:optional
	var collapsible : Bool;
	@:optional
	var multiple : Bool;
	@:optional
	var itemTemplate : Dynamic;
	@:optional
	var onItemTitleClick : Dynamic;
	@:optional
	var onItemTitleHold : haxe.Constraints.Function;
	@:optional
	var itemTitleTemplate : Dynamic;
	@:optional
	var selectedIndex : Float;
};
extern class DxAccordion extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxAccordionOptions):Void { })
	function new(element:JQuery, ?options:DxAccordionOptions):Void;
	function collapseItem(index:Float):JQueryPromise<DxAccordion>;
	function expandItem(index:Float):JQueryPromise<DxAccordion>;
}
typedef DxFileUploaderFile = {
	@:optional
	var name : String;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var lastModifiedDate : Date;
};
typedef DxFileUploaderOptions = {
	>EditorOptions,
	@:optional
	var value : DxFileUploaderFile;
	@:optional
	var values : Array<DxFileUploaderFile>;
	@:optional
	var buttonText : String;
	@:optional
	var labelText : String;
	@:optional
	var name : String;
	@:optional
	var multiple : Bool;
	@:optional
	var accept : String;
};
extern class DxFileUploader extends Editor {
	@:overload(function(element:Element, ?options:DxFileUploaderOptions):Void { })
	function new(element:JQuery, ?options:DxFileUploaderOptions):Void;
}
typedef DxTrackBarOptions = {
	>EditorOptions,
	@:optional
	var min : Float;
	@:optional
	var max : Float;
	@:optional
	var value : Float;
};
extern class DxTrackBar extends Editor {
	@:overload(function(element:Element, ?options:DxTrackBarOptions):Void { })
	function new(element:JQuery, ?options:DxTrackBarOptions):Void;
}
typedef DxProgressBarOptions = {
	>DxTrackBarOptions,
	@:optional
	var statusFormat : Dynamic;
	@:optional
	var showStatus : Bool;
	@:optional
	var onComplete : haxe.Constraints.Function;
};
extern class DxProgressBar extends DxTrackBar {
	@:overload(function(element:Element, ?options:DxProgressBarOptions):Void { })
	function new(element:JQuery, ?options:DxProgressBarOptions):Void;
}
typedef DxSliderOptions = {
	>DxTrackBarOptions,
	@:optional
	var step : Float;
	@:optional
	var value : Float;
	@:optional
	var showRange : Bool;
	@:optional
	var tooltip : { @:optional
	var enabled : Bool; @:optional
	var format : Dynamic; @:optional
	var position : String; @:optional
	var showMode : String; };
	@:optional
	var label : { @:optional
	var visible : Bool; @:optional
	var position : String; @:optional
	var format : Dynamic; };
};
extern class DxSlider extends DxTrackBar {
	@:overload(function(element:Element, ?options:DxSliderOptions):Void { })
	function new(element:JQuery, ?options:DxSliderOptions):Void;
}
typedef DxRangeSliderOptions = {
	>DxSliderOptions,
	@:optional
	var start : Float;
	@:optional
	var end : Float;
};
extern class DxRangeSlider extends DxSlider {
	@:overload(function(element:Element, ?options:DxRangeSliderOptions):Void { })
	function new(element:JQuery, ?options:DxRangeSliderOptions):Void;
}
typedef DxTileViewOptions = {
	>CollectionWidgetOptions,
	@:optional
	var baseItemHeight : Float;
	@:optional
	var baseItemWidth : Float;
	@:optional
	var height : Dynamic;
	@:optional
	var itemMargin : Float;
	@:optional
	var listHeight : Dynamic;
	@:optional
	var showScrollbar : Bool;
};
extern class DxTileView extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxTileViewOptions):Void { })
	function new(element:JQuery, ?options:DxTileViewOptions):Void;
	function scrollPosition():Float;
}
typedef DxSwitchOptions = {
	>EditorOptions,
	@:optional
	var offText : String;
	@:optional
	var onText : String;
	@:optional
	var value : Bool;
};
extern class DxSwitch extends Editor {
	@:overload(function(element:Element, ?options:DxSwitchOptions):Void { })
	function new(element:JQuery, ?options:DxSwitchOptions):Void;
}
typedef DxSlideoutOptions = {
	>CollectionWidgetOptions,
	@:optional
	var activeStateEnabled : Bool;
	@:optional
	var menuGrouped : Bool;
	@:optional
	var menuGroupRender : Dynamic;
	@:optional
	var menuGroupTemplate : Dynamic;
	@:optional
	var menuItemRender : Dynamic;
	@:optional
	var menuItemTemplate : Dynamic;
	@:optional
	var menuVisible : Bool;
	@:optional
	var swipeEnabled : Bool;
};
extern class DxSlideOut extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxSlideoutOptions):Void { })
	function new(element:JQuery, ?options:DxSlideoutOptions):Void;
	function hideMenu():JQueryPromise<Void>;
	function showMenu():JQueryPromise<Void>;
	function toggleMenuVisibility(showing:Bool):JQueryPromise<Void>;
}
typedef DxPivotOptions = {
	>CollectionWidgetOptions,
	@:optional
	var selectedIndex : Float;
};
extern class DxPivot extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxPivotOptions):Void { })
	function new(element:JQuery, ?options:DxPivotOptions):Void;
}
typedef DxPanoramaOptions = {
	>CollectionWidgetOptions,
	@:optional
	var backgroundImage : { @:optional
	var height : Float; @:optional
	var url : String; @:optional
	var width : Float; };
	@:optional
	var selectedIndex : Float;
	@:optional
	var title : String;
};
extern class DxPanorama extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxDropDownEditorOptions):Void { })
	function new(element:JQuery, ?options:DxDropDownEditorOptions):Void;
}
typedef DxDropDownMenuOptions = {
	>WidgetOptions,
	@:optional
	var onButtonClick : Dynamic;
	@:optional
	var buttonClickAction : Dynamic;
	@:optional
	var buttonIcon : String;
	@:optional
	var buttonIconSrc : String;
	@:optional
	var buttonText : String;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var onItemClick : Dynamic;
	@:optional
	var itemClickAction : Dynamic;
	@:optional
	var itemRender : Dynamic;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var itemTemplate : Dynamic;
	@:optional
	var usePopover : Bool;
	@:optional
	var popupWidth : Dynamic;
	@:optional
	var popupHeight : Dynamic;
};
extern class DxDropDownMenu extends Widget {
	@:overload(function(element:Element, ?options:DxDropDownEditorOptions):Void { })
	function new(element:JQuery, ?options:DxDropDownEditorOptions):Void;
}
typedef DxActionSheetOptions = {
	>CollectionWidgetOptions,
	@:optional
	var cancelClickAction : Dynamic;
	@:optional
	var onCancelClick : Dynamic;
	@:optional
	var cancelText : String;
	@:optional
	var showCancelButton : Bool;
	@:optional
	var showTitle : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var title : String;
	@:optional
	var usePopover : Bool;
	@:optional
	var visible : Bool;
};
extern class DxActionSheet extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxActionSheetOptions):Void { })
	function new(element:JQuery, ?options:DxActionSheetOptions):Void;
	function hide():JQueryPromise<DxActionSheet>;
	function show():JQueryPromise<DxActionSheet>;
	function toggle(showing:Bool):JQueryPromise<DxActionSheet>;
}
typedef DxColorBoxOptions = {
	>DxDropDownEditorOptions,
	@:optional
	var applyButtonText : String;
	@:optional
	var applyValueMode : String;
	@:optional
	var cancelButtonText : String;
	@:optional
	var editAlphaChannel : Bool;
	@:optional
	var value : String;
};
extern class DxColorBox extends DxDropDownEditor {
	@:overload(function(element:Element, ?options:DxColorBoxOptions):Void { })
	function new(element:JQuery, ?options:DxColorBoxOptions):Void;
}
typedef DxColorPickerOptions = {
	>DxColorBoxOptions,
};
extern class DxColorPicker extends DxColorBox {
	@:overload(function(element:Element, ?options:DxColorPickerOptions):Void { })
	function new(element:JQuery, ?options:DxColorPickerOptions):Void;
}
typedef DxTreeViewOptions = {
	>CollectionWidgetOptions,
	@:optional
	var dataStructure : String;
	@:optional
	var expandedItems : Array<Dynamic>;
	@:optional
	var showCheckBoxes : Bool;
	@:optional
	var selectNodesRecursive : Bool;
	@:optional
	var selectAllEnabled : Bool;
	@:optional
	var selectAllText : String;
	@:optional
	var keyExpr : Dynamic;
	@:optional
	var displayExpr : Dynamic;
	@:optional
	var selectedExpr : Dynamic;
	@:optional
	var expandedExpr : Dynamic;
	@:optional
	var itemsExpr : Dynamic;
	@:optional
	var parentIdExpr : Dynamic;
	@:optional
	var scrollDirection : String;
	@:optional
	var onItemSelected : haxe.Constraints.Function;
	@:optional
	var onItemExpanded : haxe.Constraints.Function;
	@:optional
	var onItemCollapsed : haxe.Constraints.Function;
};
extern class DxTreeView extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxTreeViewOptions):Void { })
	function new(element:JQuery, ?options:DxTreeViewOptions):Void;
	function updateDimensions():JQueryPromise<Void>;
	function selectItem(itemElement:Dynamic):Void;
	function unselectItem(itemElement:Dynamic):Void;
	function expandItem(itemElement:Dynamic):Void;
	function collapseItem(itemElement:Dynamic):Void;
	function getNodes():Array<Dynamic>;
}
typedef DxMenuBaseOptions = {
	>CollectionWidgetOptions,
	@:optional
	var animation : fx.AnimationOptions;
	@:optional
	var activeStateEnabled : Bool;
	@:optional
	var cssClass : String;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var selectionByClick : Bool;
	@:optional
	var selectionMode : String;
	@:optional
	var showSubmenuMode : String;
};
extern class DxMenuBase extends CollectionWidget {
	@:overload(function(element:Element, ?options:DxMenuBaseOptions):Void { })
	function new(element:JQuery, ?options:DxMenuBaseOptions):Void;
	function selectItem(itemElement:Dynamic):Void;
	function unselectItem(itemElement:Dynamic):Void;
}
typedef DxMenuOptions = {
	>DxMenuBaseOptions,
	@:optional
	var firstSubMenuDirection : String;
	@:optional
	var orientation : String;
	@:optional
	var showFirstSubmenuMode : String;
	@:optional
	var showPopupMode : String;
	@:optional
	var showSubmenuMode : String;
	@:optional
	var submenuDirection : String;
	@:optional
	var onSubmenuHidden : haxe.Constraints.Function;
	@:optional
	var submenuHiddenAction : haxe.Constraints.Function;
	@:optional
	var onSubmenuHiding : haxe.Constraints.Function;
	@:optional
	var submenuHidingAction : haxe.Constraints.Function;
	@:optional
	var onSubmenuShowing : haxe.Constraints.Function;
	@:optional
	var submenuShowingAction : haxe.Constraints.Function;
	@:optional
	var onSubmenuShown : haxe.Constraints.Function;
	@:optional
	var submenuShownAction : haxe.Constraints.Function;
};
extern class DxMenu extends DxMenuBase {
	@:overload(function(element:Element, ?options:DxMenuOptions):Void { })
	function new(element:JQuery, ?options:DxMenuOptions):Void;
}
typedef DxContextMenuOptions = {
	>DxMenuBaseOptions,
	@:optional
	var direction : String;
	@:optional
	var hiddenAction : haxe.Constraints.Function;
	@:optional
	var hidingAction : haxe.Constraints.Function;
	@:optional
	var invokeOnlyFromCode : Bool;
	@:optional
	var onHidden : haxe.Constraints.Function;
	@:optional
	var onHiding : haxe.Constraints.Function;
	@:optional
	var onPositioning : haxe.Constraints.Function;
	@:optional
	var onShowing : haxe.Constraints.Function;
	@:optional
	var onShown : haxe.Constraints.Function;
	@:optional
	var position : PositionOptions;
	@:optional
	var positioningAction : haxe.Constraints.Function;
	@:optional
	var showingAction : haxe.Constraints.Function;
	@:optional
	var shownAction : haxe.Constraints.Function;
	@:optional
	var showSubmenuMode : String;
	@:optional
	var submenuDirection : String;
	@:optional
	var target : Dynamic;
	@:optional
	var visible : Bool;
};
extern class DxContextMenu extends DxMenuBase {
	@:overload(function(element:Element, ?options:DxContextMenuOptions):Void { })
	function new(element:JQuery, ?options:DxContextMenuOptions):Void;
}
typedef DxRemoteOperations = {
	@:optional
	var filtering : Bool;
	@:optional
	var paging : Bool;
	@:optional
	var sorting : Bool;
};
typedef DxDataGridColumn = {
	@:optional
	var alignment : String;
	@:optional
	var allowEditing : Bool;
	@:optional
	var allowFiltering : Bool;
	@:optional
	var allowGrouping : Bool;
	@:optional
	var allowHiding : Bool;
	@:optional
	var allowReordering : Bool;
	@:optional
	var allowResizing : Bool;
	@:optional
	var allowSorting : Bool;
	@:optional
	var autoExpandGroup : Bool;
	@:optional
	var calculateCellValue : Dynamic -> String;
	@:optional
	var calculateFilterExpression : Dynamic -> String -> Array<Dynamic>;
	@:optional
	var caption : String;
	@:optional
	var cellTemplate : Dynamic;
	@:optional
	var cssClass : String;
	@:optional
	var calculateGroupValue : Dynamic -> String;
	@:optional
	var customizeText : { var value : Dynamic; var valueText : String; } -> String;
	@:optional
	var dataField : String;
	@:optional
	var dataType : String;
	@:optional
	var editCellTemplate : Dynamic;
	@:optional
	var encodeHtml : Bool;
	@:optional
	var falseText : String;
	@:optional
	var filterOperations : Array<Dynamic>;
	@:optional
	var filterValue : Dynamic;
	@:optional
	var format : String;
	@:optional
	var groupCellTemplate : Dynamic;
	@:optional
	var groupIndex : Float;
	@:optional
	var headerCellTemplate : Dynamic;
	@:optional
	var lookup : { @:optional
	var allowClearing : Bool; @:optional
	var dataSource : Dynamic; @:optional
	var displayExpr : Dynamic; @:optional
	var valueExpr : String; };
	@:optional
	var precision : Float;
	@:optional
	var selectedFilterOperation : String;
	@:optional
	var showEditorAlways : Bool;
	@:optional
	var showWhenGrouped : Bool;
	@:optional
	var sortIndex : Float;
	@:optional
	var sortOrder : String;
	@:optional
	var trueText : String;
	@:optional
	var visible : Bool;
	@:optional
	var visibleIndex : Float;
	@:optional
	var width : Dynamic;
	@:optional
	var validationRules : Array<Dynamic>;
	@:optional
	var showInColumnChooser : Bool;
	@:optional
	var name : String;
};
typedef DxDataGridOptions = {
	>WidgetOptions,
	@:optional
	var showBorders : Bool;
	@:optional
	var errorRowEnabled : Bool;
	@:optional
	var onRowValidating : Dynamic -> Void;
	@:optional
	var initNewRow : { var data : Dynamic; } -> Void;
	@:optional
	var onInitNewRow : { var data : Dynamic; } -> Void;
	@:optional
	var rowInserted : { var data : Dynamic; var key : Dynamic; } -> Void;
	@:optional
	var onRowInserted : { var data : Dynamic; var key : Dynamic; } -> Void;
	@:optional
	var rowInserting : { var data : Dynamic; var cancel : Bool; } -> Void;
	@:optional
	var onRowInserting : { var data : Dynamic; var cancel : Bool; } -> Void;
	@:optional
	var rowRemoved : { var data : Dynamic; var key : Dynamic; } -> Void;
	@:optional
	var onRowRemoved : { var data : Dynamic; var key : Dynamic; } -> Void;
	@:optional
	var rowRemoving : { var data : Dynamic; var key : Dynamic; var cancel : Bool; } -> Void;
	@:optional
	var onRowRemoving : { var data : Dynamic; var key : Dynamic; var cancel : Bool; } -> Void;
	@:optional
	var rowUpdated : { var data : Dynamic; var key : Dynamic; } -> Void;
	@:optional
	var onRowUpdated : { var data : Dynamic; var key : Dynamic; } -> Void;
	@:optional
	var rowUpdating : { var oldData : Dynamic; var newData : Dynamic; var key : Dynamic; var cancel : Bool; } -> Void;
	@:optional
	var onRowUpdating : { var oldData : Dynamic; var newData : Dynamic; var key : Dynamic; var cancel : Bool; } -> Void;
	@:optional
	var cellHintEnabled : Bool;
	@:optional
	var allowColumnReordering : Bool;
	@:optional
	var allowColumnResizing : Bool;
	@:optional
	var cellClick : Dynamic;
	@:optional
	var onCellClick : Dynamic;
	@:optional
	var cellHoverChanged : Dynamic -> Void;
	@:optional
	var onCellHoverChanged : Dynamic -> Void;
	@:optional
	var cellPrepared : Dynamic -> Void;
	@:optional
	var onCellPrepared : Dynamic -> Void;
	@:optional
	var columnAutoWidth : Bool;
	@:optional
	var columnChooser : { @:optional
	var emptyPanelText : String; @:optional
	var enabled : Bool; @:optional
	var height : Float; @:optional
	var title : String; @:optional
	var width : Float; };
	@:optional
	var columns : Array<DxDataGridColumn>;
	@:optional
	var onContentReady : haxe.Constraints.Function;
	@:optional
	var contentReadyAction : haxe.Constraints.Function;
	@:optional
	var customizeColumns : Array<DxDataGridColumn> -> Void;
	@:optional
	var dataErrorOccurred : Error -> Void;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var editingStart : { var data : Dynamic; var key : Dynamic; var cancel : Bool; var column : DxDataGridColumn; } -> Void;
	@:optional
	var onEditingStart : { var data : Dynamic; var key : Dynamic; var cancel : Bool; var column : DxDataGridColumn; } -> Void;
	@:optional
	var editorPrepared : Dynamic -> Void;
	@:optional
	var onEditorPrepared : Dynamic -> Void;
	@:optional
	var editorPreparing : Dynamic -> Void;
	@:optional
	var onEditorPreparing : Dynamic -> Void;
	@:optional
	var editing : { @:optional
	var editEnabled : Bool; @:optional
	var editMode : String; @:optional
	var insertEnabled : Bool; @:optional
	var removeEnabled : Bool; @:optional
	var texts : { @:optional
	var saveAllChanges : String; @:optional
	var cancelRowChanges : String; @:optional
	var cancelAllChanges : String; @:optional
	var confirmDeleteMessage : String; @:optional
	var confirmDeleteTitle : String; @:optional
	var deleteRow : String; @:optional
	var addRow : String; @:optional
	var editRow : String; @:optional
	var recoverRow : String; @:optional
	var saveRowChanges : String; @:optional
	var undeleteRow : String; }; };
	@:optional
	var filterRow : { @:optional
	var applyFilter : String; @:optional
	var applyFilterText : String; @:optional
	var operationDescriptions : { var = : String; var <> : String; var < : String; var <= : String; var > : String; var >= : String; var startswith : String; var contains : String; var notcontains : String; var endswith : String; }; @:optional
	var resetOperationText : String; @:optional
	var showAllText : String; @:optional
	var showOperationChooser : Bool; @:optional
	var visible : Bool; };
	@:optional
	var grouping : { @:optional
	var allowCollapsing : Bool; @:optional
	var autoExpandAll : Bool; @:optional
	var groupContinuedMessage : String; @:optional
	var groupContinuesMessage : String; };
	@:optional
	var groupPanel : { @:optional
	var allowColumnDragging : Bool; @:optional
	var emptyPanelText : String; @:optional
	var visible : Bool; };
	@:optional
	var loadPanel : { @:optional
	var enabled : Bool; @:optional
	var height : Float; @:optional
	var indicatorSrc : String; @:optional
	var showIndicator : Bool; @:optional
	var showPane : Bool; @:optional
	var text : String; @:optional
	var width : Float; };
	@:optional
	var noDataText : String;
	@:optional
	var pager : { @:optional
	var allowedPageSizes : Dynamic; @:optional
	var showPageSizeSelector : Bool; @:optional
	var visible : Dynamic; @:optional
	var infoText : String; @:optional
	var showInfo : Bool; @:optional
	var showNavigationButtons : Bool; };
	@:optional
	var paging : { @:optional
	var enabled : Bool; @:optional
	var pageIndex : Float; @:optional
	var pageSize : Float; };
	@:optional
	var rowAlternationEnabled : Bool;
	@:optional
	var rowClick : Dynamic;
	@:optional
	var onRowClick : Dynamic;
	@:optional
	var rowPrepared : Dynamic -> Void;
	@:optional
	var onRowPrepared : Dynamic -> Void;
	@:optional
	var rowTemplate : Dynamic;
	@:optional
	var scrolling : { @:optional
	var mode : String; @:optional
	var preloadEnabled : Bool; };
	@:optional
	var searchPanel : { @:optional
	var highlightSearchText : Bool; @:optional
	var placeholder : String; @:optional
	var visible : Bool; @:optional
	var width : Float; @:optional
	var text : String; };
	@:optional
	var remoteOperations : Dynamic;
	@:optional
	var sortByGroupSummaryInfo : Array<{ @:optional
	var summaryItem : String; @:optional
	var groupColumn : String; @:optional
	var sortOrder : String; }>;
	@:optional
	var masterDetail : { @:optional
	var enabled : Bool; @:optional
	var autoExpandAll : Bool; @:optional
	var template : Dynamic; };
	@:optional
	var selectedRowKeys : Array<Dynamic>;
	@:optional
	var selection : { @:optional
	var allowSelectAll : Bool; @:optional
	var mode : String; };
	@:optional
	var selectionChanged : { var currentSelectedRowKeys : Array<Dynamic>; var currentDeselectedRowKeys : Array<Dynamic>; var selectedRowKeys : Array<Dynamic>; var selectedRowsData : Array<Dynamic>; } -> Void;
	@:optional
	var onDataErrorOccurred : { var error : Error; } -> Void;
	@:optional
	var onSelectionChanged : { var currentSelectedRowKeys : Array<Dynamic>; var currentDeselectedRowKeys : Array<Dynamic>; var selectedRowKeys : Array<Dynamic>; var selectedRowsData : Array<Dynamic>; } -> Void;
	@:optional
	var showColumnHeaders : Bool;
	@:optional
	var showColumnLines : Bool;
	@:optional
	var showRowLines : Bool;
	@:optional
	var sorting : { @:optional
	var ascendingText : String; @:optional
	var clearText : String; @:optional
	var descendingText : String; @:optional
	var mode : String; };
	@:optional
	var stateStoring : { @:optional
	var customLoad : Void -> JQueryPromise<Dynamic>; @:optional
	var customSave : Dynamic -> Void; @:optional
	var enabled : Bool; @:optional
	var savingTimeout : Float; @:optional
	var storageKey : String; @:optional
	var type : String; };
	@:optional
	var summary : { @:optional
	var texts : { @:optional
	var sum : String; @:optional
	var sumOtherColumn : String; @:optional
	var min : String; @:optional
	var minOtherColumn : String; @:optional
	var max : String; @:optional
	var maxOtherColumn : String; @:optional
	var avg : String; @:optional
	var avgOtherColumn : String; @:optional
	var count : String; }; @:optional
	var groupItems : Array<{ @:optional
	var name : String; @:optional
	var column : String; @:optional
	var customizeText : { var value : Dynamic; var valueText : String; } -> String; @:optional
	var displayFormat : String; @:optional
	var precision : Float; @:optional
	var showInGroupFooter : Bool; @:optional
	var showInColumn : String; @:optional
	var summaryType : String; @:optional
	var valueFormat : String; }>; @:optional
	var totalItems : Array<{ @:optional
	var name : String; @:optional
	var alignment : String; @:optional
	var column : String; @:optional
	var cssClass : String; @:optional
	var customizeText : { var value : Dynamic; var valueText : String; } -> String; @:optional
	var displayFormat : String; @:optional
	var precision : Float; @:optional
	var showInColumn : String; @:optional
	var summaryType : String; @:optional
	var valueFormat : String; }>; @:optional
	var calculateCustomSummary : { var component : DxDataGrid; @:optional
	var name : String; var value : Dynamic; var totalValue : Dynamic; var summaryProcess : String; } -> Void; };
	@:optional
	var wordWrapEnabled : Bool;
};
extern class DxDataGrid extends Widget {
	@:overload(function(element:Element, ?options:DxDataGridOptions):Void { })
	function new(element:JQuery, ?options:DxDataGridOptions):Void;
	function clearGrouping():Void;
	function clearSorting():Void;
	@:overload(function(rowIndex:Float, visibleColumnIndex:Float):Dynamic { })
	function getCellElement(rowIndex:Float, dataField:String):Dynamic;
	@:overload(function(state:Dynamic):Void { })
	function state():Dynamic;
	function getRowIndexByKey(key:Dynamic):Float;
	function getKeyByRowIndex(rowIndex:Float):Dynamic;
	function addColumn(columnOptions:DxDataGridColumn):Void;
	function beginCustomLoading(messageText:String):Void;
	function cancelEditData():Void;
	function clearFilter():Void;
	function clearSelection():Void;
	function closeEditCell():Void;
	function collapseAll(?groupIndex:Float):Void;
	function columnCount():Float;
	@:overload(function(id:Float, optionName:String, optionValue:Dynamic):Void { })
	@:overload(function(id:Dynamic):Dynamic { })
	@:overload(function(id:Dynamic, options:Dynamic):Void { })
	function columnOption(id:Float, optionName:String):Dynamic;
	function editCell(rowIndex:Float, columnIndex:Float):Void;
	function editRow(rowIndex:Float):Void;
	function endCustomLoading():Void;
	function expandAll(groupIndex:Float):Void;
	function isRowExpanded(key:Dynamic):Bool;
	function expandRow(key:Dynamic):Void;
	function collapseRow(key:Dynamic):Void;
	function filter(filterExpr:Array<Dynamic>):Void;
	function getSelectedRowKeys():Array<Dynamic>;
	function getSelectedRowsData():Array<Dynamic>;
	function hideColumnChooser():Void;
	function insertRow():Void;
	function keyOf(obj:Dynamic):Dynamic;
	@:overload(function():Float { })
	function pageIndex(newIndex:Float):Void;
	@:overload(function():Float { })
	function pageSize(value:Float):Void;
	function recoverRow(rowIndex:Float):Void;
	function refresh():Void;
	function removeRow(rowIndex:Float):Void;
	function saveEditData():Void;
	function searchByText(text:String):Void;
	function selectAll():Void;
	function selectRows(keys:Array<Dynamic>, preserve:Bool):Void;
	function deselectRows(keys:Array<Dynamic>):Void;
	function selectRowsByIndexes(indexes:Array<Dynamic>):Void;
	function isRowSelected(key:Dynamic):Bool;
	function showColumnChooser():Void;
	function startSelectionWithCheckboxes():Bool;
	function totalCount():Float;
	function undeleteRow(rowIndex:Float):Void;
	function byKey(key:Dynamic):JQueryPromise<Dynamic>;
	function getTotalSummaryValue(summaryItemName:String):Dynamic;
}
