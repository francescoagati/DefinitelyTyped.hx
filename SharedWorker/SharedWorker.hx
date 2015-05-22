typedef AbstractWorker = {
	>EventTarget,
	var onerror : ErrorEvent -> Dynamic;
};
typedef SharedWorker = {
	>AbstractWorker,
	var port : MessagePort;
};
extern class SharedWorkerTopLevel {
	static var SharedWorker : { var prototype : SharedWorker.SharedWorker; function new(stringUrl:String, ?name:String):SharedWorker.SharedWorker; };
}
