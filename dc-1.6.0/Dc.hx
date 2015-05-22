typedef IGetSet<T, V> = { };
typedef ILegendwidget = {
	var x : IGetSet<Float, Float>;
	var y : IGetSet<Float, Float>;
	var gap : IGetSet<Float, Float>;
	var itemHeight : IGetSet<Float, Float>;
	var horizontal : IGetSet<Bool, Bool>;
	var legendWidth : IGetSet<Float, Float>;
	var itemWidth : IGetSet<Float, Float>;
};
typedef IBaseChart<T> = {
	var width : IGetSet<Float, T>;
	var height : IGetSet<Float, T>;
	var minWidth : IGetSet<Float, T>;
	var minHeight : IGetSet<Float, T>;
	var dimension : IGetSet<Dynamic, T>;
	var group : IGetSet<Dynamic, T>;
	var transitionDuration : IGetSet<Float, T>;
	var colors : IGetSet<Array<String>, T>;
	var keyAccessor : IGetSet<Dynamic -> Float, T>;
	var valueAccessor : IGetSet<Dynamic -> Float, T>;
	var label : IGetSet<Dynamic -> String, T>;
	var renderLabel : IGetSet<Bool, T>;
	var renderlet : T -> Void -> T;
	var title : IGetSet<String -> String, T>;
	var filter : IGetSet<Dynamic, T>;
	var filterAll : Void -> Void;
	var expireCache : Void -> Void;
	var legend : ILegendwidget -> T;
	var chartID : Void -> Float;
	var options : Dynamic -> Void;
	var select : D3.Selection -> D3.Selection;
	var selectAll : D3.Selection -> D3.Selection;
};
typedef IEvents = {
	function trigger(fnctn:Void -> Void, ?delay:Float):Void;
};
typedef IListener<T> = {
	var on : String -> T -> Void -> T;
};
typedef ImarginObj = {
	var top : Float;
	var right : Float;
	var bottom : Float;
	var left : Float;
};
typedef IMarginable<T> = {
	var margins : IGetSet<ImarginObj, T>;
};
typedef IAbstractColorChart<T> = {
	var colorDomain : IGetSet<Array<Float>, T>;
};
typedef IAbstractStackableChart<T> = {
	var stack : IChartGroup -> ?String -> ?Dynamic -> Float -> T;
};
typedef IAbstractCoordinateGridChart<T> = {
	var x : IGetSet<Dynamic, T>;
	var y : IGetSet<Dynamic, T>;
	var elasticY : IGetSet<Bool, T>;
	var xAxis : IGetSet<D3.Svg.Axis, T>;
	var yAxis : IGetSet<D3.Svg.Axis, T>;
	var yAxisPadding : IGetSet<Float, T>;
	var xAxisPadding : IGetSet<Float, T>;
	var renderHorizontalGridLines : IGetSet<Bool, T>;
};
typedef IAbstractBubblechart<T> = {
	var r : IGetSet<Dynamic, T>;
	var radiusValueAccessor : IGetSet<Dynamic -> Float, T>;
};
typedef ColumnFunction = { };
typedef SortbyFunction = { };
typedef OrderFunction = { };
typedef IBubblechart = {
	>IBaseChart<IBubblechart>,
	>IAbstractColorChart<IBubblechart>,
	>IAbstractBubblechart<IBubblechart>,
	>IAbstractCoordinateGridChart<IBubblechart>,
	>IMarginable<IBubblechart>,
	>IListener<IBubblechart>,
};
typedef IPiechart = {
	>IBaseChart<IPiechart>,
	>IAbstractColorChart<IPiechart>,
	>IAbstractBubblechart<IPiechart>,
	>IAbstractCoordinateGridChart<IPiechart>,
	>IMarginable<IPiechart>,
	>IListener<IPiechart>,
	var radius : IGetSet<Float, IPiechart>;
	var minAngleForLabel : IGetSet<Float, IPiechart>;
};
typedef IBarchart = {
	>IBaseChart<IBarchart>,
	>IAbstractStackableChart<IBarchart>,
	>IAbstractCoordinateGridChart<IBarchart>,
	>IMarginable<IBarchart>,
	>IListener<IBarchart>,
	var centerBar : Bool -> IBarchart;
	var gap : Float -> IBarchart;
};
typedef ILinechart = {
	>IBaseChart<ILinechart>,
	>IAbstractStackableChart<ILinechart>,
	>IAbstractCoordinateGridChart<ILinechart>,
	>IMarginable<ILinechart>,
	>IListener<ILinechart>,
};
typedef IDatachart = {
	>IBaseChart<IDatachart>,
	>IAbstractStackableChart<IDatachart>,
	>IAbstractCoordinateGridChart<IDatachart>,
	>IMarginable<IDatachart>,
	>IListener<IDatachart>,
	var size : IGetSet<Float, IDatachart>;
	var columns : IGetSet<Array<ColumnFunction>, IDatachart>;
	var sortBy : IGetSet<SortbyFunction, IDatachart>;
	var order : IGetSet<OrderFunction, IDatachart>;
};
typedef IRowchart = {
	>IBaseChart<IRowchart>,
	>IAbstractColorChart<IRowchart>,
	>IAbstractStackableChart<IRowchart>,
	>IAbstractCoordinateGridChart<IRowchart>,
	>IMarginable<IRowchart>,
	>IListener<IRowchart>,
};
typedef IChartGroup = { };
extern class DcTopLevel {
	static var events : IEvents;
	static function filterAll(?chartGroup:IChartGroup):Void;
	static function renderAll(?chartGroup:IChartGroup):Void;
	static function redrawAll(?chartGroup:IChartGroup):Void;
	static function bubbleChart(cssSel:String):IBubblechart;
	static function pieChart(cssSel:String):IPiechart;
	static function barChart(cssSel:String):IBarchart;
	static function lineChart(cssSel:String):ILinechart;
	static function dataTable(cssSel:String):IDatachart;
	static function rowChart(cssSel:String):IRowchart;
}
