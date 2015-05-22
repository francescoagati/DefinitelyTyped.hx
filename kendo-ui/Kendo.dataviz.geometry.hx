extern class Arc extends Observable {
	var options : ArcOptions;
	function bbox(matrix:kendo.geometry.Matrix):kendo.geometry.Rect;
	function getAnticlockwise():Bool;
	function getCenter():kendo.geometry.Point;
	function getEndAngle():Float;
	function getRadiusX():Float;
	function getRadiusY():Float;
	function getStartAngle():Float;
	function pointAt(angle:Float):kendo.geometry.Point;
	function setAnticlockwise(value:Bool):kendo.geometry.Arc;
	function setCenter(value:kendo.geometry.Point):kendo.geometry.Arc;
	function setEndAngle(value:Float):kendo.geometry.Arc;
	function setRadiusX(value:Float):kendo.geometry.Arc;
	function setRadiusY(value:Float):kendo.geometry.Arc;
	function setStartAngle(value:Float):kendo.geometry.Arc;
	var anticlockwise : Bool;
	var center : kendo.geometry.Point;
	var endAngle : Float;
	var radiusX : Float;
	var radiusY : Float;
	var startAngle : Float;
}
typedef ArcOptions = {
	@:optional
	var name : String;
};
typedef ArcEvent = {
	var sender : Arc;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Circle extends Observable {
	var options : CircleOptions;
	function bbox(matrix:kendo.geometry.Matrix):kendo.geometry.Rect;
	function clone():kendo.geometry.Circle;
	function equals(other:kendo.geometry.Circle):Bool;
	function getCenter():kendo.geometry.Point;
	function getRadius():Float;
	function pointAt(angle:Float):kendo.geometry.Point;
	@:overload(function(value:Dynamic):kendo.geometry.Point { })
	function setCenter(value:kendo.geometry.Point):kendo.geometry.Point;
	function setRadius(value:Float):kendo.geometry.Circle;
	var center : kendo.geometry.Point;
	var radius : Float;
}
typedef CircleOptions = {
	@:optional
	var name : String;
};
typedef CircleEvent = {
	var sender : Circle;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Matrix extends Observable {
	var options : MatrixOptions;
	function clone():kendo.geometry.Matrix;
	function equals(other:kendo.geometry.Matrix):Bool;
	function round(digits:Float):kendo.geometry.Matrix;
	function multiplyCopy(matrix:kendo.geometry.Matrix):kendo.geometry.Matrix;
	function toArray(digits:Float):Dynamic;
	function toString(digits:Float, separator:String):String;
	static function rotate(angle:Float, x:Float, y:Float):kendo.geometry.Matrix;
	static function scale(scaleX:Float, scaleY:Float):kendo.geometry.Matrix;
	static function translate(x:Float, y:Float):kendo.geometry.Matrix;
	static function unit():kendo.geometry.Matrix;
	var a : Float;
	var b : Float;
	var c : Float;
	var d : Float;
	var e : Float;
	var f : Float;
}
typedef MatrixOptions = {
	@:optional
	var name : String;
};
typedef MatrixEvent = {
	var sender : Matrix;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Point extends Observable {
	var options : PointOptions;
	function clone():kendo.geometry.Point;
	function distanceTo(point:kendo.geometry.Point):Float;
	function equals(other:kendo.geometry.Point):Bool;
	function getX():Float;
	function getY():Float;
	function move(x:Float, y:Float):kendo.geometry.Point;
	@:overload(function(angle:Float, center:Dynamic):kendo.geometry.Point { })
	function rotate(angle:Float, center:kendo.geometry.Point):kendo.geometry.Point;
	function round(digits:Float):kendo.geometry.Point;
	function scale(scaleX:Float, scaleY:Float):kendo.geometry.Point;
	function scaleCopy(scaleX:Float, scaleY:Float):kendo.geometry.Point;
	function setX(value:Float):kendo.geometry.Point;
	function setY(value:Float):kendo.geometry.Point;
	function toArray(digits:Float):Dynamic;
	function toString(digits:Float, separator:String):String;
	function transform(tansformation:kendo.geometry.Transformation):kendo.geometry.Point;
	function transformCopy(tansformation:kendo.geometry.Transformation):kendo.geometry.Point;
	function translate(dx:Float, dy:Float):kendo.geometry.Point;
	@:overload(function(vector:Dynamic):kendo.geometry.Point { })
	function translateWith(vector:kendo.geometry.Point):kendo.geometry.Point;
	@:overload(function(x:Dynamic, y:Float):kendo.geometry.Point { })
	@:overload(function(x:kendo.geometry.Point, y:Float):kendo.geometry.Point { })
	static function create(x:Float, y:Float):kendo.geometry.Point;
	static function min():kendo.geometry.Point;
	static function max():kendo.geometry.Point;
	static function minPoint():kendo.geometry.Point;
	static function maxPoint():kendo.geometry.Point;
	var x : Float;
	var y : Float;
}
typedef PointOptions = {
	@:optional
	var name : String;
};
typedef PointEvent = {
	var sender : Point;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Rect extends Observable {
	var options : RectOptions;
	function bbox(matrix:kendo.geometry.Matrix):kendo.geometry.Rect;
	function bottomLeft():kendo.geometry.Point;
	function bottomRight():kendo.geometry.Point;
	function center():kendo.geometry.Point;
	function clone():kendo.geometry.Rect;
	function equals(other:kendo.geometry.Rect):Bool;
	function getOrigin():kendo.geometry.Point;
	function getSize():kendo.geometry.Size;
	function height():Float;
	@:overload(function(value:Dynamic):kendo.geometry.Rect { })
	function setOrigin(value:kendo.geometry.Point):kendo.geometry.Rect;
	@:overload(function(value:Dynamic):kendo.geometry.Rect { })
	function setSize(value:kendo.geometry.Size):kendo.geometry.Rect;
	function topLeft():kendo.geometry.Point;
	function topRight():kendo.geometry.Point;
	function width():Float;
	static function fromPoints(pointA:kendo.geometry.Point, pointB:kendo.geometry.Point):kendo.geometry.Rect;
	static function union(rectA:kendo.geometry.Rect, rectB:kendo.geometry.Rect):kendo.geometry.Rect;
	var origin : kendo.geometry.Point;
	var size : kendo.geometry.Size;
}
typedef RectOptions = {
	@:optional
	var name : String;
};
typedef RectEvent = {
	var sender : Rect;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Size extends Observable {
	var options : SizeOptions;
	function clone():kendo.geometry.Size;
	function equals(other:kendo.geometry.Size):Bool;
	function getWidth():Float;
	function getHeight():Float;
	function setWidth(value:Float):kendo.geometry.Size;
	function setHeight(value:Float):kendo.geometry.Size;
	@:overload(function(width:Dynamic, height:Float):kendo.geometry.Size { })
	@:overload(function(width:kendo.geometry.Size, height:Float):kendo.geometry.Size { })
	static function create(width:Float, height:Float):kendo.geometry.Size;
	var width : Float;
	var height : Float;
}
typedef SizeOptions = {
	@:optional
	var name : String;
};
typedef SizeEvent = {
	var sender : Size;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Transformation extends Observable {
	var options : TransformationOptions;
	function clone():kendo.geometry.Transformation;
	function equals(other:kendo.geometry.Transformation):Bool;
	function matrix():kendo.geometry.Matrix;
	function multiply(transformation:kendo.geometry.Transformation):kendo.geometry.Transformation;
	@:overload(function(angle:Float, center:kendo.geometry.Point):kendo.geometry.Transformation { })
	function rotate(angle:Float, center:Dynamic):kendo.geometry.Transformation;
	function scale(scaleX:Float, scaleY:Float):kendo.geometry.Transformation;
	function translate(x:Float, y:Float):kendo.geometry.Transformation;
}
typedef TransformationOptions = {
	@:optional
	var name : String;
};
typedef TransformationEvent = {
	var sender : Transformation;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
typedef HTMLElement = {
	var kendoBindingTarget : kendo.data.BindingTarget;
};
typedef JQueryXHR = { };
typedef JQueryEventObject = { };
typedef JQueryPromise<T> = {
	function pipe(?doneFilter:Dynamic -> Dynamic, ?failFilter:Dynamic -> Dynamic, ?progressFilter:Dynamic -> Dynamic):JQueryPromise<T>;
	function then(doneCallbacks:Dynamic, failCallbacks:Dynamic, ?progressCallbacks:Dynamic):JQueryPromise<T>;
};
typedef JQuery = {
	@:overload(function(options:kendo.ui.DraggableOptions):JQuery { })
	function kendoDraggable():JQuery;
	@:overload(function(options:kendo.ui.DropTargetOptions):JQuery { })
	function kendoDropTarget():JQuery;
	@:overload(function(options:kendo.ui.DropTargetAreaOptions):JQuery { })
	function kendoDropTargetArea():JQuery;
	@:overload(function(key:KendoAutoComplete):kendo.ui.AutoComplete { })
	@:overload(function(key:KendoBarcode):kendo.dataviz.ui.Barcode { })
	@:overload(function(key:KendoButton):kendo.ui.Button { })
	@:overload(function(key:KendoCalendar):kendo.ui.Calendar { })
	@:overload(function(key:KendoChart):kendo.dataviz.ui.Chart { })
	@:overload(function(key:KendoColorPalette):kendo.ui.ColorPalette { })
	@:overload(function(key:KendoColorPicker):kendo.ui.ColorPicker { })
	@:overload(function(key:KendoComboBox):kendo.ui.ComboBox { })
	@:overload(function(key:KendoContextMenu):kendo.ui.ContextMenu { })
	@:overload(function(key:KendoDatePicker):kendo.ui.DatePicker { })
	@:overload(function(key:KendoDateTimePicker):kendo.ui.DateTimePicker { })
	@:overload(function(key:KendoDiagram):kendo.dataviz.ui.Diagram { })
	@:overload(function(key:KendoDropDownList):kendo.ui.DropDownList { })
	@:overload(function(key:KendoEditor):kendo.ui.Editor { })
	@:overload(function(key:KendoFlatColorPicker):kendo.ui.FlatColorPicker { })
	@:overload(function(key:KendoGantt):kendo.ui.Gantt { })
	@:overload(function(key:KendoGrid):kendo.ui.Grid { })
	@:overload(function(key:KendoLinearGauge):kendo.dataviz.ui.LinearGauge { })
	@:overload(function(key:KendoListView):kendo.ui.ListView { })
	@:overload(function(key:KendoMap):kendo.dataviz.ui.Map { })
	@:overload(function(key:KendoMaskedTextBox):kendo.ui.MaskedTextBox { })
	@:overload(function(key:KendoMenu):kendo.ui.Menu { })
	@:overload(function(key:KendoMobileActionSheet):kendo.mobile.ui.ActionSheet { })
	@:overload(function(key:KendoMobileBackButton):kendo.mobile.ui.BackButton { })
	@:overload(function(key:KendoMobileButton):kendo.mobile.ui.Button { })
	@:overload(function(key:KendoMobileButtonGroup):kendo.mobile.ui.ButtonGroup { })
	@:overload(function(key:KendoMobileCollapsible):kendo.mobile.ui.Collapsible { })
	@:overload(function(key:KendoMobileDetailButton):kendo.mobile.ui.DetailButton { })
	@:overload(function(key:KendoMobileDrawer):kendo.mobile.ui.Drawer { })
	@:overload(function(key:KendoMobileLayout):kendo.mobile.ui.Layout { })
	@:overload(function(key:KendoMobileListView):kendo.mobile.ui.ListView { })
	@:overload(function(key:KendoMobileLoader):kendo.mobile.ui.Loader { })
	@:overload(function(key:KendoMobileModalView):kendo.mobile.ui.ModalView { })
	@:overload(function(key:KendoMobileNavBar):kendo.mobile.ui.NavBar { })
	@:overload(function(key:KendoMobilePane):kendo.mobile.ui.Pane { })
	@:overload(function(key:KendoMobilePopOver):kendo.mobile.ui.PopOver { })
	@:overload(function(key:KendoMobileScrollView):kendo.mobile.ui.ScrollView { })
	@:overload(function(key:KendoMobileScroller):kendo.mobile.ui.Scroller { })
	@:overload(function(key:KendoMobileSplitView):kendo.mobile.ui.SplitView { })
	@:overload(function(key:KendoMobileSwitch):kendo.mobile.ui.Switch { })
	@:overload(function(key:KendoMobileTabStrip):kendo.mobile.ui.TabStrip { })
	@:overload(function(key:KendoMobileView):kendo.mobile.ui.View { })
	@:overload(function(key:KendoMultiSelect):kendo.ui.MultiSelect { })
	@:overload(function(key:KendoNotification):kendo.ui.Notification { })
	@:overload(function(key:KendoNumericTextBox):kendo.ui.NumericTextBox { })
	@:overload(function(key:KendoPager):kendo.ui.Pager { })
	@:overload(function(key:KendoPanelBar):kendo.ui.PanelBar { })
	@:overload(function(key:KendoPivotConfigurator):kendo.ui.PivotConfigurator { })
	@:overload(function(key:KendoPivotGrid):kendo.ui.PivotGrid { })
	@:overload(function(key:KendoProgressBar):kendo.ui.ProgressBar { })
	@:overload(function(key:KendoQRCode):kendo.dataviz.ui.QRCode { })
	@:overload(function(key:KendoRadialGauge):kendo.dataviz.ui.RadialGauge { })
	@:overload(function(key:KendoRangeSlider):kendo.ui.RangeSlider { })
	@:overload(function(key:KendoResponsivePanel):kendo.ui.ResponsivePanel { })
	@:overload(function(key:KendoScheduler):kendo.ui.Scheduler { })
	@:overload(function(key:KendoSlider):kendo.ui.Slider { })
	@:overload(function(key:KendoSortable):kendo.ui.Sortable { })
	@:overload(function(key:KendoSparkline):kendo.dataviz.ui.Sparkline { })
	@:overload(function(key:KendoSplitter):kendo.ui.Splitter { })
	@:overload(function(key:KendoStockChart):kendo.dataviz.ui.StockChart { })
	@:overload(function(key:KendoTabStrip):kendo.ui.TabStrip { })
	@:overload(function(key:KendoTimePicker):kendo.ui.TimePicker { })
	@:overload(function(key:KendoToolBar):kendo.ui.ToolBar { })
	@:overload(function(key:KendoTooltip):kendo.ui.Tooltip { })
	@:overload(function(key:KendoTouch):kendo.ui.Touch { })
	@:overload(function(key:KendoTreeList):kendo.ui.TreeList { })
	@:overload(function(key:KendoTreeMap):kendo.dataviz.ui.TreeMap { })
	@:overload(function(key:KendoTreeView):kendo.ui.TreeView { })
	@:overload(function(key:KendoUpload):kendo.ui.Upload { })
	@:overload(function(key:KendoValidator):kendo.ui.Validator { })
	@:overload(function(key:KendoWindow):kendo.ui.Window { })
	function data(key:Dynamic):Dynamic;
	@:overload(function(options:kendo.ui.AutoCompleteOptions):JQuery { })
	function kendoAutoComplete():JQuery;
	@:overload(function(options:kendo.dataviz.ui.BarcodeOptions):JQuery { })
	function kendoBarcode():JQuery;
	@:overload(function(options:kendo.ui.ButtonOptions):JQuery { })
	function kendoButton():JQuery;
	@:overload(function(options:kendo.ui.CalendarOptions):JQuery { })
	function kendoCalendar():JQuery;
	@:overload(function(options:kendo.dataviz.ui.ChartOptions):JQuery { })
	function kendoChart():JQuery;
	@:overload(function(options:kendo.ui.ColorPaletteOptions):JQuery { })
	function kendoColorPalette():JQuery;
	@:overload(function(options:kendo.ui.ColorPickerOptions):JQuery { })
	function kendoColorPicker():JQuery;
	@:overload(function(options:kendo.ui.ComboBoxOptions):JQuery { })
	function kendoComboBox():JQuery;
	@:overload(function(options:kendo.ui.ContextMenuOptions):JQuery { })
	function kendoContextMenu():JQuery;
	@:overload(function(options:kendo.ui.DatePickerOptions):JQuery { })
	function kendoDatePicker():JQuery;
	@:overload(function(options:kendo.ui.DateTimePickerOptions):JQuery { })
	function kendoDateTimePicker():JQuery;
	@:overload(function(options:kendo.dataviz.ui.DiagramOptions):JQuery { })
	function kendoDiagram():JQuery;
	@:overload(function(options:kendo.ui.DropDownListOptions):JQuery { })
	function kendoDropDownList():JQuery;
	@:overload(function(options:kendo.ui.EditorOptions):JQuery { })
	function kendoEditor():JQuery;
	@:overload(function(options:kendo.ui.FlatColorPickerOptions):JQuery { })
	function kendoFlatColorPicker():JQuery;
	@:overload(function(options:kendo.ui.GanttOptions):JQuery { })
	function kendoGantt():JQuery;
	@:overload(function(options:kendo.ui.GridOptions):JQuery { })
	function kendoGrid():JQuery;
	@:overload(function(options:kendo.dataviz.ui.LinearGaugeOptions):JQuery { })
	function kendoLinearGauge():JQuery;
	@:overload(function(options:kendo.ui.ListViewOptions):JQuery { })
	function kendoListView():JQuery;
	@:overload(function(options:kendo.dataviz.ui.MapOptions):JQuery { })
	function kendoMap():JQuery;
	@:overload(function(options:kendo.ui.MaskedTextBoxOptions):JQuery { })
	function kendoMaskedTextBox():JQuery;
	@:overload(function(options:kendo.ui.MenuOptions):JQuery { })
	function kendoMenu():JQuery;
	@:overload(function(options:kendo.mobile.ui.ActionSheetOptions):JQuery { })
	function kendoMobileActionSheet():JQuery;
	@:overload(function(options:kendo.mobile.ui.BackButtonOptions):JQuery { })
	function kendoMobileBackButton():JQuery;
	@:overload(function(options:kendo.mobile.ui.ButtonOptions):JQuery { })
	function kendoMobileButton():JQuery;
	@:overload(function(options:kendo.mobile.ui.ButtonGroupOptions):JQuery { })
	function kendoMobileButtonGroup():JQuery;
	@:overload(function(options:kendo.mobile.ui.CollapsibleOptions):JQuery { })
	function kendoMobileCollapsible():JQuery;
	@:overload(function(options:kendo.mobile.ui.DetailButtonOptions):JQuery { })
	function kendoMobileDetailButton():JQuery;
	@:overload(function(options:kendo.mobile.ui.DrawerOptions):JQuery { })
	function kendoMobileDrawer():JQuery;
	@:overload(function(options:kendo.mobile.ui.LayoutOptions):JQuery { })
	function kendoMobileLayout():JQuery;
	@:overload(function(options:kendo.mobile.ui.ListViewOptions):JQuery { })
	function kendoMobileListView():JQuery;
	@:overload(function(options:kendo.mobile.ui.LoaderOptions):JQuery { })
	function kendoMobileLoader():JQuery;
	@:overload(function(options:kendo.mobile.ui.ModalViewOptions):JQuery { })
	function kendoMobileModalView():JQuery;
	@:overload(function(options:kendo.mobile.ui.NavBarOptions):JQuery { })
	function kendoMobileNavBar():JQuery;
	@:overload(function(options:kendo.mobile.ui.PaneOptions):JQuery { })
	function kendoMobilePane():JQuery;
	@:overload(function(options:kendo.mobile.ui.PopOverOptions):JQuery { })
	function kendoMobilePopOver():JQuery;
	@:overload(function(options:kendo.mobile.ui.ScrollViewOptions):JQuery { })
	function kendoMobileScrollView():JQuery;
	@:overload(function(options:kendo.mobile.ui.ScrollerOptions):JQuery { })
	function kendoMobileScroller():JQuery;
	@:overload(function(options:kendo.mobile.ui.SplitViewOptions):JQuery { })
	function kendoMobileSplitView():JQuery;
	@:overload(function(options:kendo.mobile.ui.SwitchOptions):JQuery { })
	function kendoMobileSwitch():JQuery;
	@:overload(function(options:kendo.mobile.ui.TabStripOptions):JQuery { })
	function kendoMobileTabStrip():JQuery;
	@:overload(function(options:kendo.mobile.ui.ViewOptions):JQuery { })
	function kendoMobileView():JQuery;
	@:overload(function(options:kendo.ui.MultiSelectOptions):JQuery { })
	function kendoMultiSelect():JQuery;
	@:overload(function(options:kendo.ui.NotificationOptions):JQuery { })
	function kendoNotification():JQuery;
	@:overload(function(options:kendo.ui.NumericTextBoxOptions):JQuery { })
	function kendoNumericTextBox():JQuery;
	@:overload(function(options:kendo.ui.PagerOptions):JQuery { })
	function kendoPager():JQuery;
	@:overload(function(options:kendo.ui.PanelBarOptions):JQuery { })
	function kendoPanelBar():JQuery;
	@:overload(function(options:kendo.ui.PivotConfiguratorOptions):JQuery { })
	function kendoPivotConfigurator():JQuery;
	@:overload(function(options:kendo.ui.PivotGridOptions):JQuery { })
	function kendoPivotGrid():JQuery;
	@:overload(function(options:kendo.ui.ProgressBarOptions):JQuery { })
	function kendoProgressBar():JQuery;
	@:overload(function(options:kendo.dataviz.ui.QRCodeOptions):JQuery { })
	function kendoQRCode():JQuery;
	@:overload(function(options:kendo.dataviz.ui.RadialGaugeOptions):JQuery { })
	function kendoRadialGauge():JQuery;
	@:overload(function(options:kendo.ui.RangeSliderOptions):JQuery { })
	function kendoRangeSlider():JQuery;
	@:overload(function(options:kendo.ui.ResponsivePanelOptions):JQuery { })
	function kendoResponsivePanel():JQuery;
	@:overload(function(options:kendo.ui.SchedulerOptions):JQuery { })
	function kendoScheduler():JQuery;
	@:overload(function(options:kendo.ui.SliderOptions):JQuery { })
	function kendoSlider():JQuery;
	@:overload(function(options:kendo.ui.SortableOptions):JQuery { })
	function kendoSortable():JQuery;
	@:overload(function(options:kendo.dataviz.ui.SparklineOptions):JQuery { })
	function kendoSparkline():JQuery;
	@:overload(function(options:kendo.ui.SplitterOptions):JQuery { })
	function kendoSplitter():JQuery;
	@:overload(function(options:kendo.dataviz.ui.StockChartOptions):JQuery { })
	function kendoStockChart():JQuery;
	@:overload(function(options:kendo.ui.TabStripOptions):JQuery { })
	function kendoTabStrip():JQuery;
	@:overload(function(options:kendo.ui.TimePickerOptions):JQuery { })
	function kendoTimePicker():JQuery;
	@:overload(function(options:kendo.ui.ToolBarOptions):JQuery { })
	function kendoToolBar():JQuery;
	@:overload(function(options:kendo.ui.TooltipOptions):JQuery { })
	function kendoTooltip():JQuery;
	@:overload(function(options:kendo.ui.TouchOptions):JQuery { })
	function kendoTouch():JQuery;
	@:overload(function(options:kendo.ui.TreeListOptions):JQuery { })
	function kendoTreeList():JQuery;
	@:overload(function(options:kendo.dataviz.ui.TreeMapOptions):JQuery { })
	function kendoTreeMap():JQuery;
	@:overload(function(options:kendo.ui.TreeViewOptions):JQuery { })
	function kendoTreeView():JQuery;
	@:overload(function(options:kendo.ui.UploadOptions):JQuery { })
	function kendoUpload():JQuery;
	@:overload(function(options:kendo.ui.ValidatorOptions):JQuery { })
	function kendoValidator():JQuery;
	@:overload(function(options:kendo.ui.WindowOptions):JQuery { })
	function kendoWindow():JQuery;
};
