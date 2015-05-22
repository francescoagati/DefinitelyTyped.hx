typedef ICheckbox = {
	>Ext.field.IField,
	@:optional
	var checked : Bool;
	@:optional
	var component : Dynamic;
	@:optional
	var ui : String;
	@:optional
	var value : String;
	@:optional
	function check():Ext.field.ICheckbox;
	@:optional
	function doChecked():Void;
	@:optional
	function doUnChecked():Void;
	@:optional
	function getChecked():Dynamic;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getGroupValues():Array<Dynamic>;
	@:optional
	function getSubmitValue():Dynamic;
	@:optional
	function getUi():String;
	@:optional
	function getValue():String;
	@:optional
	function isChecked():Bool;
	@:optional
	function reset():Ext.field.IField;
	@:optional
	function resetGroupValues():Ext.field.ICheckbox;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setGroupValues(?values:Array<Dynamic>):Ext.field.ICheckbox;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setValue(?value:String):Void;
	@:optional
	function uncheck():Ext.field.ICheckbox;
};
typedef IDatePicker = {
	>Ext.field.IText,
	@:optional
	var dateFormat : String;
	@:optional
	var destroyPickerOnHide : Bool;
	@:optional
	var picker : Dynamic;
	@:optional
	var ui : String;
	@:optional
	var value : Dynamic;
	@:optional
	function getDateFormat():String;
	@:optional
	function getDatePicker():Void;
	@:optional
	function getDestroyPickerOnHide():Bool;
	@:optional
	function getFormattedValue(?format:String):String;
	@:optional
	function getUi():String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function onChange():Void;
	@:optional
	function reset():Ext.field.IField;
	@:optional
	function setDateFormat(?dateFormat:String):Void;
	@:optional
	function setDestroyPickerOnHide(?destroyPickerOnHide:Bool):Void;
	@:optional
	function setPicker(?picker:Dynamic):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
};
typedef IEmail = {
	>Ext.field.IText,
	@:optional
	var autoCapitalize : Bool;
	@:optional
	var component : Dynamic;
	@:optional
	function getAutoCapitalize():Bool;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function setAutoCapitalize(?autoCapitalize:Bool):Void;
	@:optional
	function setComponent(?component:Dynamic):Void;
};
typedef IField = {
	>Ext.IDecorator,
	@:optional
	var baseCls : String;
	@:optional
	var clearIcon : Bool;
	@:optional
	var component : Dynamic;
	@:optional
	var fieldCls : String;
	@:optional
	var fieldLabel : String;
	@:optional
	var inputCls : String;
	@:optional
	var inputType : String;
	@:optional
	var label : String;
	@:optional
	var labelAlign : String;
	@:optional
	var labelCls : String;
	@:optional
	var labelWidth : Dynamic;
	@:optional
	var labelWrap : Bool;
	@:optional
	var name : String;
	@:optional
	var required : Bool;
	@:optional
	var requiredCls : String;
	@:optional
	var tabIndex : Float;
	@:optional
	var useClearIcon : String;
	@:optional
	var value : Dynamic;
	@:optional
	var isField : Bool;
	@:optional
	var labelEl : Ext.IElement;
	@:optional
	var originalValue : Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getClearIcon():Bool;
	@:optional
	function getInputCls():String;
	@:optional
	function getInputType():String;
	@:optional
	function getLabel():String;
	@:optional
	function getLabelAlign():String;
	@:optional
	function getLabelCls():String;
	@:optional
	function getLabelWidth():Dynamic;
	@:optional
	function getLabelWrap():Bool;
	@:optional
	function getName():String;
	@:optional
	function getRequired():Bool;
	@:optional
	function getRequiredCls():String;
	@:optional
	function getTabIndex():Float;
	@:optional
	function getValue():Dynamic;
	@:optional
	function isDirty():Bool;
	@:optional
	function reset():Ext.field.IField;
	@:optional
	function resetOriginalValue():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setClearIcon(?clearIcon:Bool):Void;
	@:optional
	function setInputCls(?inputCls:String):Void;
	@:optional
	function setInputType(?inputType:String):Void;
	@:optional
	function setLabel(?label:String):Void;
	@:optional
	function setLabelAlign(?labelAlign:String):Void;
	@:optional
	function setLabelCls(?labelCls:String):Void;
	@:optional
	function setLabelWidth(?labelWidth:Dynamic):Void;
	@:optional
	function setLabelWrap(?labelWrap:Bool):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setRequired(?required:Bool):Void;
	@:optional
	function setRequiredCls(?requiredCls:String):Void;
	@:optional
	function setTabIndex(?tabIndex:Float):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
};
typedef IFile = {
	>Ext.field.IInput,
	@:optional
	var type : String;
	@:optional
	function getType():String;
	@:optional
	function setType(?type:String):Void;
};
typedef IHidden = {
	>Ext.field.IText,
	@:optional
	var component : Dynamic;
	@:optional
	var ui : String;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getUi():String;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef IInput = {
	>Ext.IComponent,
	@:optional
	var autoCapitalize : Bool;
	@:optional
	var autoComplete : Bool;
	@:optional
	var autoCorrect : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var checked : Bool;
	@:optional
	var cls : String;
	@:optional
	var disabled : Bool;
	@:optional
	var focusCls : String;
	@:optional
	var maxLength : Float;
	@:optional
	var maxRows : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var name : String;
	@:optional
	var pattern : String;
	@:optional
	var placeHolder : String;
	@:optional
	var readOnly : Bool;
	@:optional
	var startValue : Dynamic;
	@:optional
	var stepValue : Float;
	@:optional
	var tabIndex : Float;
	@:optional
	var type : String;
	@:optional
	var value : Dynamic;
	@:optional
	var isFocused : Bool;
	@:optional
	function blur():Ext.field.IInput;
	@:optional
	function focus():Ext.field.IInput;
	@:optional
	function getAutoCapitalize():Bool;
	@:optional
	function getAutoComplete():Bool;
	@:optional
	function getAutoCorrect():Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getChecked():Dynamic;
	@:optional
	function getCls():String;
	@:optional
	function getDisabled():Bool;
	@:optional
	function getFocusCls():String;
	@:optional
	function getMaxLength():Float;
	@:optional
	function getMaxRows():Float;
	@:optional
	function getMaxValue():Float;
	@:optional
	function getMinValue():Float;
	@:optional
	function getName():String;
	@:optional
	function getPattern():String;
	@:optional
	function getPlaceHolder():String;
	@:optional
	function getReadOnly():Bool;
	@:optional
	function getStartValue():Dynamic;
	@:optional
	function getStepValue():Float;
	@:optional
	function getTabIndex():Float;
	@:optional
	function getType():String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function isDirty():Bool;
	@:optional
	function reset():Void;
	@:optional
	function select():Ext.field.IInput;
	@:optional
	function setAutoCapitalize(?autoCapitalize:Bool):Void;
	@:optional
	function setAutoComplete(?autoComplete:Bool):Void;
	@:optional
	function setAutoCorrect(?autoCorrect:Bool):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setDisabled(?disabled:Bool):Void;
	@:optional
	function setFocusCls(?focusCls:String):Void;
	@:optional
	function setMaxLength(?maxLength:Float):Void;
	@:optional
	function setMaxRows(?maxRows:Float):Void;
	@:optional
	function setMaxValue(?maxValue:Float):Void;
	@:optional
	function setMinValue(?minValue:Float):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setPattern(?pattern:String):Void;
	@:optional
	function setPlaceHolder(?placeHolder:String):Void;
	@:optional
	function setReadOnly(?readOnly:Bool):Void;
	@:optional
	function setStartValue(?startValue:Dynamic):Void;
	@:optional
	function setStepValue(?stepValue:Float):Void;
	@:optional
	function setTabIndex(?tabIndex:Float):Void;
	@:optional
	function setType(?type:String):Void;
	@:optional
	function updateCls(?newCls:Dynamic, ?oldCls:Dynamic):Void;
	@:optional
	function updateUseMask(?newUseMask:Dynamic):Void;
};
typedef INumber = {
	>Ext.field.IText,
	@:optional
	var component : Dynamic;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var stepValue : Float;
	@:optional
	var ui : String;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getMaxValue():Float;
	@:optional
	function getMinValue():Float;
	@:optional
	function getStepValue():Float;
	@:optional
	function getUi():String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setMaxValue(?maxValue:Float):Void;
	@:optional
	function setMinValue(?minValue:Float):Void;
	@:optional
	function setStepValue(?stepValue:Float):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef IPassword = {
	>Ext.field.IText,
	@:optional
	var autoCapitalize : Bool;
	@:optional
	var component : Dynamic;
	@:optional
	function getAutoCapitalize():Bool;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function setAutoCapitalize(?autoCapitalize:Bool):Void;
	@:optional
	function setComponent(?component:Dynamic):Void;
};
typedef IRadio = {
	>Ext.field.ICheckbox,
	@:optional
	var component : Dynamic;
	@:optional
	var ui : String;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getGroupValue():String;
	@:optional
	function getSubmitValue():Dynamic;
	@:optional
	function getUi():String;
	@:optional
	function getValue():String;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setGroupValue(?value:String):Ext.field.IRadio;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setValue(?value:Dynamic):Ext.field.IRadio;
};
typedef ISearch = {
	>Ext.field.IText,
	@:optional
	var component : Dynamic;
	@:optional
	var ui : String;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getUi():String;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef ISelect = {
	>Ext.field.IText,
	@:optional
	var autoSelect : Bool;
	@:optional
	var defaultPhonePickerConfig : Dynamic;
	@:optional
	var defaultTabletPickerConfig : Dynamic;
	@:optional
	var displayField : Dynamic;
	@:optional
	var hiddenName : String;
	@:optional
	var name : String;
	@:optional
	var options : Array<Dynamic>;
	@:optional
	var store : Dynamic;
	@:optional
	var ui : String;
	@:optional
	var usePicker : Dynamic;
	@:optional
	var valueField : Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getAutoSelect():Bool;
	@:optional
	function getDefaultPhonePickerConfig():Dynamic;
	@:optional
	function getDefaultTabletPickerConfig():Dynamic;
	@:optional
	function getDisplayField():Dynamic;
	@:optional
	function getHiddenName():String;
	@:optional
	function getName():String;
	@:optional
	function getOptions():Array<Dynamic>;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function getStore():Dynamic;
	@:optional
	function getUi():String;
	@:optional
	function getUsePicker():Dynamic;
	@:optional
	function getValue():Dynamic;
	@:optional
	function getValueField():Dynamic;
	@:optional
	function onStoreDataChanged(?store:Dynamic):Void;
	@:optional
	function reset():Ext.field.ISelect;
	@:optional
	function setAutoSelect(?autoSelect:Bool):Void;
	@:optional
	function setDefaultPhonePickerConfig(?defaultPhonePickerConfig:Dynamic):Void;
	@:optional
	function setDefaultTabletPickerConfig(?defaultTabletPickerConfig:Dynamic):Void;
	@:optional
	function setDisplayField(?displayField:Dynamic):Void;
	@:optional
	function setHiddenName(?hiddenName:String):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setOptions(?options:Array<Dynamic>):Void;
	@:optional
	function setStore(?store:Dynamic):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setUsePicker(?usePicker:Dynamic):Void;
	@:optional
	function setValueField(?valueField:Dynamic):Void;
	@:optional
	function showPicker():Void;
	@:optional
	function updateOptions(?newOptions:Array<Dynamic>):Ext.field.ISelect;
};
typedef ISlider = {
	>Ext.field.IField,
	@:optional
	var cls : Dynamic;
	@:optional
	var increment : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var readOnly : Bool;
	@:optional
	var tabIndex : Float;
	@:optional
	var value : Dynamic;
	@:optional
	var values : Dynamic;
	@:optional
	function getCls():String;
	@:optional
	function getIncrement():Float;
	@:optional
	function getMaxValue():Float;
	@:optional
	function getMinValue():Float;
	@:optional
	function getReadOnly():Bool;
	@:optional
	function getValue():Dynamic;
	@:optional
	function getValues():Dynamic;
	@:optional
	function isDirty():Bool;
	@:optional
	function reset():Ext.field.IField;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setIncrement(?increment:Float):Void;
	@:optional
	function setMaxValue(?maxValue:Float):Void;
	@:optional
	function setMinValue(?minValue:Float):Void;
	@:optional
	function setReadOnly(?readOnly:Bool):Void;
	@:optional
	function setTabIndex(?tabIndex:Dynamic):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
	@:optional
	function setValues(?value:Dynamic):Void;
};
typedef ISpinner = {
	>Ext.field.INumber,
	@:optional
	var accelerateOnTapHold : Bool;
	@:optional
	var cls : Dynamic;
	@:optional
	var component : Dynamic;
	@:optional
	var cycle : Bool;
	@:optional
	var defaultValue : Float;
	@:optional
	var groupButtons : Bool;
	@:optional
	var increment : String;
	@:optional
	var incrementValue : String;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var stepValue : Float;
	@:optional
	function getAccelerateOnTapHold():Bool;
	@:optional
	function getCls():String;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getCycle():Bool;
	@:optional
	function getDefaultValue():Float;
	@:optional
	function getGroupButtons():Bool;
	@:optional
	function getMaxValue():Float;
	@:optional
	function getMinValue():Float;
	@:optional
	function getStepValue():Float;
	@:optional
	function reset():Ext.field.IField;
	@:optional
	function setAccelerateOnTapHold(?accelerateOnTapHold:Bool):Void;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setCycle(?cycle:Bool):Void;
	@:optional
	function setDefaultValue(?defaultValue:Float):Void;
	@:optional
	function setGroupButtons(?groupButtons:Bool):Void;
	@:optional
	function setMaxValue(?maxValue:Float):Void;
	@:optional
	function setMinValue(?minValue:Float):Void;
	@:optional
	function setStepValue(?stepValue:Float):Void;
	@:optional
	function updateComponent(?newComponent:Dynamic):Void;
};
typedef IText = {
	>Ext.field.IField,
	@:optional
	var autoCapitalize : Bool;
	@:optional
	var autoComplete : Bool;
	@:optional
	var autoCorrect : Bool;
	@:optional
	var bubbleEvents : Dynamic;
	@:optional
	var clearIcon : Bool;
	@:optional
	var component : Dynamic;
	@:optional
	var maxLength : Float;
	@:optional
	var placeHolder : String;
	@:optional
	var readOnly : Bool;
	@:optional
	var ui : String;
	@:optional
	var startValue : Dynamic;
	@:optional
	function blur():Ext.field.IText;
	@:optional
	function focus():Ext.field.IText;
	@:optional
	function getAutoCapitalize():Bool;
	@:optional
	function getAutoComplete():Bool;
	@:optional
	function getAutoCorrect():Bool;
	@:optional
	function getClearIcon():Bool;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getMaxLength():Float;
	@:optional
	function getPlaceHolder():String;
	@:optional
	function getReadOnly():Bool;
	@:optional
	function getUi():String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function isDirty():Bool;
	@:optional
	function reset():Ext.field.IField;
	@:optional
	function resetOriginalValue():Void;
	@:optional
	function select():Ext.field.IText;
	@:optional
	function setAutoCapitalize(?autoCapitalize:Bool):Void;
	@:optional
	function setAutoComplete(?autoComplete:Bool):Void;
	@:optional
	function setAutoCorrect(?autoCorrect:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Array<Dynamic>):Void;
	@:optional
	function setClearIcon(?clearIcon:Bool):Void;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setMaxLength(?maxLength:Float):Void;
	@:optional
	function setPlaceHolder(?placeHolder:String):Void;
	@:optional
	function setReadOnly(?readOnly:Bool):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef ITextArea = {
	>Ext.field.IText,
	@:optional
	var autoCapitalize : Bool;
	@:optional
	var component : Dynamic;
	@:optional
	var maxRows : Float;
	@:optional
	var ui : String;
	@:optional
	function getAutoCapitalize():Bool;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function getMaxRows():Float;
	@:optional
	function getUi():String;
	@:optional
	function setAutoCapitalize(?autoCapitalize:Bool):Void;
	@:optional
	function setComponent(?component:Dynamic):Void;
	@:optional
	function setMaxRows(?maxRows:Float):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef ITextAreaInput = {
	>Ext.field.IInput,
};
typedef IToggle = {
	>Ext.field.ISlider,
	@:optional
	var cls : String;
	@:optional
	var labelAlign : String;
	@:optional
	var maxValueCls : String;
	@:optional
	var minValueCls : String;
	@:optional
	var toggleOffLabel : String;
	@:optional
	var toggleOnLabel : String;
	@:optional
	function getCls():String;
	@:optional
	function getLabelAlign():String;
	@:optional
	function getMaxValueCls():String;
	@:optional
	function getMinValueCls():String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setLabelAlign(?labelAlign:String):Void;
	@:optional
	function setMaxValueCls(?maxValueCls:String):Void;
	@:optional
	function setMinValueCls(?minValueCls:String):Void;
	@:optional
	function setValue(?newValue:Float):Dynamic;
	@:optional
	function toggle():Dynamic;
};
typedef IUrl = {
	>Ext.field.IText,
	@:optional
	var autoCapitalize : Bool;
	@:optional
	var component : Dynamic;
	@:optional
	function getAutoCapitalize():Bool;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function setAutoCapitalize(?autoCapitalize:Bool):Void;
	@:optional
	function setComponent(?component:Dynamic):Void;
};
