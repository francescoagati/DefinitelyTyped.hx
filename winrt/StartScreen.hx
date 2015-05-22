@:enum abstract TileOptions(Int) {
	var none = 0;
	var showNameOnLogo = 1;
	var showNameOnWideLogo = 2;
	var copyOnDeployment = 3;
}
@:enum abstract ForegroundText(Int) {
	var dark = 0;
	var light = 1;
}
typedef ISecondaryTile = {
	var arguments : String;
	var backgroundColor : Windows.UI.Color;
	var displayName : String;
	var foregroundText : Windows.UI.StartScreen.ForegroundText;
	var lockScreenBadgeLogo : Windows.Foundation.Uri;
	var lockScreenDisplayBadgeAndTileText : Bool;
	var logo : Windows.Foundation.Uri;
	var shortName : String;
	var smallLogo : Windows.Foundation.Uri;
	var tileId : String;
	var tileOptions : Windows.UI.StartScreen.TileOptions;
	var wideLogo : Windows.Foundation.Uri;
	@:overload(function(invocationPoint:Windows.Foundation.Point):Windows.Foundation.IAsyncOperation<Bool> { })
	function requestCreateAsync():Windows.Foundation.IAsyncOperation<Bool>;
	@:overload(function(selection:Windows.Foundation.Rect, preferredPlacement:Windows.UI.Popups.Placement):Windows.Foundation.IAsyncOperation<Bool> { })
	function requestCreateForSelectionAsync(selection:Windows.Foundation.Rect):Windows.Foundation.IAsyncOperation<Bool>;
	@:overload(function(invocationPoint:Windows.Foundation.Point):Windows.Foundation.IAsyncOperation<Bool> { })
	function requestDeleteAsync():Windows.Foundation.IAsyncOperation<Bool>;
	@:overload(function(selection:Windows.Foundation.Rect, preferredPlacement:Windows.UI.Popups.Placement):Windows.Foundation.IAsyncOperation<Bool> { })
	function requestDeleteForSelectionAsync(selection:Windows.Foundation.Rect):Windows.Foundation.IAsyncOperation<Bool>;
	function updateAsync():Windows.Foundation.IAsyncOperation<Bool>;
};
typedef ISecondaryTileFactory = {
	function createTile(tileId:String, shortName:String, displayName:String, arguments:String, tileOptions:Windows.UI.StartScreen.TileOptions, logoReference:Windows.Foundation.Uri):Windows.UI.StartScreen.SecondaryTile;
	function createWideTile(tileId:String, shortName:String, displayName:String, arguments:String, tileOptions:Windows.UI.StartScreen.TileOptions, logoReference:Windows.Foundation.Uri, wideLogoReference:Windows.Foundation.Uri):Windows.UI.StartScreen.SecondaryTile;
	function createWithId(tileId:String):Windows.UI.StartScreen.SecondaryTile;
};
extern class SecondaryTile {
	@:overload(function(tileId:String, shortName:String, displayName:String, args:String, tileOptions:Windows.UI.StartScreen.TileOptions, logoReference:Windows.Foundation.Uri, wideLogoReference:Windows.Foundation.Uri):Void { })
	@:overload(function(tileId:String):Void { })
	@:overload(function():Void { })
	function new(tileId:String, shortName:String, displayName:String, args:String, tileOptions:Windows.UI.StartScreen.TileOptions, logoReference:Windows.Foundation.Uri):Void;
	var arguments : String;
	var backgroundColor : Windows.UI.Color;
	var displayName : String;
	var foregroundText : Windows.UI.StartScreen.ForegroundText;
	var lockScreenBadgeLogo : Windows.Foundation.Uri;
	var lockScreenDisplayBadgeAndTileText : Bool;
	var logo : Windows.Foundation.Uri;
	var shortName : String;
	var smallLogo : Windows.Foundation.Uri;
	var tileId : String;
	var tileOptions : Windows.UI.StartScreen.TileOptions;
	var wideLogo : Windows.Foundation.Uri;
	@:overload(function(invocationPoint:Windows.Foundation.Point):Windows.Foundation.IAsyncOperation<Bool> { })
	function requestCreateAsync():Windows.Foundation.IAsyncOperation<Bool>;
	@:overload(function(selection:Windows.Foundation.Rect, preferredPlacement:Windows.UI.Popups.Placement):Windows.Foundation.IAsyncOperation<Bool> { })
	function requestCreateForSelectionAsync(selection:Windows.Foundation.Rect):Windows.Foundation.IAsyncOperation<Bool>;
	@:overload(function(invocationPoint:Windows.Foundation.Point):Windows.Foundation.IAsyncOperation<Bool> { })
	function requestDeleteAsync():Windows.Foundation.IAsyncOperation<Bool>;
	@:overload(function(selection:Windows.Foundation.Rect, preferredPlacement:Windows.UI.Popups.Placement):Windows.Foundation.IAsyncOperation<Bool> { })
	function requestDeleteForSelectionAsync(selection:Windows.Foundation.Rect):Windows.Foundation.IAsyncOperation<Bool>;
	function updateAsync():Windows.Foundation.IAsyncOperation<Bool>;
	static function exists(tileId:String):Bool;
	@:overload(function(applicationId:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.StartScreen.SecondaryTile>> { })
	static function findAllAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.StartScreen.SecondaryTile>>;
	static function findAllForPackageAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.StartScreen.SecondaryTile>>;
}
typedef ISecondaryTileStatics = {
	function exists(tileId:String):Bool;
	@:overload(function(applicationId:String):Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.StartScreen.SecondaryTile>> { })
	function findAllAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.StartScreen.SecondaryTile>>;
	function findAllForPackageAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.UI.StartScreen.SecondaryTile>>;
};
