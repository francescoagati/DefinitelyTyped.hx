extern class Control extends Component {

}
extern class DomEvent {
	static function addHandler(element:HTMLElement, eventName:String, handler:Event -> Void):Dynamic;
	static function removeHandler(element:HTMLElement, eventName:String, handler:Event -> Void):Dynamic;
}
extern class DomElement {
	static function getBounds(element:HTMLElement):{ var x : Float; var y : Float; var width : Float; var height : Float; };
}
typedef DefaultFormsInformationRequestor = {
	function onDefaultFormsInformationRetrieveSuccess(defaultForms:SP.Application.UI.DefaultFormsInformation):Void;
	function onDefaultFormsInformationRetrieveFailure():Void;
};
extern class FormsInfo {
	var ContentTypeName : String;
	var NewFormUrl : String;
	var DisplayFormUrl : String;
	var EditFormUrl : String;
	function new():Void;
}
extern class DefaultFormsInformation {
	var DefaultForms : SP.Application.UI.FormsInfo;
	var OtherForms : Dynamic;
	function new():Void;
}
extern class DefaultFormsMenuBuilder {
	static function getDefaultFormsInformation(requestor:SP.Application.UI.DefaultFormsInformationRequestor, listId:SP.Guid):Void;
}
extern class ViewSelectorMenuOptions {
	var showRepairView : Bool;
	var showMergeView : Bool;
	var showEditView : Bool;
	var showCreateView : Bool;
	var showApproverView : Bool;
	var listId : String;
	var viewId : String;
	var viewParameters : String;
	function new():Void;
}
typedef ViewInformationRequestor = {
	function onViewInformationReturned(viewGroups:SP.Application.UI.ViewSelectorGroups):Void;
};
extern class ViewSelectorGroups {
	var ModeratedViews : Dynamic;
	var PublicViews : Dynamic;
	var PersonalViews : Dynamic;
	var OtherViews : Dynamic;
	var DefaultView : SP.Application.UI.ViewSelectorMenuItem;
	var ViewCreation : Dynamic;
	function new():Void;
}
extern class ViewSelectorMenuItem {
	var Text : String;
	var ActionScriptText : String;
	var NavigateUrl : String;
	var ImageSourceUrl : String;
	var Description : String;
	var Id : String;
	var Sequence : Float;
	var ItemType : String;
	var GroupId : Float;
	function new():Void;
}
extern class ViewSelectorSubMenu {
	var Text : String;
	var ImageSourceUrl : String;
	var SubMenuItems : Dynamic;
	function new():Void;
}
extern class ViewSelectorMenuBuilder {
	static function get_filterMenuItemsCallback():Dynamic -> Dynamic;
	static function set_filterMenuItemsCallback(value:Dynamic -> Dynamic):Void;
	static function showMenu(elem:HTMLElement, options:SP.Application.UI.ViewSelectorMenuOptions):Void;
	static function getViewInformation(requestor:SP.Application.UI.ViewInformationRequestor, options:SP.Application.UI.ViewSelectorMenuOptions):Void;
}
extern class MoreColorsPicker extends Sys.UI.Control {
	function new(e:HTMLElement):Void;
	function initialize():Void;
	function dispose():Void;
	function get_colorValue():String;
	function set_colorValue(value:String):Void;
}
extern class MoreColorsPage extends Sys.UI.Control {
	function new(e:HTMLElement):Void;
	function initialize():Void;
	function dispose():Void;
	function get_moreColorsPicker():SP.Application.UI.MoreColorsPicker;
	function set_moreColorsPicker(value:SP.Application.UI.MoreColorsPicker):Void;
}
extern class ThemeWebPage extends Sys.UI.Control {
	function add_themeDisplayUpdated(value:Dynamic -> Sys.EventArgs -> Void):Void;
	function remove_themeDisplayUpdated(value:Dynamic -> Sys.EventArgs -> Void):Void;
	function new(e:HTMLElement):Void;
	function initialize():Void;
	function dispose():Void;
	function onThemeSelectionChanged(evt:Sys.UI.DomEvent):Void;
	function updateThemeDisplay():Void;
	function get_thmxThemes():Dynamic;
	function set_thmxThemes(value:Dynamic):Void;
}
extern class WikiPageNameInPlaceEditor {
	function new(ownerDoc:Dynamic, displayElemId:String, editElemId:String, editTextBoxId:String):Void;
	function editingPageCallback():Void;
	function savingPageCallback():Void;
}
extern class PopoutMenu {
	function new(launcherId:String, menuId:String, iconId:String, launcherOpenCssClass:String, textDirection:String, closeIconUrl:String, isClustered:Bool, closeIconOffsetLeft:Float, closeIconOffsetTop:Float, closeIconHeight:Float, closeIconWidth:Float):Void;
	function launchMenu():Void;
	function closeMenu():Void;
	static function createPopoutMenuInstanceAndLaunch(anchorId:String, menuId:String, iconId:String, anchorOpenCss:String, textDirection:String, closeIconUrl:String, isClustered:Bool, x:Float, y:Float, height:Float, width:Float):Void;
	static function closeActivePopoutMenuInstance():Void;
	function dispose():Void;
}
extern class AttractModeControl extends Sys.UI.Control {
	var defaultAttractModeIcon : String;
	var cssAttractMode : String;
	var cssAttractModeBackground : String;
	var cssAttractModeCell : String;
	var cssAttractModeWrapper : String;
	var cssAttractModeIcon : String;
	var cssAttractModeText : String;
	function get_imageElement():Dynamic;
	function get_textElement():HTMLElement;
	function new():Void;
}
