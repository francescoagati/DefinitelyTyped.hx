typedef ReadStream = {
	>net.NodeSocket,
	var isRaw : Bool;
	function setRawMode(mode:Bool):Void;
};
typedef WriteStream = {
	>net.NodeSocket,
	var columns : Float;
	var rows : Float;
};
extern class TtyTopLevel {
	static function isatty(fd:String):Bool;
}
