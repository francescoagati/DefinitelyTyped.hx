typedef IDOMPurify = {
	function sanitize(s:String):String;
	function addHook(hook:String, cb:Element -> Dynamic -> Dynamic -> Element):Void;
};
extern class DompurifyTopLevel {
	static var DOMPurify : IDOMPurify;
}
extern class DompurifyTopLevel {
	static var DOMPurify : IDOMPurify;
}
