typedef JQueryMobileEvent = { };
typedef DialogOptions = {
	@:optional
	var closeBtn : String;
	@:optional
	var closeBtnText : String;
	@:optional
	var corners : Bool;
	@:optional
	var initSelector : String;
	@:optional
	var overlayTheme : String;
};
typedef DialogEvents = {
	@:optional
	var create : JQueryMobileEvent;
};
typedef PopupOptions = {
	@:optional
	var corners : Bool;
	@:optional
	var history : Bool;
	@:optional
	var initSelector : String;
	@:optional
	var overlayTheme : String;
	@:optional
	var positionTo : String;
	@:optional
	var shadow : Bool;
	@:optional
	var theme : String;
	@:optional
	var tolerance : String;
	@:optional
	var transition : String;
};
typedef PopupEvents = {
	@:optional
	var popupbeforeposition : JQueryMobileEvent;
	@:optional
	var popupafteropen : JQueryMobileEvent;
	@:optional
	var popupafterclose : JQueryMobileEvent;
};
typedef FixedToolbarOptions = {
	@:optional
	var visibleOnPageShow : Bool;
	@:optional
	var disablePageZoom : Bool;
	@:optional
	var transition : String;
	@:optional
	var fullscreen : Bool;
	@:optional
	var tapToggle : Bool;
	@:optional
	var tapToggleBlacklist : String;
	@:optional
	var hideDuringFocus : String;
	@:optional
	var updatePagePadding : Bool;
	@:optional
	var supportBlacklist : haxe.Constraints.Function;
	@:optional
	var initSelector : String;
};
typedef FixedToolbarEvents = {
	@:optional
	var create : JQueryMobileEvent;
};
typedef ButtonOptions = {
	@:optional
	var corners : Bool;
	@:optional
	var icon : String;
	@:optional
	var iconpos : String;
	@:optional
	var iconshadow : Bool;
	@:optional
	var inline : Bool;
	@:optional
	var mini : Bool;
	@:optional
	var shadow : Bool;
	@:optional
	var theme : String;
	@:optional
	var initSelector : String;
};
typedef ButtonEvents = {
	@:optional
	var create : JQueryMobileEvent;
};
typedef CollapsibleOptions = {
	@:optional
	var collapsed : Bool;
	@:optional
	var collapseCueText : String;
	@:optional
	var collapsedIcon : String;
	@:optional
	var contentTheme : String;
	@:optional
	var expandCueText : String;
	@:optional
	var expandedIcon : String;
	@:optional
	var heading : String;
	@:optional
	var iconpos : String;
	@:optional
	var initSelector : String;
	@:optional
	var inset : Bool;
	@:optional
	var mini : Bool;
	@:optional
	var theme : String;
};
typedef CollapsibleEvents = {
	@:optional
	var create : JQueryMobileEvent;
	@:optional
	var collapse : JQueryMobileEvent;
	@:optional
	var expand : JQueryMobileEvent;
};
typedef CollapsibleSetOptions = {
	@:optional
	var collapsedIcon : String;
	@:optional
	var expandedIcon : String;
	@:optional
	var iconpos : String;
	@:optional
	var initSelector : String;
	@:optional
	var inset : Bool;
	@:optional
	var mini : Bool;
	@:optional
	var theme : String;
};
typedef CollapsibleSetEvents = {
	@:optional
	var create : JQueryMobileEvent;
};
typedef TextInputOptions = {
	@:optional
	var clearBtn : Bool;
	@:optional
	var clearBtnText : String;
	@:optional
	var disabled : Bool;
	@:optional
	var initSelector : String;
	@:optional
	var mini : Bool;
	@:optional
	var preventFocusZoom : Bool;
	@:optional
	var theme : String;
};
typedef TextInputEvents = {
	@:optional
	var create : JQueryMobileEvent;
};
typedef SearchInputOptions = {
	@:optional
	var clearSearchButtonText : String;
	@:optional
	var disabled : Bool;
	@:optional
	var initSelector : String;
	@:optional
	var mini : Bool;
	@:optional
	var theme : String;
};
typedef SliderOptions = {
	@:optional
	var disabled : Bool;
	@:optional
	var highlight : Bool;
	@:optional
	var initSelector : String;
	@:optional
	var mini : Bool;
	@:optional
	var theme : String;
	@:optional
	var trackTheme : String;
};
typedef SliderEvents = {
	@:optional
	var create : JQueryMobileEvent;
	@:optional
	var slidestart : JQueryMobileEvent;
	@:optional
	var slidestop : JQueryMobileEvent;
};
typedef FlipswitchOptions = {
	@:optional
	var corners : Bool;
	@:optional
	var defaults : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var enhanced : Bool;
	@:optional
	var mini : Bool;
	@:optional
	var offText : String;
	@:optional
	var onText : String;
	@:optional
	var theme : String;
	@:optional
	var wrapperClass : String;
};
typedef CheckboxRadioOptions = {
	@:optional
	var mini : Bool;
	@:optional
	var theme : String;
};
typedef CheckboxRadioEvents = {
	@:optional
	var createp : JQueryMobileEvent;
};
typedef SelectMenuOptions = {
	@:optional
	var corners : Bool;
	@:optional
	var icon : String;
	@:optional
	var iconpos : String;
	@:optional
	var iconshadow : Bool;
	@:optional
	var initSelector : String;
	@:optional
	var inline : Bool;
	@:optional
	var mini : Bool;
	@:optional
	var nativeMenu : Bool;
	@:optional
	var overlayTheme : String;
	@:optional
	var preventFocusZoom : Bool;
	@:optional
	var shadow : Bool;
	@:optional
	var theme : String;
};
typedef SelectMenuEvents = {
	@:optional
	var create : JQueryMobileEvent;
};
typedef ListViewOptions = {
	@:optional
	var countTheme : String;
	@:optional
	var dividerTheme : String;
	@:optional
	var filter : Bool;
	@:optional
	var filterCallback : haxe.Constraints.Function;
	@:optional
	var filterPlaceholder : String;
	@:optional
	var filterTheme : String;
	@:optional
	var headerTheme : String;
	@:optional
	var initSelector : String;
	@:optional
	var inset : Bool;
	@:optional
	var splitIcon : String;
	@:optional
	var splitTheme : String;
	@:optional
	var theme : String;
};
typedef ListViewEvents = {
	@:optional
	var create : JQueryMobileEvent;
};
typedef FilterableOptions = {
	@:optional
	var children : Dynamic;
	@:optional
	var defaults : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var enhanced : Bool;
	@:optional
	var filterCallback : { };
	@:optional
	var filterPlaceholder : String;
	@:optional
	var filterReveal : Bool;
	@:optional
	var filterTheme : String;
	var input : Dynamic;
};
typedef NavbarOptions = {
	var iconpos : String;
};
typedef ControlgroupOptions = {
	@:optional
	var corners : Bool;
	@:optional
	var excludeInvisible : Bool;
	@:optional
	var mini : Bool;
	@:optional
	var shadow : Bool;
	@:optional
	var type : String;
};
typedef JQueryMobileOptions = {
	@:optional
	var activeBtnClass : String;
	@:optional
	var activePageClass : String;
	@:optional
	var ajaxEnabled : Bool;
	@:optional
	var allowCrossDomainPages : Bool;
	@:optional
	var autoInitializePage : Bool;
	var buttonMarkup : Dynamic;
	@:optional
	var defaultDialogTransition : String;
	@:optional
	var defaultPageTransition : String;
	@:optional
	var getMaxScrollForTransition : Float;
	@:optional
	var gradeA : haxe.Constraints.Function;
	@:optional
	var hashListeningEnabled : Bool;
	@:optional
	var ignoreContentEnabled : Bool;
	@:optional
	var linkBindingEnabled : Bool;
	@:optional
	var loadingMessageTextVisible : Bool;
	@:optional
	var loadingMessageTheme : String;
	@:optional
	var maxTransitionWidth : Float;
	@:optional
	var minScrollBack : Float;
	@:optional
	var ns : Float;
	@:optional
	var pageLoadErrorMessage : String;
	@:optional
	var pageLoadErrorMessageTheme : String;
	@:optional
	var phonegapNavigationEnabled : Bool;
	@:optional
	var pushStateEnabled : Bool;
	@:optional
	var subPageUrlKey : String;
	@:optional
	var touchOverflowEnabled : Bool;
	var transitionFallbacks : Dynamic;
};
typedef JQueryMobileEvents = {
	var tap : Dynamic;
	var taphold : Dynamic;
	var swipe : Dynamic;
	var swipeleft : Dynamic;
	var swiperight : Dynamic;
	var vmouseover : Dynamic;
	var vmouseout : Dynamic;
	var vmousedown : Dynamic;
	var vmousemove : Dynamic;
	var vmouseup : Dynamic;
	var vclick : Dynamic;
	var vmousecancel : Dynamic;
	var orientationchange : Dynamic;
	var scrollstart : Dynamic;
	var scrollstop : Dynamic;
	var pagebeforeload : Dynamic;
	var pageload : Dynamic;
	var pageloadfailed : Dynamic;
	var pagebeforechange : Dynamic;
	var pagechange : Dynamic;
	var pagechangefailed : Dynamic;
	var pagebeforeshow : Dynamic;
	var pagebeforehide : Dynamic;
	var pageshow : Dynamic;
	var pagehide : Dynamic;
	var pagebeforecreate : Dynamic;
	var pagecreate : Dynamic;
	var pageinit : Dynamic;
	var pageremove : Dynamic;
	var updatelayout : Dynamic;
};
typedef ChangePageOptions = {
	@:optional
	var allowSamePageTransition : Bool;
	@:optional
	var changeHash : Bool;
	@:optional
	var data : Dynamic;
	@:optional
	var dataUrl : String;
	@:optional
	var pageContainer : JQuery;
	@:optional
	var reloadPage : Bool;
	@:optional
	var reverse : Bool;
	@:optional
	var role : String;
	@:optional
	var showLoadMsg : Bool;
	@:optional
	var transition : String;
	@:optional
	var type : String;
};
typedef LoadPageOptions = {
	@:optional
	var data : Dynamic;
	@:optional
	var loadMsgDelay : Float;
	@:optional
	var pageContainer : JQuery;
	@:optional
	var reloadPage : Bool;
	@:optional
	var role : String;
	@:optional
	var showLoadMsg : Bool;
	@:optional
	var type : String;
};
typedef LoaderOptions = {
	@:optional
	var theme : String;
	@:optional
	var textVisible : Bool;
	@:optional
	var html : String;
	@:optional
	var text : String;
	@:optional
	var textonly : Bool;
};
typedef JQueryMobilePath = {
	function get(url:String):String;
	function getDocumentBase(?asParsedObject:Bool):Dynamic;
	function getDocumentUrl(?asParsedObject:Bool):Dynamic;
	function getLocation():String;
	function isAbsoluteUrl(url:String):Bool;
	function isRelativeUrl(url:String):Bool;
	function makeUrlAbsolute(relUrl:String, absUrl:String):String;
	function parseLocation():ParsedPath;
	function parseUrl(url:String):ParsedPath;
};
typedef ParsedPath = {
	var authority : String;
	var directory : String;
	var domain : String;
	var doubleSlash : String;
	var filename : String;
	var hash : String;
	var host : String;
	var hostname : String;
	var href : String;
	var hrefNoHash : String;
	var hrefNoSearch : String;
	var password : String;
	var pathname : String;
	var port : String;
	var protocol : String;
	var search : String;
	var username : String;
};
typedef JQueryMobile = {
	>JQueryMobileOptions,
	var version : String;
	function changePage(to:Dynamic, ?options:ChangePageOptions):Void;
	function initializePage():Void;
	function loadPage(url:Dynamic, ?options:LoadPageOptions):Void;
	@:overload(function(command:String, ?options:LoaderOptions):JQuery { })
	function loading():JQuery;
	var pageContainer : Dynamic;
	var base : Dynamic;
	function silentScroll(yPos:Float):Void;
	var activePage : JQuery;
	var options : JQueryMobileOptions;
	var transitionFallbacks : Dynamic;
	var loader : Dynamic;
	var page : Dynamic;
	var touchOverflow : Dynamic;
	var showCategory : Dynamic;
	var path : JQueryMobilePath;
	var dialog : Dynamic;
	var popup : Dynamic;
	var fixedtoolbar : Dynamic;
	var button : Dynamic;
	var collapsible : Dynamic;
	var collapsibleset : Dynamic;
	var textinput : Dynamic;
	var slider : Dynamic;
	var flipswitch : Dynamic;
	var checkboxradio : Dynamic;
	var selectmenu : Dynamic;
	var listview : Dynamic;
	var filterable : Dynamic;
	var defaultHomeScroll : Float;
};
typedef JQuerySupport = {
	var touchOverflow : Dynamic;
};
typedef JQuery = {
	function enhanceWithin():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:DialogOptions):JQuery { })
	@:overload(function(events:DialogEvents):JQuery { })
	function dialog():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:PopupOptions):JQuery { })
	@:overload(function(command:String, options:PopupOptions):JQuery { })
	@:overload(function(events:PopupEvents):JQuery { })
	function popup():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:FixedToolbarOptions):JQuery { })
	@:overload(function(events:FixedToolbarEvents):JQuery { })
	function fixedtoolbar():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(?options:ButtonOptions):JQuery { })
	@:overload(function(events:ButtonEvents):JQuery { })
	function button():JQuery;
	function buttonMarkup(?options:ButtonOptions):JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:CollapsibleOptions):JQuery { })
	@:overload(function(events:CollapsibleEvents):JQuery { })
	function collapsible():JQuery;
	@:overload(function(command:String):JQuery { })
	function collapsibleSet():JQuery;
	@:overload(function(events:CollapsibleSetEvents):JQuery { })
	function collapsibleset(options:CollapsibleSetOptions):JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:TextInputOptions):JQuery { })
	@:overload(function(events:TextInputEvents):JQuery { })
	@:overload(function(options:SearchInputOptions):JQuery { })
	function textinput():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:SliderOptions):JQuery { })
	@:overload(function(events:SliderEvents):JQuery { })
	function slider():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:FlipswitchOptions):JQuery { })
	function flipswitch():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:CheckboxRadioOptions):JQuery { })
	@:overload(function(events:CheckboxRadioEvents):JQuery { })
	function checkboxradio():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(command:String, update:Bool):JQuery { })
	@:overload(function(options:CheckboxRadioOptions):JQuery { })
	@:overload(function(events:CheckboxRadioEvents):JQuery { })
	function selectmenu():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:ListViewOptions):JQuery { })
	@:overload(function(events:ListViewEvents):JQuery { })
	function listview():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:FilterableOptions):JQuery { })
	function filterable():JQuery;
	function navbar(?options:NavbarOptions):JQuery;
	@:overload(function(command:String):JQuery { })
	function table():JQuery;
	@:overload(function(command:String):JQuery { })
	@:overload(function(options:ControlgroupOptions):JQuery { })
	function controlgroup():JQuery;
};
typedef JQueryStatic = {
	var mobile : JQueryMobile;
};
