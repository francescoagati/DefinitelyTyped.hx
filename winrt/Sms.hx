@:enum abstract SmsMessageClass(Int) {
	var none = 0;
	var class0 = 1;
	var class1 = 2;
	var class2 = 3;
	var class3 = 4;
}
typedef ISmsMessage = {
	var id : Float;
	var messageClass : Windows.Devices.Sms.SmsMessageClass;
};
@:enum abstract SmsDataFormat(Int) {
	var unknown = 0;
	var cdmaSubmit = 1;
	var gsmSubmit = 2;
	var cdmaDeliver = 3;
	var gsmDeliver = 4;
}
typedef ISmsBinaryMessage = {
	>Windows.Devices.Sms.ISmsMessage,
	var format : Windows.Devices.Sms.SmsDataFormat;
	function getData():Uint8Array;
	function setData(value:Uint8Array):Void;
};
extern class SmsBinaryMessage {
	var format : Windows.Devices.Sms.SmsDataFormat;
	var id : Float;
	var messageClass : Windows.Devices.Sms.SmsMessageClass;
	function getData():Uint8Array;
	function setData(value:Uint8Array):Void;
}
@:enum abstract SmsEncoding(Int) {
	var unknown = 0;
	var optimal = 1;
	var sevenBitAscii = 2;
	var unicode = 3;
	var gsmSevenBit = 4;
}
typedef ISmsTextMessage = {
	>Windows.Devices.Sms.ISmsMessage,
	var body : String;
	var encoding : Windows.Devices.Sms.SmsEncoding;
	var from : String;
	var partCount : Float;
	var partNumber : Float;
	var partReferenceId : Float;
	var timestamp : Date;
	var to : String;
	function toBinaryMessages(format:Windows.Devices.Sms.SmsDataFormat):Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsBinaryMessage>;
};
typedef ISmsTextMessageStatics = {
	function fromBinaryMessage(binaryMessage:Windows.Devices.Sms.SmsBinaryMessage):Windows.Devices.Sms.SmsTextMessage;
	function fromBinaryData(format:Windows.Devices.Sms.SmsDataFormat, value:Uint8Array):Windows.Devices.Sms.SmsTextMessage;
};
extern class SmsTextMessage {
	var body : String;
	var encoding : Windows.Devices.Sms.SmsEncoding;
	var from : String;
	var partCount : Float;
	var partNumber : Float;
	var partReferenceId : Float;
	var timestamp : Date;
	var to : String;
	var id : Float;
	var messageClass : Windows.Devices.Sms.SmsMessageClass;
	function toBinaryMessages(format:Windows.Devices.Sms.SmsDataFormat):Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsBinaryMessage>;
	static function fromBinaryMessage(binaryMessage:Windows.Devices.Sms.SmsBinaryMessage):Windows.Devices.Sms.SmsTextMessage;
	static function fromBinaryData(format:Windows.Devices.Sms.SmsDataFormat, value:Uint8Array):Windows.Devices.Sms.SmsTextMessage;
}
@:enum abstract SmsMessageFilter(Int) {
	var all = 0;
	var unread = 1;
	var read = 2;
	var sent = 3;
	var draft = 4;
}
@:enum abstract SmsMessageType(Int) {
	var binary = 0;
	var text = 1;
}
extern class DeleteSmsMessageOperation {
	var completed : Windows.Foundation.AsyncActionCompletedHandler;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Void;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Dynamic -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Dynamic -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Dynamic -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Dynamic -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Dynamic -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Dynamic>; function getResults():Dynamic; };
}
extern class DeleteSmsMessagesOperation {
	var completed : Windows.Foundation.AsyncActionCompletedHandler;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Void;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Dynamic -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Dynamic -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Dynamic -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Dynamic -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Dynamic -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Dynamic>; function getResults():Dynamic; };
}
extern class GetSmsMessageOperation {
	var completed : Windows.Foundation.AsyncOperationCompletedHandler<Windows.Devices.Sms.ISmsMessage>;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Windows.Devices.Sms.ISmsMessage;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Windows.Devices.Sms.ISmsMessage -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Windows.Devices.Sms.ISmsMessage -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Windows.Devices.Sms.ISmsMessage -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Windows.Devices.Sms.ISmsMessage -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Windows.Devices.Sms.ISmsMessage -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Windows.Devices.Sms.ISmsMessage>; function getResults():Windows.Devices.Sms.ISmsMessage; };
}
extern class GetSmsMessagesOperation {
	var completed : Windows.Foundation.AsyncOperationWithProgressCompletedHandler<Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage>, Float>;
	var progress : Windows.Foundation.AsyncOperationProgressHandler<Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage>, Float>;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage>;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage> -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage> -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage> -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage> -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage> -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var progress : Windows.Foundation.AsyncOperationProgressHandler<Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage>, Float>; var completed : Windows.Foundation.AsyncOperationCompletedHandler<Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage>>; function getResults():Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage>; };
}
typedef ISmsDeviceMessageStore = {
	var maxMessages : Float;
	function deleteMessageAsync(messageId:Float):Windows.Foundation.IAsyncAction;
	function deleteMessagesAsync(messageFilter:Windows.Devices.Sms.SmsMessageFilter):Windows.Foundation.IAsyncAction;
	function getMessageAsync(messageId:Float):Windows.Foundation.IAsyncOperation<Windows.Devices.Sms.ISmsMessage>;
	function getMessagesAsync(messageFilter:Windows.Devices.Sms.SmsMessageFilter):Windows.Foundation.IAsyncOperationWithProgress<Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage>, Float>;
};
extern class SmsDeviceMessageStore {
	var maxMessages : Float;
	function deleteMessageAsync(messageId:Float):Windows.Foundation.IAsyncAction;
	function deleteMessagesAsync(messageFilter:Windows.Devices.Sms.SmsMessageFilter):Windows.Foundation.IAsyncAction;
	function getMessageAsync(messageId:Float):Windows.Foundation.IAsyncOperation<Windows.Devices.Sms.ISmsMessage>;
	function getMessagesAsync(messageFilter:Windows.Devices.Sms.SmsMessageFilter):Windows.Foundation.IAsyncOperationWithProgress<Windows.Foundation.Collections.IVectorView<Windows.Devices.Sms.ISmsMessage>, Float>;
}
typedef SmsEncodedLength = {
	var segmentCount : Float;
	var characterCountLastSegment : Float;
	var charactersPerSegment : Float;
	var byteCountLastSegment : Float;
	var bytesPerSegment : Float;
};
@:enum abstract CellularClass(Int) {
	var none = 0;
	var gsm = 1;
	var cdma = 2;
}
@:enum abstract SmsDeviceStatus(Int) {
	var off = 0;
	var ready = 1;
	var simNotInserted = 2;
	var badSim = 3;
	var deviceFailure = 4;
	var subscriptionNotActivated = 5;
	var deviceLocked = 6;
	var deviceBlocked = 7;
}
extern class SendSmsMessageOperation {
	var completed : Windows.Foundation.AsyncActionCompletedHandler;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Void;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Void -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Void -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Void -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Void -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Void -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Dynamic>; function getResults():Dynamic; };
}
typedef ISmsMessageReceivedEventArgs = {
	var binaryMessage : Windows.Devices.Sms.SmsBinaryMessage;
	var textMessage : Windows.Devices.Sms.SmsTextMessage;
};
extern class SmsMessageReceivedEventArgs {
	var binaryMessage : Windows.Devices.Sms.SmsBinaryMessage;
	var textMessage : Windows.Devices.Sms.SmsTextMessage;
}
typedef SmsMessageReceivedEventHandler = { };
extern class SmsDevice {
	var accountPhoneNumber : String;
	var cellularClass : Windows.Devices.Sms.CellularClass;
	var deviceStatus : Windows.Devices.Sms.SmsDeviceStatus;
	var messageStore : Windows.Devices.Sms.SmsDeviceMessageStore;
	function sendMessageAsync(message:Windows.Devices.Sms.ISmsMessage):Windows.Devices.Sms.SendSmsMessageOperation;
	function calculateLength(message:Windows.Devices.Sms.SmsTextMessage):Windows.Devices.Sms.SmsEncodedLength;
	var onsmsmessagereceived : Dynamic;
	var onsmsdevicestatuschanged : Dynamic;
	static function getDeviceSelector():String;
	static function fromIdAsync(deviceInstanceId:String):Windows.Foundation.IAsyncOperation<Windows.Devices.Sms.SmsDevice>;
	static function getDefaultAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Sms.SmsDevice>;
}
typedef SmsDeviceStatusChangedEventHandler = { };
extern class GetSmsDeviceOperation {
	var completed : Windows.Foundation.AsyncOperationCompletedHandler<Windows.Devices.Sms.SmsDevice>;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Windows.Devices.Sms.SmsDevice;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Windows.Devices.Sms.SmsDevice -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Windows.Devices.Sms.SmsDevice -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Windows.Devices.Sms.SmsDevice -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Windows.Devices.Sms.SmsDevice -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Windows.Devices.Sms.SmsDevice -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Windows.Devices.Sms.SmsDevice>; function getResults():Windows.Devices.Sms.SmsDevice; };
}
typedef ISmsDeviceStatics = {
	function getDeviceSelector():String;
	function fromIdAsync(deviceInstanceId:String):Windows.Foundation.IAsyncOperation<Windows.Devices.Sms.SmsDevice>;
	function getDefaultAsync():Windows.Foundation.IAsyncOperation<Windows.Devices.Sms.SmsDevice>;
};
typedef ISmsDevice = {
	var accountPhoneNumber : String;
	var cellularClass : Windows.Devices.Sms.CellularClass;
	var deviceStatus : Windows.Devices.Sms.SmsDeviceStatus;
	var messageStore : Windows.Devices.Sms.SmsDeviceMessageStore;
	function sendMessageAsync(message:Windows.Devices.Sms.ISmsMessage):Windows.Devices.Sms.SendSmsMessageOperation;
	function calculateLength(message:Windows.Devices.Sms.SmsTextMessage):Windows.Devices.Sms.SmsEncodedLength;
	var onsmsmessagereceived : Dynamic;
	var onsmsdevicestatuschanged : Dynamic;
};
typedef ISmsReceivedEventDetails = {
	var deviceId : String;
	var messageIndex : Float;
};
extern class SmsReceivedEventDetails {
	var deviceId : String;
	var messageIndex : Float;
}
