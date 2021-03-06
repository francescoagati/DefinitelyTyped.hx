@:enum abstract AppBarIcon(Int) {
	var previous = 0;
	var next = 1;
	var play = 2;
	var pause = 3;
	var edit = 4;
	var save = 5;
	var clear = 6;
	var delete = 7;
	var remove = 8;
	var add = 9;
	var cancel = 10;
	var accept = 11;
	var more = 12;
	var redo = 13;
	var undo = 14;
	var home = 15;
	var up = 16;
	var forward = 17;
	var right = 18;
	var back = 19;
	var left = 20;
	var favorite = 21;
	var camera = 22;
	var settings = 23;
	var video = 24;
	var sync = 25;
	var download = 26;
	var mail = 27;
	var find = 28;
	var help = 29;
	var upload = 30;
	var emoji = 31;
	var twopage = 32;
	var leavechat = 33;
	var mailforward = 34;
	var clock = 35;
	var send = 36;
	var crop = 37;
	var rotatecamera = 38;
	var people = 39;
	var closepane = 40;
	var openpane = 41;
	var world = 42;
	var flag = 43;
	var previewlink = 44;
	var globe = 45;
	var trim = 46;
	var attachcamera = 47;
	var zoomin = 48;
	var bookmarks = 49;
	var document = 50;
	var protecteddocument = 51;
	var page = 52;
	var bullets = 53;
	var comment = 54;
	var mail2 = 55;
	var contactinfo = 56;
	var hangup = 57;
	var viewall = 58;
	var mappin = 59;
	var phone = 60;
	var videochat = 61;
	var switch = 62;
	var contact = 63;
	var rename = 64;
	var pin = 65;
	var musicinfo = 66;
	var go = 67;
	var keyboard = 68;
	var dockleft = 69;
	var dockright = 70;
	var dockbottom = 71;
	var remote = 72;
	var refresh = 73;
	var rotate = 74;
	var shuffle = 75;
	var list = 76;
	var shop = 77;
	var selectall = 78;
	var orientation = 79;
	var import = 80;
	var importall = 81;
	var browsephotos = 82;
	var webcam = 83;
	var pictures = 84;
	var savelocal = 85;
	var caption = 86;
	var stop = 87;
	var showresults = 88;
	var volume = 89;
	var repair = 90;
	var message = 91;
	var page2 = 92;
	var calendarday = 93;
	var calendarweek = 94;
	var calendar = 95;
	var characters = 96;
	var mailreplyall = 97;
	var read = 98;
	var link = 99;
	var accounts = 100;
	var showbcc = 101;
	var hidebcc = 102;
	var cut = 103;
	var attach = 104;
	var paste = 105;
	var filter = 106;
	var copy = 107;
	var emoji2 = 108;
	var important = 109;
	var mailreply = 110;
	var slideshow = 111;
	var sort = 112;
	var manage = 113;
	var allapps = 114;
	var disconnectdrive = 115;
	var mapdrive = 116;
	var newwindow = 117;
	var openwith = 118;
	var contactpresence = 119;
	var priority = 120;
	var uploadskydrive = 121;
	var gototoday = 122;
	var font = 123;
	var fontcolor = 124;
	var contact2 = 125;
	var folder = 126;
	var audio = 127;
	var placeholder = 128;
	var view = 129;
	var setlockscreen = 130;
	var settile = 131;
	var cc = 132;
	var stopslideshow = 133;
	var permissions = 134;
	var highlight = 135;
	var disableupdates = 136;
	var unfavorite = 137;
	var unpin = 138;
	var openlocal = 139;
	var mute = 140;
	var italic = 141;
	var underline = 142;
	var bold = 143;
	var movetofolder = 144;
	var likedislike = 145;
	var dislike = 146;
	var like = 147;
	var alignright = 148;
	var aligncenter = 149;
	var alignleft = 150;
	var zoom = 151;
	var zoomout = 152;
	var openfile = 153;
	var otheruser = 154;
	var admin = 155;
	var street = 156;
	var map = 157;
	var clearselection = 158;
	var fontdecrease = 159;
	var fontincrease = 160;
	var fontsize = 161;
	var cellphone = 162;
	var reshare = 163;
	var tag = 164;
	var repeatone = 165;
	var repeatall = 166;
	var outlinestar = 167;
	var solidstar = 168;
	var calculator = 169;
	var directions = 170;
	var target = 171;
	var library = 172;
	var phonebook = 173;
	var memo = 174;
	var microphone = 175;
	var postupdate = 176;
	var backtowindow = 177;
	var fullscreen = 178;
	var newfolder = 179;
	var calendarreply = 180;
	var unsyncfolder = 181;
	var reporthacked = 182;
	var syncfolder = 183;
	var blockcontact = 184;
	var switchapps = 185;
	var addfriend = 186;
	var touchpointer = 187;
	var gotostart = 188;
	var zerobars = 189;
	var onebar = 190;
	var twobars = 191;
	var threebars = 192;
	var fourbars = 193;
	var scan = 194;
	var preview = 195;
}
@:enum abstract CountResult(Int) {
	var unknown = 0;
}
@:enum abstract CountError(Int) {
	var noResponse = 0;
}
@:enum abstract DataSourceStatus(Int) {
	var ready = 0;
	var waiting = 1;
	var failure = 2;
}
@:enum abstract EditError(Int) {
	var noResponse = 0;
	var notPermitted = 1;
	var noLongerMeaningful = 2;
}
@:enum abstract FetchError(Int) {
	var noResponse = 0;
	var doesNotExist = 1;
}
@:enum abstract GroupHeaderTapBehavior(Int) {
	var invoke = 0;
	var none = 1;
}
@:enum abstract HeaderPosition(Int) {
	var left = 0;
	var top = 1;
}
@:enum abstract ListViewAnimationType(Int) {
	var entrance = 0;
	var contentTransition = 1;
}
@:enum abstract ObjectType(Int) {
	var groupHeader = 0;
	var item = 1;
}
@:enum abstract Orientation(Int) {
	var horizontal = 0;
	var vertical = 1;
}
@:enum abstract PageNavigationAnimation(Int) {
	var turnstile = 0;
	var slide = 1;
	var enterPage = 2;
	var continuum = 3;
}
@:enum abstract SelectionMode(Int) {
	var none = 0;
	var multi = 1;
}
@:enum abstract TapBehavior(Int) {
	var directSelect = 0;
	var toggleSelect = 1;
	var invokeOnly = 2;
	var none = 3;
}
typedef IFetchResult<T> = {
	var absoluteIndex : Float;
	var atEnd : Bool;
	var atStart : Bool;
	var items : Array<T>;
	var offset : Float;
	var totalCount : Float;
};
typedef IItem<T> = {
	var data : T;
	var groupKey : String;
	var handle : String;
	var index : Float;
	var key : String;
};
typedef IItemPromise<T> = {
	>IPromise<T>,
	function release():Void;
	function retain():IItemPromise<T>;
	var handle : String;
	var index : Float;
};
typedef ILayout = {
	function calculateFirstVisible(beginScrollPosition:Float, wholeItem:Bool):Promise<Dynamic>;
	function calculateLastVisible(endScrollPosition:Float, wholeItem:Bool):Promise<Dynamic>;
	function endLayout():Dynamic;
	function getItemPosition(itemIndex:Float):Promise<Dynamic>;
	function getKeyboardNavigatedItem(itemIndex:Float, element:HTMLElement, keyPressed:WinJS.Utilities.Key):Promise<Float>;
	function getScrollBarRange():Promise<Dynamic>;
	function hitTest(x:Float, y:Float):Void;
	function itemsAdded(elements:Array<HTMLElement>):Void;
	function itemsMoved():Void;
	function itemsRemoved(elements:Array<HTMLElement>):Void;
	function layoutHeader(groupIndex:Float, element:HTMLElement):Void;
	function layoutItem(itemIndex:Float, element:HTMLElement):Void;
	function prepareHeader(element:HTMLElement):Void;
	function prepareItem(element:HTMLElement):Void;
	function releaseItem(element:HTMLElement):Void;
	function reset():Void;
	function setSite(site:ILayoutSite):Void;
	function startLayout(beginScrollPosition:Float, endScrollPosition:Float, count:Float):Promise<Dynamic>;
	var horizontal : Bool;
};
typedef ILayout2 = {
	function dragLeave():Void;
	function dragOver(x:Float, y:Float, dragInfo:Float):Void;
	function executeAnimations():Void;
	function getAdjacent(currentItem:Dynamic, pressedKey:WinJS.Utilities.Key):Dynamic;
	function hitTest(x:Float, y:Float):Dynamic;
	function initialize(site:ILayoutSite2, groupsEnabled:Bool):Void;
	function itemsFromRange(firstPixel:Float, lastPixel:Float):Void;
	function layout(tree:Dynamic, changedRange:Dynamic, modifiedItems:Dynamic, modifiedGroups:Dynamic):Dynamic;
	function setupAnimations():Void;
	function uninitialize():Void;
	var orientation : Dynamic;
};
typedef ILayoutSite = {
	var animationsDisabled : Bool;
	var itemSurface : HTMLElement;
	var rtl : Bool;
	var scrollbarPos : Float;
	var surface : HTMLElement;
	var viewport : HTMLElement;
	var viewportSize : Dynamic;
};
typedef ILayoutSite2 = {
	var groupCount : Float;
	var itemCount : Promise<Float>;
	var realizedRange : Dynamic;
	var tree : Dynamic;
	var visibleRange : Dynamic;
};
typedef IListBinding<T> = {
	function current():IItemPromise<IItem<T>>;
	function first():IItemPromise<IItem<T>>;
	function fromDescription(description:String):IItemPromise<IItem<T>>;
	function fromIndex(index:Float):IItemPromise<IItem<T>>;
	function fromKey(key:String, ?hints:Dynamic):IItemPromise<IItem<T>>;
	function jumpToItem(item:IItem<T>):IItemPromise<IItem<T>>;
	function last():IItemPromise<IItem<T>>;
	function next():IItemPromise<IItem<T>>;
	function previous():IItemPromise<IItem<T>>;
	function release():Void;
	function releaseItem(item:IItem<T>):Void;
};
typedef IListDataAdapter<T> = {
	function change(key:String, newData:T, indexHint:Float):Promise<Void>;
	function getCount():Promise<Float>;
	function insertAfter(key:String, data:T, previousKey:String, previousIndexHint:Float):Promise<IItem<T>>;
	function insertAtEnd(key:String, data:T):Promise<IItem<T>>;
	function insertAtStart(key:String, data:T):Promise<IItem<T>>;
	function insertBefore(key:String, data:T, nextKey:String, nextIndexHint:Float):Promise<IItem<T>>;
	function itemsFromDescription(description:String, countBefore:Float, countAfter:Float):Promise<IFetchResult<T>>;
	function itemsFromEnd(count:Float):Promise<IFetchResult<T>>;
	function itemsFromIndex(index:Float, countBefore:Float, countAfter:Float):Promise<IFetchResult<T>>;
	function itemsFromKey(key:String, countBefore:Float, countAfter:Float):Promise<IFetchResult<T>>;
	function itemsFromStart(count:Float):Promise<IFetchResult<T>>;
	function itemSignature(item:IItem<T>):String;
	function moveAfter(key:String, previousKey:Dynamic, indexHint:String, previousIndexHint:Float):Promise<IItem<T>>;
	function moveBefore(key:String, nextKey:Dynamic, indexHint:String, nextIndexHint:Float):Promise<IItem<T>>;
	function moveToEnd(key:String, indexHint:Float):Promise<IItem<T>>;
	function moveToStart(key:String, indexHint:Float):Promise<IItem<T>>;
	function remove(key:String, data:T, indexHint:Float):Promise<Void>;
	function setNotificationHandler(notificationHandler:IListDataNotificationHandler<T>):Void;
	var compareByIdentity : Bool;
};
typedef IListDataNotificationHandler<T> = {
	function beginNotifications():Void;
	function changed(item:IItem<T>):Void;
	function endNotifications():Void;
	function inserted(newItem:IItem<T>, previousKey:String, nextKey:String, ?index:Float):Void;
	function invalidateAll():Promise<Dynamic>;
	function moved(item:IItem<T>, previousKey:String, nextKey:String, ?oldIndex:Float, ?newIndex:Float):Void;
	function reload():Void;
	function removed(key:String, ?index:Float):Void;
};
typedef IListDataSource<T> = {
	function statuschanged(eventInfo:CustomEvent):Void;
	function beginEdits():Void;
	function change(key:String, newData:T):Promise<IItem<T>>;
	function createListBinding(?notificationHandler:IListNotificationHandler<T>):IListBinding<T>;
	function endEdits():Void;
	function getCount():Promise<Float>;
	function insertAfter(key:String, data:T, previousKey:String):Promise<IItem<T>>;
	function insertAtEnd(key:String, data:T):Promise<IItem<T>>;
	function insertAtStart(key:String, data:T):Promise<IItem<T>>;
	function insertBefore(key:String, data:T, nextKey:String):Promise<IItem<T>>;
	function invalidateAll():Promise<Dynamic>;
	function itemFromDescription(description:Dynamic):Promise<IItem<T>>;
	function itemFromIndex(index:Float):Promise<IItem<T>>;
	function itemFromKey(key:String, ?description:Dynamic):Promise<IItem<T>>;
	function moveAfter(key:String, previousKey:String):Promise<IItem<T>>;
	function moveBefore(key:String, nextKey:String):Promise<IItem<T>>;
	function moveToEnd(key:String):Promise<IItem<T>>;
	function moveToStart(key:String):Promise<IItem<T>>;
	function remove(key:String):Promise<IItem<T>>;
};
typedef IListNotificationHandler<T> = {
	function beginNotifications():Void;
	function changed(newItem:IItem<T>, oldItem:IItem<T>):Void;
	function countChanged(newCount:Float, oldCount:Float):Void;
	function endNotifications():Void;
	function indexChanged(handle:String, newIndex:Float, oldIndex:Float):Void;
	function inserted(itemPromise:IItemPromise<T>, previousHandle:String, nextHandle:String):Void;
	function itemAvailable(item:IItem<T>):Void;
	function moved(item:IItemPromise<T>, previousHandle:String, nextHandle:String):Void;
	function removed(handle:String, mirage:Bool):Void;
};
typedef IListViewItem = {
	@:optional
	var index : Float;
	@:optional
	var key : String;
	@:optional
	var hasFocus : Bool;
	@:optional
	var showFocus : Bool;
	@:optional
	var type : WinJS.UI.ObjectType;
};
typedef ISelection<T> = {
	function add(items:Dynamic):Promise<Dynamic>;
	function clear():Promise<Dynamic>;
	function count():Float;
	function getIndices():Array<Float>;
	function getItems():Promise<Array<IItem<T>>>;
	function getRanges():Array<ISelectionRange>;
	function isEverything():Bool;
	function remove(items:Dynamic):Promise<Dynamic>;
	function selectAll():Void;
	function set(items:Dynamic):Promise<Dynamic>;
};
typedef ISelectionRange = {
	var firstIndex : Float;
	var firstKey : Dynamic;
	var lastIndex : Float;
	var lastKey : Dynamic;
};
typedef IZoomableView<T> = {
	function beginZoom():Void;
	function configureForZoom(isZoomedOut:Bool, isCurrentView:Bool, triggerZoom:haxe.Constraints.Function, prefetchedPages:Float):Void;
	function endZoom(isCurrentView:Bool):Void;
	function getCurrentItem():Promise<{ var item : T; var position : Utilities.IPosition; }>;
	function getPanAxis():String;
	function handlePointer(pointerId:String):Void;
	function positionItem(item:T, position:Utilities.IPosition):Void;
	function setCurrentItem(x:Float, y:Float):Void;
};
extern class AppBar {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function onafterhide(eventInfo:Event):Void;
	function onaftershow(eventInfo:Event):Void;
	function onbeforehide(eventInfo:Event):Void;
	function onbeforeshow(eventInfo:Event):Void;
	function addEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function dispose():Void;
	function getCommandById(id:String):AppBarCommand;
	function hide():Void;
	function hideCommands(commands:Array<Dynamic>, ?immediate:Bool):Void;
	function removeEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function show():Void;
	function showCommands(commands:Array<Dynamic>, ?immediate:Bool):Void;
	function showOnlyCommands(commands:Array<Dynamic>, ?immediate:Bool):Void;
	var closedDisplayMode : String;
	var commands : Array<AppBarCommand>;
	var disabled : Bool;
	var element : HTMLElement;
	var hidden : Bool;
	var layout : String;
	var placement : String;
	var sticky : Bool;
}
extern class AppBarCommand {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function addEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispose():Void;
	function removeEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	var disabled : Bool;
	var element : HTMLElement;
	var extraClass : String;
	var firstElementFocus : HTMLElement;
	var hidden : Bool;
	var icon : String;
	var id : String;
	var label : String;
	var lastElementFocus : HTMLElement;
	var onclick : haxe.Constraints.Function;
	var section : String;
	var selected : Bool;
	var tooltip : String;
	var type : String;
}
extern class DOMEventMixin {
	function addEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function removeEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function setOptions(control:Dynamic, options:Dynamic):Void;
}
extern class FlipView<T> {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function ondatasourcecountchanged(eventInfo:Event):Void;
	function onpagecompleted(eventInfo:CustomEvent):Void;
	function onpageselected(eventInfo:CustomEvent):Void;
	function onpagevisibilitychanged(eventInfo:CustomEvent):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function count():Promise<Float>;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function dispose():Void;
	function forceLayout():Void;
	function next():Bool;
	function previous():Bool;
	function removeEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function setCustomAnimations(animations:Dynamic):Void;
	var currentPage : Float;
	var element : HTMLElement;
	var itemDataSource : IListDataSource<T>;
	var itemSpacing : Float;
	var itemTemplate : Dynamic;
	var orientation : String;
}
extern class GridLayout {
	function new(?options:Dynamic):Void;
	function calculateFirstVisible(beginScrollPosition:Float, wholeItem:Bool):Void;
	function calculateLastVisible(endScrollPosition:Float, wholeItem:Bool):Void;
	function dragLeave():Void;
	function dragOver():Void;
	function endLayout():Void;
	function executeAnimations():Void;
	function getAdjacent(currentItem:Dynamic, pressedKey:WinJS.Utilities.Key):Dynamic;
	function getItemPosition(itemIndex:Float):Void;
	function getKeyboardNavigatedItem(itemIndex:Float, element:Dynamic, keyPressed:Dynamic):Void;
	function getScrollbarRange(beginScrollPosition:Float, endScrollPosition:Float):Void;
	function hitTest(x:Float, y:Float):Void;
	function init():Void;
	function initialize(site:ILayoutSite2, groupsEnabled:Bool):Void;
	function itemsAdded(elements:Dynamic):Void;
	function itemsFromRange(firstPixel:Float, lastPixel:Float):Void;
	function itemsMoved():Void;
	function itemsRemoved(elements:Dynamic):Void;
	function layout(tree:Dynamic, changedRange:Dynamic, modifiedItems:Dynamic, modifiedGroups:Dynamic):Void;
	function layoutHeader(groupIndex:Float, element:Dynamic):Void;
	function layoutItem(itemIndex:Float, element:Dynamic):Void;
	function prepareHeader(element:HTMLElement):Void;
	function prepareItem(itemIndex:Float, element:Dynamic):Void;
	function releaseItem(item:Dynamic, newItem:Dynamic):Void;
	function reset():Void;
	function setSite(layoutSite:Dynamic):Void;
	function setupAnimations():Void;
	function startLayout(beginScrollPosition:Float, endScrollPositionScrollPosition:Float):Void;
	function uninitialize():Void;
	function updateBackdrop(count:Float):Void;
	var backdropColor : String;
	var disableBackdrop : Bool;
	var groupHeaderPosition : WinJS.UI.HeaderPosition;
	var groupInfo : haxe.Constraints.Function;
	var horizontal : Bool;
	var itemInfo : haxe.Constraints.Function;
	var maximumRowsOrColumns : Float;
	var maxRows : Float;
	var numberOfItemsPerItemsBlock : Dynamic;
	var orientation : WinJS.UI.Orientation;
}
extern class HtmlControl {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
}
extern class ItemContainer {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function oninvoked(eventInfo:CustomEvent):Void;
	function onselectionchanged(eventInfo:CustomEvent):Void;
	function onselectionchanging(eventInfo:CustomEvent):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function dispose():Void;
	function forceLayout():Void;
	function removeEventListener(eventName:String, eventCallback:haxe.Constraints.Function, ?useCapture:Bool):Void;
	var draggable : Bool;
	var element : HTMLElement;
	var selected : Bool;
	var selectionDisabled : Bool;
	var swipeOrientation : Orientation;
	var tapBehavior : TapBehavior;
}
extern class Layout {

}
extern class ListLayout {
	function new(?options:Dynamic):Void;
	function calculateFirstVisible(beginScrollPosition:Float, wholeItem:Bool):Void;
	function calculateLastVisible(endScrollPosition:Float, wholeItem:Bool):Void;
	function dragLeave():Void;
	function dragOver():Void;
	function endLayout():Void;
	function executeAnimations():Void;
	function getAdjacent(currentItem:Dynamic, pressedKey:WinJS.Utilities.Key):Dynamic;
	function getItemPosition(itemIndex:Float):Void;
	function getKeyboardNavigatedItem(itemIndex:Float, element:HTMLElement, keyPressed:Dynamic):Void;
	function getScrollbarRange(beginScrollPosition:Float, endScrollPosition:Float):Void;
	function hitTest(x:Float, y:Float):Void;
	function init():Void;
	function initialize():Void;
	function itemsAdded(elements:Dynamic):Void;
	function itemsFromRange(firstPixel:Float, lastPixel:Float):Void;
	function itemsMoved():Void;
	function itemsRemoved(elements:Dynamic):Void;
	function layout(tree:Dynamic, changedRange:Dynamic, modifiedItems:Dynamic, modifiedGroups:Dynamic):Void;
	function layoutHeader(groupIndex:Float, element:Dynamic):Void;
	function layoutItem(itemIndex:Float, element:Dynamic):Void;
	function prepareHeader(element:HTMLElement):Void;
	function prepareItem(itemIndex:Float, element:Dynamic):Void;
	function releaseItem(item:Dynamic, newItem:Dynamic):Void;
	function reset():Void;
	function setSite(layoutSite:Dynamic):Void;
	function setupAnimations():Void;
	function startLayout(beginScrollPosition:Float, endScrollPositionScrollPosition:Float):Void;
	function uninitialize():Void;
	function updateBackdrop(count:Float):Void;
	var backdropColor : String;
	var disableBackdrop : Bool;
	var groupHeaderPosition : WinJS.UI.HeaderPosition;
	var groupInfo : haxe.Constraints.Function;
	var horizontal : Bool;
	var itemInfo : haxe.Constraints.Function;
	var numberOfItemsPerItemsBlock : Dynamic;
	var orientation : WinJS.UI.Orientation;
}
extern class ListView<T> {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function oncontentanimating(eventInfo:CustomEvent):Void;
	function ongroupheaderinvoked(eventInfo:CustomEvent):Void;
	function oniteminvoked(eventInfo:CustomEvent):Void;
	function onkeyboardnavigating(eventInfo:CustomEvent):Void;
	function onloadingstatechanged(eventInfo:CustomEvent):Void;
	function onselectionchanged(eventInfo:CustomEvent):Void;
	function onselectionchanging(eventInfo:CustomEvent):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function dispose():Void;
	function elementFromIndex(itemIndex:Float):HTMLElement;
	function ensureVisible(itemIndex:Float):Void;
	function forceLayout():Void;
	function indexOfElement(element:HTMLElement):Float;
	function loadMorePages():Void;
	function recalculateItemPosition():Void;
	function removeEventListener(eventName:String, eventCallback:haxe.Constraints.Function, ?useCapture:Bool):Void;
	static function triggerDispose():Void;
	var automaticallyLoadPages : Bool;
	var currentItem : IListViewItem;
	var element : HTMLElement;
	var groupDataSource : IListDataSource<T>;
	var groupHeaderTapBehavior : GroupHeaderTapBehavior;
	var groupHeaderTemplate : Dynamic;
	var indexOfFirstVisible : Float;
	var indexOfLastVisible : Float;
	var itemDataSource : IListDataSource<T>;
	var itemsReorderable : Bool;
	var itemTemplate : Dynamic;
	var layout : ILayout2;
	var loadingBehavior : String;
	var loadingState : String;
	var maxDeferredItemCleanup : Float;
	var pagesToLoad : Float;
	var pagesToLoadThreshold : Float;
	var resetGroupHeader : Dynamic -> HTMLElement -> Void;
	var resetItem : T -> HTMLElement -> Void;
	var scrollPosition : Float;
	var selection : ISelection<T>;
	var selectionMode : SelectionMode;
	var tapBehavior : TapBehavior;
	var zoomableView : IZoomableView<ListView<T>>;
}
extern class Pivot {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function onitemanimationend(eventInfo:Event):Void;
	function onitemanimationstart(eventInfo:Event):Void;
	function onselectionchanged(eventInfo:Event):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function dispose():Void;
	function removeEventListener(eventName:String, eventCallback:haxe.Constraints.Function, ?useCapture:Bool):Void;
	var element : HTMLElement;
	var items : Binding.List<PivotItem>;
	var locked : Bool;
	var selectedIndex : Float;
	var selectedItem : PivotItem;
	var title : String;
}
extern class PivotItem {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function dispose():Void;
	var contentElement : HTMLElement;
	var element : HTMLElement;
	var header : String;
}
extern class Repeater {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function onitemchanged(eventInfo:CustomEvent):Void;
	function onitemchanging(eventInfo:CustomEvent):Void;
	function oniteminserted(eventInfo:CustomEvent):Void;
	function oniteminserting(eventInfo:CustomEvent):Void;
	function onitemmoved(eventInfo:CustomEvent):Void;
	function onitemmoving(eventInfo:CustomEvent):Void;
	function onitemremoved(eventInfo:CustomEvent):Void;
	function onitemremoving(eventInfo:CustomEvent):Void;
	function onitemsloaded(eventInfo:CustomEvent):Void;
	function onitemsreloaded(eventInfo:CustomEvent):Void;
	function onitemsreloading(eventInfo:CustomEvent):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function dispose():Void;
	function elementFromIndex(index:Float):HTMLElement;
	function removeEventListener(eventName:String, eventCallback:haxe.Constraints.Function, ?useCapture:Bool):Void;
	var data : WinJS.Binding.List<Dynamic>;
	var element : HTMLElement;
	var length : Float;
	var template : WinJS.Binding.Template;
}
extern class SemanticZoom {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function onzoomchanged(eventInfo:CustomEvent):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function dispose():Void;
	function forceLayout():Void;
	function removeEventListener(eventName:String, eventCallback:haxe.Constraints.Function, ?useCapture:Bool):Void;
	var element : HTMLElement;
	var isDeclarativeControlContainer : Bool;
	var locked : Bool;
	var zoomedOut : Bool;
	var zoomFactor : Float;
}
extern class StorageDataSource<T> {
	function new(query:Dynamic, ?options:Dynamic):Void;
	function loadThumbnail(item:IItem<T>, image:HTMLImageElement):Promise<Void>;
}
extern class TabContainer {
	function new(element:HTMLElement, ?options:Dynamic):Void;
	function dispose():Void;
	var childFocus : HTMLElement;
	var tabIndex : Float;
}
extern class ToggleSwitch {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function onchange(eventInfo:Event):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function dispose():Void;
	function handleEvent(event:Dynamic):Void;
	function raiseEvent(type:String, eventProperties:Dynamic):Bool;
	function removeEventListener(eventName:String, eventCallback:haxe.Constraints.Function, ?useCapture:Bool):Void;
	var checked : Bool;
	var disabled : Bool;
	var element : HTMLElement;
	var labelOff : String;
	var labelOn : String;
	var title : String;
}
extern class ViewBox {
	function new(?element:HTMLElement, ?options:Dynamic):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispose():Void;
	function forceLayout():Void;
	function removeEventListener(eventName:String, eventCallback:haxe.Constraints.Function, ?useCapture:Bool):Void;
	var element : HTMLElement;
}
typedef IListGroupDataSource<T> = {
	>IListDataSource<T>,
	var groups : IListDataSource<T>;
};
extern class VirtualizedDataSource<T> {
	function new(listDataAdapter:IListDataAdapter<T>, ?options:Dynamic):Void;
	function statuschanged(eventInfo:CustomEvent):Void;
	function addEventListener(eventName:String, eventHandler:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function removeEventListener(eventName:String, eventCallback:haxe.Constraints.Function, ?useCapture:Bool):Void;
}
extern class WinJS.UITopLevel {
	static function computeDataSourceGroups<T>(listDataSource:IListDataSource<T>, groupKey:haxe.Constraints.Function, groupData:haxe.Constraints.Function, ?options:Dynamic):IListGroupDataSource<T>;
	static function disableAnimations():Void;
	static function enableAnimations():Void;
	static function eventHandler(handler:Dynamic):Dynamic;
	static function executeAnimation(element:HTMLElement, animation:Dynamic):Promise<Dynamic>;
	static function executeTransition(element:HTMLElement, transition:Dynamic):Promise<Dynamic>;
	static function getItemsFromRanges<U>(dataSource:IListDataSource<U>, ranges:Array<ISelectionRange>):Promise<IItem<U>>;
	static function isAnimationEnabled():Bool;
	static function processAll(?rootElement:Element, ?skipRoot:Bool):Promise<Dynamic>;
	static function process(element:Element):Promise<Dynamic>;
	static function scopedSelect(selector:String, element:HTMLElement):HTMLElement;
	static function setControl(element:HTMLElement, control:Dynamic):Void;
	static function setOptions(control:Dynamic, ?options:Dynamic):Void;
}
