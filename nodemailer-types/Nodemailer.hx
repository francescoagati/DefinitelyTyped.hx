typedef AttachmentObject = {
	@:optional
	var filename : String;
	@:optional
	var cid : String;
	@:optional
	var path : String;
	var content : haxe.extern.EitherType<String, haxe.extern.EitherType<Buffer, NodeJS.ReadableStream>>;
	@:optional
	var encoding : String;
	@:optional
	var contentType : String;
	@:optional
	var contentDisposition : String;
};
typedef SendMailOptions = {
	@:optional
	var from : String;
	@:optional
	var sender : String;
	@:optional
	var to : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var cc : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var bcc : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var replyTo : String;
	@:optional
	var inReplyTo : String;
	@:optional
	var references : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var sbject : String;
	@:optional
	var text : haxe.extern.EitherType<String, haxe.extern.EitherType<Buffer, haxe.extern.EitherType<NodeJS.ReadableStream, AttachmentObject>>>;
	@:optional
	var html : haxe.extern.EitherType<String, haxe.extern.EitherType<Buffer, haxe.extern.EitherType<NodeJS.ReadableStream, AttachmentObject>>>;
	@:optional
	var headers : Dynamic;
	@:optional
	var attachments : Array<AttachmentObject>;
	@:optional
	var alternatives : Array<AttachmentObject>;
	@:optional
	var messageId : String;
	@:optional
	var date : Date;
	@:optional
	var encoding : String;
};
typedef SentMessageInfo = {
	var messageId : String;
	var envelope : Dynamic;
	var accepted : Array<String>;
	var rejected : Array<String>;
	@:optional
	var pending : Array<String>;
	var response : String;
};
typedef Transport = {
	var name : String;
	var version : String;
	function send(mail:SendMailOptions, ?callback:Error -> SentMessageInfo -> Void):Void;
	function close():Void;
};
