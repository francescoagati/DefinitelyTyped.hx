extern class Grid {
	var files : mongo.Collection;
	function collection(?name:String):mongo.Collection;
	@:overload(function(?options:String):GridFSStream.WriteStream { })
	function createWriteStream(?options:GridFSStream.Options):GridFSStream.WriteStream;
	@:overload(function(?options:String):GridFSStream.ReadStream { })
	function createReadStream(?options:GridFSStream.Options):GridFSStream.ReadStream;
	function remove(options:GridFSStream.Options, callback:Error -> Void):Void;
	function exist(options:GridFSStream.Options, callback:Error -> Bool -> Void):Void;
}
