typedef Calendar = {
	function formatDate(date:Date, format:String, ?options:Options):String;
	function formatDates(date1:Date, date2:Date, format:String, ?options:Options):String;
	function parseDate(dateString:String, ?ignoreTimezone:Bool):Date;
	function parseISO8601(dateString:String, ?ignoreTimezone:Bool):Date;
	var version : String;
};
typedef Options = {
	@:optional
	var header : { var left : String; var center : String; var right : String; };
	@:optional
	var theme : Bool;
	@:optional
	var buttonIcons : { var prev : String; var next : String; };
	@:optional
	var firstDay : Float;
	@:optional
	var isRTL : Bool;
	@:optional
	var weekends : Bool;
	@:optional
	var hiddenDays : Array<Float>;
	@:optional
	var weekMode : String;
	@:optional
	var weekNumbers : Bool;
	@:optional
	var weekNumberCalculation : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var contentHeight : Float;
	@:optional
	var aspectRatio : Float;
	@:optional
	var handleWindowResize : Bool;
	@:optional
	var viewRender : View -> JQuery -> Void;
	@:optional
	var viewDestroy : View -> JQuery -> Void;
	@:optional
	var dayRender : Date -> HTMLTableDataCellElement -> Void;
	@:optional
	var windowResize : View -> Void;
	@:optional
	var defaultView : String;
	@:optional
	var year : Float;
	@:optional
	var month : Float;
	@:optional
	var date : Float;
	@:optional
	var timeFormat : Dynamic;
	@:optional
	var columnFormat : Dynamic;
	@:optional
	var titleFormat : Dynamic;
	@:optional
	var buttonText : ButtonTextObject;
	@:optional
	var monthNames : Array<String>;
	@:optional
	var monthNamesShort : Array<String>;
	@:optional
	var dayNames : Array<String>;
	@:optional
	var dayNamesShort : Array<String>;
	@:optional
	var weekNumberTitle : String;
	@:optional
	var dayClick : Date -> Bool -> MouseEvent -> View -> Void;
	@:optional
	var eventClick : EventObject -> MouseEvent -> View -> Dynamic;
	@:optional
	var eventMouseover : EventObject -> MouseEvent -> View -> Void;
	@:optional
	var eventMouseout : EventObject -> MouseEvent -> View -> Void;
	@:optional
	var selectable : Dynamic;
	@:optional
	var selectHelper : Dynamic;
	@:optional
	var unselectAuto : Bool;
	@:optional
	var unselectCancel : String;
	@:optional
	var select : Date -> Date -> Bool -> MouseEvent -> View -> Void;
	@:optional
	var unselect : View -> Event -> Void;
	@:optional
	var events : Dynamic;
	@:optional
	var eventSources : Array<Dynamic>;
	@:optional
	var allDayDefault : Bool;
	@:optional
	var ignoreTimezone : Bool;
	@:optional
	var startParam : String;
	@:optional
	var endParam : String;
	@:optional
	var lazyFetching : Bool;
	@:optional
	var eventDataTransform : Dynamic -> EventObject;
	@:optional
	var loading : Bool -> View -> Void;
	@:optional
	var eventColor : String;
	@:optional
	var eventBackgroundColor : String;
	@:optional
	var eventBorderColor : String;
	@:optional
	var eventTextColor : String;
	@:optional
	var eventRender : EventObject -> HTMLDivElement -> View -> Void;
	@:optional
	var eventAfterRender : EventObject -> HTMLDivElement -> View -> Void;
	@:optional
	var eventAfterAllRender : View -> Void;
	@:optional
	var eventDestroy : EventObject -> JQuery -> View -> Void;
	@:optional
	var editable : Bool;
	@:optional
	var eventStartEditable : Bool;
	@:optional
	var eventDurationEditable : Bool;
	@:optional
	var dragRevertDuration : Float;
	@:optional
	var dragOpacity : Dynamic;
	@:optional
	var eventDragStart : EventObject -> MouseEvent -> Dynamic -> View -> Void;
	@:optional
	var eventDragStop : EventObject -> MouseEvent -> Dynamic -> View -> Void;
	@:optional
	var eventDrop : EventObject -> Float -> Float -> haxe.Constraints.Function -> Event -> Dynamic -> View -> Void;
	@:optional
	var eventResizeStart : EventObject -> MouseEvent -> Dynamic -> View -> Void;
	@:optional
	var eventResizeStop : EventObject -> MouseEvent -> Dynamic -> View -> Void;
	@:optional
	var eventResize : EventObject -> Float -> Float -> haxe.Constraints.Function -> Event -> Dynamic -> View -> Void;
	@:optional
	var droppable : Bool;
	@:optional
	var dropAccept : Dynamic;
	@:optional
	var drop : Date -> Bool -> MouseEvent -> Dynamic -> Void;
};
typedef View = {
	var name : String;
	var title : String;
	var start : Date;
	var end : Date;
	var visStart : Date;
	var visEnd : Date;
};
typedef ViewOptionHash = {
	@:optional
	var month : Dynamic;
	@:optional
	var week : Dynamic;
	@:optional
	var day : Dynamic;
	@:optional
	var agenda : Dynamic;
	@:optional
	var agendaDay : Dynamic;
	@:optional
	var agendaWeek : Dynamic;
	@:optional
	var basic : Dynamic;
	@:optional
	var basicDay : Dynamic;
	@:optional
	var basicWeek : Dynamic;
	@:optional
	var  : Dynamic;
};
typedef AgendaOptions = {
	@:optional
	var allDaySlot : Bool;
	@:optional
	var allDayText : String;
	@:optional
	var axisFormat : String;
	@:optional
	var slotMinutes : Float;
	@:optional
	var snapMinutes : Float;
	@:optional
	var defaultEventMinutes : Float;
	@:optional
	var firstHour : Float;
	@:optional
	var minTime : Dynamic;
	@:optional
	var maxTime : Dynamic;
	@:optional
	var slotEventOverlap : Bool;
};
typedef ButtonTextObject = {
	@:optional
	var prev : String;
	@:optional
	var next : String;
	@:optional
	var prevYear : String;
	@:optional
	var nextYear : String;
	@:optional
	var today : String;
	@:optional
	var month : String;
	@:optional
	var week : String;
	@:optional
	var day : String;
};
typedef EventObject = {
	@:optional
	var id : Dynamic;
	var title : String;
	@:optional
	var allDay : Bool;
	var start : Date;
	@:optional
	var end : Date;
	@:optional
	var url : String;
	@:optional
	var className : Dynamic;
	@:optional
	var editable : Bool;
	@:optional
	var source : EventSource;
	@:optional
	var color : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var borderColor : String;
	@:optional
	var textColor : String;
};
typedef EventSource = {
	>JQueryAjaxSettings,
	@:optional
	var events : Dynamic;
	@:optional
	var color : String;
	@:optional
	var backgroundColor : String;
	@:optional
	var borderColor : String;
	@:optional
	var textColor : String;
	@:optional
	var className : Dynamic;
	@:optional
	var editable : Bool;
	@:optional
	var allDayDefault : Bool;
	@:optional
	var ignoreTimezone : Bool;
	@:optional
	var eventTransform : Dynamic;
	@:optional
	var startParam : String;
	@:optional
	var endParam : String;
};
typedef JQuery = {
	@:overload(function(method:Render):Void { })
	@:overload(function(method:Destroy):Void { })
	@:overload(function(method:GetView):FullCalendar.View { })
	@:overload(function(method:ChangeView, viewName:String):Void { })
	@:overload(function(method:Prev):Void { })
	@:overload(function(method:Next):Void { })
	@:overload(function(method:PrevYear):Void { })
	@:overload(function(method:NextYear):Void { })
	@:overload(function(method:Today):Void { })
	@:overload(function(method:GotoDate, year:Float, ?month:Float, ?date:Float):Void { })
	@:overload(function(method:GotoDate, date:Date):Void { })
	@:overload(function(method:IncrementDate, year:Float, ?month:Float, ?date:Float):Void { })
	@:overload(function(method:GetDate):Date { })
	@:overload(function(method:Select, startDate:Date, endDate:Date, allDay:Bool):Void { })
	@:overload(function(method:Unselect):Void { })
	@:overload(function(method:UpdateEvent, event:FullCalendar.EventObject):Void { })
	@:overload(function(method:ClientEvents, ?idOrfilter:Dynamic):Array<FullCalendar.EventObject> { })
	@:overload(function(method:ClientEvents, ?idOrfilter:FullCalendar.EventObject -> Bool):Array<FullCalendar.EventObject> { })
	@:overload(function(method:RemoveEvents, ?idOrfilter:Dynamic):Void { })
	@:overload(function(method:RemoveEvents, ?idOrfilter:FullCalendar.EventObject -> Bool):Void { })
	@:overload(function(method:RefetchEvents):Void { })
	@:overload(function(method:AddEventSource, source:Dynamic):Void { })
	@:overload(function(method:RemoveEventSource, source:Dynamic):Void { })
	@:overload(function(method:RenderEvent, event:FullCalendar.EventObject, ?stick:Bool):Void { })
	@:overload(function(method:RerenderEvents):Void { })
	@:overload(function(options:FullCalendar.Options):JQuery { })
	@:overload(function(method:String, arg1:Dynamic, arg2:Dynamic, arg3:Dynamic):Void { })
	function fullCalendar(method:Option, option:String, ?value:Dynamic):Void;
};
typedef JQueryStatic = {
	var fullCalendar : FullCalendar.Calendar;
};
