typedef IBase = {
	>Ext.IComponent,
	>Ext.form.ILabelable,
	>Ext.form.field.IField,
	@:optional
	var baseCls : String;
	@:optional
	var checkChangeBuffer : Float;
	@:optional
	var checkChangeEvents : Array<String>;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var dirtyCls : String;
	@:optional
	var fieldCls : String;
	@:optional
	var fieldStyle : String;
	@:optional
	var focusCls : String;
	@:optional
	var inputAttrTpl : Dynamic;
	@:optional
	var inputId : String;
	@:optional
	var inputType : String;
	@:optional
	var invalidText : String;
	@:optional
	var name : String;
	@:optional
	var readOnly : Bool;
	@:optional
	var readOnlyCls : String;
	@:optional
	var tabIndex : Float;
	@:optional
	var validateOnBlur : Bool;
	@:optional
	var inputEl : Ext.IElement;
	@:optional
	var maskOnDisable : Bool;
	@:optional
	function batchChanges(?fn:Dynamic):Void;
	@:optional
	function beforeReset():Void;
	@:optional
	function checkChange():Void;
	@:optional
	function checkDirty():Void;
	@:optional
	function clearInvalid():Void;
	@:optional
	function doComponentLayout():Ext.container.IContainer;
	@:optional
	function extractFileInput():HTMLElement;
	@:optional
	function getActiveError():String;
	@:optional
	function getActiveErrors():Array<String>;
	@:optional
	function getErrors(?value:Dynamic):Array<String>;
	@:optional
	function getFieldLabel():String;
	@:optional
	function getLabelWidth():Float;
	@:optional
	function getLabelableRenderData():Dynamic;
	@:optional
	function getModelData():Dynamic;
	@:optional
	function getName():String;
	@:optional
	function getRawValue():Dynamic;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function getSubmitData():Dynamic;
	@:optional
	function getSubmitValue():Dynamic;
	@:optional
	function getValue():Dynamic;
	@:optional
	function hasActiveError():Bool;
	@:optional
	function hasVisibleLabel():Bool;
	@:optional
	function initComponent():Void;
	@:optional
	function initEvents():Void;
	@:optional
	function initField():Void;
	@:optional
	function initLabelable():Void;
	@:optional
	function initRenderData():Dynamic;
	@:optional
	function initValue():Void;
	@:optional
	function isDirty():Bool;
	@:optional
	function isEqual(?value1:Dynamic, ?value2:Dynamic):Bool;
	@:optional
	function isFileUpload():Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function markInvalid(?errors:Dynamic):Void;
	@:optional
	function onDisable():Void;
	@:optional
	function onEnable():Void;
	@:optional
	function onRender():Void;
	@:optional
	function processRawValue(?value:Dynamic):Dynamic;
	@:optional
	function rawToValue(?rawValue:Dynamic):Dynamic;
	@:optional
	function reset():Void;
	@:optional
	function resetOriginalValue():Void;
	@:optional
	function setActiveError(?msg:String):Void;
	@:optional
	function setActiveErrors(?errors:Array<String>):Void;
	@:optional
	function setFieldDefaults(?defaults:Dynamic):Void;
	@:optional
	function setFieldLabel(?label:String):Void;
	@:optional
	function setFieldStyle(?style:Dynamic):Void;
	@:optional
	function setRawValue(?value:Dynamic):Dynamic;
	@:optional
	function setReadOnly(?readOnly:Bool):Void;
	@:optional
	function setValue(?value:Dynamic):Dynamic;
	@:optional
	function transformOriginalValue(?value:Dynamic):Dynamic;
	@:optional
	function transformRawValue(?value:Dynamic):Dynamic;
	@:optional
	function trimLabelSeparator():String;
	@:optional
	function unsetActiveError():Void;
	@:optional
	function validate():Bool;
	@:optional
	function validateValue(?value:Dynamic):Bool;
	@:optional
	function valueToRaw(?value:Dynamic):Dynamic;
};
typedef ICheckbox = {
	>Ext.form.field.IBase,
	@:optional
	var afterBoxLabelTextTpl : Dynamic;
	@:optional
	var afterBoxLabelTpl : Dynamic;
	@:optional
	var beforeBoxLabelTextTpl : Dynamic;
	@:optional
	var beforeBoxLabelTpl : Dynamic;
	@:optional
	var boxLabel : String;
	@:optional
	var boxLabelAlign : String;
	@:optional
	var boxLabelAttrTpl : Dynamic;
	@:optional
	var boxLabelCls : String;
	@:optional
	var checkChangeEvents : Array<String>;
	@:optional
	var checked : Bool;
	@:optional
	var checkedCls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var fieldCls : String;
	@:optional
	var focusCls : String;
	@:optional
	var handler : Dynamic;
	@:optional
	var inputType : String;
	@:optional
	var inputValue : String;
	@:optional
	var scope : Dynamic;
	@:optional
	var uncheckedValue : String;
	@:optional
	var boxLabelEl : Ext.IElement;
	@:optional
	var originalValue : Dynamic;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function getRawValue():Bool;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function getSubmitValue():Dynamic;
	@:optional
	function getValue():Bool;
	@:optional
	function initComponent():Void;
	@:optional
	function initEvents():Void;
	@:optional
	function initValue():Void;
	@:optional
	function onEnable():Void;
	@:optional
	function resetOriginalValue(?fromBoxInGroup:Dynamic):Void;
	@:optional
	function setBoxLabel(?boxLabel:String):Void;
	@:optional
	function setRawValue(?value:Dynamic):Bool;
	@:optional
	function setReadOnly(?readOnly:Dynamic):Void;
	@:optional
	function setValue(?checked:Dynamic):Ext.form.field.ICheckbox;
	@:optional
	function valueToRaw(?value:Dynamic):Dynamic;
};
typedef IComboBox = {
	>Ext.form.field.IPicker,
	>Ext.util.IBindable,
	@:optional
	var allQuery : String;
	@:optional
	var anyMatch : Bool;
	@:optional
	var autoSelect : Bool;
	@:optional
	var caseSensitive : Bool;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var defaultListConfig : Dynamic;
	@:optional
	var delimiter : String;
	@:optional
	var displayField : String;
	@:optional
	var enableRegEx : Bool;
	@:optional
	var fieldSubTpl : Ext.IXTemplate;
	@:optional
	var forceSelection : Bool;
	@:optional
	var growToLongestValue : Bool;
	@:optional
	var hiddenName : String;
	@:optional
	var listConfig : Dynamic;
	@:optional
	var minChars : Float;
	@:optional
	var multiSelect : Bool;
	@:optional
	var pageSize : Float;
	@:optional
	var queryCaching : Bool;
	@:optional
	var queryDelay : Float;
	@:optional
	var queryMode : String;
	@:optional
	var queryParam : String;
	@:optional
	var selectOnTab : Bool;
	@:optional
	var store : Dynamic;
	@:optional
	var transform : Dynamic;
	@:optional
	var triggerAction : String;
	@:optional
	var triggerCls : String;
	@:optional
	var typeAhead : Bool;
	@:optional
	var typeAheadDelay : Float;
	@:optional
	var valueField : String;
	@:optional
	var valueNotFoundText : String;
	@:optional
	var lastQuery : String;
	@:optional
	function afterQuery(?queryPlan:Dynamic):Void;
	@:optional
	function afterRender():Void;
	@:optional
	function alignPicker():Void;
	@:optional
	function beforeBlur():Void;
	@:optional
	function beforeQuery(?queryPlan:Dynamic):Void;
	@:optional
	function beforeReset():Void;
	@:optional
	function bindStore(?store:Dynamic):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function clearValue():Void;
	@:optional
	function createPicker():Void;
	@:optional
	function doQuery(?queryString:String, ?forceAll:Bool, ?rawQuery:Bool):Bool;
	@:optional
	function findRecord(?field:String, ?value:Dynamic):Ext.data.IModel;
	@:optional
	function findRecordByDisplay(?value:Dynamic):Ext.data.IModel;
	@:optional
	function findRecordByValue(?value:Dynamic):Ext.data.IModel;
	@:optional
	function getStore():Ext.data.IStore;
	@:optional
	function getStoreListeners():Dynamic;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function getSubmitValue():String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function initComponent():Void;
	@:optional
	function initEvents():Void;
	@:optional
	function onAdded():Void;
	@:optional
	function onBindStore(?store:Dynamic, ?initial:Dynamic):Void;
	@:optional
	function onTriggerClick():Void;
	@:optional
	function onUnbindStore(?store:Dynamic):Void;
	@:optional
	function select(?r:Dynamic):Void;
	@:optional
	function setValue(?value:Dynamic):Dynamic;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
typedef IDate = {
	>Ext.form.field.IPicker,
	@:optional
	var altFormats : String;
	@:optional
	var disabledDates : Array<String>;
	@:optional
	var disabledDatesText : String;
	@:optional
	var disabledDays : Array<Float>;
	@:optional
	var disabledDaysText : String;
	@:optional
	var format : String;
	@:optional
	var invalidText : String;
	@:optional
	var matchFieldWidth : Bool;
	@:optional
	var maxText : String;
	@:optional
	var maxValue : Dynamic;
	@:optional
	var minText : String;
	@:optional
	var minValue : Dynamic;
	@:optional
	var showToday : Bool;
	@:optional
	var startDay : Float;
	@:optional
	var submitFormat : String;
	@:optional
	var triggerCls : String;
	@:optional
	var useStrict : Bool;
	@:optional
	function beforeBlur():Void;
	@:optional
	function createPicker():Void;
	@:optional
	function getErrors(?value:Dynamic):Array<String>;
	@:optional
	function initComponent():Void;
	@:optional
	function initValue():Void;
	@:optional
	function rawToValue(?rawValue:Dynamic):Dynamic;
	@:optional
	var safeParse : Dynamic;
	@:optional
	function setDisabledDates(?disabledDates:Array<String>):Void;
	@:optional
	function setDisabledDays(?disabledDays:Array<Float>):Void;
	@:optional
	function setMaxValue(?value:Dynamic):Void;
	@:optional
	function setMinValue(?value:Dynamic):Void;
	@:optional
	function setValue(?date:Dynamic):Ext.form.field.IDate;
	@:optional
	function valueToRaw(?value:Dynamic):Dynamic;
};
typedef IDisplay = {
	>Ext.form.field.IBase,
	@:optional
	var fieldBodyCls : String;
	@:optional
	var fieldCls : String;
	@:optional
	var htmlEncode : Bool;
	@:optional
	var renderer : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var submitValue : Bool;
	@:optional
	function getRawValue():String;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function initEvents():Void;
	@:optional
	function isDirty():Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function setRawValue(?value:Dynamic):Dynamic;
	@:optional
	function validate():Bool;
};
typedef IField = {
	>Ext.IBase,
	@:optional
	var disabled : Bool;
	@:optional
	var name : String;
	@:optional
	var submitValue : Bool;
	@:optional
	var validateOnChange : Bool;
	@:optional
	var value : Dynamic;
	@:optional
	var isFormField : Bool;
	@:optional
	var originalValue : Dynamic;
	@:optional
	function batchChanges(?fn:Dynamic):Void;
	@:optional
	function beforeReset():Void;
	@:optional
	function checkChange():Void;
	@:optional
	function checkDirty():Void;
	@:optional
	function clearInvalid():Void;
	@:optional
	function extractFileInput():Dynamic;
	@:optional
	function getErrors(?value:Dynamic):Dynamic;
	@:optional
	function getModelData():Dynamic;
	@:optional
	function getName():String;
	@:optional
	function getSubmitData():Dynamic;
	@:optional
	function getValue():Dynamic;
	@:optional
	function initField():Void;
	@:optional
	function initValue():Void;
	@:optional
	function isDirty():Dynamic;
	@:optional
	function isEqual(?value1:Dynamic, ?value2:Dynamic):Dynamic;
	@:optional
	function isFileUpload():Dynamic;
	@:optional
	function isValid():Dynamic;
	@:optional
	function markInvalid(?errors:Dynamic):Void;
	@:optional
	function reset():Void;
	@:optional
	function resetOriginalValue():Void;
	@:optional
	function setValue(?value:Dynamic):Dynamic;
	@:optional
	function transformOriginalValue(?value:Dynamic):Dynamic;
	@:optional
	function validate():Dynamic;
};
typedef IFile = {
	>Ext.form.field.ITrigger,
	@:optional
	var buttonConfig : Dynamic;
	@:optional
	var buttonMargin : Float;
	@:optional
	var buttonOnly : Bool;
	@:optional
	var buttonText : String;
	@:optional
	var clearOnSubmit : Bool;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var readOnly : Bool;
	@:optional
	var button : Ext.button.IButton;
	@:optional
	var fileInputEl : Ext.IElement;
	@:optional
	function extractFileInput():HTMLElement;
	@:optional
	function getTriggerMarkup():Void;
	@:optional
	function isFileUpload():Bool;
	@:optional
	function onDisable():Void;
	@:optional
	function onEnable():Void;
	@:optional
	function onRender():Void;
	@:optional
	function onShow():Void;
	@:optional
	function reset():Void;
	@:optional
	function setValue():Void;
};
typedef IFileButton = {
	>Ext.button.IButton,
	@:optional
	var cls : String;
	@:optional
	var preventDefault : Bool;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	function afterRender():Void;
	@:optional
	function getTemplateArgs():Dynamic;
	@:optional
	function onDisable():Void;
	@:optional
	function onEnable():Void;
};
typedef IHidden = {
	>Ext.form.field.IBase,
	@:optional
	var hidden : Bool;
	@:optional
	var hideLabel : Bool;
	@:optional
	var inputType : String;
	@:optional
	function clearInvalid():Void;
	@:optional
	function initComponent():Void;
	@:optional
	function initEvents():Void;
	@:optional
	function markInvalid():Void;
	@:optional
	function setHeight():Ext.IComponent;
	@:optional
	function setPagePosition():Ext.IComponent;
	@:optional
	function setPosition():Ext.IComponent;
	@:optional
	function setSize():Ext.IComponent;
	@:optional
	function setWidth():Ext.IComponent;
};
typedef IHtmlEditor = {
	>Ext.form.IFieldContainer,
	>Ext.form.field.IField,
	@:optional
	var afterIFrameTpl : Dynamic;
	@:optional
	var afterTextAreaTpl : Dynamic;
	@:optional
	var beforeIFrameTpl : Dynamic;
	@:optional
	var beforeTextAreaTpl : Dynamic;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var createLinkText : String;
	@:optional
	var defaultButtonUI : String;
	@:optional
	var defaultLinkValue : String;
	@:optional
	var defaultValue : String;
	@:optional
	var enableAlignments : Bool;
	@:optional
	var enableColors : Bool;
	@:optional
	var enableFont : Bool;
	@:optional
	var enableFontSize : Bool;
	@:optional
	var enableFormat : Bool;
	@:optional
	var enableLinks : Bool;
	@:optional
	var enableLists : Bool;
	@:optional
	var enableSourceEdit : Bool;
	@:optional
	var fontFamilies : Array<String>;
	@:optional
	var iframeAttrTpl : Dynamic;
	@:optional
	var buttonTips : Dynamic;
	@:optional
	var maskOnDisable : Bool;
	@:optional
	function batchChanges(?fn:Dynamic):Void;
	@:optional
	function beforeReset():Void;
	@:optional
	function checkChange():Void;
	@:optional
	function checkDirty():Void;
	@:optional
	function cleanHtml(?html:String):String;
	@:optional
	function clearInvalid():Void;
	@:optional
	function execCmd(?cmd:String, ?value:Dynamic):Void;
	@:optional
	function extractFileInput():HTMLElement;
	@:optional
	function focus(?selectText:Dynamic, ?delay:Dynamic):Ext.IComponent;
	@:optional
	function getDocMarkup():Void;
	@:optional
	function getErrors(?value:Dynamic):Array<String>;
	@:optional
	function getModelData():Dynamic;
	@:optional
	function getName():String;
	@:optional
	function getSubmitData():Dynamic;
	@:optional
	function getToolbar():Ext.toolbar.IToolbar;
	@:optional
	function getValue():Dynamic;
	@:optional
	function initField():Void;
	@:optional
	function initValue():Void;
	@:optional
	function insertAtCursor(?text:String):Void;
	@:optional
	function isDirty():Bool;
	@:optional
	function isEqual(?value1:Dynamic, ?value2:Dynamic):Bool;
	@:optional
	function isFileUpload():Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function markInvalid(?errors:Dynamic):Void;
	@:optional
	function pushValue():Void;
	@:optional
	function relayCmd(?cmd:String, ?value:Dynamic):Void;
	@:optional
	function reset():Void;
	@:optional
	function resetOriginalValue():Void;
	@:optional
	function setReadOnly(?readOnly:Bool):Void;
	@:optional
	function setValue(?value:Dynamic):Dynamic;
	@:optional
	function syncValue():Void;
	@:optional
	function toggleSourceEdit(?sourceEditMode:Bool):Void;
	@:optional
	function transformOriginalValue(?value:Dynamic):Dynamic;
	@:optional
	function updateToolbar():Void;
};
typedef INumber = {
	>Ext.form.field.ISpinner,
	@:optional
	var allowDecimals : Bool;
	@:optional
	var allowExponential : Bool;
	@:optional
	var autoStripChars : Bool;
	@:optional
	var baseChars : String;
	@:optional
	var decimalPrecision : Float;
	@:optional
	var decimalSeparator : String;
	@:optional
	var maxText : String;
	@:optional
	var maxValue : Float;
	@:optional
	var minText : String;
	@:optional
	var minValue : Float;
	@:optional
	var nanText : String;
	@:optional
	var negativeText : String;
	@:optional
	var step : Float;
	@:optional
	var submitLocaleSeparator : Bool;
	@:optional
	function beforeBlur():Void;
	@:optional
	function getErrors(?value:Dynamic):Array<String>;
	@:optional
	function getSubmitValue():String;
	@:optional
	function initComponent():Void;
	@:optional
	function onSpinDown():Void;
	@:optional
	function onSpinUp():Void;
	@:optional
	function rawToValue(?rawValue:Dynamic):Dynamic;
	@:optional
	function setMaxValue(?value:Float):Void;
	@:optional
	function setMinValue(?value:Float):Void;
	@:optional
	function setSpinDownEnabled(?enabled:Dynamic, ?internal:Dynamic):Void;
	@:optional
	function setSpinUpEnabled(?enabled:Dynamic, ?internal:Dynamic):Void;
	@:optional
	function valueToRaw(?value:Dynamic):Dynamic;
};
typedef IPicker = {
	>Ext.form.field.ITrigger,
	@:optional
	var editable : Bool;
	@:optional
	var matchFieldWidth : Bool;
	@:optional
	var openCls : String;
	@:optional
	var pickerAlign : String;
	@:optional
	var pickerOffset : Array<Float>;
	@:optional
	var isExpanded : Bool;
	@:optional
	function alignPicker():Void;
	@:optional
	function collapse():Void;
	@:optional
	function createPicker():Void;
	@:optional
	function expand():Void;
	@:optional
	function getPicker():Ext.IComponent;
	@:optional
	function initComponent():Void;
	@:optional
	function initEvents():Void;
	@:optional
	function onTriggerClick():Void;
};
typedef IRadio = {
	>Ext.form.field.ICheckbox,
	@:optional
	var focusCls : String;
	@:optional
	var inputType : String;
	@:optional
	var isRadio : Bool;
	@:optional
	function getGroupValue():String;
	@:optional
	function getModelData():Dynamic;
	@:optional
	function getSubmitValue():Dynamic;
	@:optional
	function onRemoved():Void;
	@:optional
	function setValue(?value:Dynamic):Ext.form.field.IRadio;
};
typedef ISpinner = {
	>Ext.form.field.ITrigger,
	@:optional
	var keyNavEnabled : Bool;
	@:optional
	var mouseWheelEnabled : Bool;
	@:optional
	var repeatTriggerClick : Bool;
	@:optional
	var spinDownEnabled : Bool;
	@:optional
	var spinUpEnabled : Bool;
	@:optional
	var spinDownEl : Ext.IElement;
	@:optional
	var spinUpEl : Ext.IElement;
	@:optional
	function getTriggerWidth():Float;
	@:optional
	function initComponent():Void;
	@:optional
	function onSpinDown():Void;
	@:optional
	function onSpinUp():Void;
	@:optional
	function setSpinDownEnabled(?enabled:Bool):Void;
	@:optional
	function setSpinUpEnabled(?enabled:Bool):Void;
	@:optional
	function spinDown():Void;
	@:optional
	function spinUp():Void;
};
typedef IText = {
	>Ext.form.field.IBase,
	@:optional
	var allowBlank : Bool;
	@:optional
	var allowOnlyWhitespace : Bool;
	@:optional
	var blankText : String;
	@:optional
	var disableKeyFilter : Bool;
	@:optional
	var emptyCls : String;
	@:optional
	var emptyText : String;
	@:optional
	var enableKeyEvents : Bool;
	@:optional
	var enforceMaxLength : Bool;
	@:optional
	var grow : Bool;
	@:optional
	var growAppend : String;
	@:optional
	var growMax : Float;
	@:optional
	var growMin : Float;
	@:optional
	var maskRe : js.RegExp;
	@:optional
	var maxLength : Float;
	@:optional
	var maxLengthText : String;
	@:optional
	var minLength : Float;
	@:optional
	var minLengthText : String;
	@:optional
	var regex : js.RegExp;
	@:optional
	var regexText : String;
	@:optional
	var requiredCls : String;
	@:optional
	var selectOnFocus : Bool;
	@:optional
	var size : Float;
	@:optional
	var stripCharsRe : js.RegExp;
	@:optional
	var validateBlank : Bool;
	@:optional
	var validator : Dynamic;
	@:optional
	var vtype : String;
	@:optional
	var vtypeText : String;
	@:optional
	function afterComponentLayout():Void;
	@:optional
	function afterRender():Void;
	@:optional
	function applyState(?state:Dynamic):Void;
	@:optional
	function autoSize():Void;
	@:optional
	function beforeFocus():Void;
	@:optional
	function getErrors(?value:Dynamic):Array<String>;
	@:optional
	function getRawValue():String;
	@:optional
	function getState():Dynamic;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function initComponent():Void;
	@:optional
	function initEvents():Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function onDisable():Void;
	@:optional
	function onEnable():Void;
	@:optional
	function postBlur():Void;
	@:optional
	function processRawValue(?value:String):String;
	@:optional
	function reset():Void;
	@:optional
	function selectText(?start:Float, ?end:Float):Void;
	@:optional
	function setValue(?value:Dynamic):Dynamic;
};
typedef ITextArea = {
	>Ext.form.field.IText,
	@:optional
	var cols : Float;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var enterIsSpecial : Bool;
	@:optional
	var growAppend : String;
	@:optional
	var growMax : Float;
	@:optional
	var growMin : Float;
	@:optional
	var preventScrollbars : Bool;
	@:optional
	var rows : Float;
	@:optional
	function afterRender():Void;
	@:optional
	function autoSize():Void;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function getValue():Dynamic;
	@:optional
	function transformOriginalValue(?value:Dynamic):Dynamic;
	@:optional
	function transformRawValue(?value:Dynamic):Dynamic;
	@:optional
	function valueToRaw(?value:Dynamic):Dynamic;
};
typedef ITime = {
	>Ext.form.field.IComboBox,
	@:optional
	var altFormats : String;
	@:optional
	var displayField : String;
	@:optional
	var format : String;
	@:optional
	var increment : Float;
	@:optional
	var invalidText : String;
	@:optional
	var maxText : String;
	@:optional
	var maxValue : Dynamic;
	@:optional
	var minText : String;
	@:optional
	var minValue : Dynamic;
	@:optional
	var pickerMaxHeight : Float;
	@:optional
	var queryMode : String;
	@:optional
	var selectOnTab : Bool;
	@:optional
	var snapToIncrement : Bool;
	@:optional
	var submitFormat : String;
	@:optional
	var triggerCls : String;
	@:optional
	var valueField : String;
	@:optional
	function getErrors(?value:Dynamic):Array<String>;
	@:optional
	function getValue():Dynamic;
	@:optional
	function initComponent():Void;
	@:optional
	function postBlur():Void;
	@:optional
	function rawToValue(?rawValue:Dynamic):Dynamic;
	@:optional
	function setMaxValue(?value:Dynamic):Void;
	@:optional
	function setMinValue(?value:Dynamic):Void;
	@:optional
	function setValue():Dynamic;
	@:optional
	function valueToRaw(?value:Dynamic):Dynamic;
};
typedef ITrigger = {
	>Ext.form.field.IText,
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var editable : Bool;
	@:optional
	var hideTrigger : Bool;
	@:optional
	var readOnly : Bool;
	@:optional
	var repeatTriggerClick : Bool;
	@:optional
	var selectOnFocus : Bool;
	@:optional
	var triggerBaseCls : String;
	@:optional
	var triggerCls : String;
	@:optional
	var triggerNoEditCls : String;
	@:optional
	var triggerWrapCls : String;
	@:optional
	var inputCell : Ext.IElement;
	@:optional
	var triggerEl : Ext.ICompositeElement;
	@:optional
	var triggerWrap : Ext.IElement;
	@:optional
	function getLabelableRenderData():Dynamic;
	@:optional
	function getSubTplData():Dynamic;
	@:optional
	function getTriggerWidth():Float;
	@:optional
	function initComponent():Void;
	@:optional
	function onRender():Void;
	@:optional
	function onTriggerClick(?e:Ext.IEventObject):Void;
	@:optional
	function setEditable(?editable:Bool):Void;
	@:optional
	function setReadOnly(?readOnly:Bool):Void;
};
typedef IVTypes = {
	>Ext.IBase,
};
extern class VTypes {
	static var alphaMask : js.RegExp;
	static var alphaText : String;
	static var alphanumMask : js.RegExp;
	static var alphanumText : String;
	static var emailMask : js.RegExp;
	static var emailText : String;
	static var self : Ext.IClass;
	static var urlText : String;
	static function alpha(?value:String):Bool;
	static function alphanum(?value:String):Bool;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function email(?value:String):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
	static function url(?value:String):Bool;
}
