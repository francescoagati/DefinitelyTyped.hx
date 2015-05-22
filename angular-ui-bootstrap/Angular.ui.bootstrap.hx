typedef IAccordionConfig = {
	@:optional
	var closeOthers : Bool;
};
typedef IButtonConfig = {
	@:optional
	var activeClass : String;
	@:optional
	var toggleEvent : String;
};
typedef IDatepickerConfig = {
	@:optional
	var dayFormat : String;
	@:optional
	var monthFormat : String;
	@:optional
	var yearFormat : String;
	@:optional
	var dayHeaderFormat : String;
	@:optional
	var dayTitleFormat : String;
	@:optional
	var monthTitleFormat : String;
	@:optional
	var showWeeks : Bool;
	@:optional
	var startingDay : Float;
	@:optional
	var yearRange : Float;
	@:optional
	var minDate : Dynamic;
	@:optional
	var maxDate : Dynamic;
};
typedef IDatepickerPopupConfig = {
	@:optional
	var dateFormat : String;
	@:optional
	var currentText : String;
	@:optional
	var toggleWeeksText : String;
	@:optional
	var clearText : String;
	@:optional
	var closeText : String;
	@:optional
	var closeOnDateSelection : Bool;
	@:optional
	var appendToBody : Bool;
	@:optional
	var showButtonBar : Bool;
};
typedef IModalService = {
	function open(options:IModalSettings):IModalServiceInstance;
};
typedef IModalServiceInstance = {
	function close(?result:Dynamic):Void;
	function dismiss(?reason:Dynamic):Void;
	var result : angular.IPromise<Dynamic>;
	var opened : angular.IPromise<Dynamic>;
};
typedef IModalScope = {
	>angular.IScope,
	function $dismiss(?reason:Dynamic):Void;
	function $close(?result:Dynamic):Void;
};
typedef IModalSettings = {
	@:optional
	var templateUrl : String;
	@:optional
	var template : String;
	@:optional
	var scope : haxe.extern.EitherType<angular.IScope, IModalScope>;
	@:optional
	var controller : Dynamic;
	@:optional
	var controllerAs : String;
	@:optional
	var resolve : Dynamic;
	@:optional
	var backdrop : Dynamic;
	@:optional
	var keyboard : Bool;
	@:optional
	var windowClass : String;
	@:optional
	var size : String;
	@:optional
	var windowTemplateUrl : String;
};
typedef IModalStackService = {
	function open(modalInstance:IModalServiceInstance, modal:Dynamic):Void;
	function close(modalInstance:IModalServiceInstance, ?result:Dynamic):Void;
	function dismiss(modalInstance:IModalServiceInstance, ?reason:Dynamic):Void;
	function dismissAll(?reason:Dynamic):Void;
	function getTop():IModalStackedMapKeyValuePair;
};
typedef IModalStackedMapKeyValuePair = {
	var key : IModalServiceInstance;
	var value : Dynamic;
};
typedef IPaginationConfig = {
	@:optional
	var page : Float;
	@:optional
	var totalItems : Float;
	@:optional
	var itemsPerPage : Float;
	@:optional
	var maxSize : Float;
	@:optional
	var numPages : Float;
	@:optional
	var rotate : Bool;
	@:optional
	function onSelectPage(page:Float):Void;
	@:optional
	var directionLinks : Bool;
	@:optional
	var previousText : String;
	@:optional
	var nextText : String;
	@:optional
	var boundaryLinks : Bool;
	@:optional
	var firstText : String;
	@:optional
	var lastText : String;
};
typedef IPagerConfig = {
	@:optional
	var align : Bool;
	@:optional
	var page : Float;
	@:optional
	var totalItems : Float;
	@:optional
	var itemsPerPage : Float;
	@:optional
	var numPages : Float;
	@:optional
	function onSelectPage(page:Float):Void;
	@:optional
	var previousText : String;
	@:optional
	var nextText : String;
};
typedef IPositionCoordinates = {
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var top : Float;
	@:optional
	var left : Float;
};
typedef IPositionService = {
	function position(element:JQuery):IPositionCoordinates;
	function offset(element:JQuery):IPositionCoordinates;
};
typedef IProgressConfig = {
	@:optional
	var animate : Bool;
	@:optional
	var max : Float;
};
typedef IRatingConfig = {
	@:optional
	var max : Float;
	@:optional
	var stateOn : String;
	@:optional
	var stateOff : String;
};
typedef ITimepickerConfig = {
	@:optional
	var hourStep : Float;
	@:optional
	var minuteStep : Float;
	@:optional
	var showMeridian : Bool;
	@:optional
	var meridians : Array<String>;
	@:optional
	var readonlyInput : Bool;
	@:optional
	var mousewheel : Bool;
};
typedef ITooltipOptions = {
	@:optional
	var placement : String;
	@:optional
	var animation : Bool;
	@:optional
	var popupDelay : Float;
	@:optional
	var appendtoBody : Bool;
};
typedef ITooltipProvider = {
	function options(value:ITooltipOptions):Void;
	function setTriggers(triggers:Dynamic):Void;
};
typedef ITransitionService = {
	var animationEndEventName : String;
	var transitionEndEventName : String;
};
typedef ITransitionServiceOptions = {
	@:optional
	var animation : Bool;
};
