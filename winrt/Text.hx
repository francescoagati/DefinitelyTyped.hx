@:enum abstract CaretType(Int) {
	var normal = 0;
	var null_ = 1;
}
@:enum abstract FindOptions(Int) {
	var none = 0;
	var word = 1;
	var case_ = 2;
}
@:enum abstract FormatEffect(Int) {
	var off = 0;
	var on = 1;
	var toggle = 2;
	var undefined = 3;
}
@:enum abstract HorizontalCharacterAlignment(Int) {
	var left = 0;
	var right = 1;
	var center = 2;
}
@:enum abstract LetterCase(Int) {
	var lower = 0;
	var upper = 1;
}
@:enum abstract LineSpacingRule(Int) {
	var undefined = 0;
	var single = 1;
	var oneAndHalf = 2;
	var double = 3;
	var atLeast = 4;
	var exactly = 5;
	var multiple = 6;
	var percent = 7;
}
@:enum abstract LinkType(Int) {
	var undefined = 0;
	var notALink = 1;
	var clientLink = 2;
	var friendlyLinkName = 3;
	var friendlyLinkAddress = 4;
	var autoLink = 5;
	var autoLinkEmail = 6;
	var autoLinkPhone = 7;
	var autoLinkPath = 8;
}
@:enum abstract MarkerAlignment(Int) {
	var undefined = 0;
	var left = 1;
	var center = 2;
	var right = 3;
}
@:enum abstract MarkerStyle(Int) {
	var undefined = 0;
	var parenthesis = 1;
	var parentheses = 2;
	var period = 3;
	var plain = 4;
	var minus = 5;
	var noNumber = 6;
}
@:enum abstract MarkerType(Int) {
	var undefined = 0;
	var none = 1;
	var bullet = 2;
	var arabic = 3;
	var lowercaseEnglishLetter = 4;
	var uppercaseEnglishLetter = 5;
	var lowercaseRoman = 6;
	var uppercaseRoman = 7;
	var unicodeSequence = 8;
	var circledNumber = 9;
	var blackCircleWingding = 10;
	var whiteCircleWingding = 11;
	var arabicWide = 12;
	var simplifiedChinese = 13;
	var traditionalChinese = 14;
	var japanSimplifiedChinese = 15;
	var japanKorea = 16;
	var arabicDictionary = 17;
	var arabicAbjad = 18;
	var hebrew = 19;
	var thaiAlphabetic = 20;
	var thaiNumeric = 21;
	var devanagariVowel = 22;
	var devanagariConsonant = 23;
	var devanagariNumeric = 24;
}
@:enum abstract ParagraphAlignment(Int) {
	var undefined = 0;
	var left = 1;
	var center = 2;
	var right = 3;
	var justify = 4;
}
@:enum abstract ParagraphStyle(Int) {
	var undefined = 0;
	var none = 1;
	var normal = 2;
	var heading1 = 3;
	var heading2 = 4;
	var heading3 = 5;
	var heading4 = 6;
	var heading5 = 7;
	var heading6 = 8;
	var heading7 = 9;
	var heading8 = 10;
	var heading9 = 11;
}
@:enum abstract PointOptions(Int) {
	var none = 0;
	var includeInset = 1;
	var start = 2;
	var clientCoordinates = 3;
	var allowOffClient = 4;
	var transform = 5;
	var noHorizontalScroll = 6;
	var noVerticalScroll = 7;
}
@:enum abstract RangeGravity(Int) {
	var uIBehavior = 0;
	var backward = 1;
	var forward = 2;
	var inward = 3;
	var outward = 4;
}
@:enum abstract SelectionOptions(Int) {
	var startActive = 0;
	var atEndOfLine = 1;
	var overtype = 2;
	var active = 3;
	var replace = 4;
}
@:enum abstract SelectionType(Int) {
	var none = 0;
	var insertionPoint = 1;
	var normal = 2;
	var inlineShape = 3;
	var shape = 4;
}
@:enum abstract TabAlignment(Int) {
	var left = 0;
	var center = 1;
	var right = 2;
	var decimal = 3;
	var bar = 4;
}
@:enum abstract TabLeader(Int) {
	var spaces = 0;
	var dots = 1;
	var dashes = 2;
	var lines = 3;
	var thickLines = 4;
	var equals = 5;
}
@:enum abstract TextGetOptions(Int) {
	var none = 0;
	var adjustCrlf = 1;
	var useCrlf = 2;
	var useObjectText = 3;
	var allowFinalEop = 4;
	var noHidden = 5;
	var includeNumbering = 6;
	var formatRtf = 7;
}
@:enum abstract TextSetOptions(Int) {
	var none = 0;
	var unicodeBidi = 1;
	var unlink = 2;
	var unhide = 3;
	var checkTextLimit = 4;
	var formatRtf = 5;
	var applyRtfDocumentDefaults = 6;
}
@:enum abstract TextRangeUnit(Int) {
	var character = 0;
	var word = 1;
	var sentence = 2;
	var paragraph = 3;
	var line = 4;
	var story = 5;
	var screen = 6;
	var section = 7;
	var window = 8;
	var characterFormat = 9;
	var paragraphFormat = 10;
	var object = 11;
	var hardParagraph = 12;
	var cluster = 13;
	var bold = 14;
	var italic = 15;
	var underline = 16;
	var strikethrough = 17;
	var protectedText = 18;
	var link = 19;
	var smallCaps = 20;
	var allCaps = 21;
	var hidden = 22;
	var outline = 23;
	var shadow = 24;
	var imprint = 25;
	var disabled = 26;
	var revised = 27;
	var subscript = 28;
	var superscript = 29;
	var fontBound = 30;
	var linkProtected = 31;
}
@:enum abstract TextScript(Int) {
	var undefined = 0;
	var ansi = 1;
	var eastEurope = 2;
	var cyrillic = 3;
	var greek = 4;
	var turkish = 5;
	var hebrew = 6;
	var arabic = 7;
	var baltic = 8;
	var vietnamese = 9;
	var default = 10;
	var symbol = 11;
	var thai = 12;
	var shiftJis = 13;
	var gB2312 = 14;
	var hangul = 15;
	var big5 = 16;
	var pC437 = 17;
	var oem = 18;
	var mac = 19;
	var armenian = 20;
	var syriac = 21;
	var thaana = 22;
	var devanagari = 23;
	var bengali = 24;
	var gurmukhi = 25;
	var gujarati = 26;
	var oriya = 27;
	var tamil = 28;
	var telugu = 29;
	var kannada = 30;
	var malayalam = 31;
	var sinhala = 32;
	var lao = 33;
	var tibetan = 34;
	var myanmar = 35;
	var georgian = 36;
	var jamo = 37;
	var ethiopic = 38;
	var cherokee = 39;
	var aboriginal = 40;
	var ogham = 41;
	var runic = 42;
	var khmer = 43;
	var mongolian = 44;
	var braille = 45;
	var yi = 46;
	var limbu = 47;
	var taiLe = 48;
	var newTaiLue = 49;
	var sylotiNagri = 50;
	var kharoshthi = 51;
	var kayahli = 52;
	var unicodeSymbol = 53;
	var emoji = 54;
	var glagolitic = 55;
	var lisu = 56;
	var vai = 57;
	var nKo = 58;
	var osmanya = 59;
	var phagsPa = 60;
	var gothic = 61;
	var deseret = 62;
	var tifinagh = 63;
}
@:enum abstract UnderlineType(Int) {
	var undefined = 0;
	var none = 1;
	var single = 2;
	var words = 3;
	var double = 4;
	var dotted = 5;
	var dash = 6;
	var dashDot = 7;
	var dashDotDot = 8;
	var wave = 9;
	var thick = 10;
	var thin = 11;
	var doubleWave = 12;
	var heavyWave = 13;
	var longDash = 14;
	var thickDash = 15;
	var thickDashDot = 16;
	var thickDashDotDot = 17;
	var thickDotted = 18;
	var thickLongDash = 19;
}
@:enum abstract VerticalCharacterAlignment(Int) {
	var top = 0;
	var baseline = 1;
	var bottom = 2;
}
extern class TextConstants {
	static var autoColor : Windows.UI.Color;
	static var maxUnitCount : Float;
	static var minUnitCount : Float;
	static var undefinedColor : Windows.UI.Color;
	static var undefinedFloatValue : Float;
	static var undefinedFontStretch : Windows.UI.Text.FontStretch;
	static var undefinedFontStyle : Windows.UI.Text.FontStyle;
	static var undefinedInt32Value : Float;
}
typedef ITextConstantsStatics = {
	var autoColor : Windows.UI.Color;
	var maxUnitCount : Float;
	var minUnitCount : Float;
	var undefinedColor : Windows.UI.Color;
	var undefinedFloatValue : Float;
	var undefinedFontStretch : Windows.UI.Text.FontStretch;
	var undefinedFontStyle : Windows.UI.Text.FontStyle;
	var undefinedInt32Value : Float;
};
typedef ITextDocument = {
	var caretType : Windows.UI.Text.CaretType;
	var defaultTabStop : Float;
	var selection : Windows.UI.Text.ITextSelection;
	var undoLimit : Float;
	function canCopy():Bool;
	function canPaste():Bool;
	function canRedo():Bool;
	function canUndo():Bool;
	function applyDisplayUpdates():Float;
	function batchDisplayUpdates():Float;
	function beginUndoGroup():Void;
	function endUndoGroup():Void;
	function getDefaultCharacterFormat():Windows.UI.Text.ITextCharacterFormat;
	function getDefaultParagraphFormat():Windows.UI.Text.ITextParagraphFormat;
	function getRange(startPosition:Float, endPosition:Float):Windows.UI.Text.ITextRange;
	function getRangeFromPoint(point:Windows.Foundation.Point, options:Windows.UI.Text.PointOptions):Windows.UI.Text.ITextRange;
	function getText(options:Windows.UI.Text.TextGetOptions):String;
	function loadFromStream(options:Windows.UI.Text.TextSetOptions, value:Windows.Storage.Streams.IRandomAccessStream):Void;
	function redo():Void;
	function saveToStream(options:Windows.UI.Text.TextGetOptions, value:Windows.Storage.Streams.IRandomAccessStream):Void;
	function setDefaultCharacterFormat(value:Windows.UI.Text.ITextCharacterFormat):Void;
	function setDefaultParagraphFormat(value:Windows.UI.Text.ITextParagraphFormat):Void;
	function setText(options:Windows.UI.Text.TextSetOptions, value:String):Void;
	function undo():Void;
};
typedef ITextRange = {
	var character : String;
	var characterFormat : Windows.UI.Text.ITextCharacterFormat;
	var endPosition : Float;
	var formattedText : Windows.UI.Text.ITextRange;
	var gravity : Windows.UI.Text.RangeGravity;
	var length : Float;
	var link : String;
	var paragraphFormat : Windows.UI.Text.ITextParagraphFormat;
	var startPosition : Float;
	var storyLength : Float;
	var text : String;
	function canPaste(format:Float):Bool;
	function changeCase(value:Windows.UI.Text.LetterCase):Void;
	function collapse(value:Bool):Void;
	function copy():Void;
	function cut():Void;
	function delete_(unit:Windows.UI.Text.TextRangeUnit, count:Float):Float;
	function endOf(unit:Windows.UI.Text.TextRangeUnit, extend:Bool):Float;
	function expand(unit:Windows.UI.Text.TextRangeUnit):Float;
	function findText(value:String, scanLength:Float, options:Windows.UI.Text.FindOptions):Float;
	function getCharacterUtf32(offset:Float):Float;
	function getClone():Windows.UI.Text.ITextRange;
	function getIndex(unit:Windows.UI.Text.TextRangeUnit):Float;
	function getPoint(horizontalAlign:Windows.UI.Text.HorizontalCharacterAlignment, verticalAlign:Windows.UI.Text.VerticalCharacterAlignment, options:Windows.UI.Text.PointOptions):Windows.Foundation.Point;
	function getRect(options:Windows.UI.Text.PointOptions):{ var rect : Windows.Foundation.Rect; var hit : Float; };
	function getText(options:Windows.UI.Text.TextGetOptions):String;
	function getTextViaStream(options:Windows.UI.Text.TextGetOptions, value:Windows.Storage.Streams.IRandomAccessStream):Void;
	function inRange(range:Windows.UI.Text.ITextRange):Bool;
	function insertImage(width:Float, height:Float, ascent:Float, verticalAlign:Windows.UI.Text.VerticalCharacterAlignment, alternateText:String, value:Windows.Storage.Streams.IRandomAccessStream):Void;
	function inStory(range:Windows.UI.Text.ITextRange):Bool;
	function isEqual(range:Windows.UI.Text.ITextRange):Bool;
	function move(unit:Windows.UI.Text.TextRangeUnit, count:Float):Float;
	function moveEnd(unit:Windows.UI.Text.TextRangeUnit, count:Float):Float;
	function moveStart(unit:Windows.UI.Text.TextRangeUnit, count:Float):Float;
	function paste(format:Float):Void;
	function scrollIntoView(value:Windows.UI.Text.PointOptions):Void;
	function matchSelection():Void;
	function setIndex(unit:Windows.UI.Text.TextRangeUnit, index:Float, extend:Bool):Void;
	function setPoint(point:Windows.Foundation.Point, options:Windows.UI.Text.PointOptions, extend:Bool):Void;
	function setRange(startPosition:Float, endPosition:Float):Void;
	function setText(options:Windows.UI.Text.TextSetOptions, value:String):Void;
	function setTextViaStream(options:Windows.UI.Text.TextSetOptions, value:Windows.Storage.Streams.IRandomAccessStream):Void;
	function startOf(unit:Windows.UI.Text.TextRangeUnit, extend:Bool):Float;
};
typedef ITextSelection = {
	>Windows.UI.Text.ITextRange,
	var options : Windows.UI.Text.SelectionOptions;
	var type : Windows.UI.Text.SelectionType;
	function endKey(unit:Windows.UI.Text.TextRangeUnit, extend:Bool):Float;
	function homeKey(unit:Windows.UI.Text.TextRangeUnit, extend:Bool):Float;
	function moveDown(unit:Windows.UI.Text.TextRangeUnit, count:Float, extend:Bool):Float;
	function moveLeft(unit:Windows.UI.Text.TextRangeUnit, count:Float, extend:Bool):Float;
	function moveRight(unit:Windows.UI.Text.TextRangeUnit, count:Float, extend:Bool):Float;
	function moveUp(unit:Windows.UI.Text.TextRangeUnit, count:Float, extend:Bool):Float;
	function typeText(value:String):Void;
};
typedef ITextCharacterFormat = {
	var allCaps : Windows.UI.Text.FormatEffect;
	var backgroundColor : Windows.UI.Color;
	var bold : Windows.UI.Text.FormatEffect;
	var fontStretch : Windows.UI.Text.FontStretch;
	var fontStyle : Windows.UI.Text.FontStyle;
	var foregroundColor : Windows.UI.Color;
	var hidden : Windows.UI.Text.FormatEffect;
	var italic : Windows.UI.Text.FormatEffect;
	var kerning : Float;
	var languageTag : String;
	var linkType : Windows.UI.Text.LinkType;
	var name : String;
	var outline : Windows.UI.Text.FormatEffect;
	var position : Float;
	var protectedText : Windows.UI.Text.FormatEffect;
	var size : Float;
	var smallCaps : Windows.UI.Text.FormatEffect;
	var spacing : Float;
	var strikethrough : Windows.UI.Text.FormatEffect;
	var subscript : Windows.UI.Text.FormatEffect;
	var superscript : Windows.UI.Text.FormatEffect;
	var textScript : Windows.UI.Text.TextScript;
	var underline : Windows.UI.Text.UnderlineType;
	var weight : Float;
	function setClone(value:Windows.UI.Text.ITextCharacterFormat):Void;
	function getClone():Windows.UI.Text.ITextCharacterFormat;
	function isEqual(format:Windows.UI.Text.ITextCharacterFormat):Bool;
};
typedef ITextParagraphFormat = {
	var alignment : Windows.UI.Text.ParagraphAlignment;
	var firstLineIndent : Float;
	var keepTogether : Windows.UI.Text.FormatEffect;
	var keepWithNext : Windows.UI.Text.FormatEffect;
	var leftIndent : Float;
	var lineSpacing : Float;
	var lineSpacingRule : Windows.UI.Text.LineSpacingRule;
	var listAlignment : Windows.UI.Text.MarkerAlignment;
	var listLevelIndex : Float;
	var listStart : Float;
	var listStyle : Windows.UI.Text.MarkerStyle;
	var listTab : Float;
	var listType : Windows.UI.Text.MarkerType;
	var noLineNumber : Windows.UI.Text.FormatEffect;
	var pageBreakBefore : Windows.UI.Text.FormatEffect;
	var rightIndent : Float;
	var rightToLeft : Windows.UI.Text.FormatEffect;
	var spaceAfter : Float;
	var spaceBefore : Float;
	var style : Windows.UI.Text.ParagraphStyle;
	var tabCount : Float;
	var widowControl : Windows.UI.Text.FormatEffect;
	function addTab(position:Float, align:Windows.UI.Text.TabAlignment, leader:Windows.UI.Text.TabLeader):Void;
	function clearAllTabs():Void;
	function deleteTab(position:Float):Void;
	function getClone():Windows.UI.Text.ITextParagraphFormat;
	function getTab(index:Float):{ var position : Float; var align : Windows.UI.Text.TabAlignment; var leader : Windows.UI.Text.TabLeader; };
	function isEqual(format:Windows.UI.Text.ITextParagraphFormat):Bool;
	function setClone(format:Windows.UI.Text.ITextParagraphFormat):Void;
	function setIndents(start:Float, left:Float, right:Float):Void;
	function setLineSpacing(rule:Windows.UI.Text.LineSpacingRule, spacing:Float):Void;
};
@:enum abstract FontStyle(Int) {
	var normal = 0;
	var oblique = 1;
	var italic = 2;
}
@:enum abstract FontStretch(Int) {
	var undefined = 0;
	var ultraCondensed = 1;
	var extraCondensed = 2;
	var condensed = 3;
	var semiCondensed = 4;
	var normal = 5;
	var semiExpanded = 6;
	var expanded = 7;
	var extraExpanded = 8;
	var ultraExpanded = 9;
}
typedef FontWeight = {
	var weight : Float;
};
typedef IFontWeights = { };
typedef IFontWeightsStatics = {
	var black : Windows.UI.Text.FontWeight;
	var bold : Windows.UI.Text.FontWeight;
	var extraBlack : Windows.UI.Text.FontWeight;
	var extraBold : Windows.UI.Text.FontWeight;
	var extraLight : Windows.UI.Text.FontWeight;
	var light : Windows.UI.Text.FontWeight;
	var medium : Windows.UI.Text.FontWeight;
	var normal : Windows.UI.Text.FontWeight;
	var semiBold : Windows.UI.Text.FontWeight;
	var semiLight : Windows.UI.Text.FontWeight;
	var thin : Windows.UI.Text.FontWeight;
};
extern class FontWeights {
	static var black : Windows.UI.Text.FontWeight;
	static var bold : Windows.UI.Text.FontWeight;
	static var extraBlack : Windows.UI.Text.FontWeight;
	static var extraBold : Windows.UI.Text.FontWeight;
	static var extraLight : Windows.UI.Text.FontWeight;
	static var light : Windows.UI.Text.FontWeight;
	static var medium : Windows.UI.Text.FontWeight;
	static var normal : Windows.UI.Text.FontWeight;
	static var semiBold : Windows.UI.Text.FontWeight;
	static var semiLight : Windows.UI.Text.FontWeight;
	static var thin : Windows.UI.Text.FontWeight;
}
