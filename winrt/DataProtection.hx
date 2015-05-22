typedef IDataProtectionProvider = {
	function protectAsync(data:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IBuffer>;
	function unprotectAsync(data:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IBuffer>;
	function protectStreamAsync(src:Windows.Storage.Streams.IInputStream, dest:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncAction;
	function unprotectStreamAsync(src:Windows.Storage.Streams.IInputStream, dest:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncAction;
};
typedef IDataProtectionProviderFactory = {
	function createOverloadExplicit(protectionDescriptor:String):Windows.Security.Cryptography.DataProtection.DataProtectionProvider;
};
extern class DataProtectionProvider {
	@:overload(function():Void { })
	function new(protectionDescriptor:String):Void;
	function protectAsync(data:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IBuffer>;
	function unprotectAsync(data:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IBuffer>;
	function protectStreamAsync(src:Windows.Storage.Streams.IInputStream, dest:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncAction;
	function unprotectStreamAsync(src:Windows.Storage.Streams.IInputStream, dest:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncAction;
}
