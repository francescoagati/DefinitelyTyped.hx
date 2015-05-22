@:enum abstract TableViewSeparatorStyle(Int) {
	var NONE = 0;
	var SINGLE_LINE = 1;
}
typedef NavigationGroup = {
	>Ti.UI.View,
	var navBarAtTop : Bool;
	var window : Ti.UI.Window;
	function close(window:Ti.UI.Window, options:Dictionary<Dynamic>):Void;
	function getNavBarAtTop():Bool;
	function getWindow():Ti.UI.Window;
	function open(window:Ti.UI.Window, options:Dictionary<Dynamic>):Void;
	function setNavBarAtTop(navBarAtTop:Bool):Void;
};
extern class MobileWebTopLevel {
	static var apiName : String;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function createNavigationGroup(?parameters:Dictionary<Ti.UI.MobileWeb.NavigationGroup>):Ti.UI.MobileWeb.NavigationGroup;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
}
typedef Label = {
	>Ti.UI.View,
	var attributedString : Ti.UI.iOS.AttributedString;
	var autoLink : Float;
	var backgroundPaddingBottom : Float;
	var backgroundPaddingLeft : Float;
	var backgroundPaddingRight : Float;
	var backgroundPaddingTop : Float;
	var color : String;
	var ellipsize : Bool;
	var font : Font;
	var highlightedColor : String;
	var html : String;
	var includeFontPadding : Bool;
	var minimumFontSize : Float;
	var shadowColor : String;
	var shadowOffset : Dictionary<Dynamic>;
	var shadowRadius : Float;
	var text : String;
	var textAlign : Dynamic;
	var textid : String;
	var verticalAlign : Dynamic;
	var wordWrap : Bool;
	function getAttributedString():Ti.UI.iOS.AttributedString;
	function getAutoLink():Float;
	function getBackgroundPaddingBottom():Float;
	function getBackgroundPaddingLeft():Float;
	function getBackgroundPaddingRight():Float;
	function getBackgroundPaddingTop():Float;
	function getColor():String;
	function getEllipsize():Bool;
	function getFont():Font;
	function getHighlightedColor():String;
	function getHtml():String;
	function getIncludeFontPadding():Bool;
	function getMinimumFontSize():Float;
	function getShadowColor():String;
	function getShadowOffset():Dictionary<Dynamic>;
	function getShadowRadius():Float;
	function getText():String;
	function getTextAlign():Dynamic;
	function getTextid():String;
	function getVerticalAlign():Dynamic;
	function getWordWrap():Bool;
	function setAttributedString(attributedString:Ti.UI.iOS.AttributedString):Void;
	function setAutoLink(autoLink:Float):Void;
	function setBackgroundPaddingBottom(backgroundPaddingBottom:Float):Void;
	function setBackgroundPaddingLeft(backgroundPaddingLeft:Float):Void;
	function setBackgroundPaddingRight(backgroundPaddingRight:Float):Void;
	function setBackgroundPaddingTop(backgroundPaddingTop:Float):Void;
	function setColor(color:String):Void;
	function setEllipsize(ellipsize:Bool):Void;
	function setFont(font:Font):Void;
	function setHighlightedColor(highlightedColor:String):Void;
	function setHtml(html:String):Void;
	function setIncludeFontPadding(includeFontPadding:Bool):Void;
	function setMinimumFontSize(minimumFontSize:Float):Void;
	function setShadowColor(shadowColor:String):Void;
	function setShadowOffset(shadowOffset:Dictionary<Dynamic>):Void;
	function setShadowRadius(shadowRadius:Float):Void;
	function setText(text:String):Void;
	@:overload(function(textAlign:Float):Void { })
	function setTextAlign(textAlign:String):Void;
	function setTextid(textid:String):Void;
	@:overload(function(verticalAlign:String):Void { })
	function setVerticalAlign(verticalAlign:Float):Void;
	function setWordWrap(wordWrap:Bool):Void;
};
typedef SearchBar = {
	>Ti.UI.View,
	var autocapitalization : Float;
	var autocorrect : Bool;
	var barColor : String;
	var hintText : String;
	var hinttextid : String;
	var keyboardType : Float;
	var prompt : String;
	var promptid : String;
	var showBookmark : Bool;
	var showCancel : Bool;
	var value : String;
	function blur():Void;
	function focus():Void;
	function getAutocapitalization():Float;
	function getAutocorrect():Bool;
	function getBarColor():String;
	function getHintText():String;
	function getHinttextid():String;
	function getKeyboardType():Float;
	function getPrompt():String;
	function getPromptid():String;
	function getShowBookmark():Bool;
	function getShowCancel():Bool;
	function getValue():String;
	function setAutocapitalization(autocapitalization:Float):Void;
	function setAutocorrect(autocorrect:Bool):Void;
	function setBarColor(barColor:String):Void;
	function setHintText(hintText:String):Void;
	function setHinttextid(hinttextid:String):Void;
	function setKeyboardType(keyboardType:Float):Void;
	function setPrompt(prompt:String):Void;
	function setPromptid(promptid:String):Void;
	function setShowBookmark(showBookmark:Bool):Void;
	function setShowCancel(showCancel:Bool, ?animated:Dictionary<Dynamic>):Void;
	function setValue(value:String):Void;
};
typedef SMSDialog = {
	>Ti.Proxy,
	var CANCELLED : Float;
	var FAILED : Float;
	var SENT : Float;
	var messageBody : String;
	var toRecipients : Array<String>;
	function getMessageBody():String;
	function getToRecipients():Array<String>;
	function isSupported():Bool;
	function open():Void;
	function setMessageBody(messageBody:String):Void;
	function setToRecipients(toRecipients:Array<String>):Void;
};
typedef TableViewSection = {
	>Ti.Proxy,
	var footerTitle : String;
	var footerView : Ti.UI.View;
	var headerTitle : String;
	var headerView : Ti.UI.View;
	var rowCount : Float;
	var rows : Array<Ti.UI.TableViewRow>;
	function add(row:Ti.UI.TableViewRow):Void;
	function getFooterTitle():String;
	function getFooterView():Ti.UI.View;
	function getHeaderTitle():String;
	function getHeaderView():Ti.UI.View;
	function getRowCount():Float;
	function getRows():Array<Ti.UI.TableViewRow>;
	function remove(row:Ti.UI.TableViewRow):Void;
	function rowAtIndex(index:Float):Ti.UI.TableViewRow;
	function setFooterTitle(footerTitle:String):Void;
	function setFooterView(footerView:Ti.UI.View):Void;
	function setHeaderTitle(headerTitle:String):Void;
	function setHeaderView(headerView:Ti.UI.View):Void;
};
typedef Animation = {
	>Ti.Proxy,
	var anchorPoint : Point;
	var autoreverse : Bool;
	var backgroundColor : String;
	var bottom : Float;
	var center : Dynamic;
	var color : String;
	var curve : Float;
	var delay : Float;
	var duration : Float;
	var height : Float;
	var left : Float;
	var opacity : Float;
	var opaque : Bool;
	var repeat : Float;
	var right : Float;
	var top : Float;
	var transform : Dynamic;
	var transition : Float;
	var view : Ti.UI.View;
	var visible : Bool;
	var width : Float;
	var zIndex : Float;
	function getAnchorPoint():Point;
	function getAutoreverse():Bool;
	function getBackgroundColor():String;
	function getBottom():Float;
	function getCenter():Dynamic;
	function getColor():String;
	function getCurve():Float;
	function getDelay():Float;
	function getDuration():Float;
	function getHeight():Float;
	function getLeft():Float;
	function getOpacity():Float;
	function getOpaque():Bool;
	function getRepeat():Float;
	function getRight():Float;
	function getTop():Float;
	function getTransform():Dynamic;
	function getTransition():Float;
	function getView():Ti.UI.View;
	function getVisible():Bool;
	function getWidth():Float;
	function getZIndex():Float;
	function setAnchorPoint(anchorPoint:Point):Void;
	function setAutoreverse(autoreverse:Bool):Void;
	function setBackgroundColor(backgroundColor:String):Void;
	function setBottom(bottom:Float):Void;
	function setCenter(center:Dynamic):Void;
	function setColor(color:String):Void;
	function setCurve(curve:Float):Void;
	function setDelay(delay:Float):Void;
	function setDuration(duration:Float):Void;
	function setHeight(height:Float):Void;
	function setLeft(left:Float):Void;
	function setOpacity(opacity:Float):Void;
	function setOpaque(opaque:Bool):Void;
	function setRepeat(repeat:Float):Void;
	function setRight(right:Float):Void;
	function setTop(top:Float):Void;
	@:overload(function(transform:Ti.UI._3DMatrix):Void { })
	function setTransform(transform:Ti.UI._2DMatrix):Void;
	function setTransition(transition:Float):Void;
	function setView(view:Ti.UI.View):Void;
	function setVisible(visible:Bool):Void;
	function setWidth(width:Float):Void;
	function setZIndex(zIndex:Float):Void;
};
typedef Toolbar = {
	>Ti.UI.View,
	var barColor : String;
	var borderBottom : Bool;
	var borderTop : Bool;
	var items : Array<Ti.UI.View>;
	var translucent : Bool;
	function getBarColor():String;
	function getBorderBottom():Bool;
	function getBorderTop():Bool;
	function getItems():Array<Ti.UI.View>;
	function getTranslucent():Bool;
	function setBarColor(barColor:String):Void;
	function setBorderBottom(borderBottom:Bool):Void;
	function setBorderTop(borderTop:Bool):Void;
	function setItems(items:Array<Ti.UI.View>):Void;
	function setTranslucent(translucent:Bool):Void;
};
typedef Notification = {
	>Ti.UI.View,
	var duration : Float;
	var horizontalMargin : Float;
	var message : String;
	var verticalMargin : Float;
	var xOffset : Float;
	var yOffset : Float;
	function getDuration():Float;
	function getHorizontalMargin():Float;
	function getMessage():String;
	function getVerticalMargin():Float;
	function getXOffset():Float;
	function getYOffset():Float;
	function setDuration(duration:Float):Void;
	function setHorizontalMargin(horizontalMargin:Float):Void;
	function setMessage(message:String):Void;
	function setVerticalMargin(verticalMargin:Float):Void;
	function setXOffset(xOffset:Float):Void;
	function setYOffset(yOffset:Float):Void;
};
typedef PickerColumn = {
	>Ti.UI.View,
	var font : Font;
	var rowCount : Float;
	var rows : Array<Ti.UI.PickerRow>;
	var selectedRow : Ti.UI.PickerRow;
	function addRow(row:Ti.UI.PickerRow):Void;
	function getFont():Font;
	function getRowCount():Float;
	function getRows():Array<Ti.UI.PickerRow>;
	function getSelectedRow():Ti.UI.PickerRow;
	function removeRow(row:Ti.UI.PickerRow):Void;
	function setFont(font:Font):Void;
	function setSelectedRow(selectedRow:Ti.UI.PickerRow):Void;
};
typedef ActivityIndicator = {
	>Ti.Proxy,
	var bottom : Dynamic;
	var color : String;
	var font : Font;
	var height : String;
	var indicatorColor : String;
	var indicatorDiameter : String;
	var left : Dynamic;
	var message : String;
	var messageid : String;
	var right : Dynamic;
	var style : Float;
	var top : Dynamic;
	var width : String;
	function add():Void;
	function getBottom():Dynamic;
	function getColor():String;
	function getFont():Font;
	function getHeight():String;
	function getIndicatorColor():String;
	function getIndicatorDiameter():String;
	function getLeft():Dynamic;
	function getMessage():String;
	function getMessageid():String;
	function getRight():Dynamic;
	function getStyle():Float;
	function getTop():Dynamic;
	function getWidth():String;
	function hide():Void;
	function remove():Void;
	@:overload(function(bottom:String):Void { })
	function setBottom(bottom:Float):Void;
	function setColor(color:String):Void;
	function setFont(font:Font):Void;
	function setHeight(height:String):Void;
	function setIndicatorColor(indicatorColor:String):Void;
	function setIndicatorDiameter(indicatorDiameter:String):Void;
	@:overload(function(left:String):Void { })
	function setLeft(left:Float):Void;
	function setMessage(message:String):Void;
	function setMessageid(messageid:String):Void;
	@:overload(function(right:String):Void { })
	function setRight(right:Float):Void;
	function setStyle(style:Float):Void;
	@:overload(function(top:String):Void { })
	function setTop(top:Float):Void;
	function setWidth(width:String):Void;
	function show():Void;
};
typedef Picker = {
	>Ti.UI.View,
	var calendarViewShown : Bool;
	var columns : Array<Ti.UI.PickerColumn>;
	var countDownDuration : Float;
	var font : Font;
	var format24 : Bool;
	var locale : String;
	var maxDate : Date;
	var minDate : Date;
	var minuteInterval : Float;
	var selectionIndicator : Bool;
	var type : Float;
	var useSpinner : Bool;
	var value : Date;
	var visibleItems : Float;
	@:overload(function(data:Ti.UI.PickerRow):Void { })
	@:overload(function(data:Array<Ti.UI.PickerColumn>):Void { })
	@:overload(function(data:Ti.UI.PickerColumn):Void { })
	function add(data:Array<Ti.UI.PickerRow>):Void;
	function getCalendarViewShown():Bool;
	function getColumns():Array<Ti.UI.PickerColumn>;
	function getCountDownDuration():Float;
	function getFont():Font;
	function getFormat24():Bool;
	function getLocale():String;
	function getMaxDate():Date;
	function getMinDate():Date;
	function getMinuteInterval():Float;
	function getSelectedRow(index:Float):Ti.UI.PickerRow;
	function getSelectionIndicator():Bool;
	function getType():Float;
	function getUseSpinner():Bool;
	function getValue():Date;
	function getVisibleItems():Float;
	function reloadColumn(column:Ti.UI.PickerColumn):Void;
	function setCalendarViewShown(calendarViewShown:Bool):Void;
	function setColumns(columns:Array<Ti.UI.PickerColumn>):Void;
	function setCountDownDuration(countDownDuration:Float):Void;
	function setFont(font:Font):Void;
	function setFormat24(format24:Bool):Void;
	function setLocale(locale:String):Void;
	function setMaxDate(maxDate:Date):Void;
	function setMinDate(minDate:Date):Void;
	function setMinuteInterval(minuteInterval:Float):Void;
	function setSelectedRow(column:Float, row:Float, ?animated:Bool):Void;
	function setSelectionIndicator(selectionIndicator:Bool):Void;
	function setType(type:Float):Void;
	function setUseSpinner(useSpinner:Bool):Void;
	function setValue(date:Dynamic, suppressEvent:Bool):Ti.UI.PickerRow;
	function setVisibleItems(visibleItems:Float):Void;
	function showDatePickerDialog(dictObj:Dynamic):Void;
	function showTimePickerDialog(dictObj:Dynamic):Void;
};
@:enum abstract Module(Int) {

}
typedef API = {
	@:overload(function(message:String):Void { })
	function debug(message:Array<String>):Void;
	@:overload(function(message:String):Void { })
	function error(message:Array<String>):Void;
	@:overload(function(message:String):Void { })
	function info(message:Array<String>):Void;
	@:overload(function(level:String, message:String):Void { })
	function log(level:String, message:Array<String>):Void;
	@:overload(function(message:String):Void { })
	function timestamp(message:Array<String>):Void;
	@:overload(function(message:String):Void { })
	function trace(message:Array<String>):Void;
	@:overload(function(message:String):Void { })
	function warn(message:Array<String>):Void;
};
