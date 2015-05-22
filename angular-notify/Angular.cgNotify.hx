typedef INotifyService = {
	function config(option:{ @:optional
	var duration : Float; @:optional
	var startTop : Float; @:optional
	var verticalSpacing : Float; @:optional
	var templateUrl : String; @:optional
	var position : String; @:optional
	var container : Dynamic; }):Void;
	function closeAll():Void;
};
typedef INotify = {
	var message : String;
	function close():Void;
};
