typedef HeaderProperties = {
	@:optional
	var path : String;
	@:optional
	var mode : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var size : Float;
	@:optional
	var mtime : Float;
	@:optional
	var uname : String;
	@:optional
	var gname : String;
	@:optional
	var devmaj : Float;
	@:optional
	var devmin : Float;
};
typedef ExtractOptions = {
	@:optional
	var type : String;
	@:optional
	var Directory : Bool;
	@:optional
	var path : String;
	@:optional
	var strip : Float;
};
typedef ParseStream = {
	>NodeJS.ReadWriteStream,
	var position : Float;
	var _stream : stream.Stream;
	var _ended : Bool;
	function _streamEnd():Void;
	function _process(c:Buffer):Void;
	function _startEntry(c:Buffer):Void;
};
typedef PackStream = {
	>NodeJS.ReadWriteStream,
	var writable : Bool;
	var readable : Bool;
	var _noProprietary : Bool;
	var _global : HeaderProperties;
	var _buffer : Array<stream.Stream>;
	var _currentEntry : Dynamic;
	var _processing : Bool;
	var _pipeRoot : stream.Stream;
	var _needDrain : Bool;
	var _paused : Bool;
	function addGlobal(props:HeaderProperties):Void;
	function add(stream:stream.Stream):Bool;
	function destroy():Void;
	function _process():Void;
};
typedef ExtractStream = {
	>ParseStream,
};
extern class TarTopLevel {
	static var fields : { var path : Float; var mode : Float; var uid : Float; var gid : Float; var size : Float; var mtime : Float; var cksum : Float; var type : Float; var linkpath : Float; var ustar : Float; var ustarvar : Float; var uname : Float; var gname : Float; var devmaj : Float; var devmin : Float; var prefix : Float; var fill : Float; };
	static var fieldSize : Array<Float>;
	static var fieldOffs : Array<Float>;
	static var fieldEnds : Array<Float>;
	static var types : { var _0 : String; var \0 : String; var  : String; var _1 : String; var _2 : String; var _3 : String; var _4 : String; var _5 : String; var _6 : String; var _7 : String; var g : String; var x : String; var A : String; var D : String; var I : String; var K : String; var L : String; var M : String; var N : String; var S : String; var V : String; var X : String; var File : String; var OldFile : String; var Link : String; var SymbolicLick : String; var CharacterDevice : String; var BlockDevice : String; var Directory : String; var FIFO : String; var ContiguousFile : String; var GlobalExtendedHeader : String; var ExtendedHeader : String; var SolarisACL : String; var GNUDumpDir : String; var INode : String; var NextFileHasLonLinkPath : String; var NextFileHasLongPath : String; var ContinuationFile : String; var TapeVolumeHeader : String; var OldExtendedHeader : String; };
	static var modes : { var suid : Float; var sgid : Float; var svtx : Float; var uread : Float; var uwrite : Float; var uexec : Float; var gread : Float; var gwrite : Float; var gexec : Float; var oread : Float; var owrite : Float; var oexec : Float; };
	static var numeric : { var mode : Bool; var uid : Bool; var gid : Bool; var size : Bool; var mtime : Bool; var devmaj : Bool; var devmin : Bool; var cksum : Bool; var atime : Bool; var ctime : Bool; var dev : Bool; var ino : Bool; var nlink : Bool; };
	static var knownExtended : { var atime : Bool; var charset : Bool; var comment : Bool; var ctime : Bool; var gid : Bool; var gname : Bool; var linkpat : Bool; var mtime : Bool; var path : Bool; var realtime : Bool; var security : Bool; var size : Bool; var uid : Bool; var uname : Bool; };
	static var headerSize : Float;
	static var blockSize : Float;
	static function Parse():ParseStream;
	static function Pack(?props:HeaderProperties):PackStream;
	static function Extract(path:String):ExtractStream;
	static function Extract(opts:ExtractOptions):ExtractStream;
}
extern class TarTopLevel {
	static var fields : { var path : Float; var mode : Float; var uid : Float; var gid : Float; var size : Float; var mtime : Float; var cksum : Float; var type : Float; var linkpath : Float; var ustar : Float; var ustarvar : Float; var uname : Float; var gname : Float; var devmaj : Float; var devmin : Float; var prefix : Float; var fill : Float; };
	static var fieldSize : Array<Float>;
	static var fieldOffs : Array<Float>;
	static var fieldEnds : Array<Float>;
	static var types : { var _0 : String; var \0 : String; var  : String; var _1 : String; var _2 : String; var _3 : String; var _4 : String; var _5 : String; var _6 : String; var _7 : String; var g : String; var x : String; var A : String; var D : String; var I : String; var K : String; var L : String; var M : String; var N : String; var S : String; var V : String; var X : String; var File : String; var OldFile : String; var Link : String; var SymbolicLick : String; var CharacterDevice : String; var BlockDevice : String; var Directory : String; var FIFO : String; var ContiguousFile : String; var GlobalExtendedHeader : String; var ExtendedHeader : String; var SolarisACL : String; var GNUDumpDir : String; var INode : String; var NextFileHasLonLinkPath : String; var NextFileHasLongPath : String; var ContinuationFile : String; var TapeVolumeHeader : String; var OldExtendedHeader : String; };
	static var modes : { var suid : Float; var sgid : Float; var svtx : Float; var uread : Float; var uwrite : Float; var uexec : Float; var gread : Float; var gwrite : Float; var gexec : Float; var oread : Float; var owrite : Float; var oexec : Float; };
	static var numeric : { var mode : Bool; var uid : Bool; var gid : Bool; var size : Bool; var mtime : Bool; var devmaj : Bool; var devmin : Bool; var cksum : Bool; var atime : Bool; var ctime : Bool; var dev : Bool; var ino : Bool; var nlink : Bool; };
	static var knownExtended : { var atime : Bool; var charset : Bool; var comment : Bool; var ctime : Bool; var gid : Bool; var gname : Bool; var linkpat : Bool; var mtime : Bool; var path : Bool; var realtime : Bool; var security : Bool; var size : Bool; var uid : Bool; var uname : Bool; };
	static var headerSize : Float;
	static var blockSize : Float;
	static function Parse():ParseStream;
	static function Pack(?props:HeaderProperties):PackStream;
	static function Extract(path:String):ExtractStream;
	static function Extract(opts:ExtractOptions):ExtractStream;
}
