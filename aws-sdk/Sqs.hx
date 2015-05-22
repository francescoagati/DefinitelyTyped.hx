typedef Client = {
	var config : ClientConfig;
	function sendMessage(params:SendMessageRequest, callback:Dynamic -> SendMessageResult -> Void):Void;
	function sendMessageBatch(params:SendMessageBatchRequest, callback:Dynamic -> SendMessageBatchResult -> Void):Void;
	function receiveMessage(params:ReceiveMessageRequest, callback:Dynamic -> ReceiveMessageResult -> Void):Void;
	function deleteMessage(params:DeleteMessageRequest, callback:Dynamic -> Dynamic -> Void):Void;
	function deleteMessageBatch(params:DeleteMessageBatchRequest, callback:Dynamic -> DeleteMessageBatchResult -> Void):Void;
	function createQueue(params:CreateQueueRequest, callback:Dynamic -> CreateQueueResult -> Void):Void;
	function deleteQueue(params:DeleteQueueRequest, callback:Dynamic -> Dynamic -> Void):Void;
};
typedef SendMessageRequest = {
	@:optional
	var QueueUrl : String;
	@:optional
	var MessageBody : String;
	@:optional
	var DelaySeconds : Float;
};
typedef ReceiveMessageRequest = {
	@:optional
	var QueueUrl : String;
	@:optional
	var MaxNumberOfMessages : Float;
	@:optional
	var VisibilityTimeout : Float;
	@:optional
	var AttributeNames : Array<String>;
};
typedef DeleteMessageBatchRequest = {
	@:optional
	var QueueUrl : String;
	@:optional
	var Entries : Array<DeleteMessageBatchRequestEntry>;
};
typedef DeleteMessageBatchRequestEntry = {
	var Id : String;
	var ReceiptHandle : String;
};
typedef DeleteMessageRequest = {
	@:optional
	var QueueUrl : String;
	@:optional
	var ReceiptHandle : String;
};
extern class Attribute {
	var Name : String;
	var Value : String;
}
typedef SendMessageBatchRequest = {
	@:optional
	var QueueUrl : String;
	@:optional
	var Entries : Array<SendMessageBatchRequestEntry>;
};
extern class SendMessageBatchRequestEntry {
	var Id : String;
	var MessageBody : String;
	var DelaySeconds : Float;
}
typedef CreateQueueRequest = {
	@:optional
	var QueueName : String;
	@:optional
	var DefaultVisibilityTimeout : Float;
	@:optional
	var DelaySeconds : Float;
	@:optional
	var Attributes : Array<Attribute>;
};
typedef DeleteQueueRequest = {
	@:optional
	var QueueUrl : String;
};
extern class SendMessageResult {
	var MessageId : String;
	var MD5OfMessageBody : String;
}
extern class ReceiveMessageResult {
	var Messages : Array<Message>;
}
extern class Message {
	var MessageId : String;
	var ReceiptHandle : String;
	var MD5OfBody : String;
	var Body : String;
	var Attributes : Array<Attribute>;
}
extern class DeleteMessageBatchResult {
	var Successful : Array<DeleteMessageBatchResultEntry>;
	var Failed : Array<BatchResultErrorEntry>;
}
extern class DeleteMessageBatchResultEntry {
	var Id : String;
}
extern class BatchResultErrorEntry {
	var Id : String;
	var Code : String;
	var Message : String;
	var SenderFault : String;
}
extern class SendMessageBatchResult {
	var Successful : Array<SendMessageBatchResultEntry>;
	var Failed : Array<BatchResultErrorEntry>;
}
extern class SendMessageBatchResultEntry {
	var Id : String;
	var MessageId : String;
	var MD5OfMessageBody : String;
}
extern class CreateQueueResult {
	var QueueUrl : String;
}
