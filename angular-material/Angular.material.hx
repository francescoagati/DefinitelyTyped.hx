typedef MDBottomSheetOptions = {
	@:optional
	var templateUrl : String;
	@:optional
	var template : String;
	@:optional
	var scope : angular.IScope;
	@:optional
	var preserveScope : Bool;
	@:optional
	var controller : haxe.extern.EitherType<String, haxe.Constraints.Function>;
	@:optional
	var locals : { };
	@:optional
	var targetEvent : MouseEvent;
	@:optional
	var resolve : { };
	@:optional
	var controllerAs : String;
	@:optional
	var parent : haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>;
	@:optional
	var disableParentScroll : Bool;
};
typedef MDBottomSheetService = {
	function show(options:MDBottomSheetOptions):angular.IPromise<Dynamic>;
	function hide(?response:Dynamic):Void;
	function cancel(?response:Dynamic):Void;
};
typedef MDPresetDialog<T> = {
	function title(title:String):T;
	function content(content:String):T;
	function ok(ok:String):T;
	function theme(theme:String):T;
};
typedef MDAlertDialog = {
	>MDPresetDialog<MDAlertDialog>,
};
typedef MDConfirmDialog = {
	>MDPresetDialog<MDConfirmDialog>,
	function cancel(cancel:String):MDConfirmDialog;
};
typedef MDDialogOptions = {
	@:optional
	var templateUrl : String;
	@:optional
	var template : String;
	@:optional
	var targetEvent : MouseEvent;
	@:optional
	var scope : angular.IScope;
	@:optional
	var preserveScope : Bool;
	@:optional
	var disableParentScroll : Bool;
	@:optional
	var hasBackdrop : Bool;
	@:optional
	var clickOutsideToClose : Bool;
	@:optional
	var escapeToClose : Bool;
	@:optional
	var focusOnOpen : Bool;
	@:optional
	var controller : haxe.extern.EitherType<String, haxe.Constraints.Function>;
	@:optional
	var locals : { };
	@:optional
	var bindToController : Bool;
	@:optional
	var resolve : { };
	@:optional
	var controllerAs : String;
	@:optional
	var parent : haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>;
	@:optional
	var onComplete : haxe.Constraints.Function;
};
typedef MDDialogService = {
	function show(dialog:haxe.extern.EitherType<MDDialogOptions, haxe.extern.EitherType<MDAlertDialog, MDConfirmDialog>>):angular.IPromise<Dynamic>;
	function confirm():MDConfirmDialog;
	function alert():MDAlertDialog;
	function hide(?response:Dynamic):Void;
	function cancel(?response:Dynamic):Void;
};
typedef MDIcon = { };
typedef MDIconProvider = {
	function icon(id:String, url:String, ?iconSize:String):MDIconProvider;
	function iconSet(id:String, url:String, ?iconSize:String):MDIconProvider;
	function defaultIconSet(url:String, ?iconSize:String):MDIconProvider;
	function defaultIconSize(iconSize:String):MDIconProvider;
};
typedef MDMedia = { };
typedef MDSidenavObject = {
	function toggle():angular.IPromise<Void>;
	function open():angular.IPromise<Void>;
	function close():angular.IPromise<Void>;
	function isOpen():Bool;
	function isLockedOpen():Bool;
};
typedef MDSidenavService = { };
typedef MDToastPreset<T> = {
	function content(content:String):T;
	function action(action:String):T;
	function highlightAction(highlightAction:Bool):T;
	function capsule(capsule:Bool):T;
	function theme(theme:String):T;
	function hideDelay(delay:Float):T;
	function position(position:String):T;
};
typedef MDSimpleToastPreset = {
	>MDToastPreset<MDSimpleToastPreset>,
};
typedef MDToastOptions = {
	@:optional
	var templateUrl : String;
	@:optional
	var template : String;
	@:optional
	var scope : angular.IScope;
	@:optional
	var preserveScope : Bool;
	@:optional
	var hideDelay : Float;
	@:optional
	var position : String;
	@:optional
	var controller : haxe.extern.EitherType<String, haxe.Constraints.Function>;
	@:optional
	var locals : { };
	@:optional
	var bindToController : Bool;
	@:optional
	var resolve : { };
	@:optional
	var controllerAs : String;
	@:optional
	var parent : haxe.extern.EitherType<String, haxe.extern.EitherType<Element, JQuery>>;
};
typedef MDToastService = {
	function show(optionsOrPreset:haxe.extern.EitherType<MDToastOptions, MDToastPreset<Dynamic>>):angular.IPromise<Dynamic>;
	function showSimple():angular.IPromise<Dynamic>;
	function simple():MDSimpleToastPreset;
	function build():MDToastPreset<Dynamic>;
	function updateContent():Void;
	function hide(?response:Dynamic):Void;
	function cancel(?response:Dynamic):Void;
};
typedef MDPalette = {
	@:optional
	var _0 : String;
	@:optional
	var _50 : String;
	@:optional
	var _100 : String;
	@:optional
	var _200 : String;
	@:optional
	var _300 : String;
	@:optional
	var _400 : String;
	@:optional
	var _500 : String;
	@:optional
	var _600 : String;
	@:optional
	var _700 : String;
	@:optional
	var _800 : String;
	@:optional
	var _900 : String;
	@:optional
	var A100 : String;
	@:optional
	var A200 : String;
	@:optional
	var A400 : String;
	@:optional
	var A700 : String;
	@:optional
	var contrastDefaultColor : String;
	@:optional
	var contrastDarkColors : String;
	@:optional
	var contrastStrongLightColors : String;
};
typedef MDThemeHues = {
	@:optional
	var default : String;
	@:optional
	var hue-1 : String;
	@:optional
	var hue-2 : String;
	@:optional
	var hue-3 : String;
};
typedef MDThemePalette = {
	var name : String;
	var hues : MDThemeHues;
};
typedef MDThemeColors = {
	var accent : MDThemePalette;
	var background : MDThemePalette;
	var primary : MDThemePalette;
	var warn : MDThemePalette;
};
typedef MDThemeGrayScalePalette = {
	var _1 : String;
	var _2 : String;
	var _3 : String;
	var _4 : String;
	var name : String;
};
typedef MDTheme = {
	var name : String;
	var isDark : Bool;
	var colors : MDThemeColors;
	var foregroundPalette : MDThemeGrayScalePalette;
	var foregroundShadow : String;
	function accentPalette(name:String, ?hues:MDThemeHues):MDTheme;
	function primaryPalette(name:String, ?hues:MDThemeHues):MDTheme;
	function warnPalette(name:String, ?hues:MDThemeHues):MDTheme;
	function backgroundPalette(name:String, ?hues:MDThemeHues):MDTheme;
	function dark(?isDark:Bool):MDTheme;
};
typedef MDThemingProvider = {
	function theme(name:String, ?inheritFrom:String):MDTheme;
	function definePalette(name:String, palette:MDPalette):MDThemingProvider;
	function extendPalette(name:String, palette:MDPalette):MDPalette;
	function setDefaultTheme(theme:String):Void;
	function alwaysWatchTheme(alwaysWatch:Bool):Void;
};
