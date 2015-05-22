typedef PrintPageDescription = {
	var pageSize : Windows.Foundation.Size;
	var imageableRect : Windows.Foundation.Rect;
	var dpiX : Float;
	var dpiY : Float;
};
@:enum abstract PrintMediaSize(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var businessCard = 3;
	var creditCard = 4;
	var isoA0 = 5;
	var isoA1 = 6;
	var isoA10 = 7;
	var isoA2 = 8;
	var isoA3 = 9;
	var isoA3Extra = 10;
	var isoA3Rotated = 11;
	var isoA4 = 12;
	var isoA4Extra = 13;
	var isoA4Rotated = 14;
	var isoA5 = 15;
	var isoA5Extra = 16;
	var isoA5Rotated = 17;
	var isoA6 = 18;
	var isoA6Rotated = 19;
	var isoA7 = 20;
	var isoA8 = 21;
	var isoA9 = 22;
	var isoB0 = 23;
	var isoB1 = 24;
	var isoB10 = 25;
	var isoB2 = 26;
	var isoB3 = 27;
	var isoB4 = 28;
	var isoB4Envelope = 29;
	var isoB5Envelope = 30;
	var isoB5Extra = 31;
	var isoB7 = 32;
	var isoB8 = 33;
	var isoB9 = 34;
	var isoC0 = 35;
	var isoC1 = 36;
	var isoC10 = 37;
	var isoC2 = 38;
	var isoC3 = 39;
	var isoC3Envelope = 40;
	var isoC4 = 41;
	var isoC4Envelope = 42;
	var isoC5 = 43;
	var isoC5Envelope = 44;
	var isoC6 = 45;
	var isoC6C5Envelope = 46;
	var isoC6Envelope = 47;
	var isoC7 = 48;
	var isoC8 = 49;
	var isoC9 = 50;
	var isoDLEnvelope = 51;
	var isoDLEnvelopeRotated = 52;
	var isoSRA3 = 53;
	var japan2LPhoto = 54;
	var japanChou3Envelope = 55;
	var japanChou3EnvelopeRotated = 56;
	var japanChou4Envelope = 57;
	var japanChou4EnvelopeRotated = 58;
	var japanDoubleHagakiPostcard = 59;
	var japanDoubleHagakiPostcardRotated = 60;
	var japanHagakiPostcard = 61;
	var japanHagakiPostcardRotated = 62;
	var japanKaku2Envelope = 63;
	var japanKaku2EnvelopeRotated = 64;
	var japanKaku3Envelope = 65;
	var japanKaku3EnvelopeRotated = 66;
	var japanLPhoto = 67;
	var japanQuadrupleHagakiPostcard = 68;
	var japanYou1Envelope = 69;
	var japanYou2Envelope = 70;
	var japanYou3Envelope = 71;
	var japanYou4Envelope = 72;
	var japanYou4EnvelopeRotated = 73;
	var japanYou6Envelope = 74;
	var japanYou6EnvelopeRotated = 75;
	var jisB0 = 76;
	var jisB1 = 77;
	var jisB10 = 78;
	var jisB2 = 79;
	var jisB3 = 80;
	var jisB4 = 81;
	var jisB4Rotated = 82;
	var jisB5 = 83;
	var jisB5Rotated = 84;
	var jisB6 = 85;
	var jisB6Rotated = 86;
	var jisB7 = 87;
	var jisB8 = 88;
	var jisB9 = 89;
	var northAmerica10x11 = 90;
	var northAmerica10x12 = 91;
	var northAmerica10x14 = 92;
	var northAmerica11x17 = 93;
	var northAmerica14x17 = 94;
	var northAmerica4x6 = 95;
	var northAmerica4x8 = 96;
	var northAmerica5x7 = 97;
	var northAmerica8x10 = 98;
	var northAmerica9x11 = 99;
	var northAmericaArchitectureASheet = 100;
	var northAmericaArchitectureBSheet = 101;
	var northAmericaArchitectureCSheet = 102;
	var northAmericaArchitectureDSheet = 103;
	var northAmericaArchitectureESheet = 104;
	var northAmericaCSheet = 105;
	var northAmericaDSheet = 106;
	var northAmericaESheet = 107;
	var northAmericaExecutive = 108;
	var northAmericaGermanLegalFanfold = 109;
	var northAmericaGermanStandardFanfold = 110;
	var northAmericaLegal = 111;
	var northAmericaLegalExtra = 112;
	var northAmericaLetter = 113;
	var northAmericaLetterExtra = 114;
	var northAmericaLetterPlus = 115;
	var northAmericaLetterRotated = 116;
	var northAmericaMonarchEnvelope = 117;
	var northAmericaNote = 118;
	var northAmericaNumber10Envelope = 119;
	var northAmericaNumber10EnvelopeRotated = 120;
	var northAmericaNumber11Envelope = 121;
	var northAmericaNumber12Envelope = 122;
	var northAmericaNumber14Envelope = 123;
	var northAmericaNumber9Envelope = 124;
	var northAmericaPersonalEnvelope = 125;
	var northAmericaQuarto = 126;
	var northAmericaStatement = 127;
	var northAmericaSuperA = 128;
	var northAmericaSuperB = 129;
	var northAmericaTabloid = 130;
	var northAmericaTabloidExtra = 131;
	var otherMetricA3Plus = 132;
	var otherMetricA4Plus = 133;
	var otherMetricFolio = 134;
	var otherMetricInviteEnvelope = 135;
	var otherMetricItalianEnvelope = 136;
	var prc10Envelope = 137;
	var prc10EnvelopeRotated = 138;
	var prc16K = 139;
	var prc16KRotated = 140;
	var prc1Envelope = 141;
	var prc1EnvelopeRotated = 142;
	var prc2Envelope = 143;
	var prc2EnvelopeRotated = 144;
	var prc32K = 145;
	var prc32KBig = 146;
	var prc32KRotated = 147;
	var prc3Envelope = 148;
	var prc3EnvelopeRotated = 149;
	var prc4Envelope = 150;
	var prc4EnvelopeRotated = 151;
	var prc5Envelope = 152;
	var prc5EnvelopeRotated = 153;
	var prc6Envelope = 154;
	var prc6EnvelopeRotated = 155;
	var prc7Envelope = 156;
	var prc7EnvelopeRotated = 157;
	var prc8Envelope = 158;
	var prc8EnvelopeRotated = 159;
	var prc9Envelope = 160;
	var prc9EnvelopeRotated = 161;
	var roll04Inch = 162;
	var roll06Inch = 163;
	var roll08Inch = 164;
	var roll12Inch = 165;
	var roll15Inch = 166;
	var roll18Inch = 167;
	var roll22Inch = 168;
	var roll24Inch = 169;
	var roll30Inch = 170;
	var roll36Inch = 171;
	var roll54Inch = 172;
}
@:enum abstract PrintMediaType(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var autoSelect = 3;
	var archival = 4;
	var backPrintFilm = 5;
	var bond = 6;
	var cardStock = 7;
	var continuous = 8;
	var envelopePlain = 9;
	var envelopeWindow = 10;
	var fabric = 11;
	var highResolution = 12;
	var label = 13;
	var multiLayerForm = 14;
	var multiPartForm = 15;
	var photographic = 16;
	var photographicFilm = 17;
	var photographicGlossy = 18;
	var photographicHighGloss = 19;
	var photographicMatte = 20;
	var photographicSatin = 21;
	var photographicSemiGloss = 22;
	var plain = 23;
	var screen = 24;
	var screenPaged = 25;
	var stationery = 26;
	var tabStockFull = 27;
	var tabStockPreCut = 28;
	var transparency = 29;
	var tShirtTransfer = 30;
	var none = 31;
}
@:enum abstract PrintOrientation(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var portrait = 3;
	var portraitFlipped = 4;
	var landscape = 5;
	var landscapeFlipped = 6;
}
@:enum abstract PrintQuality(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var automatic = 3;
	var draft = 4;
	var fax = 5;
	var high = 6;
	var normal = 7;
	var photographic = 8;
	var text = 9;
}
@:enum abstract PrintColorMode(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var color = 3;
	var grayscale = 4;
	var monochrome = 5;
}
@:enum abstract PrintDuplex(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var oneSided = 3;
	var twoSidedShortEdge = 4;
	var twoSidedLongEdge = 5;
}
@:enum abstract PrintCollation(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var collated = 3;
	var uncollated = 4;
}
@:enum abstract PrintStaple(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var none = 3;
	var stapleTopLeft = 4;
	var stapleTopRight = 5;
	var stapleBottomLeft = 6;
	var stapleBottomRight = 7;
	var stapleDualLeft = 8;
	var stapleDualRight = 9;
	var stapleDualTop = 10;
	var stapleDualBottom = 11;
	var saddleStitch = 12;
}
@:enum abstract PrintHolePunch(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var none = 3;
	var leftEdge = 4;
	var rightEdge = 5;
	var topEdge = 6;
	var bottomEdge = 7;
}
@:enum abstract PrintBinding(Int) {
	var default = 0;
	var notAvailable = 1;
	var printerCustom = 2;
	var none = 3;
	var bale = 4;
	var bindBottom = 5;
	var bindLeft = 6;
	var bindRight = 7;
	var bindTop = 8;
	var booklet = 9;
	var edgeStitchBottom = 10;
	var edgeStitchLeft = 11;
	var edgeStitchRight = 12;
	var edgeStitchTop = 13;
	var fold = 14;
	var jogOffset = 15;
	var trim = 16;
}
typedef IPrintTaskOptionsCoreProperties = {
	var binding : Windows.Graphics.Printing.PrintBinding;
	var collation : Windows.Graphics.Printing.PrintCollation;
	var colorMode : Windows.Graphics.Printing.PrintColorMode;
	var duplex : Windows.Graphics.Printing.PrintDuplex;
	var holePunch : Windows.Graphics.Printing.PrintHolePunch;
	var maxCopies : Float;
	var mediaSize : Windows.Graphics.Printing.PrintMediaSize;
	var mediaType : Windows.Graphics.Printing.PrintMediaType;
	var minCopies : Float;
	var numberOfCopies : Float;
	var orientation : Windows.Graphics.Printing.PrintOrientation;
	var printQuality : Windows.Graphics.Printing.PrintQuality;
	var staple : Windows.Graphics.Printing.PrintStaple;
};
typedef IPrintTaskOptionsCoreUIConfiguration = {
	var displayedOptions : Windows.Foundation.Collections.IVector<String>;
};
typedef IPrintTaskOptionsCore = {
	function getPageDescription(jobPageNumber:Float):Windows.Graphics.Printing.PrintPageDescription;
};
extern class PrintTaskOptions {
	var binding : Windows.Graphics.Printing.PrintBinding;
	var collation : Windows.Graphics.Printing.PrintCollation;
	var colorMode : Windows.Graphics.Printing.PrintColorMode;
	var duplex : Windows.Graphics.Printing.PrintDuplex;
	var holePunch : Windows.Graphics.Printing.PrintHolePunch;
	var maxCopies : Float;
	var mediaSize : Windows.Graphics.Printing.PrintMediaSize;
	var mediaType : Windows.Graphics.Printing.PrintMediaType;
	var minCopies : Float;
	var numberOfCopies : Float;
	var orientation : Windows.Graphics.Printing.PrintOrientation;
	var printQuality : Windows.Graphics.Printing.PrintQuality;
	var staple : Windows.Graphics.Printing.PrintStaple;
	var displayedOptions : Windows.Foundation.Collections.IVector<String>;
	function getPageDescription(jobPageNumber:Float):Windows.Graphics.Printing.PrintPageDescription;
}
typedef IStandardPrintTaskOptionsStatic = {
	var binding : String;
	var collation : String;
	var colorMode : String;
	var copies : String;
	var duplex : String;
	var holePunch : String;
	var inputBin : String;
	var mediaSize : String;
	var mediaType : String;
	var nUp : String;
	var orientation : String;
	var printQuality : String;
	var staple : String;
};
extern class StandardPrintTaskOptions {
	static var binding : String;
	static var collation : String;
	static var colorMode : String;
	static var copies : String;
	static var duplex : String;
	static var holePunch : String;
	static var inputBin : String;
	static var mediaSize : String;
	static var mediaType : String;
	static var nUp : String;
	static var orientation : String;
	static var printQuality : String;
	static var staple : String;
}
typedef IPrintDocumentSource = { };
typedef IPrintTaskProgressingEventArgs = {
	var documentPageCount : Float;
};
extern class PrintTaskProgressingEventArgs {
	var documentPageCount : Float;
}
@:enum abstract PrintTaskCompletion(Int) {
	var abandoned = 0;
	var canceled = 1;
	var failed = 2;
	var submitted = 3;
}
typedef IPrintTaskCompletedEventArgs = {
	var completion : Windows.Graphics.Printing.PrintTaskCompletion;
};
extern class PrintTaskCompletedEventArgs {
	var completion : Windows.Graphics.Printing.PrintTaskCompletion;
}
typedef IPrintTask = {
	var options : Windows.Graphics.Printing.PrintTaskOptions;
	var properties : Windows.ApplicationModel.DataTransfer.DataPackagePropertySet;
	var source : Windows.Graphics.Printing.IPrintDocumentSource;
	var onpreviewing : Dynamic;
	var onsubmitting : Dynamic;
	var onprogressing : Dynamic;
	var oncompleted : Dynamic;
};
extern class PrintTask {
	var options : Windows.Graphics.Printing.PrintTaskOptions;
	var properties : Windows.ApplicationModel.DataTransfer.DataPackagePropertySet;
	var source : Windows.Graphics.Printing.IPrintDocumentSource;
	var onpreviewing : Dynamic;
	var onsubmitting : Dynamic;
	var onprogressing : Dynamic;
	var oncompleted : Dynamic;
}
typedef IPrintTaskSourceRequestedDeferral = {
	function complete():Void;
};
extern class PrintTaskSourceRequestedDeferral {
	function complete():Void;
}
typedef IPrintTaskSourceRequestedArgs = {
	var deadline : Date;
	function setSource(source:Windows.Graphics.Printing.IPrintDocumentSource):Void;
	function getDeferral():Windows.Graphics.Printing.PrintTaskSourceRequestedDeferral;
};
extern class PrintTaskSourceRequestedArgs {
	var deadline : Date;
	function setSource(source:Windows.Graphics.Printing.IPrintDocumentSource):Void;
	function getDeferral():Windows.Graphics.Printing.PrintTaskSourceRequestedDeferral;
}
typedef PrintTaskSourceRequestedHandler = { };
typedef IPrintTaskRequestedDeferral = {
	function complete():Void;
};
extern class PrintTaskRequestedDeferral {
	function complete():Void;
}
typedef IPrintTaskRequest = {
	var deadline : Date;
	function createPrintTask(title:String, handler:Windows.Graphics.Printing.PrintTaskSourceRequestedHandler):Windows.Graphics.Printing.PrintTask;
	function getDeferral():Windows.Graphics.Printing.PrintTaskRequestedDeferral;
};
extern class PrintTaskRequest {
	var deadline : Date;
	function createPrintTask(title:String, handler:Windows.Graphics.Printing.PrintTaskSourceRequestedHandler):Windows.Graphics.Printing.PrintTask;
	function getDeferral():Windows.Graphics.Printing.PrintTaskRequestedDeferral;
}
typedef IPrintTaskRequestedEventArgs = {
	var request : Windows.Graphics.Printing.PrintTaskRequest;
};
extern class PrintTaskRequestedEventArgs {
	var request : Windows.Graphics.Printing.PrintTaskRequest;
}
typedef IPrintManagerStatic = {
	function getForCurrentView():Windows.Graphics.Printing.PrintManager;
	function showPrintUIAsync():Windows.Foundation.IAsyncOperation<Bool>;
};
extern class PrintManager {
	var onprinttaskrequested : Dynamic;
	static function getForCurrentView():Windows.Graphics.Printing.PrintManager;
	static function showPrintUIAsync():Windows.Foundation.IAsyncOperation<Bool>;
}
typedef IPrintManager = {
	var onprinttaskrequested : Dynamic;
};
