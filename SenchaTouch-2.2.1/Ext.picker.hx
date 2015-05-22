typedef IDate = {
	>Ext.picker.IPicker,
	@:optional
	var dayText : String;
	@:optional
	var doneButton : Dynamic;
	@:optional
	var monthText : String;
	@:optional
	var slotOrder : Array<Dynamic>;
	@:optional
	var value : Dynamic;
	@:optional
	var yearFrom : Float;
	@:optional
	var yearText : String;
	@:optional
	var yearTo : Float;
	@:optional
	function getDayText():String;
	@:optional
	function getDoneButton():Dynamic;
	@:optional
	function getMonthText():String;
	@:optional
	function getSlotOrder():Array<Dynamic>;
	@:optional
	function getValue(?useDom:Dynamic):Dynamic;
	@:optional
	function getYearFrom():Float;
	@:optional
	function getYearText():String;
	@:optional
	function getYearTo():Float;
	@:optional
	function initialize():Void;
	@:optional
	function setDayText(?dayText:String):Void;
	@:optional
	function setDoneButton(?doneButton:Dynamic):Void;
	@:optional
	function setMonthText(?monthText:String):Void;
	@:optional
	function setSlotOrder(?slotOrder:Array<Dynamic>):Void;
	@:optional
	function setValue(?value:Dynamic, ?animated:Dynamic):Ext.IPicker;
	@:optional
	function setYearFrom(?yearFrom:Float):Void;
	@:optional
	function setYearText(?yearText:String):Void;
	@:optional
	function setYearTo(?yearTo:Float):Void;
	@:optional
	function updateDayText(?newDayText:Dynamic, ?oldDayText:Dynamic):Void;
	@:optional
	function updateMonthText(?newMonthText:Dynamic, ?oldMonthText:Dynamic):Void;
	@:optional
	function updateYearFrom():Void;
	@:optional
	function updateYearText(?yearText:Dynamic):Void;
	@:optional
	function updateYearTo():Void;
};
typedef IPicker = {
	>Ext.ISheet,
	@:optional
	var activeCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var bottom : Dynamic;
	@:optional
	var cancelButton : Dynamic;
	@:optional
	var doneButton : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var layout : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var slots : Array<Dynamic>;
	@:optional
	var toolbar : Dynamic;
	@:optional
	var useTitles : Bool;
	@:optional
	var value : Dynamic;
	@:optional
	function applyCancelButton(?config:Dynamic):Dynamic;
	@:optional
	function applyDoneButton(?config:Dynamic):Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBottom():Float;
	@:optional
	function getCancelButton():Dynamic;
	@:optional
	function getCard():Dynamic;
	@:optional
	function getDoneButton():Dynamic;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getSlots():Array<Dynamic>;
	@:optional
	function getToolbar():Dynamic;
	@:optional
	function getToolbarPosition():String;
	@:optional
	function getUseTitles():Bool;
	@:optional
	function getValue(?useDom:Dynamic):Dynamic;
	@:optional
	function getValues():Dynamic;
	@:optional
	function initialize():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBottom(?bottom:Float):Void;
	@:optional
	function setCancelButton(?cancelButton:Dynamic):Void;
	@:optional
	function setCard(?activeItem:Dynamic):Void;
	@:optional
	function setDoneButton(?doneButton:Dynamic):Void;
	@:optional
	function setHeight(?height:Float):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setLeft(?left:Float):Void;
	@:optional
	function setRight(?right:Float):Void;
	@:optional
	function setSlots(?slots:Array<Dynamic>):Void;
	@:optional
	function setToolbar(?toolbar:Dynamic):Void;
	@:optional
	function setToolbarPosition(?toolbarPosition:String):Void;
	@:optional
	function setUseTitles(?useTitles:Bool):Void;
	@:optional
	function setValue(?values:Dynamic, ?animated:Bool):Ext.IPicker;
	@:optional
	function show():Ext.IComponent;
};
typedef ISlot = {
	>Ext.dataview.IDataView,
	@:optional
	var align : String;
	@:optional
	var displayField : String;
	@:optional
	var itemTpl : String;
	@:optional
	var name : String;
	@:optional
	var title : String;
	@:optional
	var value : Float;
	@:optional
	var valueField : String;
	@:optional
	function applyData(?data:Dynamic):Dynamic;
	@:optional
	function applyTitle(?title:String):String;
	@:optional
	function getAlign():String;
	@:optional
	function getDisplayField():String;
	@:optional
	function getName():String;
	@:optional
	function getTitle():String;
	@:optional
	function getValueField():String;
	@:optional
	function setAlign(?align:String):Void;
	@:optional
	function setDisplayField(?displayField:String):Void;
	@:optional
	function setItemTpl(?itemTpl:String):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setTitle(?title:String):Void;
	@:optional
	function setValueField(?valueField:String):Void;
	@:optional
	function updateAlign(?newAlign:Dynamic, ?oldAlign:Dynamic):Void;
};
