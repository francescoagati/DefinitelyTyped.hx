typedef Client = {
	var config : ClientConfig;
	function publicTopic(params:PublishRequest, callback:Dynamic -> PublishResult -> Void):Void;
	function createTopic(params:CreateTopicRequest, callback:Dynamic -> CreateTopicResult -> Void):Void;
	function deleteTopic(params:DeleteTopicRequest, callback:Dynamic -> Dynamic -> Void):Void;
};
typedef PublishRequest = {
	@:optional
	var TopicArn : String;
	@:optional
	var Message : String;
	@:optional
	var MessageStructure : String;
	@:optional
	var Subject : String;
};
typedef PublishResult = {
	@:optional
	var MessageId : String;
};
typedef CreateTopicRequest = {
	@:optional
	var Name : String;
};
typedef CreateTopicResult = {
	@:optional
	var TopicArn : String;
};
typedef DeleteTopicRequest = {
	@:optional
	var TopicArn : String;
};
