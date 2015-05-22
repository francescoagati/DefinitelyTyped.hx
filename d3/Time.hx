typedef Time = {
	var second : Interval;
	var minute : Interval;
	var hour : Interval;
	var day : Interval;
	var week : Interval;
	var sunday : Interval;
	var monday : Interval;
	var tuesday : Interval;
	var wednesday : Interval;
	var thursday : Interval;
	var friday : Interval;
	var saturday : Interval;
	var month : Interval;
	var year : Interval;
	var seconds : Range;
	var minutes : Range;
	var hours : Range;
	var days : Range;
	var weeks : Range;
	var months : Range;
	var years : Range;
	var sundays : Range;
	var mondays : Range;
	var tuesdays : Range;
	var wednesdays : Range;
	var thursdays : Range;
	var fridays : Range;
	var saturdays : Range;
	var format : { var multi : Array<Array<Dynamic>> -> TimeFormat; var utc : { var multi : Array<Array<Dynamic>> -> TimeFormat; }; var iso : TimeFormat; };
	var scale : { function utc():Scale.TimeScale; };
};
typedef Range = { };
typedef Interval = {
	var floor : Date -> Date;
	var round : Date -> Date;
	var ceil : Date -> Date;
	var range : Range;
	var offset : Date -> Float -> Date;
	@:optional
	var utc : Interval;
};
typedef TimeFormat = {
	var parse : String -> Date;
};
