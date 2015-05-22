typedef ILightboxImageInfo = {
	var url : String;
	var width : Float;
	var height : Float;
	@:optional
	var thumbUrl : String;
	@:optional
	var caption : String;
};
typedef IImageDimensionLimits = {
	@:optional
	var minWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var maxHeight : Float;
};
typedef IImageDimensionParameter = {
	var windowWidth : Float;
	var windowHeight : Float;
	var imageWidth : Float;
	var imageHeight : Float;
};
typedef IModalDimensionsParameter = {
	var windowWidth : Float;
	var windowHeight : Float;
	var imageDisplayWidth : Float;
	var imageDisplayHeight : Float;
};
typedef IModalDimensions = {
	var width : Float;
	var height : Float;
};
typedef ILightbox = {
	function openModal(images:Array<ILightboxImageInfo>, index:Float):Void;
};
typedef ILightBoxProvider = {
	var templateUrl : String;
	var calculateImageDimensionLimits : IImageDimensionParameter -> IImageDimensionLimits;
	var calculateModalDimensions : IModalDimensionsParameter -> IModalDimensions;
};
