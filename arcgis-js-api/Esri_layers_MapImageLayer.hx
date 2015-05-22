extern class MapImageLayer extends Layer {
	function new(?options:Dynamic):Void;
	function addImage(mapImage:MapImage):Void;
	function getImages():Array<MapImage>;
	function removeAllImages():Void;
	function removeImage(mapImage:MapImage):Void;
}
