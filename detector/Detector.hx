typedef DetectorStatic = {
	var canvas : Bool;
	var webgl : Bool;
	var workers : Bool;
	var fileapi : Bool;
	function getWebGLErrorMessage():HTMLElement;
	function addGetWebGLMessage(?parameters:{ @:optional
	var id : String; @:optional
	var parent : HTMLElement; }):Void;
};
extern class DetectorTopLevel {
	static var Detector : DetectorStatic;
}
