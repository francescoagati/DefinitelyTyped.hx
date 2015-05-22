typedef ReadStream = {
	>net.Socket,
	var isRaw : Bool;
	function setRawMode(mode:Bool):Void;
};
typedef WriteStream = {
	>net.Socket,
	var columns : Float;
	var rows : Float;
};
extern class TtyTopLevel {
	static function isatty(fd:Float):Bool;
}
