typedef IAction = {
	>Ext.IBase,
	@:optional
	var failure : Dynamic;
	@:optional
	var form : Ext.form.IBasic;
	@:optional
	var headers : Dynamic;
	@:optional
	var method : String;
	@:optional
	var params : Dynamic;
	@:optional
	var reset : Bool;
	@:optional
	var scope : Dynamic;
	@:optional
	var submitEmptyText : Bool;
	@:optional
	var success : Dynamic;
	@:optional
	var timeout : Float;
	@:optional
	var url : String;
	@:optional
	var waitMsg : String;
	@:optional
	var waitTitle : String;
	@:optional
	var failureType : String;
	@:optional
	var response : Dynamic;
	@:optional
	var result : Dynamic;
	@:optional
	var type : String;
	@:optional
	var CLIENT_INVALID : String;
	@:optional
	var CONNECT_FAILURE : String;
	@:optional
	var LOAD_FAILURE : String;
	@:optional
	var SERVER_INVALID : String;
	@:optional
	function run():Void;
};
typedef IBasic = {
	>Ext.util.IObservable,
	@:optional
	var api : Dynamic;
	@:optional
	var baseParams : Dynamic;
	@:optional
	var errorReader : Dynamic;
	@:optional
	var jsonSubmit : Bool;
	@:optional
	var method : String;
	@:optional
	var paramOrder : Dynamic;
	@:optional
	var paramsAsHash : Bool;
	@:optional
	var reader : Dynamic;
	@:optional
	var standardSubmit : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var trackResetOnLoad : Bool;
	@:optional
	var url : String;
	@:optional
	var waitMsgTarget : Dynamic;
	@:optional
	var waitTitle : String;
	@:optional
	var owner : Ext.container.IContainer;
	@:optional
	function applyIfToFields(?obj:Dynamic):Ext.form.IBasic;
	@:optional
	function applyToFields(?obj:Dynamic):Ext.form.IBasic;
	@:optional
	function checkDirty():Void;
	@:optional
	function checkValidity():Void;
	@:optional
	function clearInvalid():Ext.form.IBasic;
	@:optional
	function destroy():Void;
	@:optional
	function doAction(?action:Dynamic, ?options:Dynamic):Ext.form.IBasic;
	@:optional
	function findField(?id:String):Dynamic;
	@:optional
	function getFieldValues(?dirtyOnly:Bool):Dynamic;
	@:optional
	function getFields():Ext.util.IMixedCollection;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function getValues(?asString:Bool, ?dirtyOnly:Bool, ?includeEmptyText:Bool, ?useDataValues:Bool):Dynamic;
	@:optional
	function hasInvalidField():Void;
	@:optional
	function hasUpload():Bool;
	@:optional
	function isDirty():Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function load(?options:Dynamic):Ext.form.IBasic;
	@:optional
	function loadRecord(?record:Ext.data.IModel):Ext.form.IBasic;
	@:optional
	function markInvalid(?errors:Dynamic):Ext.form.IBasic;
	@:optional
	function reset(?resetRecord:Bool):Ext.form.IBasic;
	@:optional
	function setValues(?values:Dynamic):Ext.form.IBasic;
	@:optional
	function submit(?options:Dynamic):Ext.form.IBasic;
	@:optional
	function updateRecord(?record:Ext.data.IModel):Ext.form.IBasic;
};
typedef IBasicForm = {
	>Ext.util.IObservable,
	@:optional
	var api : Dynamic;
	@:optional
	var baseParams : Dynamic;
	@:optional
	var errorReader : Dynamic;
	@:optional
	var jsonSubmit : Bool;
	@:optional
	var method : String;
	@:optional
	var paramOrder : Dynamic;
	@:optional
	var paramsAsHash : Bool;
	@:optional
	var reader : Dynamic;
	@:optional
	var standardSubmit : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var trackResetOnLoad : Bool;
	@:optional
	var url : String;
	@:optional
	var waitMsgTarget : Dynamic;
	@:optional
	var waitTitle : String;
	@:optional
	var owner : Ext.container.IContainer;
	@:optional
	function applyIfToFields(?obj:Dynamic):Ext.form.IBasic;
	@:optional
	function applyToFields(?obj:Dynamic):Ext.form.IBasic;
	@:optional
	function checkDirty():Void;
	@:optional
	function checkValidity():Void;
	@:optional
	function clearInvalid():Ext.form.IBasic;
	@:optional
	function destroy():Void;
	@:optional
	function doAction(?action:Dynamic, ?options:Dynamic):Ext.form.IBasic;
	@:optional
	function findField(?id:String):Dynamic;
	@:optional
	function getFieldValues(?dirtyOnly:Bool):Dynamic;
	@:optional
	function getFields():Ext.util.IMixedCollection;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function getValues(?asString:Bool, ?dirtyOnly:Bool, ?includeEmptyText:Bool, ?useDataValues:Bool):Dynamic;
	@:optional
	function hasInvalidField():Void;
	@:optional
	function hasUpload():Bool;
	@:optional
	function isDirty():Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function load(?options:Dynamic):Ext.form.IBasic;
	@:optional
	function loadRecord(?record:Ext.data.IModel):Ext.form.IBasic;
	@:optional
	function markInvalid(?errors:Dynamic):Ext.form.IBasic;
	@:optional
	function reset(?resetRecord:Bool):Ext.form.IBasic;
	@:optional
	function setValues(?values:Dynamic):Ext.form.IBasic;
	@:optional
	function submit(?options:Dynamic):Ext.form.IBasic;
	@:optional
	function updateRecord(?record:Ext.data.IModel):Ext.form.IBasic;
};
typedef ICheckboxGroup = {
	>Ext.form.IFieldContainer,
	>Ext.form.field.IField,
	@:optional
	var allowBlank : Bool;
	@:optional
	var blankText : String;
	@:optional
	var columns : Dynamic;
	@:optional
	var componentCls : String;
	@:optional
	var defaultType : String;
	@:optional
	var items : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var vertical : Bool;
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
	function extractFileInput():HTMLElement;
	@:optional
	function getChecked():Array<Ext.form.field.ICheckbox>;
	@:optional
	function getErrors():Array<String>;
	@:optional
	function getModelData():Dynamic;
	@:optional
	function getName():String;
	@:optional
	function getSubmitData():Dynamic;
	@:optional
	function getValue():Void;
	@:optional
	function initField():Void;
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
	function onAdd(?field:Dynamic):Void;
	@:optional
	function onRemove(?item:Dynamic):Void;
	@:optional
	function reset():Void;
	@:optional
	function resetOriginalValue():Void;
	@:optional
	function setValue(?value:Dynamic):Ext.form.ICheckboxGroup;
	@:optional
	function transformOriginalValue(?value:Dynamic):Dynamic;
	@:optional
	function validate():Bool;
};
typedef ICheckboxManager = {
	>Ext.util.IMixedCollection,
};
extern class CheckboxManager {
	static var hasListeners : Dynamic;
	static var isMixedCollection : Bool;
	static var isObservable : Bool;
	static var isSortable : Bool;
	static var self : Ext.IClass;
	static var sorters : Ext.util.IMixedCollection;
	static function add(?key:Dynamic, ?obj:Dynamic):Dynamic;
	static function addAll(?objs:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function clone():Ext.util.IMixedCollection;
	static function collect(?property:String, ?root:String, ?allowBlank:Bool):Array<Dynamic>;
	static function contains(?o:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool):Ext.util.IMixedCollection;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function find():Void;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndex(?property:String, ?value:Dynamic, ?start:Float, ?anyMatch:Bool, ?caseSensitive:Bool):Float;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?newItem:Dynamic, ?sorterFn:Dynamic):Float;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function first():Dynamic;
	static function generateComparator():Void;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getFirstSorter():Ext.util.ISorter;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?item:Dynamic):Dynamic;
	static function getRange(?startIndex:Float, ?endIndex:Float):Array<Dynamic>;
	static function hasListener(?eventName:String):Bool;
	static function indexOf(?o:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function initSortable():Void;
	static function insert(?index:Float, ?key:Dynamic, ?o:Dynamic):Dynamic;
	static function last():Dynamic;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function remove(?o:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeRange(?index:Float, ?removeCount:Float):Dynamic;
	static function reorder(?mapping:Dynamic):Void;
	static function replace(?key:String, ?o:Dynamic):Dynamic;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
	static function sortBy(?sorterFn:Dynamic):Void;
	static function sortByKey(?direction:String, ?fn:Dynamic):Void;
	static function statics():Ext.IClass;
	static function sum(?property:String, ?root:String, ?start:Float, ?end:Float):Float;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function updateKey(?oldKey:Dynamic, ?newKey:Dynamic):Void;
}
typedef IField = {
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
typedef IBaseField = {
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
typedef IDateField = {
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
typedef IDisplayField = {
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
typedef IFileUploadField = {
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
typedef INumberField = {
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
typedef ITextField = {
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
typedef ITimeField = {
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
typedef ITriggerField = {
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
typedef ITwinTriggerField = {
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
typedef IFieldAncestor = {
	>Ext.IBase,
	@:optional
	var fieldDefaults : Dynamic;
	@:optional
	function initFieldAncestor():Void;
	@:optional
	function onFieldErrorChange(?field:Ext.form.ILabelable, ?error:String):Void;
	@:optional
	function onFieldValidityChange(?field:Ext.form.field.IField, ?valid:Bool):Void;
};
typedef IFieldContainer = {
	>Ext.container.IContainer,
	>Ext.form.ILabelable,
	>Ext.form.IFieldAncestor,
	@:optional
	var combineErrors : Bool;
	@:optional
	var combineLabels : Bool;
	@:optional
	var componentCls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var invalidCls : String;
	@:optional
	var labelConnector : String;
	@:optional
	var maskOnDisable : Bool;
	@:optional
	function getActiveError():String;
	@:optional
	function getActiveErrors():Array<String>;
	@:optional
	function getCombinedErrors(?invalidFields:Array<Ext.form.field.IField>):Array<String>;
	@:optional
	function getFieldLabel():String;
	@:optional
	function getInputId():String;
	@:optional
	function getLabelWidth():Float;
	@:optional
	function getLabelableRenderData():Dynamic;
	@:optional
	function getSubTplMarkup():String;
	@:optional
	function hasActiveError():Bool;
	@:optional
	function hasVisibleLabel():Bool;
	@:optional
	function initFieldAncestor():Void;
	@:optional
	function initLabelable():Void;
	@:optional
	function initRenderData():Dynamic;
	@:optional
	function onAdd(?labelable:Ext.form.ILabelable):Void;
	@:optional
	function onFieldValidityChange(?field:Ext.form.field.IField, ?valid:Bool):Void;
	@:optional
	function onRemove(?labelable:Ext.form.ILabelable):Void;
	@:optional
	function setActiveError(?msg:String):Void;
	@:optional
	function setActiveErrors(?errors:Array<String>):Void;
	@:optional
	function setFieldDefaults(?defaults:Dynamic):Void;
	@:optional
	function setFieldLabel(?label:String):Void;
	@:optional
	function trimLabelSeparator():String;
	@:optional
	function unsetActiveError():Void;
};
typedef IFieldSet = {
	>Ext.container.IContainer,
	>Ext.form.IFieldAncestor,
	@:optional
	var autoEl : Dynamic;
	@:optional
	var baseCls : String;
	@:optional
	var checkboxName : String;
	@:optional
	var checkboxToggle : Bool;
	@:optional
	var collapsed : Bool;
	@:optional
	var collapsible : Bool;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var stateEvents : Array<String>;
	@:optional
	var title : String;
	@:optional
	var toggleOnTitleClick : Bool;
	@:optional
	var checkboxCmp : Ext.form.field.ICheckbox;
	@:optional
	var legend : Ext.IComponent;
	@:optional
	var maskOnDisable : Bool;
	@:optional
	var toggleCmp : Ext.panel.ITool;
	@:optional
	function collapse():Ext.form.IFieldSet;
	@:optional
	function createCheckboxCmp():Ext.IComponent;
	@:optional
	function createTitleCmp():Ext.IComponent;
	@:optional
	function createToggleCmp():Ext.IComponent;
	@:optional
	function expand():Ext.form.IFieldSet;
	@:optional
	function getRefItems(?deep:Dynamic):Void;
	@:optional
	function getState():Dynamic;
	@:optional
	function initFieldAncestor():Void;
	@:optional
	function onFieldErrorChange(?field:Ext.form.ILabelable, ?error:String):Void;
	@:optional
	function onFieldValidityChange(?field:Ext.form.field.IField, ?valid:Bool):Void;
	@:optional
	function setTitle(?title:String):Ext.form.IFieldSet;
	@:optional
	function toggle():Void;
};
typedef ILabel = {
	>Ext.IComponent,
	@:optional
	var autoEl : Dynamic;
	@:optional
	var forId : String;
	@:optional
	var html : String;
	@:optional
	var text : String;
	@:optional
	function setText(?text:String, ?encode:Bool):Ext.form.ILabel;
};
typedef ILabelable = {
	>Ext.IBase,
	@:optional
	var activeError : String;
	@:optional
	var activeErrorsTpl : Dynamic;
	@:optional
	var afterBodyEl : Dynamic;
	@:optional
	var afterLabelTextTpl : Dynamic;
	@:optional
	var afterLabelTpl : Dynamic;
	@:optional
	var afterSubTpl : Dynamic;
	@:optional
	var autoFitErrors : Bool;
	@:optional
	var baseBodyCls : String;
	@:optional
	var beforeBodyEl : Dynamic;
	@:optional
	var beforeLabelTextTpl : Dynamic;
	@:optional
	var beforeLabelTpl : Dynamic;
	@:optional
	var beforeSubTpl : Dynamic;
	@:optional
	var clearCls : String;
	@:optional
	var errorMsgCls : String;
	@:optional
	var fieldBodyCls : String;
	@:optional
	var fieldLabel : String;
	@:optional
	var formItemCls : String;
	@:optional
	var hideEmptyLabel : Bool;
	@:optional
	var hideLabel : Bool;
	@:optional
	var invalidCls : String;
	@:optional
	var labelAlign : String;
	@:optional
	var labelAttrTpl : Dynamic;
	@:optional
	var labelCls : String;
	@:optional
	var labelClsExtra : String;
	@:optional
	var labelPad : Float;
	@:optional
	var labelSeparator : String;
	@:optional
	var labelStyle : String;
	@:optional
	var labelWidth : Float;
	@:optional
	var msgTarget : String;
	@:optional
	var preventMark : Bool;
	@:optional
	var bodyEl : Ext.IElement;
	@:optional
	var errorEl : Ext.IElement;
	@:optional
	var isFieldLabelable : Bool;
	@:optional
	var labelCell : Ext.IElement;
	@:optional
	var labelEl : Ext.IElement;
	@:optional
	function getActiveError():String;
	@:optional
	function getActiveErrors():Array<String>;
	@:optional
	function getFieldLabel():String;
	@:optional
	function getInputId():String;
	@:optional
	function getLabelWidth():Float;
	@:optional
	function getLabelableRenderData():Dynamic;
	@:optional
	function getSubTplMarkup():String;
	@:optional
	function hasActiveError():Bool;
	@:optional
	function hasVisibleLabel():Bool;
	@:optional
	function initLabelable():Void;
	@:optional
	function setActiveError(?msg:String):Void;
	@:optional
	function setActiveErrors(?errors:Array<String>):Void;
	@:optional
	function setFieldDefaults(?defaults:Dynamic):Void;
	@:optional
	function setFieldLabel(?label:String):Void;
	@:optional
	function trimLabelSeparator():String;
	@:optional
	function unsetActiveError():Void;
};
typedef IPanel = {
	>Ext.panel.IPanel,
	>Ext.form.IFieldAncestor,
	@:optional
	var layout : Dynamic;
	@:optional
	var pollForChanges : Bool;
	@:optional
	var pollInterval : Float;
	@:optional
	function checkChange():Void;
	@:optional
	function getForm():Ext.form.IBasic;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function getValues(?asString:Bool, ?dirtyOnly:Bool, ?includeEmptyText:Bool, ?useDataValues:Bool):Dynamic;
	@:optional
	function hasInvalidField():Void;
	@:optional
	function initFieldAncestor():Void;
	@:optional
	function isDirty():Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function load(?options:Dynamic):Void;
	@:optional
	function loadRecord(?record:Ext.data.IModel):Ext.form.IBasic;
	@:optional
	function onFieldErrorChange(?field:Ext.form.ILabelable, ?error:String):Void;
	@:optional
	function onFieldValidityChange(?field:Ext.form.field.IField, ?valid:Bool):Void;
	@:optional
	function startPolling(?interval:Float):Void;
	@:optional
	function stopPolling():Void;
	@:optional
	function submit(?options:Dynamic):Void;
	@:optional
	function updateRecord(?record:Ext.data.IModel):Ext.form.IBasic;
};
typedef IFormPanel = {
	>Ext.panel.IPanel,
	>Ext.form.IFieldAncestor,
	@:optional
	var layout : Dynamic;
	@:optional
	var pollForChanges : Bool;
	@:optional
	var pollInterval : Float;
	@:optional
	function checkChange():Void;
	@:optional
	function getForm():Ext.form.IBasic;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function getValues(?asString:Bool, ?dirtyOnly:Bool, ?includeEmptyText:Bool, ?useDataValues:Bool):Dynamic;
	@:optional
	function hasInvalidField():Void;
	@:optional
	function initFieldAncestor():Void;
	@:optional
	function isDirty():Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function load(?options:Dynamic):Void;
	@:optional
	function loadRecord(?record:Ext.data.IModel):Ext.form.IBasic;
	@:optional
	function onFieldErrorChange(?field:Ext.form.ILabelable, ?error:String):Void;
	@:optional
	function onFieldValidityChange(?field:Ext.form.field.IField, ?valid:Bool):Void;
	@:optional
	function startPolling(?interval:Float):Void;
	@:optional
	function stopPolling():Void;
	@:optional
	function submit(?options:Dynamic):Void;
	@:optional
	function updateRecord(?record:Ext.data.IModel):Ext.form.IBasic;
};
typedef IRadioGroup = {
	>Ext.form.ICheckboxGroup,
	@:optional
	var allowBlank : Bool;
	@:optional
	var blankText : String;
	@:optional
	var defaultType : String;
	@:optional
	var items : Dynamic;
	@:optional
	function checkChange():Void;
	@:optional
	function setValue(?value:Dynamic):Ext.form.ICheckboxGroup;
};
typedef IRadioManager = {
	>Ext.util.IMixedCollection,
};
extern class RadioManager {
	static var hasListeners : Dynamic;
	static var isMixedCollection : Bool;
	static var isObservable : Bool;
	static var isSortable : Bool;
	static var self : Ext.IClass;
	static var sorters : Ext.util.IMixedCollection;
	static function add(?key:Dynamic, ?obj:Dynamic):Dynamic;
	static function addAll(?objs:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function clone():Ext.util.IMixedCollection;
	static function collect(?property:String, ?root:String, ?allowBlank:Bool):Array<Dynamic>;
	static function contains(?o:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool):Ext.util.IMixedCollection;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function find():Void;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndex(?property:String, ?value:Dynamic, ?start:Float, ?anyMatch:Bool, ?caseSensitive:Bool):Float;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?newItem:Dynamic, ?sorterFn:Dynamic):Float;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function first():Dynamic;
	static function generateComparator():Void;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getFirstSorter():Ext.util.ISorter;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?item:Dynamic):Dynamic;
	static function getRange(?startIndex:Float, ?endIndex:Float):Array<Dynamic>;
	static function hasListener(?eventName:String):Bool;
	static function indexOf(?o:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function initSortable():Void;
	static function insert(?index:Float, ?key:Dynamic, ?o:Dynamic):Dynamic;
	static function last():Dynamic;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function remove(?o:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeRange(?index:Float, ?removeCount:Float):Dynamic;
	static function reorder(?mapping:Dynamic):Void;
	static function replace(?key:String, ?o:Dynamic):Dynamic;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
	static function sortBy(?sorterFn:Dynamic):Void;
	static function sortByKey(?direction:String, ?fn:Dynamic):Void;
	static function statics():Ext.IClass;
	static function sum(?property:String, ?root:String, ?start:Float, ?end:Float):Float;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function updateKey(?oldKey:Dynamic, ?newKey:Dynamic):Void;
}
typedef ISliderField = {
	>Ext.slider.IMulti,
	@:optional
	function getValue():Dynamic;
	@:optional
	function setValue(?value:Float, ?animate:Bool):Void;
};
