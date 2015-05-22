extern class PrettyStream extends stream.Writable {
	function pipe<T:(NodeJS.WritableStream)>(destination:T, ?options:{ @:optional
	var end : Bool; }):T;
}
