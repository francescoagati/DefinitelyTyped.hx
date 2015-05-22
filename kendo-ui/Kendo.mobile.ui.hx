extern class Widget extends kendo.ui.Widget {

}
typedef TouchAxis = {
	@:optional
	var location : Float;
	@:optional
	var startLocation : Float;
	@:optional
	var client : Float;
	@:optional
	var delta : Float;
	@:optional
	var velocity : Float;
};
typedef TouchEventOptions = {
	@:optional
	var target : JQuery;
	@:optional
	var x : TouchAxis;
	@:optional
	var y : TouchAxis;
};
typedef Point = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
extern class ActionSheet extends kendo.mobile.ui.Widget {
	static var fn : ActionSheet;
	static function extend(proto:Dynamic):ActionSheet;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ActionSheetOptions):Void;
	var options : ActionSheetOptions;
	function close():Void;
	function destroy():Void;
	function open(target:JQuery, context:Dynamic):Void;
}
typedef ActionSheetPopup = {
	@:optional
	var direction : Dynamic;
	@:optional
	var height : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef ActionSheetOptions = {
	@:optional
	var name : String;
	@:optional
	var cancel : String;
	@:optional
	var popup : ActionSheetPopup;
	@:optional
	var type : String;
	@:optional
	function close(e:ActionSheetEvent):Void;
	@:optional
	function open(e:ActionSheetOpenEvent):Void;
};
typedef ActionSheetEvent = {
	var sender : ActionSheet;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ActionSheetOpenEvent = {
	>ActionSheetEvent,
	@:optional
	var target : JQuery;
	@:optional
	var context : JQuery;
};
extern class BackButton extends kendo.mobile.ui.Widget {
	static var fn : BackButton;
	static function extend(proto:Dynamic):BackButton;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:BackButtonOptions):Void;
	var options : BackButtonOptions;
	function destroy():Void;
}
typedef BackButtonOptions = {
	@:optional
	var name : String;
	@:optional
	function click(e:BackButtonClickEvent):Void;
};
typedef BackButtonEvent = {
	var sender : BackButton;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef BackButtonClickEvent = {
	>BackButtonEvent,
	@:optional
	var target : JQuery;
	@:optional
	var button : JQuery;
};
extern class Button extends kendo.mobile.ui.Widget {
	static var fn : Button;
	static function extend(proto:Dynamic):Button;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ButtonOptions):Void;
	var options : ButtonOptions;
	@:overload(function(value:Bool):String { })
	function badge(value:String):String;
	function destroy():Void;
	function enable(enable:Bool):Void;
}
typedef ButtonOptions = {
	@:optional
	var name : String;
	@:optional
	var badge : String;
	@:optional
	var clickOn : String;
	@:optional
	var enable : Bool;
	@:optional
	var icon : String;
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
	var target : JQuery;
	@:optional
	var button : JQuery;
};
extern class ButtonGroup extends kendo.mobile.ui.Widget {
	static var fn : ButtonGroup;
	static function extend(proto:Dynamic):ButtonGroup;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ButtonGroupOptions):Void;
	var options : ButtonGroupOptions;
	@:overload(function(button:String, value:Bool):String { })
	@:overload(function(button:Float, value:String):String { })
	@:overload(function(button:Float, value:Bool):String { })
	function badge(button:String, value:String):String;
	function current():JQuery;
	function destroy():Void;
	function enable(enable:Bool):Void;
	@:overload(function(li:Float):Void { })
	function select(li:JQuery):Void;
}
typedef ButtonGroupOptions = {
	@:optional
	var name : String;
	@:optional
	var enable : Bool;
	@:optional
	var index : Float;
	@:optional
	var selectOn : String;
	@:optional
	function select(e:ButtonGroupSelectEvent):Void;
};
typedef ButtonGroupEvent = {
	var sender : ButtonGroup;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ButtonGroupSelectEvent = {
	>ButtonGroupEvent,
	@:optional
	var index : Float;
};
extern class Collapsible extends kendo.mobile.ui.Widget {
	static var fn : Collapsible;
	static function extend(proto:Dynamic):Collapsible;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:CollapsibleOptions):Void;
	var options : CollapsibleOptions;
	function collapse(instant:Bool):Void;
	function destroy():Void;
	function expand(?instant:Bool):Void;
	function resize():Void;
	function toggle(?instant:Bool):Void;
}
typedef CollapsibleOptions = {
	@:optional
	var name : String;
	@:optional
	var animation : Bool;
	@:optional
	var collapsed : Bool;
	@:optional
	var expandIcon : String;
	@:optional
	var iconPosition : String;
	@:optional
	var inset : Bool;
	@:optional
	function collapse(e:CollapsibleEvent):Void;
	@:optional
	function expand(e:CollapsibleEvent):Void;
};
typedef CollapsibleEvent = {
	var sender : Collapsible;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class DetailButton extends kendo.mobile.ui.Widget {
	static var fn : DetailButton;
	static function extend(proto:Dynamic):DetailButton;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:DetailButtonOptions):Void;
	var options : DetailButtonOptions;
	function destroy():Void;
}
typedef DetailButtonOptions = {
	@:optional
	var name : String;
	@:optional
	function click(e:DetailButtonClickEvent):Void;
};
typedef DetailButtonEvent = {
	var sender : DetailButton;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef DetailButtonClickEvent = {
	>DetailButtonEvent,
	@:optional
	var target : JQuery;
	@:optional
	var button : JQuery;
};
extern class Drawer extends kendo.mobile.ui.Widget {
	static var fn : Drawer;
	static function extend(proto:Dynamic):Drawer;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:DrawerOptions):Void;
	var options : DrawerOptions;
	function destroy():Void;
	function hide():Void;
	function show():Void;
}
typedef DrawerOptions = {
	@:optional
	var name : String;
	@:optional
	var container : JQuery;
	@:optional
	var position : String;
	@:optional
	var swipeToOpen : Bool;
	@:optional
	var swipeToOpenViews : Dynamic;
	@:optional
	var title : String;
	@:optional
	var views : Dynamic;
	@:optional
	function afterHide(e:DrawerAfterHideEvent):Void;
	@:optional
	function beforeShow(e:DrawerEvent):Void;
	@:optional
	function hide(e:DrawerHideEvent):Void;
	@:optional
	function init(e:DrawerInitEvent):Void;
	@:optional
	function show(e:DrawerShowEvent):Void;
};
typedef DrawerEvent = {
	var sender : Drawer;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef DrawerAfterHideEvent = {
	>DrawerEvent,
};
typedef DrawerHideEvent = {
	>DrawerEvent,
};
typedef DrawerInitEvent = {
	>DrawerEvent,
};
typedef DrawerShowEvent = {
	>DrawerEvent,
};
extern class Layout extends kendo.mobile.ui.Widget {
	static var fn : Layout;
	static function extend(proto:Dynamic):Layout;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:LayoutOptions):Void;
	var options : LayoutOptions;
}
typedef LayoutOptions = {
	@:optional
	var name : String;
	@:optional
	var id : String;
	@:optional
	var platform : String;
	@:optional
	function hide(e:LayoutHideEvent):Void;
	@:optional
	function init(e:LayoutInitEvent):Void;
	@:optional
	function show(e:LayoutShowEvent):Void;
};
typedef LayoutEvent = {
	var sender : Layout;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef LayoutHideEvent = {
	>LayoutEvent,
	@:optional
	var layout : JQuery;
	@:optional
	var view : JQuery;
};
typedef LayoutInitEvent = {
	>LayoutEvent,
	@:optional
	var layout : JQuery;
};
typedef LayoutShowEvent = {
	>LayoutEvent,
	@:optional
	var layout : JQuery;
	@:optional
	var view : JQuery;
};
extern class ListView extends kendo.mobile.ui.Widget {
	static var fn : ListView;
	static function extend(proto:Dynamic):ListView;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ListViewOptions):Void;
	var options : ListViewOptions;
	var dataSource : kendo.data.DataSource;
	function append(dataItems:Dynamic):Void;
	function prepend(dataItems:Dynamic):Void;
	function replace(dataItems:Dynamic):Void;
	function remove(dataItems:Dynamic):Void;
	function setDataItem(item:JQuery, dataItem:kendo.data.Model):Void;
	function destroy():Void;
	function items():JQuery;
	function refresh():Void;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
}
typedef ListViewFilterable = {
	@:optional
	var placeholder : String;
	@:optional
	var autoFilter : Bool;
	@:optional
	var field : String;
	@:optional
	var ignoreCase : Bool;
	@:optional
	var operator : String;
};
typedef ListViewMessages = {
	@:optional
	var loadMoreText : String;
	@:optional
	var pullTemplate : String;
	@:optional
	var refreshTemplate : String;
	@:optional
	var releaseTemplate : String;
};
typedef ListViewOptions = {
	@:optional
	var name : String;
	@:optional
	var appendOnRefresh : Bool;
	@:optional
	var autoBind : Bool;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var endlessScroll : Bool;
	@:optional
	var fixedHeaders : Bool;
	@:optional
	var headerTemplate : Dynamic;
	@:optional
	var loadMore : Bool;
	@:optional
	var messages : ListViewMessages;
	@:optional
	var pullToRefresh : Bool;
	@:optional
	var pullParameters : haxe.Constraints.Function;
	@:optional
	var style : String;
	@:optional
	var template : Dynamic;
	@:optional
	var type : String;
	@:optional
	var filterable : ListViewFilterable;
	@:optional
	var virtualViewSize : Float;
	@:optional
	function click(e:ListViewClickEvent):Void;
	@:optional
	function dataBound(e:ListViewEvent):Void;
	@:optional
	function dataBinding(e:ListViewEvent):Void;
	@:optional
	function itemChange(e:ListViewEvent):Void;
};
typedef ListViewEvent = {
	var sender : ListView;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ListViewClickEvent = {
	>ListViewEvent,
	@:optional
	var item : JQuery;
	@:optional
	var target : JQuery;
	@:optional
	var dataItem : Dynamic;
	@:optional
	var button : kendo.mobile.ui.Button;
};
extern class Loader extends kendo.mobile.ui.Widget {
	static var fn : Loader;
	static function extend(proto:Dynamic):Loader;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:LoaderOptions):Void;
	var options : LoaderOptions;
	function hide():Void;
	function show():Void;
}
typedef LoaderOptions = {
	@:optional
	var name : String;
};
typedef LoaderEvent = {
	var sender : Loader;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class ModalView extends kendo.mobile.ui.Widget {
	static var fn : ModalView;
	static function extend(proto:Dynamic):ModalView;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ModalViewOptions):Void;
	var options : ModalViewOptions;
	function close():Void;
	function destroy():Void;
	function open(target:JQuery):Void;
}
typedef ModalViewOptions = {
	@:optional
	var name : String;
	@:optional
	var height : Float;
	@:optional
	var modal : Bool;
	@:optional
	var width : Float;
	@:optional
	function beforeOpen(e:ModalViewBeforeOpenEvent):Void;
	@:optional
	function close(e:ModalViewCloseEvent):Void;
	@:optional
	function init(e:ModalViewInitEvent):Void;
	@:optional
	function open(e:ModalViewOpenEvent):Void;
};
typedef ModalViewEvent = {
	var sender : ModalView;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ModalViewBeforeOpenEvent = {
	>ModalViewEvent,
	@:optional
	var target : JQuery;
};
typedef ModalViewCloseEvent = {
	>ModalViewEvent,
};
typedef ModalViewInitEvent = {
	>ModalViewEvent,
};
typedef ModalViewOpenEvent = {
	>ModalViewEvent,
	@:optional
	var target : JQuery;
};
extern class NavBar extends kendo.mobile.ui.Widget {
	static var fn : NavBar;
	static function extend(proto:Dynamic):NavBar;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:NavBarOptions):Void;
	var options : NavBarOptions;
	function destroy():Void;
	function title(value:String):Void;
}
typedef NavBarOptions = {
	@:optional
	var name : String;
};
typedef NavBarEvent = {
	var sender : NavBar;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Pane extends kendo.mobile.ui.Widget {
	static var fn : Pane;
	static function extend(proto:Dynamic):Pane;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:PaneOptions):Void;
	var options : PaneOptions;
	function destroy():Void;
	function hideLoading():Void;
	function navigate(url:String, transition:String):Void;
	function replace(url:String, transition:String):Void;
	function Example():Void;
	function showLoading():Void;
	function view():kendo.mobile.ui.View;
}
typedef PaneOptions = {
	@:optional
	var name : String;
	@:optional
	var collapsible : Bool;
	@:optional
	var initial : String;
	@:optional
	var layout : String;
	@:optional
	var loading : String;
	@:optional
	var portraitWidth : Float;
	@:optional
	var transition : String;
	@:optional
	function navigate(e:PaneNavigateEvent):Void;
	@:optional
	function viewShow(e:PaneViewShowEvent):Void;
};
typedef PaneEvent = {
	var sender : Pane;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef PaneNavigateEvent = {
	>PaneEvent,
	@:optional
	var url : JQuery;
};
typedef PaneViewShowEvent = {
	>PaneEvent,
	@:optional
	var view : kendo.mobile.ui.View;
};
extern class PopOver extends kendo.mobile.ui.Widget {
	static var fn : PopOver;
	static function extend(proto:Dynamic):PopOver;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:PopOverOptions):Void;
	var options : PopOverOptions;
	function close():Void;
	function destroy():Void;
	function open(target:JQuery):Void;
}
typedef PopOverPane = {
	@:optional
	var initial : String;
	@:optional
	var layout : String;
	@:optional
	var loading : String;
	@:optional
	var transition : String;
};
typedef PopOverPopup = {
	@:optional
	var height : Dynamic;
	@:optional
	var width : Dynamic;
};
typedef PopOverOptions = {
	@:optional
	var name : String;
	@:optional
	var pane : PopOverPane;
	@:optional
	var popup : PopOverPopup;
	@:optional
	function close(e:PopOverCloseEvent):Void;
	@:optional
	function open(e:PopOverOpenEvent):Void;
};
typedef PopOverEvent = {
	var sender : PopOver;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef PopOverCloseEvent = {
	>PopOverEvent,
};
typedef PopOverOpenEvent = {
	>PopOverEvent,
	@:optional
	var target : JQuery;
};
extern class ScrollView extends kendo.mobile.ui.Widget {
	static var fn : ScrollView;
	static function extend(proto:Dynamic):ScrollView;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ScrollViewOptions):Void;
	var options : ScrollViewOptions;
	var dataSource : kendo.data.DataSource;
	@:overload(function(content:JQuery):Void { })
	function content(content:String):Void;
	function destroy():Void;
	function next():Void;
	function prev():Void;
	function refresh():Void;
	function scrollTo(page:Float, instant:Bool):Void;
	function setDataSource(dataSource:kendo.data.DataSource):Void;
	function value(dataItem:Dynamic):Dynamic;
}
typedef ScrollViewOptions = {
	@:optional
	var name : String;
	@:optional
	var autoBind : Bool;
	@:optional
	var bounceVelocityThreshold : Float;
	@:optional
	var contentHeight : Dynamic;
	@:optional
	var dataSource : Dynamic;
	@:optional
	var duration : Float;
	@:optional
	var emptyTemplate : String;
	@:optional
	var enablePager : Bool;
	@:optional
	var itemsPerPage : Float;
	@:optional
	var page : Float;
	@:optional
	var pageSize : Float;
	@:optional
	var template : String;
	@:optional
	var velocityThreshold : Float;
	@:optional
	function changing(e:ScrollViewChangingEvent):Void;
	@:optional
	function change(e:ScrollViewChangeEvent):Void;
	@:optional
	function refresh(e:ScrollViewRefreshEvent):Void;
};
typedef ScrollViewEvent = {
	var sender : ScrollView;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ScrollViewChangingEvent = {
	>ScrollViewEvent,
	@:optional
	var currentPage : Float;
	@:optional
	var nextPage : Float;
};
typedef ScrollViewChangeEvent = {
	>ScrollViewEvent,
	@:optional
	var page : Float;
	@:optional
	var element : JQuery;
	@:optional
	var data : Dynamic;
};
typedef ScrollViewRefreshEvent = {
	>ScrollViewEvent,
	@:optional
	var pageCount : Float;
	@:optional
	var page : Float;
};
extern class Scroller extends kendo.mobile.ui.Widget {
	static var fn : Scroller;
	static function extend(proto:Dynamic):Scroller;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ScrollerOptions):Void;
	var options : ScrollerOptions;
	function animatedScrollTo(x:Float, y:Float):Void;
	function destroy():Void;
	function disable():Void;
	function enable():Void;
	function height():Float;
	function pullHandled():Void;
	function reset():Void;
	function scrollHeight():Void;
	function scrollTo(x:Float, y:Float):Void;
	function scrollWidth():Void;
	function zoomOut():Void;
}
typedef ScrollerMessages = {
	@:optional
	var pullTemplate : String;
	@:optional
	var refreshTemplate : String;
	@:optional
	var releaseTemplate : String;
};
typedef ScrollerOptions = {
	@:optional
	var name : String;
	@:optional
	var elastic : Bool;
	@:optional
	var messages : ScrollerMessages;
	@:optional
	var pullOffset : Float;
	@:optional
	var pullToRefresh : Bool;
	@:optional
	var useNative : Bool;
	@:optional
	var visibleScrollHints : Bool;
	@:optional
	var zoom : Bool;
	@:optional
	function pull(e:ScrollerEvent):Void;
	@:optional
	function resize(e:ScrollerEvent):Void;
	@:optional
	function scroll(e:ScrollerScrollEvent):Void;
};
typedef ScrollerEvent = {
	var sender : Scroller;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ScrollerScrollEvent = {
	>ScrollerEvent,
	@:optional
	var scrollTop : Float;
	@:optional
	var scrollLeft : Float;
};
extern class SplitView extends kendo.mobile.ui.Widget {
	static var fn : SplitView;
	static function extend(proto:Dynamic):SplitView;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:SplitViewOptions):Void;
	var options : SplitViewOptions;
	function destroy():Void;
	function expandPanes():Void;
	function collapsePanes():Void;
}
typedef SplitViewOptions = {
	@:optional
	var name : String;
	@:optional
	var style : String;
	@:optional
	function init(e:SplitViewInitEvent):Void;
	@:optional
	function show(e:SplitViewShowEvent):Void;
};
typedef SplitViewEvent = {
	var sender : SplitView;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef SplitViewInitEvent = {
	>SplitViewEvent,
	@:optional
	var view : JQuery;
};
typedef SplitViewShowEvent = {
	>SplitViewEvent,
	@:optional
	var view : JQuery;
};
extern class Switch extends kendo.mobile.ui.Widget {
	static var fn : Switch;
	static function extend(proto:Dynamic):Switch;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:SwitchOptions):Void;
	var options : SwitchOptions;
	@:overload(function(check:Bool):Void { })
	function check():Bool;
	function destroy():Void;
	function enable(enable:Bool):Void;
	function refresh():Void;
	function toggle():Void;
}
typedef SwitchOptions = {
	@:optional
	var name : String;
	@:optional
	var checked : Bool;
	@:optional
	var enable : Bool;
	@:optional
	var offLabel : String;
	@:optional
	var onLabel : String;
	@:optional
	function change(e:SwitchChangeEvent):Void;
};
typedef SwitchEvent = {
	var sender : Switch;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef SwitchChangeEvent = {
	>SwitchEvent,
	@:optional
	var checked : Dynamic;
};
extern class TabStrip extends kendo.mobile.ui.Widget {
	static var fn : TabStrip;
	static function extend(proto:Dynamic):TabStrip;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:TabStripOptions):Void;
	var options : TabStripOptions;
	@:overload(function(tab:String, value:Bool):String { })
	@:overload(function(tab:Float, value:String):String { })
	@:overload(function(tab:Float, value:Bool):String { })
	function badge(tab:String, value:String):String;
	function currentItem():JQuery;
	function destroy():Void;
	@:overload(function(url:Float):Void { })
	function switchTo(url:String):Void;
	function switchByFullUrl(url:String):Void;
	function clear():Void;
}
typedef TabStripOptions = {
	@:optional
	var name : String;
	@:optional
	var selectedIndex : Float;
	@:optional
	function select(e:TabStripSelectEvent):Void;
};
typedef TabStripEvent = {
	var sender : TabStrip;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef TabStripSelectEvent = {
	>TabStripEvent,
	@:optional
	var item : JQuery;
};
extern class View extends kendo.mobile.ui.Widget {
	static var fn : View;
	static function extend(proto:Dynamic):View;
	var element : JQuery;
	var wrapper : JQuery;
	function new(element:Element, ?options:ViewOptions):Void;
	var options : ViewOptions;
	function contentElement():Void;
	function destroy():Void;
	function enable(enable:Bool):Void;
}
typedef ViewOptions = {
	@:optional
	var name : String;
	@:optional
	var model : String;
	@:optional
	var reload : Bool;
	@:optional
	var scroller : Dynamic;
	@:optional
	var stretch : Bool;
	@:optional
	var title : String;
	@:optional
	var useNativeScrolling : Bool;
	@:optional
	var zoom : Bool;
	@:optional
	function afterShow(e:ViewAfterShowEvent):Void;
	@:optional
	function beforeHide(e:ViewBeforeHideEvent):Void;
	@:optional
	function beforeShow(e:ViewBeforeShowEvent):Void;
	@:optional
	function hide(e:ViewHideEvent):Void;
	@:optional
	function init(e:ViewInitEvent):Void;
	@:optional
	function show(e:ViewShowEvent):Void;
	@:optional
	function transitionStart(e:ViewTransitionStartEvent):Void;
	@:optional
	function transitionEnd(e:ViewTransitionEndEvent):Void;
};
typedef ViewEvent = {
	var sender : View;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef ViewAfterShowEvent = {
	>ViewEvent,
	@:optional
	var view : kendo.mobile.ui.View;
};
typedef ViewBeforeHideEvent = {
	>ViewEvent,
	@:optional
	var view : kendo.mobile.ui.View;
};
typedef ViewBeforeShowEvent = {
	>ViewEvent,
	@:optional
	var view : kendo.mobile.ui.View;
};
typedef ViewHideEvent = {
	>ViewEvent,
	@:optional
	var view : kendo.mobile.ui.View;
};
typedef ViewInitEvent = {
	>ViewEvent,
	@:optional
	var view : kendo.mobile.ui.View;
};
typedef ViewShowEvent = {
	>ViewEvent,
	@:optional
	var view : kendo.mobile.ui.View;
};
typedef ViewTransitionStartEvent = {
	>ViewEvent,
	@:optional
	var type : String;
};
typedef ViewTransitionEndEvent = {
	>ViewEvent,
	@:optional
	var type : String;
};
