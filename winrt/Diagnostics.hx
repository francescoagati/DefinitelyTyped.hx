@:enum abstract ErrorOptions(Int) {
	var none = 0;
	var suppressExceptions = 1;
	var forceExceptions = 2;
	var useSetErrorInfo = 3;
	var suppressSetErrorInfo = 4;
}
typedef IErrorReportingSettings = {
	function setErrorOptions(value:Windows.Foundation.Diagnostics.ErrorOptions):Void;
	function getErrorOptions():Windows.Foundation.Diagnostics.ErrorOptions;
};
extern class RuntimeBrokerErrorSettings {
	function setErrorOptions(value:Windows.Foundation.Diagnostics.ErrorOptions):Void;
	function getErrorOptions():Windows.Foundation.Diagnostics.ErrorOptions;
}
