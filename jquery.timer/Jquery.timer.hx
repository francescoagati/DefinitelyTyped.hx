typedef JQueryTimer = {
	function set(any:Dynamic):Dynamic;
	function once(time:Number):Dynamic;
	function play(?reset:Boolean):Dynamic;
	function pause():Dynamic;
	function stop():Dynamic;
	function toggle(?reset:Boolean):Dynamic;
	var isActive : Boolean;
	var remaining : Number;
};
typedef JQuery = {
	var timer : JQueryTimer;
};
