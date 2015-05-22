typedef Radio = {
	function tuneIn(channelName:String):Radio;
	function tuneOut(channelName:String):Radio;
	function log(channelName:String, eventName:String, args:haxe.extern.Rest<Dynamic>):Void;
	function channel(channelName:String):Radio.Channel;
};
