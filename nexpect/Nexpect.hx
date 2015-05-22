typedef IChain = {
	@:overload(function(expectation:js.RegExp):IChain { })
	function expect(expectation:String):IChain;
	@:overload(function(expectation:js.RegExp):IChain { })
	function wait(expectation:String):IChain;
	function sendline(line:String):IChain;
	function sendEof():IChain;
	function run(callback:Error -> Array<String> -> haxe.extern.EitherType<String, Float> -> Void):child_process.ChildProcess;
};
typedef ISpawnOptions = {
	@:optional
	var cwd : String;
	@:optional
	var env : Dynamic;
	@:optional
	var ignoreCase : Dynamic;
	@:optional
	var stripColors : Dynamic;
	@:optional
	var stream : Dynamic;
	@:optional
	var verbose : Dynamic;
};
extern class NexpectTopLevel {
	static function spawn(command:Array<String>, ?options:ISpawnOptions):IChain;
	static function spawn(command:String, ?params:Array<Dynamic>, ?options:ISpawnOptions):IChain;
	static function spawn(command:String, ?options:ISpawnOptions):IChain;
}
extern class NexpectTopLevel {
	static function spawn(command:Array<String>, ?options:ISpawnOptions):IChain;
	static function spawn(command:String, ?params:Array<Dynamic>, ?options:ISpawnOptions):IChain;
	static function spawn(command:String, ?options:ISpawnOptions):IChain;
}
