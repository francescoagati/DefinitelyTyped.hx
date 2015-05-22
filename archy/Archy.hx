typedef Data = {
	var label : String;
	@:optional
	var nodes : Array<haxe.extern.EitherType<Data, String>>;
};
typedef Options = {
	@:optional
	var unicode : Bool;
};
extern class ArchyTopLevel {
	static function archy(obj:archy.Data, ?prefix:String, ?opts:archy.Options):String;
	static function archy(obj:String, ?prefix:String, ?opts:archy.Options):String;
}
extern class ArchyTopLevel {
	static function archy(obj:archy.Data, ?prefix:String, ?opts:archy.Options):String;
	static function archy(obj:String, ?prefix:String, ?opts:archy.Options):String;
}
extern class ArchyTopLevel {
	static function archy(obj:archy.Data, ?prefix:String, ?opts:archy.Options):String;
	static function archy(obj:String, ?prefix:String, ?opts:archy.Options):String;
}
