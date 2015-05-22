@:enum abstract DayOfWeek(Int) {
	var sunday = 0;
	var monday = 1;
	var tuesday = 2;
	var wednesday = 3;
	var thursday = 4;
	var friday = 5;
	var saturday = 6;
}
typedef ICalendarIdentifiersStatics = {
	var gregorian : String;
	var hebrew : String;
	var hijri : String;
	var japanese : String;
	var julian : String;
	var korean : String;
	var taiwan : String;
	var thai : String;
	var umAlQura : String;
};
extern class CalendarIdentifiers {
	static var gregorian : String;
	static var hebrew : String;
	static var hijri : String;
	static var japanese : String;
	static var julian : String;
	static var korean : String;
	static var taiwan : String;
	static var thai : String;
	static var umAlQura : String;
}
typedef IClockIdentifiersStatics = {
	var twelveHour : String;
	var twentyFourHour : String;
};
extern class ClockIdentifiers {
	static var twelveHour : String;
	static var twentyFourHour : String;
}
typedef IGeographicRegion = {
	var code : String;
	var codeThreeDigit : String;
	var codeThreeLetter : String;
	var codeTwoLetter : String;
	var currenciesInUse : Windows.Foundation.Collections.IVectorView<String>;
	var displayName : String;
	var nativeName : String;
};
typedef IGeographicRegionFactory = {
	function createGeographicRegion(geographicRegionCode:String):Windows.Globalization.GeographicRegion;
};
extern class GeographicRegion {
	@:overload(function():Void { })
	function new(geographicRegionCode:String):Void;
	var code : String;
	var codeThreeDigit : String;
	var codeThreeLetter : String;
	var codeTwoLetter : String;
	var currenciesInUse : Windows.Foundation.Collections.IVectorView<String>;
	var displayName : String;
	var nativeName : String;
	static function isSupported(geographicRegionCode:String):Bool;
}
typedef IGeographicRegionStatics = {
	function isSupported(geographicRegionCode:String):Bool;
};
typedef ILanguage = {
	var displayName : String;
	var languageTag : String;
	var nativeName : String;
	var script : String;
};
typedef ILanguageFactory = {
	function createLanguage(languageTag:String):Windows.Globalization.Language;
};
extern class Language {
	function new(languageTag:String):Void;
	var displayName : String;
	var languageTag : String;
	var nativeName : String;
	var script : String;
	static var currentInputMethodLanguageTag : String;
	static function isWellFormed(languageTag:String):Bool;
}
typedef ILanguageStatics = {
	var currentInputMethodLanguageTag : String;
	function isWellFormed(languageTag:String):Bool;
};
typedef ICalendar = {
	var day : Float;
	var dayOfWeek : Windows.Globalization.DayOfWeek;
	var era : Float;
	var firstDayInThisMonth : Float;
	var firstEra : Float;
	var firstHourInThisPeriod : Float;
	var firstMinuteInThisHour : Float;
	var firstMonthInThisYear : Float;
	var firstPeriodInThisDay : Float;
	var firstSecondInThisMinute : Float;
	var firstYearInThisEra : Float;
	var hour : Float;
	var isDaylightSavingTime : Bool;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var lastDayInThisMonth : Float;
	var lastEra : Float;
	var lastHourInThisPeriod : Float;
	var lastMinuteInThisHour : Float;
	var lastMonthInThisYear : Float;
	var lastPeriodInThisDay : Float;
	var lastSecondInThisMinute : Float;
	var lastYearInThisEra : Float;
	var minute : Float;
	var month : Float;
	var nanosecond : Float;
	var numberOfDaysInThisMonth : Float;
	var numberOfEras : Float;
	var numberOfHoursInThisPeriod : Float;
	var numberOfMinutesInThisHour : Float;
	var numberOfMonthsInThisYear : Float;
	var numberOfPeriodsInThisDay : Float;
	var numberOfSecondsInThisMinute : Float;
	var numberOfYearsInThisEra : Float;
	var numeralSystem : String;
	var period : Float;
	var resolvedLanguage : String;
	var second : Float;
	var year : Float;
	function clone():Windows.Globalization.Calendar;
	function setToMin():Void;
	function setToMax():Void;
	function getCalendarSystem():String;
	function changeCalendarSystem(value:String):Void;
	function getClock():String;
	function changeClock(value:String):Void;
	function getDateTime():Date;
	function setDateTime(value:Date):Void;
	function setToNow():Void;
	function addEras(eras:Float):Void;
	@:overload(function(idealLength:Float):String { })
	function eraAsString():String;
	function addYears(years:Float):Void;
	function yearAsString():String;
	function yearAsTruncatedString(remainingDigits:Float):String;
	function yearAsPaddedString(minDigits:Float):String;
	function addMonths(months:Float):Void;
	@:overload(function(idealLength:Float):String { })
	function monthAsString():String;
	@:overload(function(idealLength:Float):String { })
	function monthAsSoloString():String;
	function monthAsNumericString():String;
	function monthAsPaddedNumericString(minDigits:Float):String;
	function addWeeks(weeks:Float):Void;
	function addDays(days:Float):Void;
	function dayAsString():String;
	function dayAsPaddedString(minDigits:Float):String;
	@:overload(function(idealLength:Float):String { })
	function dayOfWeekAsString():String;
	@:overload(function(idealLength:Float):String { })
	function dayOfWeekAsSoloString():String;
	function addPeriods(periods:Float):Void;
	@:overload(function(idealLength:Float):String { })
	function periodAsString():String;
	function addHours(hours:Float):Void;
	function hourAsString():String;
	function hourAsPaddedString(minDigits:Float):String;
	function addMinutes(minutes:Float):Void;
	function minuteAsString():String;
	function minuteAsPaddedString(minDigits:Float):String;
	function addSeconds(seconds:Float):Void;
	function secondAsString():String;
	function secondAsPaddedString(minDigits:Float):String;
	function addNanoseconds(nanoseconds:Float):Void;
	function nanosecondAsString():String;
	function nanosecondAsPaddedString(minDigits:Float):String;
	function compare(other:Windows.Globalization.Calendar):Float;
	function compareDateTime(other:Date):Float;
	function copyTo(other:Windows.Globalization.Calendar):Void;
};
extern class Calendar {
	@:overload(function(languages:Windows.Foundation.Collections.IIterable<String>, calendar:String, clock:String):Void { })
	@:overload(function():Void { })
	function new(languages:Windows.Foundation.Collections.IIterable<String>):Void;
	var day : Float;
	var dayOfWeek : Windows.Globalization.DayOfWeek;
	var era : Float;
	var firstDayInThisMonth : Float;
	var firstEra : Float;
	var firstHourInThisPeriod : Float;
	var firstMinuteInThisHour : Float;
	var firstMonthInThisYear : Float;
	var firstPeriodInThisDay : Float;
	var firstSecondInThisMinute : Float;
	var firstYearInThisEra : Float;
	var hour : Float;
	var isDaylightSavingTime : Bool;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var lastDayInThisMonth : Float;
	var lastEra : Float;
	var lastHourInThisPeriod : Float;
	var lastMinuteInThisHour : Float;
	var lastMonthInThisYear : Float;
	var lastPeriodInThisDay : Float;
	var lastSecondInThisMinute : Float;
	var lastYearInThisEra : Float;
	var minute : Float;
	var month : Float;
	var nanosecond : Float;
	var numberOfDaysInThisMonth : Float;
	var numberOfEras : Float;
	var numberOfHoursInThisPeriod : Float;
	var numberOfMinutesInThisHour : Float;
	var numberOfMonthsInThisYear : Float;
	var numberOfPeriodsInThisDay : Float;
	var numberOfSecondsInThisMinute : Float;
	var numberOfYearsInThisEra : Float;
	var numeralSystem : String;
	var period : Float;
	var resolvedLanguage : String;
	var second : Float;
	var year : Float;
	function clone():Windows.Globalization.Calendar;
	function setToMin():Void;
	function setToMax():Void;
	function getCalendarSystem():String;
	function changeCalendarSystem(value:String):Void;
	function getClock():String;
	function changeClock(value:String):Void;
	function getDateTime():Date;
	function setDateTime(value:Date):Void;
	function setToNow():Void;
	function addEras(eras:Float):Void;
	@:overload(function(idealLength:Float):String { })
	function eraAsString():String;
	function addYears(years:Float):Void;
	function yearAsString():String;
	function yearAsTruncatedString(remainingDigits:Float):String;
	function yearAsPaddedString(minDigits:Float):String;
	function addMonths(months:Float):Void;
	@:overload(function(idealLength:Float):String { })
	function monthAsString():String;
	@:overload(function(idealLength:Float):String { })
	function monthAsSoloString():String;
	function monthAsNumericString():String;
	function monthAsPaddedNumericString(minDigits:Float):String;
	function addWeeks(weeks:Float):Void;
	function addDays(days:Float):Void;
	function dayAsString():String;
	function dayAsPaddedString(minDigits:Float):String;
	@:overload(function(idealLength:Float):String { })
	function dayOfWeekAsString():String;
	@:overload(function(idealLength:Float):String { })
	function dayOfWeekAsSoloString():String;
	function addPeriods(periods:Float):Void;
	@:overload(function(idealLength:Float):String { })
	function periodAsString():String;
	function addHours(hours:Float):Void;
	function hourAsString():String;
	function hourAsPaddedString(minDigits:Float):String;
	function addMinutes(minutes:Float):Void;
	function minuteAsString():String;
	function minuteAsPaddedString(minDigits:Float):String;
	function addSeconds(seconds:Float):Void;
	function secondAsString():String;
	function secondAsPaddedString(minDigits:Float):String;
	function addNanoseconds(nanoseconds:Float):Void;
	function nanosecondAsString():String;
	function nanosecondAsPaddedString(minDigits:Float):String;
	function compare(other:Windows.Globalization.Calendar):Float;
	function compareDateTime(other:Date):Float;
	function copyTo(other:Windows.Globalization.Calendar):Void;
}
typedef ICalendarFactory = {
	function createCalendarDefaultCalendarAndClock(languages:Windows.Foundation.Collections.IIterable<String>):Windows.Globalization.Calendar;
	function createCalendar(languages:Windows.Foundation.Collections.IIterable<String>, calendar:String, clock:String):Windows.Globalization.Calendar;
};
typedef IApplicationLanguagesStatics = {
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var manifestLanguages : Windows.Foundation.Collections.IVectorView<String>;
	var primaryLanguageOverride : String;
};
extern class ApplicationLanguages {
	static var languages : Windows.Foundation.Collections.IVectorView<String>;
	static var manifestLanguages : Windows.Foundation.Collections.IVectorView<String>;
	static var primaryLanguageOverride : String;
}
