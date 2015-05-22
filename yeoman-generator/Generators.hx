extern class NamedBase extends YeomanGeneratorBase {
	function new(args:haxe.extern.EitherType<String, Array<String>>, options:Dynamic):Void;
}
extern class Base extends NamedBase {
	static function extend(protoProps:IQueueProps, ?staticProps:Dynamic):IYeomanGenerator;
}
