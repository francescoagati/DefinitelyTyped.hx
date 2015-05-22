extern class Client {
	function new(connectionString:String, clientId:String, ?options:ZKOptions):Void;
	function close(?callback:haxe.Constraints.Function):Void;
}
extern class Producer {
	function new(client:Client):Void;
	@:overload(function(eventName:String, cb:Dynamic -> Dynamic):Void { })
	function on(eventName:String, cb:Void -> Dynamic):Void;
	function send(payloads:Array<ProduceRequest>, cb:Dynamic -> Dynamic -> Dynamic):Void;
	function createTopics(topics:Array<String>, async:Bool, ?cb:Dynamic -> Dynamic -> Dynamic):Void;
}
extern class HighLevelProducer {
	function new(client:Client):Void;
	@:overload(function(eventName:String, cb:Dynamic -> Dynamic):Void { })
	function on(eventName:String, cb:Void -> Dynamic):Void;
	function send(payloads:Array<ProduceRequest>, cb:Dynamic -> Dynamic -> Dynamic):Void;
	function createTopics(topics:Array<String>, async:Bool, ?cb:Dynamic -> Dynamic -> Dynamic):Void;
}
extern class Consumer {
	function new(client:Client, fetchRequests:Array<Topic>, options:ConsumerOptions):Void;
	@:overload(function(eventName:String, cb:Dynamic -> Dynamic):Void { })
	function on(eventName:String, cb:String -> Dynamic):Void;
	@:overload(function(topics:Array<Topic>, cb:Dynamic -> Bool -> Dynamic, fromOffset:Bool):Void { })
	function addTopics(topics:Array<String>, cb:Dynamic -> Bool -> Dynamic):Void;
	function removeTopics(topics:Array<String>, cb:Dynamic -> Bool -> Dynamic):Void;
	function commit(cb:Dynamic -> Dynamic -> Dynamic):Void;
	function setOffset(topic:String, partition:Float, offset:Float):Void;
	function pause():Void;
	function resume():Void;
	function pauseTopics(topics:Array<Dynamic>):Void;
	function resumeTopics(topics:Array<Dynamic>):Void;
	function close(force:Bool, cb:Void -> Dynamic):Void;
}
extern class HighLevelConsumer {
	function new(client:Client, payloads:Array<Topic>, options:ConsumerOptions):Void;
	@:overload(function(eventName:String, cb:Dynamic -> Dynamic):Void { })
	function on(eventName:String, cb:String -> Dynamic):Void;
	@:overload(function(topics:Array<Topic>, cb:Dynamic -> Bool -> Dynamic, fromOffset:Bool):Void { })
	function addTopics(topics:Array<String>, cb:Dynamic -> Bool -> Dynamic):Void;
	function removeTopics(topics:Array<String>, cb:Dynamic -> Bool -> Dynamic):Void;
	function commit(cb:Dynamic -> Dynamic -> Dynamic):Void;
	function setOffset(topic:String, partition:Float, offset:Float):Void;
	function pause():Void;
	function resume():Void;
	function pauseTopics(topics:Array<Dynamic>):Void;
	function resumeTopics(topics:Array<Dynamic>):Void;
	function close(force:Bool, cb:Void -> Dynamic):Void;
}
extern class Offset {
	function new(client:Client):Void;
	function on(eventName:String, cb:Void -> Dynamic):Void;
	function fetch(payloads:Array<OffsetRequest>, cb:Dynamic -> Dynamic -> Dynamic):Void;
	function commit(groupId:String, payloads:Array<OffsetCommitRequest>, cb:Dynamic -> Dynamic -> Dynamic):Void;
	function fetchCommits(groupId:String, payloads:Array<OffsetFetchRequest>, cb:Dynamic -> Dynamic -> Dynamic):Void;
}
extern class KeyedMessage {
	function new(key:String, message:String):Void;
}
typedef ZKOptions = {
	@:optional
	var sessionTimeout : Float;
	@:optional
	var spinDelay : Float;
	@:optional
	var retries : Float;
};
typedef ProduceRequest = {
	var topic : String;
	var messages : Dynamic;
	@:optional
	var partition : Float;
	@:optional
	var attributes : Float;
};
typedef ConsumerOptions = {
	@:optional
	var groupId : String;
	@:optional
	var autoCommit : Bool;
	@:optional
	var autoCommitIntervalMs : Float;
	@:optional
	var fetchMaxWaitMs : Float;
	@:optional
	var fetchMinBytes : Float;
	@:optional
	var fetchMaxBytes : Float;
	@:optional
	var fromOffset : Bool;
	@:optional
	var encoding : String;
};
typedef Topic = {
	var topic : String;
	@:optional
	var offset : Float;
};
typedef OffsetRequest = {
	var topic : String;
	@:optional
	var partition : Float;
	@:optional
	var time : Float;
	@:optional
	var maxNum : Float;
};
typedef OffsetCommitRequest = {
	var topic : String;
	@:optional
	var partition : Float;
	var offset : Float;
	@:optional
	var metadata : String;
};
typedef OffsetFetchRequest = {
	var topic : String;
	@:optional
	var partition : Float;
};
