typedef CreateText = {
	@:overload(function(chart:dojox.charting.Chart, creator:Dynamic, x:Float, y:Float, align:String, text:String, font:String, fontColor:dojo._base.Color):dojox.gfx.Text { })
	function gfx(chart:dojox.charting.Chart, creator:Dynamic, x:Float, y:Float, align:String, text:String, font:String, fontColor:String):dojox.gfx.Text;
	@:overload(function(chart:dojox.charting.Chart, creator:Dynamic, x:Float, y:Float, align:String, text:String, font:String, fontColor:dojo._base.Color, labelWidth:Float):HTMLElement { })
	function html(chart:dojox.charting.Chart, creator:Dynamic, x:Float, y:Float, align:String, text:String, font:String, fontColor:String, labelWidth:Float):HTMLElement;
};
typedef DefaultStats = {
	var hmax : Dynamic;
	var hmin : Dynamic;
	var vmax : Dynamic;
	var vmin : Dynamic;
};
typedef CommonStacked = {
	function collectStats(series:Dynamic):Dynamic;
	function getIndexValue(series:Dynamic, i:Dynamic, index:Dynamic):Array<Dynamic>;
	function getValue(series:Dynamic, i:Dynamic, x:Dynamic):Array<Dynamic>;
};
