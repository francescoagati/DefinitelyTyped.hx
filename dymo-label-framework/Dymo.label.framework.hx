@:enum abstract AddressBarcodePosition(Int) {
	var AboveAddress = 0;
	var BelowAddress = 1;
	var Suppress = 2;
}
@:enum abstract FlowDirection(Int) {
	var LeftToRight = 0;
	var RightToLeft = 1;
}
@:enum abstract LabelWriterPrintQuality(Int) {
	var Text = 0;
	var BarcodeAndGraphics = 1;
	var Auto = 2;
}
@:enum abstract PrintJobStatus(Int) {
	var Error = 0;
	var Finished = 1;
	var InQueue = 2;
	var InvalidJobId = 3;
	var NotSpooled = 4;
	var PaperOut = 5;
	var PrinterBusy = 6;
	var Printing = 7;
	var ProcessingError = 8;
	var Unknown = 9;
}
@:enum abstract TapeAlignment(Int) {
	var Center = 0;
	var Left = 1;
	var Right = 2;
}
@:enum abstract TapeCutMode(Int) {
	var AutoCut = 0;
	var ChainMarks = 1;
}
@:enum abstract TwinTurboRoll(Int) {
	var Left = 0;
	var Right = 1;
	var Auto = 2;
}
typedef Color = {
	@:optional
	var alpha : Float;
	@:optional
	var red : Float;
	@:optional
	var green : Float;
	@:optional
	var blue : Float;
};
typedef CreateLabelRenderParamsXmlParams = {
	@:optional
	var labelColor : Color;
	@:optional
	var shadowColor : Color;
	@:optional
	var shadowDepth : Float;
	@:optional
	var flowDirection : FlowDirection;
	@:optional
	var pngUseDisplayResolution : Bool;
};
typedef CreateLabelWriterPrintParamsXmlParams = {
	@:optional
	var copies : Float;
	@:optional
	var jobTitle : String;
	@:optional
	var flowDirection : FlowDirection;
	@:optional
	var printQuality : LabelWriterPrintQuality;
	@:optional
	var twinTurboRoll : TwinTurboRoll;
};
typedef CreateTapePrintParamsXmlParams = {
	@:optional
	var copies : Float;
	@:optional
	var jobTitle : String;
	@:optional
	var flowDirection : FlowDirection;
	@:optional
	var alignment : TapeAlignment;
	@:optional
	var cutMode : TapeCutMode;
};
typedef PrinterInfo = {
	var isAutoCutSupported : Bool;
	var isConnected : Bool;
	var isLocal : Bool;
	var isTwinTurbo : Bool;
	var modelName : String;
	var name : String;
	var printerType : String;
};
typedef PrintJob = {
	function getStatus(replyCallback:PrintJobStatusInfo -> Dynamic):Void;
};
typedef PrintJobStatusInfo = {
	var statusMessage : String;
	var status : PrintJobStatus;
};
typedef ILabel = {
	function getAddressBarcodePosition(addressIndex:Float):AddressBarcodePosition;
	function getAddressObjectCount():Float;
	function getAddressText(addressIndex:Float):String;
	function getLabelXml():String;
	function getObjectNames():Array<String>;
	function getObjectText(objectName:String):String;
	function print(printerName:String, printParamsXml:String, labelSetXml:String):Void;
	function printAndPollStatus(printerName:String, printParamsXml:String, labelSetXml:String, statusCallback:PrintJob -> PrintJobStatusInfo -> Bool, pollInterval:Float):PrintJob;
	function render(renderParamsXml:String, printerName:String):String;
	function setAddressBarcodePosition(addressIndex:Float, barcodePosition:AddressBarcodePosition):ILabel;
	function setAddressText(addressIndex:Float, text:String):ILabel;
	function setObjectText(objectName:String, text:String):ILabel;
};
typedef ILabelSetRecord = {
	function setBase64Image(objectName:String, base64Image:String):ILabelSetRecord;
	function setText(objectName:String, text:String):ILabelSetRecord;
	function setTextMarkup(objectName:String, textMarkup:String):ILabelSetRecord;
};
typedef AddPrinterUriCallback = { };
extern class LabelSetBuilder {
	static function toXml(records:Array<{ }>):String;
	function addRecord():ILabelSetRecord;
	function getRecords():Array<ILabelSetRecord>;
	function toString():String;
}
extern class Dymo.label.frameworkTopLevel {
	static var VERSION : String;
	static function checkEnvironment():{ var isBrowserSupported : Bool; var isFrameworkInstalled : Bool; var errorDetails : String; };
	static function createLabelRenderParamsXml(params:CreateLabelRenderParamsXmlParams):String;
	static function createLabelWriterPrintParamsXml(params:CreateLabelWriterPrintParamsXmlParams):String;
	static function createTapePrintParamsXml(params:CreateTapePrintParamsXmlParams):String;
	static function getPrinters():Array<PrinterInfo>;
	static function getLabelWriterPrinters():Array<PrinterInfo>;
	static function getTapePrinters():Array<PrinterInfo>;
	static function loadImageAsPngBase64(imageUri:String):String;
	static function openLabelFile(fileName:String):ILabel;
	static function openLabelXml(labelXml:String):ILabel;
	static function printLabel(printerName:String, printParamsXml:String, labelXml:String, labelSetXml:String):Void;
	static function printLabel2(printerName:String, printParamsXml:String, labelXml:String, labelSetXml:String):PrintJob;
	static function printLabelAndPollStatus(printerName:String, printParamsXml:String, labelXml:String, labelSetXml:String, statusCallback:PrintJob -> PrintJobStatusInfo -> Bool, pollInterval:Float):PrintJob;
	static function renderLabel(labelXml:String, renderParamsXml:String, printerName:String):String;
	static function addPrinterUri(printerUri:String, ?location:String, ?successCallback:AddPrinterUriCallback, ?errorCallback:AddPrinterUriCallback):Void;
	static function removePrinterUri(printerUri:String):Void;
	static function removeAllPrinterUri():Void;
}
