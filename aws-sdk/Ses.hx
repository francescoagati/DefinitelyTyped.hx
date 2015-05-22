typedef Client = {
	var config : ClientConfig;
	function sendEmail(params:Dynamic, callback:Dynamic -> SendEmailResult -> Void):Void;
};
typedef SendEmailRequest = {
	var Source : String;
	var Destination : Destination;
	var Message : Message;
	var ReplyToAddresses : Array<String>;
	var ReturnPath : String;
};
extern class Destination {
	var ToAddresses : Array<String>;
	var CcAddresses : Array<String>;
	var BccAddresses : Array<String>;
}
extern class Message {
	var Subject : Content;
	var Body : Body;
}
extern class Content {
	var Data : String;
	var Charset : String;
}
extern class Body {
	var Text : Content;
	var Html : Content;
}
extern class SendEmailResult {
	var MessageId : String;
}
