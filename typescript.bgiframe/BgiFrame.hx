typedef ISettings = {
	var top : String;
	var left : String;
	var width : String;
	var height : String;
	var opacity : Bool;
	var src : String;
	var conditional : Bool;
};
typedef IBgiframe = {
	var s : ISettings;
	function createIframe():HTMLElement;
	function fire(element:HTMLElement):Void;
	function getIframe(element:HTMLElement):HTMLElement;
	function prop(n:Dynamic):String;
};
