@:enum abstract ViewType(Int) {
	var SystemView = 1039;
	var UserView = 4230;
}
typedef FormOpenParameters = {
	var etn : String;
	@:optional
	var extraqs : String;
	@:optional
	var cmdbar : String;
	@:optional
	var navbar : String;
};
typedef ViewOpenParameters = {
	var etn : String;
	var viewid : String;
	var viewtype : ViewType;
	@:optional
	var cmdbar : String;
	@:optional
	var navbar : String;
};
typedef DialogOpenParameters = {
	var DialogId : String;
	var EntityName : String;
	var ObjectId : String;
};
typedef ReportOpenParameters = {
	var action : String;
	@:optional
	var helpID : String;
	var id : String;
};
