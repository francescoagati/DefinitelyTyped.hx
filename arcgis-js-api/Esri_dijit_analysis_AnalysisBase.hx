extern class AnalysisBase {
	var analysisGpServer : String;
	var folderId : String;
	var folderName : String;
	var portalUrl : String;
	function cancel(jobInfo:Dynamic):Void;
	function checkJobStatus(jobId:String):Void;
	function execute(params:String):Void;
	function getCreditsEstimate(toolName:String, jobParams:String):Dynamic;
	@:overload(function(type:Drawtool-activate, listener:{ var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:Drawtool-deactivate, listener:{ var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:Job-cancel, listener:{ var response : Dynamic; var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:Job-fail, listener:{ var error : Dynamic; var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:Job-result, listener:{ var result : Dynamic; var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:Job-status, listener:{ var jobInfo : Dynamic; var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:Job-submit, listener:{ var params : Dynamic; var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:Job-success, listener:{ var jobInfo : Dynamic; var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:Start, listener:{ var params : Dynamic; var target : AnalysisBase; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Close, listener:{ var target : AnalysisBase; } -> Void):esri.Handle;
}
