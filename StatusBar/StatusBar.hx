typedef Window = {
	var StatusBar : StatusBar;
};
typedef StatusBar = {
	var overlaysWebView : Bool -> Void;
	var styleDefault : Void -> Void;
	var styleLightContent : Void -> Void;
	var styleBlackTranslucent : Void -> Void;
	var styleBlackOpaque : Void -> Void;
	var backgroundColorByName : String -> Void;
	var backgroundColorByHexString : String -> Void;
	var hide : Void -> Void;
	var show : Void -> Void;
	var isVisible : Bool;
};
