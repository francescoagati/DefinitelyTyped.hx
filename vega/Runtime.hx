typedef DataSets = { };
typedef Datum = { };
typedef Marks = {
	var type : String;
	var width : Float;
	var height : Float;
	var scales : Array<Scale>;
	var axes : Array<Axis>;
	var legends : Array<Legend>;
	var marks : Array<Mark>;
};
typedef Mark = {
	var type : String;
	@:optional
	var name : String;
	@:optional
	var description : String;
	@:optional
	var from : Mark.From;
	@:optional
	var key : String;
	@:optional
	var delay : Properties;
	@:optional
	var properties : PropertySets;
};
typedef PropertySets = {
	@:optional
	var enter : Properties;
	@:optional
	var exit : Properties;
	@:optional
	var update : Properties;
	@:optional
	var hover : Properties;
};
typedef Properties = { };
typedef Node = {
	var def : Runtime.Mark;
	var marktype : String;
	var interactive : Bool;
	var items : Array<Node>;
	var bounds : Bounds;
	function hasPropertySet(name:String):Bool;
	function cousin(offset:Float, index:Float):Node;
	function sibling(offset:Float):Node;
	function remove():Node;
	function touch():Void;
	@:optional
	var scales : { };
	@:optional
	var axisItems : Array<Node>;
};
typedef Defs = {
	var width : Float;
	var height : Float;
	@:optional
	var viewport : Array<Float>;
	var padding : Dynamic;
	var marks : Runtime.Marks;
	var data : Array<Data>;
};
typedef Spec = {
	@:optional
	var name : String;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var viewport : Array<Float>;
	@:optional
	var padding : Dynamic;
	var data : Array<Data>;
	@:optional
	var scales : Array<Scale>;
	@:optional
	var axes : Array<Axis>;
	@:optional
	var legends : Array<Legend>;
	var marks : Array<Mark>;
};
typedef Data = {
	var name : String;
	@:optional
	var format : Data.Format;
	@:optional
	var values : Dynamic;
	@:optional
	var source : String;
	@:optional
	var url : String;
	@:optional
	var transform : Array<Data.Transform>;
};
