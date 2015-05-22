extern class JobInfo {
	static var STATUS_CANCELLED : Dynamic;
	static var STATUS_CANCELLING : Dynamic;
	static var STATUS_DELETED : Dynamic;
	static var STATUS_DELETING : Dynamic;
	static var STATUS_EXECUTING : Dynamic;
	static var STATUS_FAILED : Dynamic;
	static var STATUS_NEW : Dynamic;
	static var STATUS_SUBMITTED : Dynamic;
	static var STATUS_SUCCEEDED : Dynamic;
	static var STATUS_TIMED_OUT : Dynamic;
	static var STATUS_WAITING : Dynamic;
	var jobId : String;
	var jobStatus : String;
	var messages : Array<GPMessage>;
}
