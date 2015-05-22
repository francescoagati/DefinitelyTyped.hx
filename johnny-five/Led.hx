typedef DigitsOption = {
	var pins : Dynamic;
	@:optional
	var devices : Float;
};
extern class Digits {
	function new(option:DigitsOption):Void;
	@:overload(function(index:Float):Void { })
	function on():Void;
	@:overload(function(index:Float):Void { })
	function off():Void;
	@:overload(function(index:Float):Void { })
	function clear():Void;
	@:overload(function(index:Float, value:Float):Void { })
	function brightness(value:Float):Void;
	@:overload(function(index:Float, position:Float, character:Float):Void { })
	function draw(position:Float, character:Float):Void;
}
typedef MatrixOption = {
	var pins : Dynamic;
	@:optional
	var devices : Float;
};
typedef MatrixIC2Option = {
	var controller : String;
	@:optional
	var addresses : Array<Dynamic>;
	@:optional
	var isBicolor : Bool;
	@:optional
	var dims : Dynamic;
	@:optional
	var rotation : Float;
};
extern class Matrix {
	function new(option:haxe.extern.EitherType<MatrixOption, MatrixIC2Option>):Void;
	@:overload(function(index:Float):Void { })
	function on():Void;
	@:overload(function(index:Float):Void { })
	function off():Void;
	@:overload(function(index:Float):Void { })
	function clear():Void;
	@:overload(function(index:Float, value:Float):Void { })
	function brightness(value:Float):Void;
	@:overload(function(index:Float, row:Float, col:Float, state:Dynamic):Void { })
	function led(row:Float, col:Float, state:Dynamic):Void;
	@:overload(function(index:Float, row:Float, val:Float):Void { })
	function row(row:Float, val:Float):Void;
	@:overload(function(index:Float, row:Float, val:Float):Void { })
	function column(row:Float, val:Float):Void;
	@:overload(function(index:Float, position:Float, character:Float):Void { })
	function draw(position:Float, character:Float):Void;
}
typedef RGBOption = {
	var pins : Array<Float>;
	@:optional
	var isAnode : Bool;
	@:optional
	var controller : String;
};
extern class RGB {
	function new(option:RGBOption):Void;
	function on():Void;
	function off():Void;
	function color(value:Float):Void;
	function toggle():Void;
	function strobe(ms:Float):Void;
	function brightness(value:Float):Void;
	function fadeIn(ms:Float):Void;
	function fadeOut(ms:Float):Void;
	function pulse(ms:Float):Void;
	function stop(ms:Float):Void;
}
typedef MotorOption = {
	var pins : Dynamic;
	@:optional
	var current : Dynamic;
	@:optional
	var invertPWM : Bool;
	@:optional
	var address : Float;
	@:optional
	var controller : String;
	@:optional
	var register : Dynamic;
	@:optional
	var bits : Dynamic;
};
extern class Motor {
	function new(option:haxe.extern.EitherType<Array<Float>, MotorOption>):Void;
	function forward(speed:Float):Void;
	function fwd(speed:Float):Void;
	function reverse(speed:Float):Void;
	function rev(speed:Float):Void;
	@:overload(function(speed:Float):Void { })
	function start():Void;
	function stop():Void;
	function brake():Void;
	function release():Void;
}
typedef PiezoOption = {
	var pin : Float;
};
extern class Piezo {
	function new(option:haxe.extern.EitherType<Float, PiezoOption>):Void;
	function frequency(frequency:Float, duration:Float):Void;
	function play(tune:Dynamic, ?cb:Void -> Void):Void;
	function tone(frequency:Float, duration:Float):Void;
	function noTone():Void;
	function off():Void;
}
typedef PinOption = {
	@:optional
	var id : haxe.extern.EitherType<Float, String>;
	var pin : haxe.extern.EitherType<Float, String>;
	@:optional
	var type : String;
};
typedef PinState = {
	var supportedModes : Array<Float>;
	var mode : Float;
	var value : Float;
	var report : Float;
	var analogChannel : Float;
};
extern class Pin {
	function new(option:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, PinOption>>):Void;
	function query(cb:PinState -> Void):Void;
	function high():Void;
	function low():Void;
	@:overload(function(pin:Float, value:Float):Void { })
	function write(value:Float):Void;
	@:overload(function(pin:Float, cb:Float -> Void):Void { })
	function read(cb:Float -> Void):Void;
}
typedef PingOption = {
	var pin : haxe.extern.EitherType<Float, String>;
	@:optional
	var freq : Float;
	@:optional
	var pulse : Float;
};
extern class Ping {
	function new(option:haxe.extern.EitherType<Float, PingOption>):Void;
}
typedef RelayOption = {
	var pin : haxe.extern.EitherType<Float, String>;
	@:optional
	var type : String;
};
extern class Relay {
	function new(option:haxe.extern.EitherType<Float, RelayOption>):Void;
	function open():Void;
	function close():Void;
	function toggle():Void;
}
typedef SensorOption = {
	var pin : haxe.extern.EitherType<Float, String>;
	@:optional
	var freq : Bool;
	@:optional
	var threshold : Float;
};
extern class Sensor {
	function new(option:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, SensorOption>>):Void;
	@:overload(function(range:Array<Float>):Sensor { })
	@:overload(function():Sensor { })
	function scale(low:Float, high:Float):Sensor;
	function booleanAt(barrier:Float):Bool;
	function within(range:Array<Float>, cb:Void -> Void):Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef ServoGeneralOption = {
	var pin : haxe.extern.EitherType<Float, String>;
	@:optional
	var range : Array<Float>;
	@:optional
	var type : String;
	@:optional
	var startAt : Float;
	@:optional
	var isInverted : Bool;
	@:optional
	var center : Bool;
	@:optional
	var controller : String;
};
typedef ServoPCA9685Option = {
	>ServoGeneralOption,
	@:optional
	var address : Float;
};
typedef ServoSweepOpts = {
	var range : Array<Float>;
	@:optional
	var interval : Float;
	@:optional
	var step : Float;
};
extern class Servo {
	function new(option:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, ServoGeneralOption>>):Void;
	function to(degrees:Float, ?ms:Float, ?rage:Float):Void;
	function min():Void;
	function max():Void;
	function center():Void;
	@:overload(function(range:Array<Float>):Void { })
	@:overload(function(opt:ServoSweepOpts):Void { })
	function sweep():Void;
	function stop():Void;
	function cw(speed:Float):Void;
	function ccw(speed:Float):Void;
	@:overload(function(event:Move:complete, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef ShiftRegisterOption = {
	var pins : Dynamic;
};
extern class ShiftRegister {
	function new(option:ShiftRegisterOption):Void;
	function send(value:haxe.extern.Rest<Float>):Void;
}
typedef SonarOption = {
	var pin : haxe.extern.EitherType<Float, String>;
	var device : String;
	@:optional
	var freq : Float;
	@:optional
	var threshold : Float;
};
extern class Sonar {
	function new(option:haxe.extern.EitherType<Float, haxe.extern.EitherType<String, SonarOption>>):Void;
	@:overload(function(range:Array<Float>, unit:String, cb:Void -> Void):Void { })
	function within(range:Array<Float>, cb:Void -> Void):Void;
	@:overload(function(event:Data, cb:Dynamic -> Void):Void { })
	@:overload(function(event:Change, cb:Void -> Void):Void { })
	function on(event:String, cb:Void -> Void):Void;
}
typedef StepperOption = {
	var pins : Dynamic;
	var stepsPerRev : Float;
	var type : Float;
	@:optional
	var rpm : Float;
	@:optional
	var direction : Float;
};
