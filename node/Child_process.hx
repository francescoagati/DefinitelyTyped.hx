typedef ChildProcess = {
	>events.EventEmitter,
	var stdin : stream.Writable;
	var stdout : stream.Readable;
	var stderr : stream.Readable;
	var pid : Float;
	function kill(?signal:String):Void;
	function send(message:Dynamic, ?sendHandle:Dynamic):Void;
	function disconnect():Void;
};
extern class Child_processTopLevel {
	static function spawn(command:String, ?args:Array<String>, ?options:{ @:optional
	var cwd : String; @:optional
	var stdio : Dynamic; @:optional
	var custom : Dynamic; @:optional
	var env : Dynamic; @:optional
	var detached : Bool; }):ChildProcess;
	static function exec(command:String, options:{ @:optional
	var cwd : String; @:optional
	var stdio : Dynamic; @:optional
	var customFds : Dynamic; @:optional
	var env : Dynamic; @:optional
	var encoding : String; @:optional
	var timeout : Float; @:optional
	var maxBuffer : Float; @:optional
	var killSignal : String; }, ?callback:Error -> Buffer -> Buffer -> Void):ChildProcess;
	static function exec(command:String, ?callback:Error -> Buffer -> Buffer -> Void):ChildProcess;
	static function execFile(file:String, ?callback:Error -> Buffer -> Buffer -> Void):ChildProcess;
	static function execFile(file:String, ?args:Array<String>, ?callback:Error -> Buffer -> Buffer -> Void):ChildProcess;
	static function execFile(file:String, ?args:Array<String>, ?options:{ @:optional
	var cwd : String; @:optional
	var stdio : Dynamic; @:optional
	var customFds : Dynamic; @:optional
	var env : Dynamic; @:optional
	var encoding : String; @:optional
	var timeout : Float; @:optional
	var maxBuffer : String; @:optional
	var killSignal : String; }, ?callback:Error -> Buffer -> Buffer -> Void):ChildProcess;
	static function fork(modulePath:String, ?args:Array<String>, ?options:{ @:optional
	var cwd : String; @:optional
	var env : Dynamic; @:optional
	var encoding : String; }):ChildProcess;
	static function execSync(command:String, ?options:{ @:optional
	var cwd : String; @:optional
	var input : haxe.extern.EitherType<String, Buffer>; @:optional
	var stdio : Dynamic; @:optional
	var env : Dynamic; @:optional
	var uid : Float; @:optional
	var gid : Float; @:optional
	var timeout : Float; @:optional
	var maxBuffer : Float; @:optional
	var killSignal : String; @:optional
	var encoding : String; }):ChildProcess;
	static function execFileSync(command:String, ?args:Array<String>, ?options:{ @:optional
	var cwd : String; @:optional
	var input : haxe.extern.EitherType<String, Buffer>; @:optional
	var stdio : Dynamic; @:optional
	var env : Dynamic; @:optional
	var uid : Float; @:optional
	var gid : Float; @:optional
	var timeout : Float; @:optional
	var maxBuffer : Float; @:optional
	var killSignal : String; @:optional
	var encoding : String; }):ChildProcess;
}
