typedef GalleriaOptions = {
	var dataSource : Array<GalleriaEntry>;
	@:optional
	var autoplay : Bool;
	@:optional
	var lightbox : Bool;
};
typedef GalleriaEntry = {
	@:optional
	var image : String;
	@:optional
	var thumbnail : String;
	@:optional
	var title : String;
	@:optional
	var description : String;
};
typedef GalleriaFactory = {
	@:overload(function(selector:String):GalleriaFactory { })
	@:overload(function(selector:String, options:GalleriaOptions):GalleriaFactory { })
	function run():GalleriaFactory;
	function loadTheme(url:String):GalleriaFactory;
	function configure(options:GalleriaOptions):GalleriaFactory;
	function ready(method:Void -> Dynamic):Void;
	function refreshImage():GalleriaFactory;
	function resize():GalleriaFactory;
	function load(data:Array<GalleriaEntry>):GalleriaFactory;
	function setOptions(options:GalleriaOptions):GalleriaFactory;
};
