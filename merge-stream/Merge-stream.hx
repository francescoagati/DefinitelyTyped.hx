typedef IMergedStream = {
	>NodeJS.ReadWriteStream,
	var add : NodeJS.ReadableStream -> IMergedStream;
};
extern class Merge-streamTopLevel {
	static function merge<T:(NodeJS.ReadableStream)>(streams:haxe.extern.Rest<T>):IMergedStream;
}
extern class Merge-streamTopLevel {
	static function merge<T:(NodeJS.ReadableStream)>(streams:haxe.extern.Rest<T>):IMergedStream;
}
