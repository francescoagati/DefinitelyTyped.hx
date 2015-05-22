typedef PNotifyStack = {
	@:optional
	var dir1 : String;
	@:optional
	var dir2 : String;
	@:optional
	var push : String;
	@:optional
	var spacing1 : Float;
	@:optional
	var spacing2 : Float;
	@:optional
	var context : JQuery;
};
typedef PNotifyLabel = {
	@:optional
	var redisplay : String;
	@:optional
	var all : String;
	@:optional
	var last : String;
	@:optional
	var close : String;
	@:optional
	var stick : String;
};
typedef PNotifyOptions = {
	@:optional
	var title : Dynamic;
	@:optional
	var title_escape : Bool;
	@:optional
	var text : Dynamic;
	@:optional
	var text_escape : Bool;
	@:optional
	var styling : String;
	@:optional
	var addclass : String;
	@:optional
	var cornerclass : String;
	@:optional
	var nonblock : { var nonblock : Bool; @:optional
	var nonblock_opacity : Float; };
	@:optional
	var history : Bool;
	@:optional
	var maxonscreen : Float;
	@:optional
	var auto_display : Bool;
	@:optional
	var width : String;
	@:optional
	var min_height : String;
	@:optional
	var type : String;
	@:optional
	var icon : Dynamic;
	@:optional
	var animation : Dynamic;
	@:optional
	var animate_speed : String;
	@:optional
	var position_animate_speed : Float;
	@:optional
	var opacity : Float;
	@:optional
	var shadow : Bool;
	@:optional
	var buttons : { @:optional
	var closer : Bool; @:optional
	var closer_hover : Bool; @:optional
	var sticker : Bool; @:optional
	var sticker_hover : Bool; };
	@:optional
	var hide : Bool;
	@:optional
	var delay : Float;
	@:optional
	var mouse_reset : Bool;
	@:optional
	var remove : Bool;
	@:optional
	var insert_brs : Bool;
	@:optional
	var stack : PNotifyStack;
	@:optional
	var labels : PNotifyLabel;
};
typedef PNotify = {
	var elem : JQuery;
	function update(?options:PNotifyOptions):Void;
	function remove():Void;
};
typedef PNotifyConstructor = {
	function new(?options:PNotifyOptions):PNotify;
	function removeAll():Void;
};
extern class Jquery.pnotifyTopLevel {
	static var PNotify : PNotifyConstructor;
}
