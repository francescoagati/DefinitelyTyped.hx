typedef Traceback = {
	var name : String;
	var path : String;
	var file : String;
	var line : Float;
	var col : Float;
	var pos : Float;
	var fun : Dynamic;
	var method : String;
	var this : Dynamic;
	var type : String;
	var origin : Dynamic;
	var is_top : Bool;
	var is_eval : Bool;
	var is_native : Bool;
	var is_ctor : Bool;
};
typedef TracebackStatic = { };
extern class TracebackTopLevel {
	static var traceback : TracebackStatic;
}
extern class TracebackTopLevel {
	static var traceback : TracebackStatic;
}
