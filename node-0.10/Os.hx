extern class OsTopLevel {
	static function tmpdir():String;
	static function hostname():String;
	static function type():String;
	static function platform():String;
	static function arch():String;
	static function release():String;
	static function uptime():Float;
	static function loadavg():Array<Float>;
	static function totalmem():Float;
	static function freemem():Float;
	static function cpus():Array<{ var model : String; var speed : Float; var times : { var user : Float; var nice : Float; var sys : Float; var idle : Float; var irq : Float; }; }>;
	static function networkInterfaces():Dynamic;
	static var EOL : String;
}
