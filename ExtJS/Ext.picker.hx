typedef IColor = {
	>Ext.IComponent,
	@:optional
	var allowReselect : Bool;
	@:optional
	var clickEvent : String;
	@:optional
	var componentCls : String;
	@:optional
	var handler : Dynamic;
	@:optional
	var itemCls : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var selectedCls : String;
	@:optional
	var value : String;
	@:optional
	var colors : Array<String>;
	@:optional
	function clear():Void;
	@:optional
	function getValue():String;
	@:optional
	function onRender():Void;
	@:optional
	function select(?color:String, ?suppressEvent:Bool):Void;
};
typedef IDate = {
	>Ext.IComponent,
	@:optional
	var ariaTitle : String;
	@:optional
	var ariaTitleDateFormat : String;
	@:optional
	var baseCls : String;
	@:optional
	var border : Dynamic;
	@:optional
	var dayNames : Array<String>;
	@:optional
	var disableAnim : Bool;
	@:optional
	var disabledCellCls : String;
	@:optional
	var disabledDates : Array<String>;
	@:optional
	var disabledDatesRE : js.RegExp;
	@:optional
	var disabledDatesText : String;
	@:optional
	var disabledDays : Array<Float>;
	@:optional
	var disabledDaysText : String;
	@:optional
	var focusOnShow : Bool;
	@:optional
	var format : String;
	@:optional
	var handler : Dynamic;
	@:optional
	var keyNavConfig : Dynamic;
	@:optional
	var longDayFormat : String;
	@:optional
	var maxDate : Dynamic;
	@:optional
	var maxText : String;
	@:optional
	var minDate : Dynamic;
	@:optional
	var minText : String;
	@:optional
	var monthNames : Array<String>;
	@:optional
	var monthYearFormat : String;
	@:optional
	var monthYearText : String;
	@:optional
	var nextText : String;
	@:optional
	var prevText : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var selectedCls : String;
	@:optional
	var showToday : Bool;
	@:optional
	var startDay : Float;
	@:optional
	var todayText : String;
	@:optional
	var todayTip : String;
	@:optional
	function getDayInitial(?value:Dynamic):String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function hideMonthPicker(?animate:Bool):Ext.picker.IDate;
	@:optional
	function initComponent():Void;
	@:optional
	function selectToday():Ext.picker.IDate;
	@:optional
	function setDisabledDates(?disabledDates:Dynamic):Ext.picker.IDate;
	@:optional
	function setDisabledDays(?disabledDays:Array<Float>):Ext.picker.IDate;
	@:optional
	function setMaxDate(?value:Dynamic):Ext.picker.IDate;
	@:optional
	function setMinDate(?value:Dynamic):Ext.picker.IDate;
	@:optional
	function setValue(?value:Dynamic):Ext.picker.IDate;
	@:optional
	function showMonthPicker(?animate:Bool):Ext.picker.IDate;
	@:optional
	function showNextMonth(?e:Dynamic):Ext.picker.IDate;
	@:optional
	function showNextYear():Ext.picker.IDate;
	@:optional
	function showPrevMonth(?e:Dynamic):Ext.picker.IDate;
	@:optional
	function showPrevYear():Ext.picker.IDate;
};
typedef IMonth = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var cancelText : String;
	@:optional
	var okText : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var selectedCls : String;
	@:optional
	var showButtons : Bool;
	@:optional
	var value : Dynamic;
	@:optional
	function adjustYear(?offset:Float):Void;
	@:optional
	function getValue():Array<Float>;
	@:optional
	function hasSelection():Bool;
	@:optional
	function onDestroy():Void;
	@:optional
	function setValue(?value:Dynamic):Ext.picker.IMonth;
};
typedef ITime = {
	>Ext.view.IBoundList,
	@:optional
	var componentCls : String;
	@:optional
	var format : String;
	@:optional
	var increment : Float;
	@:optional
	var maxValue : Dynamic;
	@:optional
	var minValue : Dynamic;
	@:optional
	function focusNode(?rec:Dynamic):Void;
	@:optional
	function initComponent():Void;
	@:optional
	function setMaxValue(?value:Dynamic):Void;
	@:optional
	function setMinValue(?value:Dynamic):Void;
	@:optional
	function updateList():Void;
};
