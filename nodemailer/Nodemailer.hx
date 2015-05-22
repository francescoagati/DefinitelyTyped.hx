typedef Plugin = { };
typedef Transporter = {
	function sendMail(mail:SendMailOptions, ?callback:Error -> SentMessageInfo -> Void):Void;
	function use(step:String, plugin:Plugin):Void;
	@:optional
	function close():Void;
};
extern class NodemailerTopLevel {
	static function createTransport(?options:directTransport.DirectOptions):Transporter;
	static function createTransport(?options:smtpTransport.SmtpOptions):Transporter;
	static function createTransport(transport:Transport):Transporter;
}
extern class NodemailerTopLevel {
	static function createTransport(?options:directTransport.DirectOptions):Transporter;
	static function createTransport(?options:smtpTransport.SmtpOptions):Transporter;
	static function createTransport(transport:Transport):Transporter;
}
