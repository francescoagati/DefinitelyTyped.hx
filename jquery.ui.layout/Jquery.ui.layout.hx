typedef JQueryLayoutOptions = {
	var north : Dynamic;
	var east : Dynamic;
	var south : Dynamic;
	var west : Dynamic;
};
typedef JQueryLayout = {
	var panes : Dynamic;
	var options : JQueryLayoutOptions;
	var state : Dynamic;
	function toggle(pane:Dynamic):Dynamic;
	function open(pane:Dynamic):Dynamic;
	function close(pane:Dynamic):Dynamic;
	function show(pane:Dynamic, ?openPane:Bool):Dynamic;
	function hide(pane:Dynamic):Dynamic;
	function sizePane(pane:Dynamic, sizeInPixels:Float):Dynamic;
	function resizeContent(pane:Dynamic):Dynamic;
	function resizeAll():Dynamic;
	function addToggleBtn(selector:String, pane:Dynamic):Dynamic;
	function addCloseBtn(selector:String, pane:Dynamic):Dynamic;
	function addOpenBtn(selector:String, pane:Dynamic):Dynamic;
	function addPinBtn(selector:String, pane:Dynamic):Dynamic;
	function allowOverflow(elemOrPane:Dynamic):Dynamic;
	function resetOverflow(elemOrPane:Dynamic):Dynamic;
};
typedef JQuery = {
	function layout(?options:JQueryLayoutOptions):JQueryLayout;
};
