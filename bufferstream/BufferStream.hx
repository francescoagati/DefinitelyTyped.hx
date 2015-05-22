typedef Opts = {
	@:optional
	var encoding : String;
	@:optional
	var blocking : Bool;
	@:optional
	var size : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var split : Dynamic;
};
extern class BufferStreamTopLevel {
	static var fn : { var warn : Bool; };
}
