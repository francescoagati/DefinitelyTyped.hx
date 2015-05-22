typedef Navigator = {
	var notification : Notification;
};
typedef Notification = {
	function alert(message:String, alertCallback:Void -> Void, ?title:String, ?buttonName:String):Void;
	function beep(times:Float):Void;
	function confirm(message:String, confirmCallback:Float -> Void, ?title:String, ?buttonLabels:Array<String>):Void;
	function prompt(message:String, promptCallback:NotificationPromptResult -> Void, ?title:String, ?buttonLabels:Array<String>, ?defaultText:String):Void;
};
typedef NotificationPromptResult = {
	var buttonIndex : Float;
	var input1 : String;
};
