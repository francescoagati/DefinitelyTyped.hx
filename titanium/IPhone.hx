@:enum abstract ScrollIndicatorStyle(Int) {
	var BLACK = 0;
	var DEFAULT = 1;
	var WHITE = 2;
}
@:enum abstract SystemButtonStyle(Int) {
	var BAR = 0;
	var BORDERED = 1;
	var DONE = 2;
	var PLAIN = 3;
}
@:enum abstract ListViewStyle(Int) {
	var GROUPED = 0;
	var PLAIN = 1;
}
@:enum abstract StatusBar(Int) {
	var ANIMATION_STYLE_FADE = 0;
	var ANIMATION_STYLE_NONE = 1;
	var ANIMATION_STYLE_SLIDE = 2;
	var DEFAULT = 3;
	var GRAY = 4;
	var GREY = 5;
	var LIGHT_CONTENT = 6;
	var OPAQUE_BLACK = 7;
	var TRANSLUCENT_BLACK = 8;
}
@:enum abstract SystemButton(Int) {
	var ACTION = 0;
	var ACTIVITY = 1;
	var ADD = 2;
	var BOOKMARKS = 3;
	var CAMERA = 4;
	var CANCEL = 5;
	var COMPOSE = 6;
	var CONTACT_ADD = 7;
	var DISCLOSURE = 8;
	var DONE = 9;
	var EDIT = 10;
	var FAST_FORWARD = 11;
	var FIXED_SPACE = 12;
	var FLEXIBLE_SPACE = 13;
	var INFO_DARK = 14;
	var INFO_LIGHT = 15;
	var ORGANIZE = 16;
	var PAUSE = 17;
	var PLAY = 18;
	var REFRESH = 19;
	var REPLY = 20;
	var REWIND = 21;
	var SAVE = 22;
	var SPINNER = 23;
	var STOP = 24;
	var TRASH = 25;
}
@:enum abstract TableViewStyle(Int) {
	var GROUPED = 0;
	var PLAIN = 1;
}
@:enum abstract SystemIcon(Int) {
	var BOOKMARKS = 0;
	var CONTACTS = 1;
	var DOWNLOADS = 2;
	var FAVORITES = 3;
	var FEATURED = 4;
	var HISTORY = 5;
	var MORE = 6;
	var MOST_RECENT = 7;
	var MOST_VIEWED = 8;
	var RECENTS = 9;
	var SEARCH = 10;
	var TOP_RATED = 11;
}
@:enum abstract ActivityIndicatorStyle(Int) {
	var BIG = 0;
	var DARK = 1;
	var PLAIN = 2;
}
@:enum abstract ProgressBarStyle(Int) {
	var BAR = 0;
	var DEFAULT = 1;
	var PLAIN = 2;
}
@:enum abstract ListViewSeparatorStyle(Int) {
	var NONE = 0;
	var SINGLE_LINE = 1;
}
@:enum abstract RowAnimationStyle(Int) {
	var BOTTOM = 0;
	var FADE = 1;
	var LEFT = 2;
	var NONE = 3;
	var RIGHT = 4;
	var TOP = 5;
}
@:enum abstract AnimationStyle(Int) {
	var CURL_DOWN = 0;
	var CURL_UP = 1;
	var FLIP_FROM_LEFT = 2;
	var FLIP_FROM_RIGHT = 3;
	var NONE = 4;
}
typedef NavigationGroup = {
	>Ti.UI.View,
	var window : Ti.UI.Window;
	function close(window:Ti.UI.Window, options:Dictionary<Dynamic>):Void;
	function getWindow():Ti.UI.Window;
	function open(window:Ti.UI.Window, options:Dictionary<Dynamic>):Void;
};
@:enum abstract TableViewScrollPosition(Int) {
	var BOTTOM = 0;
	var MIDDLE = 1;
	var NONE = 2;
	var TOP = 3;
}
@:enum abstract AlertDialogStyle(Int) {
	var DEFAULT = 0;
	var LOGIN_AND_PASSWORD_INPUT = 1;
	var PLAIN_TEXT_INPUT = 2;
	var SECURE_TEXT_INPUT = 3;
}
@:enum abstract ListViewScrollPosition(Int) {
	var BOTTOM = 0;
	var MIDDLE = 1;
	var NONE = 2;
	var TOP = 3;
}
@:enum abstract TableViewCellSelectionStyle(Int) {
	var BLUE = 0;
	var GRAY = 1;
	var NONE = 2;
}
@:enum abstract ListViewCellSelectionStyle(Int) {
	var BLUE = 0;
	var GRAY = 1;
	var NONE = 2;
}
@:enum abstract TableViewSeparatorStyle(Int) {
	var NONE = 0;
	var SINGLE_LINE = 1;
}
extern class IPhoneTopLevel {
	static var MODAL_PRESENTATION_CURRENT_CONTEXT : Float;
	static var MODAL_PRESENTATION_FORMSHEET : Float;
	static var MODAL_PRESENTATION_FULLSCREEN : Float;
	static var MODAL_PRESENTATION_PAGESHEET : Float;
	static var MODAL_TRANSITION_STYLE_COVER_VERTICAL : Float;
	static var MODAL_TRANSITION_STYLE_CROSS_DISSOLVE : Float;
	static var MODAL_TRANSITION_STYLE_FLIP_HORIZONTAL : Float;
	static var MODAL_TRANSITION_STYLE_PARTIAL_CURL : Float;
	static var apiName : String;
	static var appBadge : Float;
	static var appSupportsShakeToEdit : Bool;
	static var bubbleParent : Bool;
	static var statusBarHidden : Bool;
	static var statusBarStyle : Float;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function createNavigationGroup(?parameters:Dictionary<Ti.UI.iPhone.NavigationGroup>):Ti.UI.iPhone.NavigationGroup;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getAppBadge():Float;
	static function getAppSupportsShakeToEdit():Bool;
	static function getBubbleParent():Bool;
	static function getStatusBarHidden():Bool;
	static function getStatusBarStyle():Float;
	static function hideStatusBar(?params:HideStatusBarParams):Void;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setAppBadge(appBadge:Float):Void;
	static function setAppSupportsShakeToEdit(appSupportsShakeToEdit:Bool):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
	static function showStatusBar(?params:ShowStatusBarParams):Void;
}
typedef TextArea = {
	>Ti.UI.View,
	var appearance : Float;
	var attributedString : Ti.UI.iOS.AttributedString;
	var autoLink : Float;
	var autocapitalization : Float;
	var autocorrect : Bool;
	var clearOnEdit : Bool;
	var color : String;
	var editable : Bool;
	var ellipsize : Bool;
	var enableReturnKey : Bool;
	var font : Font;
	var handleLinks : Bool;
	var hintText : String;
	var keyboardToolbar : Dynamic;
	var keyboardToolbarColor : String;
	var keyboardToolbarHeight : Float;
	var keyboardType : Float;
	var maxLength : Float;
	var returnKeyType : Float;
	var scrollable : Bool;
	var scrollsToTop : Bool;
	var selection : TextAreaSelectedParams;
	var suppressReturn : Bool;
	var textAlign : Dynamic;
	var value : String;
	var verticalAlign : Dynamic;
	function blur():Void;
	function focus():Void;
	function getAppearance():Float;
	function getAttributedString():Ti.UI.iOS.AttributedString;
	function getAutoLink():Float;
	function getAutocapitalization():Float;
	function getAutocorrect():Bool;
	function getClearOnEdit():Bool;
	function getColor():String;
	function getEditable():Bool;
	function getEllipsize():Bool;
	function getEnableReturnKey():Bool;
	function getFont():Font;
	function getHandleLinks():Bool;
	function getHintText():String;
	function getKeyboardToolbar():Dynamic;
	function getKeyboardToolbarColor():String;
	function getKeyboardToolbarHeight():Float;
	function getKeyboardType():Float;
	function getMaxLength():Float;
	function getReturnKeyType():Float;
	function getScrollable():Bool;
	function getScrollsToTop():Bool;
	function getSelection():TextAreaSelectedParams;
	function getSuppressReturn():Bool;
	function getTextAlign():Dynamic;
	function getValue():String;
	function getVerticalAlign():Dynamic;
	function hasText():Bool;
	function setAppearance(appearance:Float):Void;
	function setAttributedString(attributedString:Ti.UI.iOS.AttributedString):Void;
	function setAutoLink(autoLink:Float):Void;
	function setAutocapitalization(autocapitalization:Float):Void;
	function setAutocorrect(autocorrect:Bool):Void;
	function setClearOnEdit(clearOnEdit:Bool):Void;
	function setColor(color:String):Void;
	function setEditable(editable:Bool):Void;
	function setEllipsize(ellipsize:Bool):Void;
	function setEnableReturnKey(enableReturnKey:Bool):Void;
	function setFont(font:Font):Void;
	function setHandleLinks(handleLinks:Bool):Void;
	function setHintText(hintText:String):Void;
	@:overload(function(keyboardToolbar:Ti.UI.iOS.Toolbar):Void { })
	function setKeyboardToolbar(keyboardToolbar:Array<Ti.UI.View>):Void;
	function setKeyboardToolbarColor(keyboardToolbarColor:String):Void;
	function setKeyboardToolbarHeight(keyboardToolbarHeight:Float):Void;
	function setKeyboardType(keyboardType:Float):Void;
	function setMaxLength(maxLength:Float):Void;
	function setReturnKeyType(returnKeyType:Float):Void;
	function setScrollable(scrollable:Bool):Void;
	function setScrollsToTop(scrollsToTop:Bool):Void;
	function setSelection(start:Float, end:Float):Void;
	function setSuppressReturn(suppressReturn:Bool):Void;
	@:overload(function(textAlign:Float):Void { })
	function setTextAlign(textAlign:String):Void;
	function setValue(value:String):Void;
	@:overload(function(verticalAlign:String):Void { })
	function setVerticalAlign(verticalAlign:Float):Void;
};
typedef View = {
	>Ti.Proxy,
	var accessibilityHidden : Bool;
	var accessibilityHint : String;
	var accessibilityLabel : String;
	var accessibilityValue : String;
	var anchorPoint : Point;
	var animatedCenter : Point;
	var backgroundColor : String;
	var backgroundDisabledColor : String;
	var backgroundDisabledImage : String;
	var backgroundFocusedColor : String;
	var backgroundFocusedImage : String;
	var backgroundGradient : Gradient;
	var backgroundImage : String;
	var backgroundLeftCap : Float;
	var backgroundRepeat : Bool;
	var backgroundSelectedColor : String;
	var backgroundSelectedImage : String;
	var backgroundTopCap : Float;
	var borderColor : String;
	var borderRadius : Float;
	var borderWidth : Float;
	var bottom : Dynamic;
	var center : Point;
	var children : Array<Ti.UI.View>;
	var clipMode : Float;
	var enabled : Bool;
	var focusable : Bool;
	var height : Dynamic;
	var horizontalWrap : Bool;
	var keepScreenOn : Bool;
	var layout : String;
	var left : Dynamic;
	var opacity : Float;
	var overrideCurrentAnimation : Bool;
	var pullBackgroundColor : String;
	var rect : Dimension;
	var right : Dynamic;
	var size : Dimension;
	var softKeyboardOnFocus : Float;
	var tintColor : Dynamic;
	var top : Dynamic;
	var touchEnabled : Bool;
	var transform : Dynamic;
	var viewShadowColor : String;
	var viewShadowOffset : Point;
	var viewShadowRadius : Float;
	var visible : Bool;
	var width : Dynamic;
	var zIndex : Float;
	function add(view:Ti.UI.View):Void;
	@:overload(function(animation:Dictionary<Ti.UI.Animation>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void { })
	function animate(animation:Ti.UI.Animation, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function convertPointToView(point:Point, destinationView:Ti.UI.View):Point;
	function finishLayout():Void;
	function getAccessibilityHidden():Bool;
	function getAccessibilityHint():String;
	function getAccessibilityLabel():String;
	function getAccessibilityValue():String;
	function getAnchorPoint():Point;
	function getAnimatedCenter():Point;
	function getBackgroundColor():String;
	function getBackgroundDisabledColor():String;
	function getBackgroundDisabledImage():String;
	function getBackgroundFocusedColor():String;
	function getBackgroundFocusedImage():String;
	function getBackgroundGradient():Gradient;
	function getBackgroundImage():String;
	function getBackgroundLeftCap():Float;
	function getBackgroundRepeat():Bool;
	function getBackgroundSelectedColor():String;
	function getBackgroundSelectedImage():String;
	function getBackgroundTopCap():Float;
	function getBorderColor():String;
	function getBorderRadius():Float;
	function getBorderWidth():Float;
	function getBottom():Dynamic;
	function getCenter():Point;
	function getChildren():Array<Ti.UI.View>;
	function getClipMode():Float;
	function getEnabled():Bool;
	function getFocusable():Bool;
	function getHeight():Dynamic;
	function getHorizontalWrap():Bool;
	function getKeepScreenOn():Bool;
	function getLayout():String;
	function getLeft():Dynamic;
	function getOpacity():Float;
	function getOverrideCurrentAnimation():Bool;
	function getPullBackgroundColor():String;
	function getRect():Dimension;
	function getRight():Dynamic;
	function getSize():Dimension;
	function getSoftKeyboardOnFocus():Float;
	function getTintColor():String;
	function getTop():Dynamic;
	function getTouchEnabled():Bool;
	function getTransform():Dynamic;
	function getViewShadowColor():String;
	function getViewShadowOffset():Point;
	function getViewShadowRadius():Float;
	function getVisible():Bool;
	function getWidth():Dynamic;
	function getZIndex():Float;
	function hide():Void;
	function remove(view:Ti.UI.View):Void;
	function removeAllChildren():Void;
	function setAccessibilityHidden(accessibilityHidden:Bool):Void;
	function setAccessibilityHint(accessibilityHint:String):Void;
	function setAccessibilityLabel(accessibilityLabel:String):Void;
	function setAccessibilityValue(accessibilityValue:String):Void;
	function setAnchorPoint(anchorPoint:Point):Void;
	function setBackgroundColor(backgroundColor:String):Void;
	function setBackgroundDisabledColor(backgroundDisabledColor:String):Void;
	function setBackgroundDisabledImage(backgroundDisabledImage:String):Void;
	function setBackgroundFocusedColor(backgroundFocusedColor:String):Void;
	function setBackgroundFocusedImage(backgroundFocusedImage:String):Void;
	function setBackgroundGradient(backgroundGradient:Gradient):Void;
	function setBackgroundImage(backgroundImage:String):Void;
	function setBackgroundLeftCap(backgroundLeftCap:Float):Void;
	function setBackgroundRepeat(backgroundRepeat:Bool):Void;
	function setBackgroundSelectedColor(backgroundSelectedColor:String):Void;
	function setBackgroundSelectedImage(backgroundSelectedImage:String):Void;
	function setBackgroundTopCap(backgroundTopCap:Float):Void;
	function setBorderColor(borderColor:String):Void;
	function setBorderRadius(borderRadius:Float):Void;
	function setBorderWidth(borderWidth:Float):Void;
	@:overload(function(bottom:String):Void { })
	function setBottom(bottom:Float):Void;
	function setCenter(center:Point):Void;
	function setClipMode(clipMode:Float):Void;
	function setEnabled(enabled:Bool):Void;
	function setFocusable(focusable:Bool):Void;
	@:overload(function(height:String):Void { })
	function setHeight(height:Float):Void;
	function setHorizontalWrap(horizontalWrap:Bool):Void;
	function setKeepScreenOn(keepScreenOn:Bool):Void;
	function setLayout(layout:String):Void;
	@:overload(function(left:String):Void { })
	function setLeft(left:Float):Void;
	function setOpacity(opacity:Float):Void;
	function setPullBackgroundColor(pullBackgroundColor:String):Void;
	@:overload(function(right:String):Void { })
	function setRight(right:Float):Void;
	function setSoftKeyboardOnFocus(softKeyboardOnFocus:Float):Void;
	function setTintColor(tintColor:String):Void;
	@:overload(function(top:String):Void { })
	function setTop(top:Float):Void;
	function setTouchEnabled(touchEnabled:Bool):Void;
	@:overload(function(transform:Ti.UI._3DMatrix):Void { })
	function setTransform(transform:Ti.UI._2DMatrix):Void;
	function setViewShadowColor(viewShadowColor:String):Void;
	function setViewShadowOffset(viewShadowOffset:Point):Void;
	function setViewShadowRadius(viewShadowRadius:Float):Void;
	function setVisible(visible:Bool):Void;
	@:overload(function(width:String):Void { })
	function setWidth(width:Float):Void;
	function setZIndex(zIndex:Float):Void;
	function show():Void;
	function startLayout():Void;
	function toImage(?callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?honorScaleFactor:Bool):Ti.Blob;
	function updateLayout(params:Dictionary<Dynamic>):Void;
};
@:enum abstract ActivityIndicatorStyle(Int) {
	var BIG = 0;
	var BIG_DARK = 1;
	var DARK = 2;
	var PLAIN = 3;
}
typedef Switch = {
	>Ti.UI.View,
	var color : String;
	var font : Font;
	var onTintColor : String;
	var style : Float;
	var textAlign : Dynamic;
	var thumbTintColor : String;
	var tintColor : String;
	var title : String;
	var titleOff : String;
	var titleOn : String;
	var value : Bool;
	var verticalAlign : Dynamic;
	function getColor():String;
	function getFont():Font;
	function getOnTintColor():String;
	function getStyle():Float;
	function getTextAlign():Dynamic;
	function getThumbTintColor():String;
	function getTitle():String;
	function getTitleOff():String;
	function getTitleOn():String;
	function getValue():Bool;
	function getVerticalAlign():Dynamic;
	function setColor(color:String):Void;
	function setFont(font:Font):Void;
	function setOnTintColor(onTintColor:String):Void;
	function setStyle(style:Float):Void;
	@:overload(function(textAlign:Float):Void { })
	function setTextAlign(textAlign:String):Void;
	function setThumbTintColor(thumbTintColor:String):Void;
	function setTitle(title:String):Void;
	function setTitleOff(titleOff:String):Void;
	function setTitleOn(titleOn:String):Void;
	function setValue(value:Bool):Void;
	@:overload(function(verticalAlign:String):Void { })
	function setVerticalAlign(verticalAlign:Float):Void;
};
typedef DashboardItem = {
	>Ti.Proxy,
	var badge : Float;
	var canDelete : Bool;
	var image : Dynamic;
	var selectedImage : Dynamic;
	function getBadge():Float;
	function getCanDelete():Bool;
	function getImage():Dynamic;
	function getSelectedImage():Dynamic;
	function setBadge(badge:Float):Void;
	function setCanDelete(canDelete:Bool):Void;
	@:overload(function(image:Ti.Blob):Void { })
	function setImage(image:String):Void;
	@:overload(function(selectedImage:Ti.Blob):Void { })
	function setSelectedImage(selectedImage:String):Void;
};
typedef Tab = {
	>Ti.UI.View,
	var active : Bool;
	var activeIcon : String;
	var activeIconIsMask : Dynamic;
	var badge : String;
	var icon : String;
	var iconIsmask : Dynamic;
	var title : String;
	var titleid : String;
	var window : Ti.UI.Window;
	function close(window:Ti.UI.Window, ?options:Dynamic):Void;
	function getActive():Bool;
	function getActiveIcon():String;
	function getActiveIconIsMask():Bool;
	function getBadge():String;
	function getIcon():String;
	function getIconIsmask():Bool;
	function getTitle():String;
	function getTitleid():String;
	function getWindow():Ti.UI.Window;
	function open(window:Ti.UI.Window, options:Dynamic):Void;
	function setActive(active:Bool):Void;
	function setActiveIcon(activeIcon:String):Void;
	function setActiveIconIsMask(activeIconIsMask:Bool):Void;
	function setBadge(badge:String):Void;
	function setIcon(icon:String):Void;
	function setIconIsmask(iconIsmask:Bool):Void;
	function setTitle(title:String):Void;
	function setTitleid(titleid:String):Void;
	function setWindow(window:Ti.UI.Window):Void;
};
typedef TableViewRow = {
	>Ti.UI.View,
	var className : String;
	var color : String;
	var editable : Bool;
	var font : Font;
	var hasCheck : Bool;
	var hasChild : Bool;
	var hasDetail : Bool;
	var indentionLevel : Float;
	var leftImage : String;
	var moveable : Bool;
	var rightImage : String;
	var selectedBackgroundColor : String;
	var selectedBackgroundImage : String;
	var selectedColor : String;
	var selectionStyle : Float;
	var title : String;
	function getClassName():String;
	function getColor():String;
	function getEditable():Bool;
	function getFont():Font;
	function getHasCheck():Bool;
	function getHasChild():Bool;
	function getHasDetail():Bool;
	function getIndentionLevel():Float;
	function getLeftImage():String;
	function getMoveable():Bool;
	function getRightImage():String;
	function getSelectedBackgroundColor():String;
	function getSelectedBackgroundImage():String;
	function getSelectedColor():String;
	function getSelectionStyle():Float;
	function getTitle():String;
	function setClassName(className:String):Void;
	function setColor(color:String):Void;
	function setEditable(editable:Bool):Void;
	function setFont(font:Font):Void;
	function setHasCheck(hasCheck:Bool):Void;
	function setHasChild(hasChild:Bool):Void;
	function setHasDetail(hasDetail:Bool):Void;
	function setIndentionLevel(indentionLevel:Float):Void;
	function setLeftImage(leftImage:String):Void;
	function setMoveable(moveable:Bool):Void;
	function setRightImage(rightImage:String):Void;
	function setSelectedBackgroundColor(selectedBackgroundColor:String):Void;
	function setSelectedBackgroundImage(selectedBackgroundImage:String):Void;
	function setSelectedColor(selectedColor:String):Void;
	function setSelectionStyle(selectionStyle:Float):Void;
	function setTitle(title:String):Void;
};
typedef PickerRow = {
	>Ti.UI.View,
	var color : String;
	var font : Font;
	var fontSize : Float;
	var title : String;
	function getColor():String;
	function getFont():Font;
	function getFontSize():Float;
	function getTitle():String;
	function setColor(color:String):Void;
	function setFont(font:Font):Void;
	function setFontSize(fontSize:Float):Void;
	function setTitle(title:String):Void;
};
typedef ButtonBar = {
	>Ti.UI.View,
	var index : Float;
	var labels : Dynamic;
	var style : Float;
	function getIndex():Float;
	function getLabels():Dynamic;
	function getStyle():Float;
	function setIndex(index:Float):Void;
	@:overload(function(labels:Array<BarItemType>):Void { })
	function setLabels(labels:Array<String>):Void;
	function setStyle(style:Float):Void;
};
typedef Slider = {
	>Ti.UI.View,
	var disabledLeftTrackImage : String;
	var disabledRightTrackImage : String;
	var disabledThumbImage : String;
	var highlightedLeftTrackImage : String;
	var highlightedRightTrackImage : String;
	var highlightedThumbImage : String;
	var leftTrackImage : String;
	var leftTrackLeftCap : Float;
	var leftTrackTopCap : Float;
	var max : Float;
	var maxRange : Float;
	var min : Float;
	var minRange : Float;
	var rightTrackImage : String;
	var rightTrackLeftCap : Float;
	var rightTrackTopCap : Float;
	var selectedLeftTrackImage : String;
	var selectedRightTrackImage : String;
	var selectedThumbImage : String;
	var thumbImage : Dynamic;
	var value : String;
	function getDisabledLeftTrackImage():String;
	function getDisabledRightTrackImage():String;
	function getDisabledThumbImage():String;
	function getHighlightedLeftTrackImage():String;
	function getHighlightedRightTrackImage():String;
	function getHighlightedThumbImage():String;
	function getLeftTrackImage():String;
	function getLeftTrackLeftCap():Float;
	function getLeftTrackTopCap():Float;
	function getMax():Float;
	function getMaxRange():Float;
	function getMin():Float;
	function getMinRange():Float;
	function getRightTrackImage():String;
	function getRightTrackLeftCap():Float;
	function getRightTrackTopCap():Float;
	function getSelectedLeftTrackImage():String;
	function getSelectedRightTrackImage():String;
	function getSelectedThumbImage():String;
	function getThumbImage():Dynamic;
	function getValue():String;
	function setDisabledLeftTrackImage(disabledLeftTrackImage:String):Void;
	function setDisabledRightTrackImage(disabledRightTrackImage:String):Void;
	function setDisabledThumbImage(disabledThumbImage:String):Void;
	function setHighlightedLeftTrackImage(highlightedLeftTrackImage:String):Void;
	function setHighlightedRightTrackImage(highlightedRightTrackImage:String):Void;
	function setHighlightedThumbImage(highlightedThumbImage:String):Void;
	function setLeftTrackImage(leftTrackImage:String):Void;
	function setLeftTrackLeftCap(leftTrackLeftCap:Float):Void;
	function setLeftTrackTopCap(leftTrackTopCap:Float):Void;
	function setMax(max:Float):Void;
	function setMaxRange(maxRange:Float):Void;
	function setMin(min:Float):Void;
	function setMinRange(minRange:Float):Void;
	function setRightTrackImage(rightTrackImage:String):Void;
	function setRightTrackLeftCap(rightTrackLeftCap:Float):Void;
	function setRightTrackTopCap(rightTrackTopCap:Float):Void;
	function setSelectedLeftTrackImage(selectedLeftTrackImage:String):Void;
	function setSelectedRightTrackImage(selectedRightTrackImage:String):Void;
	function setSelectedThumbImage(selectedThumbImage:String):Void;
	@:overload(function(thumbImage:Ti.Blob):Void { })
	function setThumbImage(thumbImage:String):Void;
	function setValue(value:Float, ?options:Dictionary<Dynamic>):Void;
};
