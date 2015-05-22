typedef KlassOptions = {
	@:optional
	var input : String;
	@:optional
	var active : String;
	@:optional
	var picker : String;
	@:optional
	var opened : String;
	@:optional
	var focused : String;
	@:optional
	var holder : String;
	@:optional
	var frame : String;
	@:optional
	var wrap : String;
	@:optional
	var box : String;
	@:optional
	var disabled : String;
	@:optional
	var selected : String;
	@:optional
	var highlighted : String;
	@:optional
	var now : String;
	@:optional
	var buttonClear : String;
};
typedef DateKlassOptions = {
	>KlassOptions,
	@:optional
	var header : String;
	@:optional
	var navPrev : String;
	@:optional
	var navNext : String;
	@:optional
	var navDisabled : String;
	@:optional
	var month : String;
	@:optional
	var year : String;
	@:optional
	var selectMonth : String;
	@:optional
	var selectYear : String;
	@:optional
	var table : String;
	@:optional
	var weekdays : String;
	@:optional
	var day : String;
	@:optional
	var infocus : String;
	@:optional
	var outfocus : String;
	@:optional
	var footer : String;
	@:optional
	var buttonClose : String;
	@:optional
	var buttonToday : String;
};
typedef TimeKlassOptions = {
	>KlassOptions,
	@:optional
	var picker : String;
	@:optional
	var list : String;
	@:optional
	var listItem : String;
	@:optional
	var viewset : String;
};
typedef Options = {
	@:optional
	var clear : String;
	@:optional
	var format : String;
	@:optional
	var formatSubmit : String;
	@:optional
	var hiddenPrefix : String;
	@:optional
	var hiddenSuffix : String;
	@:optional
	var hiddenName : Bool;
	@:optional
	var editable : Bool;
	@:optional
	var container : String;
	@:optional
	var containerHidden : String;
	@:optional
	var closeOnSelect : Bool;
	@:optional
	var closeOnClear : Bool;
	@:optional
	var onStart : Dynamic -> Void;
	@:optional
	var onRender : Dynamic -> Void;
	@:optional
	var onOpen : Dynamic -> Void;
	@:optional
	var onClose : Dynamic -> Void;
	@:optional
	var onSet : Dynamic -> Void;
	@:optional
	var onStop : Dynamic -> Void;
};
typedef DateOptions = {
	>Options,
	@:optional
	var monthsFull : Array<String>;
	@:optional
	var monthsShort : Array<String>;
	@:optional
	var weekdaysFull : Array<String>;
	@:optional
	var weekdaysShort : Array<String>;
	@:optional
	var showMonthsShort : Bool;
	@:optional
	var showWeekdaysFull : Bool;
	@:optional
	var today : String;
	@:optional
	var close : String;
	@:optional
	var labelMonthNext : String;
	@:optional
	var labelMonthPrev : String;
	@:optional
	var labelMonthSelect : String;
	@:optional
	var labelYearSelect : String;
	@:optional
	var selectYears : haxe.extern.EitherType<Bool, Float>;
	@:optional
	var selectMonths : Bool;
	@:optional
	var firstDay : haxe.extern.EitherType<Bool, Float>;
	@:optional
	var min : MinOrMaxDateOption;
	@:optional
	var max : MinOrMaxDateOption;
	@:optional
	var disable : Array<Dynamic>;
	@:optional
	var klass : DateKlassOptions;
};
typedef TimeOptions = {
	>Options,
	@:optional
	var formatLabel : haxe.extern.EitherType<String, TimeItem -> String>;
	@:optional
	var interval : Float;
	@:optional
	var min : MinOrMaxTimeOption;
	@:optional
	var max : MinOrMaxTimeOption;
	@:optional
	var disable : Array<Dynamic>;
	@:optional
	var klass : TimeKlassOptions;
};
typedef Item = {
	var pick : Float;
};
typedef DateItem = {
	>Item,
	var year : Float;
	var month : Float;
	var date : Float;
	var day : Float;
	var obj : Date;
};
typedef TimeItem = {
	>Item,
	var hour : Float;
	var mins : Float;
};
typedef CallbackObject = {
	@:optional
	var open : Void -> Void;
	@:optional
	var close : Void -> Void;
	@:optional
	var render : Void -> Void;
	@:optional
	var start : Void -> Void;
	@:optional
	var stop : Void -> Void;
	@:optional
	var set : Dynamic -> Void;
};
typedef SetObject = {
	@:optional
	var clear : Dynamic;
	@:optional
	var select : Dynamic;
	@:optional
	var highlight : Dynamic;
	@:optional
	var view : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var max : Dynamic;
	@:optional
	var disable : Dynamic;
	@:optional
	var enable : Dynamic;
};
typedef TimeSetObject = {
	>SetObject,
	@:optional
	var interval : Float;
};
typedef SetOptions = {
	@:optional
	var muted : Bool;
	@:optional
	var format : String;
};
typedef Picker<TPickerObject, TItemObject:(Item), TOptions:(SetObject)> = {
	var $node : JQuery;
	var $root : JQuery;
	var _hidden : HTMLInputElement;
	function open(?withoutFocus:Bool):TPickerObject;
	function close(?withFocus:Bool):TPickerObject;
	function start():TPickerObject;
	function stop():TPickerObject;
	function render(?entirePicker:Bool):TPickerObject;
	function clear():TPickerObject;
	@:overload(function(thing:String):Dynamic { })
	@:overload(function(thing:Value):String { })
	@:overload(function(thing:Select):TItemObject { })
	@:overload(function(thing:Highlight):TItemObject { })
	@:overload(function(thing:View):TItemObject { })
	@:overload(function(thing:Min):TItemObject { })
	@:overload(function(thing:Max):TItemObject { })
	@:overload(function(thing:Open):Bool { })
	@:overload(function(thing:Start):Bool { })
	@:overload(function(thing:Id):Float { })
	@:overload(function(thing:Disable):Array<Dynamic> { })
	@:overload(function(thing:String, format:String):String { })
	function get():String;
	@:overload(function(things:TOptions, ?options:SetOptions):TPickerObject { })
	function set(thing:String, ?value:Dynamic, ?options:SetOptions):TPickerObject;
	@:overload(function(callbackObject:CallbackObject):TPickerObject { })
	function on(methodName:String, callback:?Dynamic -> Void):TPickerObject;
	function off(methodName:haxe.extern.Rest<String>):TPickerObject;
	function trigger(event:String, ?data:Dynamic):TPickerObject;
};
typedef DatePicker = {
	>Picker<DatePicker, DateItem, SetObject>,
};
typedef TimePicker = {
	>Picker<TimePicker, TimeItem, TimeSetObject>,
};
typedef JQuery = {
	@:overload(function(objectName:$node):JQuery { })
	@:overload(function(objectName:$root):JQuery { })
	@:overload(function(objectName:_hidden):HTMLInputElement { })
	@:overload(function(methodName:String, arguments:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(?options:Pickadate.DateOptions):JQuery { })
	function pickadate(keyword:Picker):Pickadate.DatePicker;
	@:overload(function(objectName:$node):JQuery { })
	@:overload(function(objectName:$root):JQuery { })
	@:overload(function(objectName:_hidden):HTMLInputElement { })
	@:overload(function(methodName:String, arguments:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(?options:Pickadate.TimeOptions):JQuery { })
	function pickatime(keyword:Picker):Pickadate.TimePicker;
};
