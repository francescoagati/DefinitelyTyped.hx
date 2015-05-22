typedef ILanguageFontGroup = {
	var documentAlternate1Font : Windows.Globalization.Fonts.LanguageFont;
	var documentAlternate2Font : Windows.Globalization.Fonts.LanguageFont;
	var documentHeadingFont : Windows.Globalization.Fonts.LanguageFont;
	var fixedWidthTextFont : Windows.Globalization.Fonts.LanguageFont;
	var modernDocumentFont : Windows.Globalization.Fonts.LanguageFont;
	var traditionalDocumentFont : Windows.Globalization.Fonts.LanguageFont;
	var uICaptionFont : Windows.Globalization.Fonts.LanguageFont;
	var uIHeadingFont : Windows.Globalization.Fonts.LanguageFont;
	var uINotificationHeadingFont : Windows.Globalization.Fonts.LanguageFont;
	var uITextFont : Windows.Globalization.Fonts.LanguageFont;
	var uITitleFont : Windows.Globalization.Fonts.LanguageFont;
};
extern class LanguageFont {
	var fontFamily : String;
	var fontStretch : Windows.UI.Text.FontStretch;
	var fontStyle : Windows.UI.Text.FontStyle;
	var fontWeight : Windows.UI.Text.FontWeight;
	var scaleFactor : Float;
}
typedef ILanguageFontGroupFactory = {
	function createLanguageFontGroup(languageTag:String):Windows.Globalization.Fonts.LanguageFontGroup;
};
extern class LanguageFontGroup {
	function new(languageTag:String):Void;
	var documentAlternate1Font : Windows.Globalization.Fonts.LanguageFont;
	var documentAlternate2Font : Windows.Globalization.Fonts.LanguageFont;
	var documentHeadingFont : Windows.Globalization.Fonts.LanguageFont;
	var fixedWidthTextFont : Windows.Globalization.Fonts.LanguageFont;
	var modernDocumentFont : Windows.Globalization.Fonts.LanguageFont;
	var traditionalDocumentFont : Windows.Globalization.Fonts.LanguageFont;
	var uICaptionFont : Windows.Globalization.Fonts.LanguageFont;
	var uIHeadingFont : Windows.Globalization.Fonts.LanguageFont;
	var uINotificationHeadingFont : Windows.Globalization.Fonts.LanguageFont;
	var uITextFont : Windows.Globalization.Fonts.LanguageFont;
	var uITitleFont : Windows.Globalization.Fonts.LanguageFont;
}
typedef ILanguageFont = {
	var fontFamily : String;
	var fontStretch : Windows.UI.Text.FontStretch;
	var fontStyle : Windows.UI.Text.FontStyle;
	var fontWeight : Windows.UI.Text.FontWeight;
	var scaleFactor : Float;
};
