typedef BusinessDetails = {
	@:optional
	var businessName : String;
	@:optional
	var entityId : String;
	@:optional
	var phoneNumber : String;
	@:optional
	var website : String;
};
typedef WaypointOptions = {
	@:optional
	var address : String;
	@:optional
	var businessDetails : BusinessDetails;
	@:optional
	var disambiguationContainer : HTMLElement;
	@:optional
	var exactLocation : String;
	@:optional
	var isViapoint : Bool;
	@:optional
	var location : Location;
	@:optional
	var pushpin : Pushpin;
	@:optional
	var shortAddress : String;
};
typedef BusinessDisambiguationSuggestion = {
	@:optional
	var address : String;
	@:optional
	var distance : Float;
	@:optional
	var entityId : Float;
	@:optional
	var index : Float;
	@:optional
	var isApproximate : Bool;
	@:optional
	var location : Location;
	@:optional
	var name : String;
	@:optional
	var phoneNumber : String;
	@:optional
	var photoUrl : String;
	@:optional
	var rooftopLocation : Location;
	@:optional
	var website : String;
};
typedef LocationDisambiguationSuggestion = {
	@:optional
	var formattedSuggestion : String;
	@:optional
	var location : Location;
	@:optional
	var rooftopLocation : Location;
	@:optional
	var suggestion : String;
};
typedef Disambiguation = {
	@:optional
	var businessSuggestions : Array<BusinessDisambiguationSuggestion>;
	@:optional
	var hasMoreSuggestions : Bool;
	@:optional
	var headerText : String;
	@:optional
	var locationSuggestions : Array<LocationDisambiguationSuggestion>;
};
typedef WaypointEventArgs = {
	var waypoint : Waypoint;
};
extern class Waypoint {
	function new(options:WaypointOptions):Void;
	function clear():Void;
	function dispose():Void;
	function getAddress():String;
	function getBusinessDetails():BusinessDetails;
	function getDisambiguationContainer():HTMLElement;
	function getDisambiguationResult():Disambiguation;
	function getLocation():Location;
	function getPushpin():Pushpin;
	function getShortAddress():String;
	function isExactLocation():Bool;
	function isViapoint():Bool;
	function setOptions(options:WaypointOptions):Void;
	var changed : WaypointEventArgs -> Void;
	var geocoded : WaypointEventArgs -> Void;
	var reverseGeocoded : WaypointEventArgs -> Void;
}
typedef DirectionsRenderOptions = {
	@:optional
	var autoDisplayDisambiguation : Bool;
	@:optional
	var autoUpdateMapView : Bool;
	@:optional
	var disambiguationPushpinOptions : PushpinOptions;
	@:optional
	var displayDisclaimer : Bool;
	@:optional
	var displayManeuverIcons : Bool;
	@:optional
	var displayPostItineraryItemHints : Bool;
	@:optional
	var displayPreItineraryItemHints : Bool;
	@:optional
	var displayRouteSelector : Bool;
	@:optional
	var displayStepWarnings : Bool;
	@:optional
	var displayTrafficAvoidanceOption : Bool;
	@:optional
	var displayWalkingWarning : Bool;
	@:optional
	var drivingPolylineOptions : PolylineOptions;
	@:optional
	var itineraryContainer : HTMLElement;
	@:optional
	var lastWaypointIcon : String;
	@:optional
	var middleWaypointIcon : String;
	@:optional
	var stepPushpinOptions : PushpinOptions;
	@:optional
	var transitPolylineOptions : PolylineOptions;
	@:optional
	var viapointPushpinsOptions : PushpinOptions;
	@:optional
	var walkingPolylineOptions : PolylineOptions;
	@:optional
	var waypointPushpinOptions : PushpinOptions;
};
@:enum abstract DistanceUnit(Int) {
	var kilometers = 0;
	var miles = 1;
}
@:enum abstract RouteAvoidance(Int) {
	var none = 0;
	var minimizeLimitedAccessHighway = 1;
	var minimizeToll = 2;
	var avoidLimitedAccessHighway = 4;
	var avoidToll = 8;
	var avoidExpressTrain = 16;
	var avoidAirline = 32;
	var avoidBulletTrain = 64;
}
@:enum abstract RouteMode(Int) {
	var driving = 0;
	var transit = 1;
	var walking = 2;
}
@:enum abstract RouteOptimization(Int) {
	var shortestTime = 0;
	var shortestDistance = 1;
	var minimizeMoney = 3;
	var minimizeTransfers = 4;
	var minimizeWalking = 5;
}
@:enum abstract TimeType(Int) {
	var arrival = 0;
	var departure = 1;
	var lastAvailable = 2;
}
typedef TransitOptions = {
	@:optional
	var timeType : TimeType;
	@:optional
	var transitTime : Date;
};
typedef DirectionsRequestOptions = {
	@:optional
	var avoidTraffic : Bool;
	@:optional
	var distanceUnit : DistanceUnit;
	@:optional
	var maxRoutes : Float;
	@:optional
	var routeAvoidance : Array<RouteAvoidance>;
	@:optional
	var routeDraggable : Bool;
	@:optional
	var routeIndex : Bool;
	@:optional
	var routeMode : RouteMode;
	@:optional
	var routeOptimization : RouteOptimization;
	@:optional
	var transitOptions : TransitOptions;
};
extern class DirectionsManager {
	function new(map:Microsoft.Maps.Map):Void;
	@:overload(function(options:ResetDirectionsOptions):Void { })
	function resetDirections():Void;
	function addWaypoint(waypoint:Waypoint, ?index:Float):Void;
	function calculateDirections():Void;
	function clearDisplay():Void;
	function dispose():Void;
	function getAllWaypoints():Array<Waypoint>;
	function getMap():Map;
	function getNearbyMajorRoads(location:Location, callback:Dynamic, errorCallback:Dynamic, userData:Dynamic):Void;
	function getRenderOptions():DirectionsRenderOptions;
	function getRequestOptions():DirectionsRequestOptions;
	function getRouteResult():Array<Route>;
	@:overload(function(index:Float):Void { })
	function removeWaypoint(waypoint:Waypoint):Void;
	function reverseGeocode(location:Location, callback:Dynamic, errorCallback:Dynamic, userData:Dynamic):Void;
	function setMapView():Void;
	function setRenderOptions(options:DirectionsRenderOptions):Void;
	function setRequestOptions(options:DirectionsRequestOptions):Void;
	var afterRouteSelectorRender : RouteSelectorRenderEventArgs -> Void;
	var afterStepRender : DirectionsStepRenderEventArgs -> Void;
	var afterSummaryRender : RouteSummaryRenderEventArgs -> Void;
	var afterWaypointRender : WaypointRenderEventArgs -> Void;
	var beforeDisambiguationRender : DisambiguationRenderEventArgs -> Void;
	var beforeRouteSelectorRender : RouteSelectorRenderEventArgs -> Void;
	var beforeStepRender : DirectionsStepRenderEventArgs -> Void;
	var beforeSummaryRender : RouteSummaryRenderEventArgs -> Void;
	var beforeWaypointRender : WaypointRenderEventArgs -> Void;
	var directionsError : DirectionsErrorEventArgs -> Void;
	var directionsUpdated : DirectionsEventArgs -> Void;
	var dragDropCompleted : Void -> Void;
	var itineraryStepClicked : DirectionsStepEventArgs -> Void;
	var mouseEnterRouteSelector : RouteSelectorEventArgs -> Void;
	var mouseEnterStep : DirectionsStepEventArgs -> Void;
	var mouseLeaveRouteSelector : RouteSelectorEventArgs -> Void;
	var mouseLeaveStep : DirectionsStepEventArgs -> Void;
	var routeSelectorClicked : RouteSelectorEventArgs -> Void;
	var waypointAdded : WaypointEventArgs -> Void;
	var waypointRemoved : WaypointEventArgs -> Void;
}
typedef DirectionsStepEventArgs = {
	var handled : Bool;
	var location : Location;
	var routeIndex : Float;
	var routeLegIndex : Float;
	var step : DirectionsStep;
	var stepIndex : Float;
	var stepNumber : Float;
};
typedef DirectionsErrorEventArgs = {
	var responseCode : RouteResponseCode;
	var message : String;
};
typedef DirectionsEventArgs = {
	var routeSummary : Array<RouteSummary>;
	var route : Array<Route>;
};
typedef DisambiguationRenderEventArgs = {
	var containerElement : HTMLElement;
	var handled : Bool;
	var waypoint : Waypoint;
};
typedef DirectionsStepRenderEventArgs = {
	var containerElement : HTMLElement;
	var handled : Bool;
	var lastStep : Bool;
	var routeIndex : Float;
	var routeLegIndex : Float;
	var step : DirectionsStep;
	var stepIndex : Float;
};
typedef RouteSummaryRenderEventArgs = {
	var containerElement : HTMLElement;
	var handled : Bool;
	var routeLegIndex : Float;
	var summary : RouteSummary;
};
typedef WaypointRenderEventArgs = {
	var containerElement : HTMLElement;
	var handled : Bool;
	var waypoint : Waypoint;
};
typedef DirectionsStep = {
	var childItineraryItems : Array<DirectionsStep>;
	var coordinate : Location;
	var distance : String;
	var durationInSeconds : Float;
	var formattedText : String;
	var iconType : IconType;
	var isImageRoadShield : Bool;
	var maneuver : Maneuver;
	var maneuverImageName : String;
	var monetaryCost : Float;
	var postIntersectionHints : Array<String>;
	var preIntersectionHings : Array<String>;
	var startStopName : String;
	var transitLine : TransitLine;
	var transitStepIcon : String;
	var transitStopId : String;
	var transitTerminus : String;
	var warnings : Array<DirectionsStepWarning>;
};
@:enum abstract IconType(Int) {
	var none = 0;
	var other = 1;
	var auto = 2;
	var ferry = 3;
	var walk = 4;
	var bus = 5;
	var train = 6;
	var airline = 7;
}
@:enum abstract Maneuver(Int) {
	var none = 0;
	var unknown = 1;
	var departStart = 2;
	var departIntermediateStop = 3;
	var departIntermediateStopReturning = 4;
	var arriveFinish = 5;
	var arriveIntermediateStop = 6;
	var turnLeft = 7;
	var turnRight = 8;
	var turnBack = 9;
	var uTurn = 10;
	var turnToStayLeft = 11;
	var turnToStayRight = 12;
	var bearLeft = 13;
	var bearRight = 14;
	var keepToStayLeft = 15;
	var keepToStayRight = 16;
	var keepToStayStraight = 17;
	var keepLeft = 18;
	var keepRight = 19;
	var keepStraight = 20;
	var take = 21;
	var takeRampLeft = 22;
	var takeRampRight = 23;
	var takeRampStraight = 24;
	var keepOnRampLeft = 25;
	var keepOnRampRight = 26;
	var keepOnRampStraight = 27;
	var merge = 28;
	var continueRoute = 29;
	var roadNameChange = 30;
	var enterRoundabout = 31;
	var exitRoundabout = 32;
	var turnRightThenTurnRight = 33;
	var turnRightThenTurnLeft = 34;
	var turnRightThenBearRight = 35;
	var turnRightThenBearLeft = 36;
	var turnLeftThenTurnLeft = 37;
	var turnLeftThenTurnRight = 38;
	var turnLeftThenBearLeft = 39;
	var turnLeftThenBearRight = 40;
	var bearRightThenTurnRight = 41;
	var bearRightThenTurnLeft = 42;
	var bearRightThenBearRight = 43;
	var bearRightThenBearLeft = 44;
	var bearLeftThenTurnLeft = 45;
	var bearLeftThenTurnRight = 46;
	var bearLeftThenBearRight = 47;
	var bearLeftThenBearLeft = 48;
	var rampThenHighwayRight = 49;
	var rampThenHighwayLeft = 50;
	var rampToHighwayStraight = 51;
	var enterThenExitRoundabout = 52;
	var bearThenMerge = 53;
	var turnThenMerge = 54;
	var bearThenKeep = 55;
	var transfer = 56;
	var wait = 57;
	var takeTransit = 58;
	var walk = 59;
	var transitDepart = 60;
	var transitArrive = 61;
}
typedef TransitLine = {
	var abbreviatedName : String;
	var agencyId : Float;
	var agencyName : String;
	var agencyUrl : String;
	var lineColor : Color;
	var lineTextColor : Color;
	var providerInfo : String;
	var verboseName : String;
};
typedef DirectionsStepWarning = {
	var style : StepWarningStyle;
	var text : String;
};
@:enum abstract StepWarningStyle(Int) {
	var info = 0;
	var minor = 1;
	var moderate = 2;
	var major = 3;
	var ccZoneEnter = 4;
	var ccZoneExit = 5;
}
typedef ResetDirectionsOptions = {
	@:optional
	var removeAllWaypoints : Bool;
	@:optional
	var resetRenderOptions : Bool;
	@:optional
	var resetRequestOptions : Bool;
};
typedef Route = {
	var routeLegs : Array<RouteLeg>;
};
typedef RouteLeg = {
	var endTime : Date;
	var endWaypointLocation : Location;
	var itineraryItems : Array<DirectionsStep>;
	var originalRouteIndex : Float;
	var startTime : Date;
	var startWaypointLocation : Location;
	var subLegs : Array<RouteSubLeg>;
	var summary : RouteSummary;
};
typedef RouteSubLeg = {
	var actualEnd : Location;
	var actualStart : Location;
	var endDescription : String;
	var routePath : RoutePath;
	var startDescription : String;
	var summary : RouteSummary;
};
typedef RoutePath = {
	var decodedLatitudes : Array<Float>;
	var decodedLongitudes : Array<Float>;
	var decodedRegions : Array<Dynamic>;
};
typedef RouteSummary = {
	var distance : Float;
	var monetaryCost : Float;
	var northEast : Location;
	var southWest : Location;
	var time : Float;
	var timeWithTraffic : Float;
};
@:enum abstract RouteResponseCode(Int) {
	var success = 0;
	var unknownError = 1;
	var cannotFindNearbyRoad = 2;
	var tooFar = 3;
	var noSolution = 4;
	var dataSourceNotFound = 5;
	var noAvailableTransitTrip = 7;
	var transitStopsTooClose = 8;
	var walkingBestAlternative = 9;
	var outOfTransitBounds = 10;
	var timeout = 11;
	var waypointDisambiguation = 12;
	var hasEmptyWaypoint = 13;
	var exceedMaxWaypointLimit = 14;
	var atleastTwoWaypointRequired = 15;
	var firstOrLastStoppointsIsVia = 16;
	var searchServiceFailed = 17;
	var invalidCredentials = 18;
}
typedef RouteSelectorEventArgs = {
	var handled : Bool;
	var routeIndex : Float;
};
typedef RouteSelectorRenderEventArgs = {
	var containerElement : HTMLElement;
	var handled : Bool;
	var routeIndex : Float;
	var routeLeg : RouteLeg;
};
