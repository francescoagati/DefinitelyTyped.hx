typedef NodeStringDecoder = {
	function write(buffer:Buffer):String;
	function detectIncompleteChar(buffer:Buffer):Float;
};
extern class String_decoderTopLevel {
	static var StringDecoder : { function new(encoding:String):NodeStringDecoder; };
}
