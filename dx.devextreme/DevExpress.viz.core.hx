typedef Border = {
	@:optional
	var color : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef DashedBorder = {
	>Border,
	@:optional
	var dashStyle : String;
};
typedef DashedBorderWithOpacity = {
	>DashedBorder,
	@:optional
	var opacity : Float;
};
typedef Font = {
	@:optional
	var color : String;
	@:optional
	var family : String;
	@:optional
	var opacity : Float;
	@:optional
	var size : Dynamic;
	@:optional
	var weight : Float;
};
typedef Hatching = {
	@:optional
	var direction : String;
	@:optional
	var opacity : Float;
	@:optional
	var step : Float;
	@:optional
	var width : Float;
};
typedef Margins = {
	@:optional
	var bottom : Float;
	@:optional
	var left : Float;
	@:optional
	var right : Float;
	@:optional
	var top : Float;
};
typedef Size = {
	@:optional
	var width : Float;
	@:optional
	var height : Float;
};
typedef Tooltip = {
	@:optional
	var arrowLength : Float;
	@:optional
	var border : viz.core.DashedBorderWithOpacity;
	@:optional
	var color : String;
	@:optional
	var customizeText : haxe.Constraints.Function;
	@:optional
	var customizeTooltip : Dynamic -> { @:optional
	var color : String; @:optional
	var text : String; };
	@:optional
	var enabled : Bool;
	@:optional
	var font : Font;
	@:optional
	var format : String;
	@:optional
	var opacity : Float;
	@:optional
	var paddingLeftRight : Float;
	@:optional
	var paddingTopBottom : Float;
	@:optional
	var precision : Float;
	@:optional
	var shadow : { @:optional
	var blur : Float; @:optional
	var color : String; @:optional
	var offsetX : Float; @:optional
	var offsetY : Float; @:optional
	var opacity : Float; };
};
typedef Animation = {
	@:optional
	var duration : Float;
	@:optional
	var easing : String;
	@:optional
	var enabled : Bool;
};
typedef LoadingIndicator = {
	@:optional
	var backgroundColor : String;
	@:optional
	var font : viz.core.Font;
	@:optional
	var show : Bool;
	@:optional
	var text : String;
};
typedef LegendBorder = {
	>viz.core.DashedBorderWithOpacity,
	@:optional
	var cornerRadius : Float;
};
typedef BaseLegend = {
	@:optional
	var backgroundColor : String;
	@:optional
	var border : viz.core.LegendBorder;
	@:optional
	var columnCount : Float;
	@:optional
	var columnItemSpacing : Float;
	@:optional
	var equalColumnWidth : Bool;
	@:optional
	var font : viz.core.Font;
	@:optional
	var horizontalAlignment : String;
	@:optional
	var itemsAlignment : String;
	@:optional
	var itemTextPosition : String;
	@:optional
	var margin : viz.core.Margins;
	@:optional
	var markerSize : Float;
	@:optional
	var orientation : String;
	@:optional
	var paddingLeftRight : Float;
	@:optional
	var paddingTopBottom : Float;
	@:optional
	var rowCount : Float;
	@:optional
	var rowItemSpacing : Float;
	@:optional
	var verticalAlignment : String;
	@:optional
	var visible : Bool;
};
typedef BaseWidgetOptions = {
	@:optional
	var drawn : Dynamic -> Void;
	@:optional
	var onDrawn : { var component : BaseWidget; var element : Element; } -> Void;
	@:optional
	var incidentOccured : { var id : String; var type : String; var args : Dynamic; var text : String; var widget : String; var version : String; } -> Void;
	@:optional
	var onIncidentOccurred : BaseWidget -> Element -> { var id : String; var type : String; var args : Dynamic; var text : String; var widget : String; var version : String; } -> Void;
	@:optional
	var pathModified : Bool;
	@:optional
	var rtlEnabled : Bool;
};
extern class BaseWidget extends DOMComponent {
	function svg():String;
}
