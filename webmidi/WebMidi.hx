typedef MidiOptions = {
	var sysex : Bool;
};
typedef IteratorItem<S> = {
	var value : S;
	var done : Bool;
};
typedef Iterator<S> = {
	function next():IteratorItem<S>;
};
typedef Tuple2<A, B> = {
	var fst : A;
	var snd : B;
};
typedef MIDIInputMap = {
	var size : Float;
	var keys : Void -> Iterator<String>;
	var entries : Void -> Iterator<Tuple2<String, MIDIInput>>;
	function values():Iterator<MIDIInput>;
	function get(key:String):MIDIInput;
	function has(key:String):Bool;
};
typedef MIDIOutputMap = {
	var size : Float;
	var keys : Void -> Iterator<String>;
	var entries : Void -> Iterator<Tuple2<String, MIDIOutput>>;
	function values():Iterator<MIDIOutput>;
	function get(key:String):MIDIOutput;
	function has(key:String):Bool;
};
typedef MIDIAccess = {
	>EventTarget,
	var inputs : MIDIInputMap;
	var outputs : MIDIOutputMap;
	var onconnect : MIDIConnectionEvent -> Void;
	var ondisconnect : MIDIConnectionEvent -> Void;
	var sysexEnabled : Bool;
};
@:enum abstract MIDIPortType(Int) {
	var input = 0;
	var output = 1;
}
typedef MIDIPort = {
	>EventTarget,
	var id : String;
	@:optional
	var manufacture : String;
	@:optional
	var name : String;
	var type : MIDIPortType;
	@:optional
	var version : String;
	var ondisconnect : haxe.Constraints.Function;
};
typedef MIDIInput = {
	var onmidimessage : MIDIMessageEvent -> Void;
};
typedef MIDIOutput = {
	function send(data:Array<Float>, ?timestamp:Float):Void;
};
typedef MIDIMessageEvent = {
	>Event,
	var receivedTime : Float;
	var data : Uint8Array;
};
typedef MIDIMessageEventInit = {
	var receivedTime : Float;
	var data : Uint8Array;
};
typedef MIDIConnectionEvent = {
	>Event,
	var port : MIDIPort;
};
typedef MIDIConnectionEventInit = {
	var port : MIDIPort;
};
