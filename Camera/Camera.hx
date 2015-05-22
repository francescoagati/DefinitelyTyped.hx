typedef Navigator = {
	var camera : Camera;
};
typedef Camera = {
	function cleanup(onSuccess:Void -> Void, onError:String -> Void):Void;
	function getPicture(cameraSuccess:String -> Void, cameraError:String -> Void, ?cameraOptions:CameraOptions):Void;
};
typedef CameraOptions = {
	@:optional
	var quality : Float;
	@:optional
	var destinationType : Float;
	@:optional
	var sourceType : Float;
	@:optional
	var allowEdit : Bool;
	@:optional
	var encodingType : Float;
	@:optional
	var targetWidth : Float;
	@:optional
	var targetHeight : Float;
	@:optional
	var mediaType : Float;
	@:optional
	var correctOrientation : Bool;
	@:optional
	var saveToPhotoAlbum : Bool;
	@:optional
	var cameraDirection : Float;
	@:optional
	var popoverOptions : CameraPopoverOptions;
};
typedef CameraPopoverHandle = {
	function setPosition(popoverOptions:CameraPopoverOptions):Void;
};
typedef CameraPopoverOptions = {
	var x : Float;
	var y : Float;
	var width : Float;
	var height : Float;
	var arrowDir : Float;
};
extern class CameraTopLevel {
	static var Camera : { var DestinationType : { var DATA_URL : Float; var FILE_URI : Float; var NATIVE_URI : Float; }; var Direction : { var BACK : Float; var FRONT : Float; }; var EncodingType : { var JPEG : Float; var PNG : Float; }; var MediaType : { var PICTURE : Float; var VIDEO : Float; var ALLMEDIA : Float; }; var PictureSourceType : { var PHOTOLIBRARY : Float; var CAMERA : Float; var SAVEDPHOTOALBUM : Float; }; var PopoverArrowDirection : { var ARROW_UP : Float; var ARROW_DOWN : Float; var ARROW_LEFT : Float; var ARROW_RIGHT : Float; var ARROW_ANY : Float; }; };
}
