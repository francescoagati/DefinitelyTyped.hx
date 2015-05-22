@:enum abstract Level(Int) {
	var ALL = 0;
	var TRACE = 1;
	var DEBUG = 2;
	var INFO = 3;
	var WARN = 4;
	var ERROR = 5;
	var FATAL = 6;
	var OFF = 7;
}
extern class Logger {
	function addAppender(appender:Appender):Void;
	function removeAppender(appender:Appender):Void;
	function removeAllAppenders():Void;
	function setLevel(level:Level):Void;
	function getLevel():Level;
	function getEffectiveLevel():Level;
	function setAdditivity(additivity:Bool):Void;
	function getAdditivity():Bool;
	function log(level:Level, params:Array<Dynamic>):Void;
	function trace(messages:haxe.extern.Rest<Dynamic>):Void;
	function debug(messages:haxe.extern.Rest<Dynamic>):Void;
	function info(messages:haxe.extern.Rest<Dynamic>):Void;
	function warn(messages:haxe.extern.Rest<Dynamic>):Void;
	function error(messages:haxe.extern.Rest<Dynamic>):Void;
	function fatal(messages:haxe.extern.Rest<Dynamic>):Void;
	function isEnabledFor(level:Level, exception:Error):Bool;
	function isTraceEnabled():Bool;
	function isDebugEnabled():Bool;
	function isInfoEnabled():Bool;
	function isWarnEnabled():Bool;
	function isErrorEnabled():Bool;
	function isFatalEnabled():Bool;
	function group(name:String, ?initiallyExpanded:Bool):Void;
	function groupEnd():Void;
	function time(name:String, ?level:Level):Void;
	function timeEnd(name:String):Void;
	function assert(expr:Dynamic):Void;
}
extern class LoggingEvent {

}
extern class Appender {
	function doAppend(loggingEvent:LoggingEvent):Void;
	function append(loggingEvent:LoggingEvent):Void;
	function setLayout(layout:Layout):Void;
	function getLayout():Layout;
	function setThreshold(level:Level):Void;
	function getThreshold():Level;
	function toString():String;
}
extern class AlertAppender extends Appender {
	function new():Void;
}
extern class AjaxAppender extends Appender {
	function new(url:String, ?withCredentials:Bool):Void;
	function setSendAllOnUnload(sendAllOnUnload:Bool):Void;
	function isSendAllOnUnload():Bool;
	function setPostVarName(postVarName:String):Void;
	function getPostVarName():String;
	function setTimed(timed:Bool):Void;
	function isTimed():Bool;
	function setWaitForResponse(waitForResponse:Bool):Void;
	function isWaitForResponse():Bool;
	function setBatchSize(batchSize:Float):Void;
	function getBatchSize():Float;
	function setTimerInterval(timerInterval:Float):Void;
	function getTimerInterval():Float;
	function setRequestSuccessCallback(requestSuccessCallback:{ }):Void;
	function setFailCallback(failCallback:{ }):Void;
	function setSessionId(sessionId:String):Void;
	function getSessionId():String;
	function addHeader(name:String, value:String):Void;
	function getHeaders():Array<{ var name : String; var value : String; }>;
	function sendAll():Void;
}
extern class PopUpAppender extends Appender {
	function new(?lazyInit:Bool, ?initiallyMinimized:Bool, ?useDocumentWrite:Bool, ?width:Float, ?height:Float):Void;
	function isInitiallyMinimized():Bool;
	function setInitiallyMinimized(initiallyMinimized:Bool):Void;
	function isFocusPopUp():Bool;
	function setFocusPopUp(focusPopUp:Bool):Void;
	function isUseOldPopUp():Bool;
	function setUseOldPopUp(useOldPopUp:Bool):Void;
	function isComplainAboutPopUpBlocking():Bool;
	function setComplainAboutPopUpBlocking(complainAboutPopUpBlocking:Bool):Void;
	function isNewestMessageAtTop():Bool;
	function setNewestMessageAtTop(newestMessageAtTop:Bool):Void;
	function isScrollToLatestMessage():Bool;
	function setScrollToLatestMessage(scrollToLatestMessage:Bool):Void;
	function isReopenWhenClosed():Bool;
	function setReopenWhenClosed(reopenWhenClosed:Bool):Void;
	function getWidth():Float;
	function setWidth(width:Float):Void;
	function getHeight():Float;
	function setHeight(height:Float):Void;
	function getMaxMessages():Float;
	function setMaxMessages(maxMessages:Float):Void;
	function isShowCommandLine():Bool;
	function setShowCommandLine(showCommandLine:Bool):Void;
	function getCommandLineObjectExpansionDepth():Float;
	function setCommandLineObjectExpansionDepth(expansionDepth:Float):Void;
	function getCommandWindow():Window;
	function setCommandWindow(commandWindow:Window):Void;
	function getCommandLayout():Layout;
	function setCommandLayout(commandLayout:Layout):Void;
	function clear():Void;
	function close():Void;
	function show():Void;
	function hide():Void;
	function focus():Void;
	function focusCommandLine():Void;
	function focusSearch():Void;
	function evalCommandAndAppend(expr:String):Void;
	function addCommandLineFunction(functionName:String, commandLineFunction:{ }):Void;
}
extern class InPageAppender extends Appender {
	function new(container:HTMLElement, ?lazyInit:Bool, ?initiallyMinimized:Bool, ?useDocumentWrite:Bool, ?width:Float, ?height:Float):Void;
	function addCssProperty(name:String, value:String):Void;
	function isVisible():Bool;
	function isInitiallyMinimized():Bool;
	function setInitiallyMinimized(initiallyMinimized:Bool):Void;
	function isNewestMessageAtTop():Bool;
	function setNewestMessageAtTop(newestMessageAtTop:Bool):Void;
	function isScrollToLatestMessage():Bool;
	function setScrollToLatestMessage(scrollToLatestMessage:Bool):Void;
	function getWidth():Float;
	function setWidth(width:Float):Void;
	function getHeight():Float;
	function setHeight(height:Float):Void;
	function getMaxMessages():Float;
	function setMaxMessages(maxMessages:Float):Void;
	function isShowCommandLine():Bool;
	function setShowCommandLine(showCommandLine:Bool):Void;
	function getCommandLineObjectExpansionDepth():Float;
	function setCommandLineObjectExpansionDepth(expansionDepth:Float):Void;
	function getCommandWindow():Window;
	function setCommandWindow(commandWindow:Window):Void;
	function getCommandLayout():Layout;
	function setCommandLayout(commandLayout:Layout):Void;
	function clear():Void;
	function close():Void;
	function show():Void;
	function hide():Void;
	function focus():Void;
	function focusCommandLine():Void;
	function focusSearch():Void;
	function evalCommandAndAppend(expr:String):Void;
	function addCommandLineFunction(functionName:String, commandLineFunction:{ }):Void;
}
extern class BrowserConsoleAppender extends Appender {
	function new():Void;
}
extern class Layout {
	function format(loggingEvent:LoggingEvent):String;
	function ignoresThrowable():Bool;
	function getContentType():String;
	function allowBatching():Bool;
	function getDataValues(loggingEvent:LoggingEvent):Array<Dynamic>;
	function setKeys(loggerKey:String, timeStampKey:String, levelKey:String, messageKey:String, exceptionKey:String, urlKey:String):Void;
	function setCustomField(name:String, value:String):String;
	function hasCustomFields():Bool;
}
extern class NullLayout extends Layout {
	function new():Void;
}
extern class SimpleLayout extends Layout {
	function new():Void;
}
extern class PatternLayout extends Layout {
	static var TTCC_CONVERSION_PATTERN : String;
	static var DEFAULT_CONVERSION_PATTERN : String;
	static var ISO8601_DATEFORMAT : String;
	static var DATETIME_DATEFORMAT : String;
	static var ABSOLUTETIME_DATEFORMAT : String;
	function new(pattern:String):Void;
}
extern class XmlLayout extends Layout {
	function new(?combineMessages:Bool):Void;
}
extern class JsonLayout extends Layout {
	function new(?readable:Bool, ?combineMessages:Bool):Void;
	function isReadable():Bool;
}
extern class HttpPostDataLayout extends Layout {
	function new():Void;
}
extern class Log4javascriptTopLevel {
	static function getLogger(?loggerName:String):Logger;
	static function getDefaultLogger():Logger;
	static function getNullLogger():Logger;
	static function getRootLogger():Logger;
	static function resetConfiguration():Void;
	static function setEnabled(enabled:Bool):Void;
	static function isEnabled():Bool;
	static function addEventListener(eventType:String, listener:{ }):Void;
	static function removeEventListener(eventType:String, listener:{ }):Void;
	static function dispatchEvent(eventType:String, eventArgs:Dynamic):Void;
	static function setEventTypes(eventTypes:Array<String>):Void;
	static function setShowStackTraces(show:Bool):Void;
	static function evalInScope(expr:String):Dynamic;
	static function setQuietMode(quietMode:Bool):Void;
	static function setAlertAllErrors(alertAllErrors:Bool):Void;
	static function debug(message:String, ?exception:Error):Void;
	static function displayDebug():Void;
	static function warn(message:String, ?exception:Error):Void;
	static function error(message:String, ?exception:Error):Void;
}
extern class Log4javascriptTopLevel {
	static function getLogger(?loggerName:String):Logger;
	static function getDefaultLogger():Logger;
	static function getNullLogger():Logger;
	static function getRootLogger():Logger;
	static function resetConfiguration():Void;
	static function setEnabled(enabled:Bool):Void;
	static function isEnabled():Bool;
	static function addEventListener(eventType:String, listener:{ }):Void;
	static function removeEventListener(eventType:String, listener:{ }):Void;
	static function dispatchEvent(eventType:String, eventArgs:Dynamic):Void;
	static function setEventTypes(eventTypes:Array<String>):Void;
	static function setShowStackTraces(show:Bool):Void;
	static function evalInScope(expr:String):Dynamic;
	static function setQuietMode(quietMode:Bool):Void;
	static function setAlertAllErrors(alertAllErrors:Bool):Void;
	static function debug(message:String, ?exception:Error):Void;
	static function displayDebug():Void;
	static function warn(message:String, ?exception:Error):Void;
	static function error(message:String, ?exception:Error):Void;
}
