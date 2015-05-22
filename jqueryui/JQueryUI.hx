typedef AccordionOptions = {
	@:optional
	var active : Dynamic;
	@:optional
	var animate : Dynamic;
	@:optional
	var collapsible : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var event : String;
	@:optional
	var header : String;
	@:optional
	var heightStyle : String;
	@:optional
	var icons : Dynamic;
};
typedef AccordionUIParams = {
	var newHeader : JQuery;
	var oldHeader : JQuery;
	var newPanel : JQuery;
	var oldPanel : JQuery;
};
typedef AccordionEvent = { };
typedef AccordionEvents = {
	@:optional
	var activate : AccordionEvent;
	@:optional
	var beforeActivate : AccordionEvent;
	@:optional
	var create : AccordionEvent;
};
typedef Accordion = {
	>Widget,
	>AccordionOptions,
	>AccordionEvents,
};
typedef AutocompleteOptions = {
	@:optional
	var appendTo : Dynamic;
	@:optional
	var autoFocus : Bool;
	@:optional
	var delay : Float;
	@:optional
	var disabled : Bool;
	@:optional
	var minLength : Float;
	@:optional
	var position : String;
	@:optional
	var source : Dynamic;
};
typedef AutocompleteUIParams = { };
typedef AutocompleteEvent = { };
typedef AutocompleteEvents = {
	@:optional
	var change : AutocompleteEvent;
	@:optional
	var close : AutocompleteEvent;
	@:optional
	var create : AutocompleteEvent;
	@:optional
	var focus : AutocompleteEvent;
	@:optional
	var open : AutocompleteEvent;
	@:optional
	var response : AutocompleteEvent;
	@:optional
	var search : AutocompleteEvent;
	@:optional
	var select : AutocompleteEvent;
};
typedef Autocomplete = {
	>Widget,
	>AutocompleteOptions,
	>AutocompleteEvents,
	var escapeRegex : String -> String;
};
typedef ButtonOptions = {
	@:optional
	var disabled : Bool;
	@:optional
	var icons : Dynamic;
	@:optional
	var label : String;
	@:optional
	var text : Bool;
};
typedef Button = {
	>Widget,
	>ButtonOptions,
};
typedef DatepickerOptions = {
	@:optional
	var altField : Dynamic;
	@:optional
	var altFormat : String;
	@:optional
	var appendText : String;
	@:optional
	var autoSize : Bool;
	@:optional
	var beforeShow : Element -> Dynamic -> JQueryUI.DatepickerOptions;
	@:optional
	var beforeShowDay : Date -> Array<Dynamic>;
	@:optional
	var buttonImage : String;
	@:optional
	var buttonImageOnly : Bool;
	@:optional
	var buttonText : String;
	@:optional
	var calculateWeek : Date -> String;
	@:optional
	var changeMonth : Bool;
	@:optional
	var changeYear : Bool;
	@:optional
	var closeText : String;
	@:optional
	var constrainInput : Bool;
	@:optional
	var currentText : String;
	@:optional
	var dateFormat : String;
	@:optional
	var dayNames : Array<String>;
	@:optional
	var dayNamesMin : Array<String>;
	@:optional
	var dayNamesShort : Array<String>;
	@:optional
	var defaultDate : Dynamic;
	@:optional
	var duration : String;
	@:optional
	var firstDay : Float;
	@:optional
	var gotoCurrent : Bool;
	@:optional
	var hideIfNoPrevNext : Bool;
	@:optional
	var isRTL : Bool;
	@:optional
	var maxDate : Dynamic;
	@:optional
	var minDate : Dynamic;
	@:optional
	var monthNames : Array<String>;
	@:optional
	var monthNamesShort : Array<String>;
	@:optional
	var navigationAsDateFormat : Bool;
	@:optional
	var nextText : String;
	@:optional
	var numberOfMonths : Dynamic;
	@:optional
	var onChangeMonthYear : Float -> Float -> Dynamic -> Void;
	@:optional
	var onClose : String -> Dynamic -> Void;
	@:optional
	var onSelect : String -> Dynamic -> Void;
	@:optional
	var prevText : String;
	@:optional
	var selectOtherMonths : Bool;
	@:optional
	var shortYearCutoff : Dynamic;
	@:optional
	var showAnim : String;
	@:optional
	var showButtonPanel : Bool;
	@:optional
	var showCurrentAtPos : Float;
	@:optional
	var showMonthAfterYear : Bool;
	@:optional
	var showOn : String;
	@:optional
	var showOptions : Dynamic;
	@:optional
	var showOtherMonths : Bool;
	@:optional
	var showWeek : Bool;
	@:optional
	var stepMonths : Float;
	@:optional
	var weekHeader : String;
	@:optional
	var yearRange : String;
	@:optional
	var yearSuffix : String;
};
typedef DatepickerFormatDateOptions = {
	@:optional
	var dayNamesShort : Array<String>;
	@:optional
	var dayNames : Array<String>;
	@:optional
	var monthNamesShort : Array<String>;
	@:optional
	var monthNames : Array<String>;
};
typedef Datepicker = {
	>Widget,
	>DatepickerOptions,
	var regional : { };
	function setDefaults(defaults:DatepickerOptions):Void;
	function formatDate(format:String, date:Date, ?settings:DatepickerFormatDateOptions):String;
	function parseDate(format:String, date:String, ?settings:DatepickerFormatDateOptions):Date;
	function iso8601Week(date:Date):Float;
	function noWeekends(date:Date):Array<Dynamic>;
};
typedef DialogOptions = {
	@:optional
	var autoOpen : Bool;
	@:optional
	var buttons : Dynamic;
	@:optional
	var closeOnEscape : Bool;
	@:optional
	var closeText : String;
	@:optional
	var dialogClass : String;
	@:optional
	var disabled : Bool;
	@:optional
	var draggable : Bool;
	@:optional
	var height : Dynamic;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var modal : Bool;
	@:optional
	var position : Dynamic;
	@:optional
	var resizable : Bool;
	@:optional
	var show : Dynamic;
	@:optional
	var stack : Bool;
	@:optional
	var title : String;
	@:optional
	var width : Dynamic;
	@:optional
	var zIndex : Float;
	@:optional
	var close : DialogEvent;
};
typedef DialogUIParams = { };
typedef DialogEvent = { };
typedef DialogEvents = {
	@:optional
	var beforeClose : DialogEvent;
	@:optional
	var close : DialogEvent;
	@:optional
	var create : DialogEvent;
	@:optional
	var drag : DialogEvent;
	@:optional
	var dragStart : DialogEvent;
	@:optional
	var dragStop : DialogEvent;
	@:optional
	var focus : DialogEvent;
	@:optional
	var open : DialogEvent;
	@:optional
	var resize : DialogEvent;
	@:optional
	var resizeStart : DialogEvent;
	@:optional
	var resizeStop : DialogEvent;
};
typedef Dialog = {
	>Widget,
	>DialogOptions,
	>DialogEvents,
};
typedef DraggableEventUIParams = {
	var helper : JQuery;
	var position : { var top : Float; var left : Float; };
	var offset : { var top : Float; var left : Float; };
};
typedef DraggableEvent = { };
typedef DraggableOptions = {
	@:optional
	var disabled : Bool;
	@:optional
	var addClasses : Bool;
	@:optional
	var appendTo : Dynamic;
	@:optional
	var axis : String;
	@:optional
	var cancel : String;
	@:optional
	var connectToSortable : String;
	@:optional
	var containment : Dynamic;
	@:optional
	var cursor : String;
	@:optional
	var cursorAt : Dynamic;
	@:optional
	var delay : Float;
	@:optional
	var distance : Float;
	@:optional
	var grid : Array<Float>;
	@:optional
	var handle : Dynamic;
	@:optional
	var helper : Dynamic;
	@:optional
	var iframeFix : Dynamic;
	@:optional
	var opacity : Float;
	@:optional
	var refreshPositions : Bool;
	@:optional
	var revert : Dynamic;
	@:optional
	var revertDuration : Float;
	@:optional
	var scope : String;
	@:optional
	var scroll : Bool;
	@:optional
	var scrollSensitivity : Float;
	@:optional
	var scrollSpeed : Float;
	@:optional
	var snap : Dynamic;
	@:optional
	var snapMode : String;
	@:optional
	var snapTolerance : Float;
	@:optional
	var stack : String;
	@:optional
	var zIndex : Float;
};
typedef DraggableEvents = {
	@:optional
	var create : DraggableEvent;
	@:optional
	var start : DraggableEvent;
	@:optional
	var drag : DraggableEvent;
	@:optional
	var stop : DraggableEvent;
};
typedef Draggable = {
	>Widget,
	>DraggableOptions,
	>DraggableEvent,
};
typedef DroppableEventUIParam = {
	var draggable : JQuery;
	var helper : JQuery;
	var position : { var top : Float; var left : Float; };
	var offset : { var top : Float; var left : Float; };
};
typedef DroppableEvent = { };
typedef DroppableOptions = {
	@:optional
	var disabled : Bool;
	@:optional
	var accept : Dynamic;
	@:optional
	var activeClass : String;
	@:optional
	var greedy : Bool;
	@:optional
	var hoverClass : String;
	@:optional
	var scope : String;
	@:optional
	var tolerance : String;
};
typedef DroppableEvents = {
	@:optional
	var create : DroppableEvent;
	@:optional
	var activate : DroppableEvent;
	@:optional
	var deactivate : DroppableEvent;
	@:optional
	var over : DroppableEvent;
	@:optional
	var out : DroppableEvent;
	@:optional
	var drop : DroppableEvent;
};
typedef Droppable = {
	>Widget,
	>DroppableOptions,
	>DroppableEvents,
};
typedef MenuOptions = {
	@:optional
	var disabled : Bool;
	@:optional
	var icons : Dynamic;
	@:optional
	var menus : String;
	@:optional
	var position : Dynamic;
	@:optional
	var role : String;
};
typedef MenuUIParams = { };
typedef MenuEvent = { };
typedef MenuEvents = {
	@:optional
	var blur : MenuEvent;
	@:optional
	var create : MenuEvent;
	@:optional
	var focus : MenuEvent;
	@:optional
	var select : MenuEvent;
};
typedef Menu = {
	>Widget,
	>MenuOptions,
	>MenuEvents,
};
typedef ProgressbarOptions = {
	@:optional
	var disabled : Bool;
	@:optional
	var value : Float;
};
typedef ProgressbarUIParams = { };
typedef ProgressbarEvent = { };
typedef ProgressbarEvents = {
	@:optional
	var change : ProgressbarEvent;
	@:optional
	var complete : ProgressbarEvent;
	@:optional
	var create : ProgressbarEvent;
};
typedef Progressbar = {
	>Widget,
	>ProgressbarOptions,
	>ProgressbarEvents,
};
typedef ResizableOptions = {
	@:optional
	var alsoResize : Dynamic;
	@:optional
	var animate : Bool;
	@:optional
	var animateDuration : Dynamic;
	@:optional
	var animateEasing : String;
	@:optional
	var aspectRatio : Dynamic;
	@:optional
	var autoHide : Bool;
	@:optional
	var cancel : String;
	@:optional
	var containment : Dynamic;
	@:optional
	var delay : Float;
	@:optional
	var disabled : Bool;
	@:optional
	var distance : Float;
	@:optional
	var ghost : Bool;
	@:optional
	var grid : Dynamic;
	@:optional
	var handles : Dynamic;
	@:optional
	var helper : String;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
};
typedef ResizableUIParams = {
	var element : JQuery;
	var helper : JQuery;
	var originalElement : JQuery;
	var originalPosition : Dynamic;
	var originalSize : Dynamic;
	var position : Dynamic;
	var size : Dynamic;
};
typedef ResizableEvent = { };
typedef ResizableEvents = {
	@:optional
	var resize : ResizableEvent;
	@:optional
	var start : ResizableEvent;
	@:optional
	var stop : ResizableEvent;
};
typedef Resizable = {
	>Widget,
	>ResizableOptions,
	>ResizableEvents,
};
typedef SelectableOptions = {
	@:optional
	var autoRefresh : Bool;
	@:optional
	var cancel : String;
	@:optional
	var delay : Float;
	@:optional
	var disabled : Bool;
	@:optional
	var distance : Float;
	@:optional
	var filter : String;
	@:optional
	var tolerance : String;
};
typedef SelectableEvents = {
	@:optional
	function selected(event:Event, ui:{ @:optional
	var selected : Element; }):Void;
	@:optional
	function selecting(event:Event, ui:{ @:optional
	var selecting : Element; }):Void;
	@:optional
	function start(event:Event, ui:Dynamic):Void;
	@:optional
	function stop(event:Event, ui:Dynamic):Void;
	@:optional
	function unselected(event:Event, ui:{ var unselected : Element; }):Void;
	@:optional
	function unselecting(event:Event, ui:{ var unselecting : Element; }):Void;
};
typedef Selectable = {
	>Widget,
	>SelectableOptions,
	>SelectableEvents,
};
typedef SliderOptions = {
	@:optional
	var animate : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var max : Float;
	@:optional
	var min : Float;
	@:optional
	var orientation : String;
	@:optional
	var range : Dynamic;
	@:optional
	var step : Float;
	@:optional
	var value : Float;
	@:optional
	var values : Array<Float>;
};
typedef SliderUIParams = {
	@:optional
	var handle : JQuery;
	@:optional
	var value : Float;
	@:optional
	var values : Array<Float>;
};
typedef SliderEvent = { };
typedef SliderEvents = {
	@:optional
	var change : SliderEvent;
	@:optional
	var create : SliderEvent;
	@:optional
	var slide : SliderEvent;
	@:optional
	var start : SliderEvent;
	@:optional
	var stop : SliderEvent;
};
typedef Slider = {
	>Widget,
	>SliderOptions,
	>SliderEvents,
};
typedef SortableOptions = {
	>SortableEvents,
	@:optional
	var appendTo : Dynamic;
	@:optional
	var axis : String;
	@:optional
	var cancel : Dynamic;
	@:optional
	var connectWith : Dynamic;
	@:optional
	var containment : Dynamic;
	@:optional
	var cursor : String;
	@:optional
	var cursorAt : Dynamic;
	@:optional
	var delay : Float;
	@:optional
	var disabled : Bool;
	@:optional
	var distance : Float;
	@:optional
	var dropOnEmpty : Bool;
	@:optional
	var forceHelperSize : Bool;
	@:optional
	var forcePlaceholderSize : Bool;
	@:optional
	var grid : Array<Float>;
	@:optional
	var handle : Dynamic;
	@:optional
	var items : Dynamic;
	@:optional
	var opacity : Float;
	@:optional
	var placeholder : String;
	@:optional
	var revert : Dynamic;
	@:optional
	var scroll : Bool;
	@:optional
	var scrollSensitivity : Float;
	@:optional
	var scrollSpeed : Float;
	@:optional
	var tolerance : String;
	@:optional
	var zIndex : Float;
};
typedef SortableUIParams = {
	var helper : JQuery;
	var item : JQuery;
	var offset : Dynamic;
	var position : Dynamic;
	var originalPosition : Dynamic;
	var sender : JQuery;
	var placeholder : JQuery;
};
typedef SortableEvent = { };
typedef SortableEvents = {
	@:optional
	var activate : SortableEvent;
	@:optional
	var beforeStop : SortableEvent;
	@:optional
	var change : SortableEvent;
	@:optional
	var deactivate : SortableEvent;
	@:optional
	var out : SortableEvent;
	@:optional
	var over : SortableEvent;
	@:optional
	var receive : SortableEvent;
	@:optional
	var remove : SortableEvent;
	@:optional
	var sort : SortableEvent;
	@:optional
	var start : SortableEvent;
	@:optional
	var stop : SortableEvent;
	@:optional
	var update : SortableEvent;
};
typedef Sortable = {
	>Widget,
	>SortableOptions,
	>SortableEvents,
};
typedef SpinnerOptions = {
	@:optional
	var culture : String;
	@:optional
	var disabled : Bool;
	@:optional
	var icons : Dynamic;
	@:optional
	var incremental : Dynamic;
	@:optional
	var max : Dynamic;
	@:optional
	var min : Dynamic;
	@:optional
	var numberFormat : String;
	@:optional
	var page : Float;
	@:optional
	var step : Dynamic;
};
typedef SpinnerUIParams = { };
typedef SpinnerEvent = { };
typedef SpinnerEvents = {
	@:optional
	var spin : SpinnerEvent;
	@:optional
	var start : SpinnerEvent;
	@:optional
	var stop : SpinnerEvent;
};
typedef Spinner = {
	>Widget,
	>SpinnerOptions,
	>SpinnerEvents,
};
typedef TabsOptions = {
	@:optional
	var active : Dynamic;
	@:optional
	var collapsible : Bool;
	@:optional
	var disabled : Dynamic;
	@:optional
	var event : String;
	@:optional
	var heightStyle : String;
	@:optional
	var hide : Dynamic;
	@:optional
	var show : Dynamic;
	@:optional
	var activate : TabsEvent;
};
typedef TabsUIParams = {
	var newTab : JQuery;
	var oldTab : JQuery;
	var newPanel : JQuery;
	var oldPanel : JQuery;
};
typedef TabsEvent = { };
typedef TabsEvents = {
	@:optional
	var activate : TabsEvent;
	@:optional
	var beforeActivate : TabsEvent;
	@:optional
	var beforeLoad : TabsEvent;
	@:optional
	var load : TabsEvent;
};
typedef Tabs = {
	>Widget,
	>TabsOptions,
	>TabsEvents,
};
typedef TooltipOptions = {
	@:optional
	var content : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var hide : Dynamic;
	@:optional
	var items : String;
	@:optional
	var position : Dynamic;
	@:optional
	var show : Dynamic;
	@:optional
	var tooltipClass : String;
	@:optional
	var track : Bool;
};
typedef TooltipUIParams = { };
typedef TooltipEvent = { };
typedef TooltipEvents = {
	@:optional
	var close : TooltipEvent;
	@:optional
	var open : TooltipEvent;
};
typedef Tooltip = {
	>Widget,
	>TooltipOptions,
	>TooltipEvents,
};
typedef EffectOptions = {
	var effect : String;
	@:optional
	var easing : String;
	var duration : Dynamic;
	var complete : haxe.Constraints.Function;
};
typedef BlindEffect = {
	@:optional
	var direction : String;
};
typedef BounceEffect = {
	@:optional
	var distance : Float;
	@:optional
	var times : Float;
};
typedef ClipEffect = {
	@:optional
	var direction : Float;
};
typedef DropEffect = {
	@:optional
	var direction : Float;
};
typedef ExplodeEffect = {
	@:optional
	var pieces : Float;
};
typedef FadeEffect = { };
typedef FoldEffect = {
	@:optional
	var size : Dynamic;
	@:optional
	var horizFirst : Bool;
};
typedef HighlightEffect = {
	@:optional
	var color : String;
};
typedef PuffEffect = {
	@:optional
	var percent : Float;
};
typedef PulsateEffect = {
	@:optional
	var times : Float;
};
typedef ScaleEffect = {
	@:optional
	var direction : String;
	@:optional
	var origin : Array<String>;
	@:optional
	var percent : Float;
	@:optional
	var scale : String;
};
typedef ShakeEffect = {
	@:optional
	var direction : String;
	@:optional
	var distance : Float;
	@:optional
	var times : Float;
};
typedef SizeEffect = {
	@:optional
	var to : Dynamic;
	@:optional
	var origin : Array<String>;
	@:optional
	var scale : String;
};
typedef SlideEffect = {
	@:optional
	var direction : String;
	@:optional
	var distance : Float;
};
typedef TransferEffect = {
	@:optional
	var className : String;
	@:optional
	var to : String;
};
typedef JQueryPositionOptions = {
	@:optional
	var my : String;
	@:optional
	var at : String;
	@:optional
	var of : Dynamic;
	@:optional
	var collision : String;
	@:optional
	var using : haxe.Constraints.Function;
	@:optional
	var within : Dynamic;
};
typedef MouseOptions = {
	@:optional
	var cancel : String;
	@:optional
	var delay : Float;
	@:optional
	var distance : Float;
};
typedef KeyCode = {
	var BACKSPACE : Float;
	var COMMA : Float;
	var DELETE : Float;
	var DOWN : Float;
	var END : Float;
	var ENTER : Float;
	var ESCAPE : Float;
	var HOME : Float;
	var LEFT : Float;
	var NUMPAD_ADD : Float;
	var NUMPAD_DECIMAL : Float;
	var NUMPAD_DIVIDE : Float;
	var NUMPAD_ENTER : Float;
	var NUMPAD_MULTIPLY : Float;
	var NUMPAD_SUBTRACT : Float;
	var PAGE_DOWN : Float;
	var PAGE_UP : Float;
	var PERIOD : Float;
	var RIGHT : Float;
	var SPACE : Float;
	var TAB : Float;
	var UP : Float;
};
typedef UI = {
	@:overload(function(options:MouseOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	@:overload(function(optionLiteral:String, optionValue:Dynamic):Dynamic { })
	function mouse(method:String):JQuery;
	var accordion : Accordion;
	var autocomplete : Autocomplete;
	var button : Button;
	var buttonset : Button;
	var datepicker : Datepicker;
	var dialog : Dialog;
	var keyCode : KeyCode;
	var menu : Menu;
	var progressbar : Progressbar;
	var slider : Slider;
	var spinner : Spinner;
	var tabs : Tabs;
	var tooltip : Tooltip;
	var version : String;
};
typedef WidgetOptions = {
	@:optional
	var disabled : Bool;
	@:optional
	var hide : Dynamic;
	@:optional
	var show : Dynamic;
};
typedef Widget = { };
typedef JQuery = {
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Refresh):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.AccordionOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.AccordionOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function accordion():JQuery;
	@:overload(function(methodName:Close):Void { })
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Search, ?value:String):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.AutocompleteOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.AutocompleteOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function autocomplete():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Refresh):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.ButtonOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.ButtonOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function button():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Refresh):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.ButtonOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.ButtonOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function buttonset():JQuery;
	@:overload(function(methodName:Destroy):JQuery { })
	@:overload(function(methodName:Dialog, date:Date, ?onSelect:Void -> Void, ?settings:JQueryUI.DatepickerOptions, ?pos:Array<Float>):JQuery { })
	@:overload(function(methodName:Dialog, date:Date, ?onSelect:Void -> Void, ?settings:JQueryUI.DatepickerOptions, ?pos:MouseEvent):JQuery { })
	@:overload(function(methodName:Dialog, date:String, ?onSelect:Void -> Void, ?settings:JQueryUI.DatepickerOptions, ?pos:Array<Float>):JQuery { })
	@:overload(function(methodName:Dialog, date:String, ?onSelect:Void -> Void, ?settings:JQueryUI.DatepickerOptions, ?pos:MouseEvent):JQuery { })
	@:overload(function(methodName:GetDate):Date { })
	@:overload(function(methodName:Hide):JQuery { })
	@:overload(function(methodName:IsDisabled):Bool { })
	@:overload(function(methodName:Refresh):JQuery { })
	@:overload(function(methodName:SetDate, date:Date):JQuery { })
	@:overload(function(methodName:SetDate, date:String):JQuery { })
	@:overload(function(methodName:Show):JQuery { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:Option, optionName:AltField):Dynamic { })
	@:overload(function(methodName:Option, optionName:AltField, altFieldValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:AltField, altFieldValue:JQuery):JQuery { })
	@:overload(function(methodName:Option, optionName:AltField, altFieldValue:Element):JQuery { })
	@:overload(function(methodName:Option, optionName:AltFormat):String { })
	@:overload(function(methodName:Option, optionName:AltFormat, altFormatValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:AppendText):String { })
	@:overload(function(methodName:Option, optionName:AppendText, appendTextValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:AutoSize):Bool { })
	@:overload(function(methodName:Option, optionName:AutoSize, autoSizeValue:Bool):JQuery { })
	@:overload(function(methodName:Option, optionName:BeforeShow):Element -> Dynamic -> JQueryUI.DatepickerOptions { })
	@:overload(function(methodName:Option, optionName:BeforeShow, beforeShowValue:Element -> Dynamic -> JQueryUI.DatepickerOptions):JQuery { })
	@:overload(function(methodName:Option, optionName:BeforeShowDay):Date -> Array<Dynamic> { })
	@:overload(function(methodName:Option, optionName:BeforeShowDay, beforeShowDayValue:Date -> Array<Dynamic>):JQuery { })
	@:overload(function(methodName:Option, optionName:ButtonImage):String { })
	@:overload(function(methodName:Option, optionName:ButtonImage, buttonImageValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:ButtonImageOnly):Bool { })
	@:overload(function(methodName:Option, optionName:ButtonImageOnly, buttonImageOnlyValue:Bool):JQuery { })
	@:overload(function(methodName:Option, optionName:ButtonText):String { })
	@:overload(function(methodName:Option, optionName:ButtonText, buttonTextValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:CalculateWeek):Date -> String { })
	@:overload(function(methodName:Option, optionName:CalculateWeek, calculateWeekValue:Date -> String):JQuery { })
	@:overload(function(methodName:Option, optionName:ChangeMonth):Bool { })
	@:overload(function(methodName:Option, optionName:ChangeMonth, changeMonthValue:Bool):JQuery { })
	@:overload(function(methodName:Option, optionName:ChangeYear):Bool { })
	@:overload(function(methodName:Option, optionName:ChangeYear, changeYearValue:Bool):JQuery { })
	@:overload(function(methodName:Option, optionName:CloseText):String { })
	@:overload(function(methodName:Option, optionName:CloseText, closeTextValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:ConstrainInput):Bool { })
	@:overload(function(methodName:Option, optionName:ConstrainInput, constrainInputValue:Bool):JQuery { })
	@:overload(function(methodName:Option, optionName:CurrentText):String { })
	@:overload(function(methodName:Option, optionName:CurrentText, currentTextValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:DateFormat):String { })
	@:overload(function(methodName:Option, optionName:DateFormat, dateFormatValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:DayNames):Array<String> { })
	@:overload(function(methodName:Option, optionName:DayNames, dayNamesValue:Array<String>):JQuery { })
	@:overload(function(methodName:Option, optionName:DayNamesMin):Array<String> { })
	@:overload(function(methodName:Option, optionName:DayNamesMin, dayNamesMinValue:Array<String>):JQuery { })
	@:overload(function(methodName:Option, optionName:DayNamesShort):Array<String> { })
	@:overload(function(methodName:Option, optionName:DayNamesShort, dayNamesShortValue:Array<String>):JQuery { })
	@:overload(function(methodName:Option, optionName:DefaultDate):Dynamic { })
	@:overload(function(methodName:Option, optionName:DefaultDate, defaultDateValue:Date):JQuery { })
	@:overload(function(methodName:Option, optionName:DefaultDate, defaultDateValue:Float):JQuery { })
	@:overload(function(methodName:Option, optionName:DefaultDate, defaultDateValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:Duration):String { })
	@:overload(function(methodName:Option, optionName:Duration, durationValue:String):JQuery { })
	@:overload(function(methodName:Option, optionName:FirstDay):Float { })
	@:overload(function(methodName:Option, optionName:FirstDay, firstDayValue:Float):JQuery { })
	@:overload(function(methodName:Option, optionName:GotoCurrent):Bool { })
	@:overload(function(methodName:Option, optionName:GotoCurrent, gotoCurrentValue:Bool):JQuery { })
	@:overload(function(methodName:Option, optionName:String):Dynamic { })
	@:overload(function(methodName:Option, optionName:String, otherParams:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(methodName:String, otherParams:haxe.extern.Rest<Dynamic>):Dynamic { })
	@:overload(function(options:JQueryUI.DatepickerOptions):JQuery { })
	function datepicker():JQuery;
	@:overload(function(methodName:Close):JQuery { })
	@:overload(function(methodName:Destroy):JQuery { })
	@:overload(function(methodName:IsOpen):Bool { })
	@:overload(function(methodName:MoveToTop):JQuery { })
	@:overload(function(methodName:Open):JQuery { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.DialogOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.DialogOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function dialog():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.DraggableOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.DraggableOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function draggable():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.DroppableOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.DraggableOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function droppable():JQuery;
	@:overload(function(methodName:Blur):Void { })
	@:overload(function(methodName:Collapse, ?event:JQueryEventObject):Void { })
	@:overload(function(methodName:CollapseAll, ?event:JQueryEventObject, ?all:Bool):Void { })
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:String, event:JQueryEventObject, item:JQuery):Void { })
	@:overload(function(methodName:Focus, event:JQueryEventObject, item:JQuery):Void { })
	@:overload(function(methodName:IsFirstItem):Bool { })
	@:overload(function(methodName:IsLastItem):Bool { })
	@:overload(function(methodName:Next, ?event:JQueryEventObject):Void { })
	@:overload(function(methodName:NextPage, ?event:JQueryEventObject):Void { })
	@:overload(function(methodName:Previous, ?event:JQueryEventObject):Void { })
	@:overload(function(methodName:PreviousPage, ?event:JQueryEventObject):Void { })
	@:overload(function(methodName:Refresh):Void { })
	@:overload(function(methodName:Select, ?event:JQueryEventObject):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.MenuOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.MenuOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function menu():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Refresh):Void { })
	@:overload(function(methodName:Value):Dynamic { })
	@:overload(function(methodName:Value, value:Float):Void { })
	@:overload(function(methodName:Value, value:Bool):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.ProgressbarOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.ProgressbarOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function progressbar():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.ResizableOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.ResizableOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function resizable():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.SelectableOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.SelectableOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function selectable():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Refresh):Void { })
	@:overload(function(methodName:Value):Float { })
	@:overload(function(methodName:Value, value:Float):Void { })
	@:overload(function(methodName:Values):Array<Float> { })
	@:overload(function(methodName:Values, index:Float):Float { })
	@:overload(function(methodName:String, index:Float, value:Float):Void { })
	@:overload(function(methodName:Values, index:Float, value:Float):Void { })
	@:overload(function(methodName:String, values:Array<Float>):Void { })
	@:overload(function(methodName:Values, values:Array<Float>):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.SliderOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.SliderOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function slider():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:ToArray):Array<String> { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.SortableOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.SortableOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function sortable():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:PageDown, ?pages:Float):Void { })
	@:overload(function(methodName:PageUp, ?pages:Float):Void { })
	@:overload(function(methodName:StepDown, ?steps:Float):Void { })
	@:overload(function(methodName:StepUp, ?steps:Float):Void { })
	@:overload(function(methodName:Value):Float { })
	@:overload(function(methodName:Value, value:Float):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.SpinnerOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.SpinnerOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function spinner():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Load, index:Float):Void { })
	@:overload(function(methodName:Refresh):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.TabsOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.TabsOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function tabs():JQuery;
	@:overload(function(methodName:Destroy):Void { })
	@:overload(function(methodName:Disable):Void { })
	@:overload(function(methodName:Enable):Void { })
	@:overload(function(methodName:Open):Void { })
	@:overload(function(methodName:Close):Void { })
	@:overload(function(methodName:Widget):JQuery { })
	@:overload(function(methodName:String):JQuery { })
	@:overload(function(options:JQueryUI.TooltipOptions):JQuery { })
	@:overload(function(optionLiteral:String, optionName:String):Dynamic { })
	@:overload(function(optionLiteral:String, options:JQueryUI.TooltipOptions):Dynamic { })
	@:overload(function(optionLiteral:String, optionName:String, optionValue:Dynamic):JQuery { })
	function tooltip():JQuery;
	@:overload(function(classNames:String, ?speed:String, ?callback:haxe.Constraints.Function):JQuery { })
	@:overload(function(classNames:String, ?speed:Float, ?easing:String, ?callback:haxe.Constraints.Function):JQuery { })
	@:overload(function(classNames:String, ?speed:String, ?easing:String, ?callback:haxe.Constraints.Function):JQuery { })
	function addClass(classNames:String, ?speed:Float, ?callback:haxe.Constraints.Function):JQuery;
	@:overload(function(classNames:String, ?speed:String, ?callback:haxe.Constraints.Function):JQuery { })
	@:overload(function(classNames:String, ?speed:Float, ?easing:String, ?callback:haxe.Constraints.Function):JQuery { })
	@:overload(function(classNames:String, ?speed:String, ?easing:String, ?callback:haxe.Constraints.Function):JQuery { })
	function removeClass(classNames:String, ?speed:Float, ?callback:haxe.Constraints.Function):JQuery;
	@:overload(function(removeClassName:String, addClassName:String, ?duration:String, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	function switchClass(removeClassName:String, addClassName:String, ?duration:Float, ?easing:String, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(className:String, ?duration:String, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(className:String, ?aswitch:Bool, ?duration:Float, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(className:String, ?aswitch:Bool, ?duration:String, ?easing:String, ?complete:haxe.Constraints.Function):JQuery { })
	function toggleClass(className:String, ?duration:Float, ?easing:String, ?complete:haxe.Constraints.Function):JQuery;
	@:overload(function(effect:String, ?options:Dynamic, ?duration:Float, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(effect:String, ?options:Dynamic, ?duration:String, ?complete:haxe.Constraints.Function):JQuery { })
	function effect(options:Dynamic):JQuery;
	@:overload(function(effect:String, ?options:Dynamic, ?duration:Float, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(effect:String, ?options:Dynamic, ?duration:String, ?complete:haxe.Constraints.Function):JQuery { })
	function hide(options:Dynamic):JQuery;
	@:overload(function(effect:String, ?options:Dynamic, ?duration:Float, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(effect:String, ?options:Dynamic, ?duration:String, ?complete:haxe.Constraints.Function):JQuery { })
	function show(options:Dynamic):JQuery;
	@:overload(function(effect:String, ?options:Dynamic, ?duration:Float, ?complete:haxe.Constraints.Function):JQuery { })
	@:overload(function(effect:String, ?options:Dynamic, ?duration:String, ?complete:haxe.Constraints.Function):JQuery { })
	function toggle(options:Dynamic):JQuery;
	function position(options:JQueryUI.JQueryPositionOptions):JQuery;
	function enableSelection():JQuery;
	function disableSelection():JQuery;
	function focus(delay:Float, ?callback:haxe.Constraints.Function):JQuery;
	function uniqueId():JQuery;
	function removeUniqueId():JQuery;
	function scrollParent():JQuery;
	@:overload(function(zIndex:Float):JQuery { })
	function zIndex():JQuery;
	var widget : JQueryUI.Widget;
	var jQuery : JQueryStatic;
};
typedef JQueryStatic = {
	var ui : JQueryUI.UI;
	var datepicker : JQueryUI.Datepicker;
	var widget : JQueryUI.Widget;
	var Widget : JQueryUI.Widget;
};
