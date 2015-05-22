typedef AccelerometerOption = {
	var controller : String;
};
typedef AccelerometerGeneralOption = {
	@:optional
	var controller : String;
};
typedef AccelerometerAnalogOption = {
	>AccelerometerGeneralOption,
	var pins : Array<String>;
	@:optional
	var sensitivity : Float;
	@:optional
	var aref : Float;
	@:optional
	var zeroV : haxe.extern.EitherType<Float, Array<Float>>;
	@:optional
	var autoCalibrate : Bool;
};
typedef AccelerometerMPU6050Option = {
	>AccelerometerGeneralOption,
	@:optional
	var sensitivity : Float;
};
typedef AccelerometerMMA7361Option = {
	>AccelerometerGeneralOption,
	@:optional
	var sleepPin : haxe.extern.EitherType<Float, String>;
};
extern class Accelerometer {
	function new(option:haxe.extern.EitherType<AccelerometerGeneralOption, haxe.extern.EitherType<AccelerometerAnalogOption, haxe.extern.EitherType<AccelerometerMPU6050Option, AccelerometerMMA7361Option>>>):Void;
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
	function hasAxis(name:String):Void;
	function enable():Void;
	function disable():Void;
}
extern class Animation {
	function new(option:haxe.extern.EitherType<Servo, Array<Servo>>):Void;
	function enqueue(segment:Dynamic):Void;
	function play():Void;
	function pause():Void;
	function stop():Void;
	function next():Void;
	function speed(speed:Array<Float>):Void;
	var target : Float;
	var duration : Float;
	var cuePoints : Array<Float>;
	var keyFrames : Float;
	var easing : String;
	var loop : Bool;
	var loopback : Float;
	var metronomic : Bool;
	var progress : Float;
	var currentSpeed : Float;
	var fps : Float;
}
typedef ButtonOptions = {
	var pin : haxe.extern.EitherType<Float, String>;
	@:optional
	var invert : Bool;
	@:optional
	var isPullup : Bool;
	@:optional
	var holdtime : Float;
};
extern class Button {
	function new(pin:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, ButtonOptions>>):Void;
	@:overload(function(event:Hold, cb:Float -> Void):Void { })
	@:overload(function(event:Down, cb:Void -> Void):Void { })
	@:overload(function(event:Press, cb:Void -> Void):Void { })
	@:overload(function(event:Up, cb:Void -> Void):Void { })
	@:overload(function(event:Release, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef BoardOptions = {
	@:optional
	var id : haxe.extern.EitherType<Float, String>;
	@:optional
	var port : haxe.extern.EitherType<String, Dynamic>;
	@:optional
	var repl : Bool;
};
typedef Repl = {
	function inject(object:Dynamic):Void;
};
extern class Board {
	function new(?option:BoardOptions):Void;
	@:overload(function(event:Ready, cb:Void -> Void):Void { })
	@:overload(function(event:Connect, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
	function pinMode(pin:Float, mode:Float):Void;
	function analogWrite(pin:Float, value:Float):Void;
	function analogRead(pin:Float, cb:Float -> Void):Void;
	function digitalWrite(pin:Float, value:Float):Void;
	function digitalRead(pin:Float, cb:Float -> Void):Void;
	function shiftOut(dataPin:Pin, clockPin:Pin, isBigEndian:Bool, value:Float):Void;
	function wait(ms:Float, cb:Void -> Void):Void;
	function loop(ms:Float, cb:Void -> Void):Void;
	var isReady : Bool;
	var io : Dynamic;
	var id : String;
	var pins : Array<Pin>;
	var port : String;
	var inject : Repl;
}
typedef CompassOptions = {
	var controller : String;
	@:optional
	var gauss : Float;
};
extern class Compass {
	function new(option:CompassOptions):Void;
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef ESCOption = {
	var pin : haxe.extern.EitherType<Float, String>;
	@:optional
	var range : Array<Float>;
	@:optional
	var startAt : Float;
};
extern class ESC {
	function new(option:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, ESCOption>>):Void;
	function speed(value:Float):Void;
	function min():Void;
	function max():Void;
	function stop():Void;
}
typedef GyroGeneralOption = {
	@:optional
	var controller : String;
};
typedef GyroAnalogOption = {
	>GyroGeneralOption,
	var pins : Array<String>;
	var sensitivity : Float;
	@:optional
	var resolution : Float;
};
typedef GyroMPU6050Option = {
	>GyroGeneralOption,
	var sensitivity : Float;
};
extern class Gyro {
	function new(option:haxe.extern.EitherType<GyroGeneralOption, haxe.extern.EitherType<GyroAnalogOption, GyroMPU6050Option>>):Void;
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
	function recalibrate():Void;
}
typedef IMUGeneralOption = {
	@:optional
	var controller : String;
	@:optional
	var freq : Float;
};
typedef IMUMPU6050Option = {
	>IMUGeneralOption,
	var address : Float;
};
extern class IMU {
	function new(option:haxe.extern.EitherType<IMUGeneralOption, IMUMPU6050Option>):Void;
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
