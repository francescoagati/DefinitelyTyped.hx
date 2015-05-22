typedef GeoJsonObject = {
	var type : String;
	@:optional
	var bbox : Array<Float>;
	@:optional
	var crs : CoordinateReferenceSystem;
};
typedef Position = { };
typedef GeometryObject = {
	>GeoJsonObject,
	var coordinates : Dynamic;
};
typedef Point = {
	>GeometryObject,
	var coordinates : Position;
};
typedef MultiPoint = {
	>GeometryObject,
	var coordinates : Array<Position>;
};
typedef LineString = {
	>GeometryObject,
	var coordinates : Array<Position>;
};
typedef MultiLineString = {
	>GeometryObject,
	var coordinates : Array<Array<Position>>;
};
typedef Polygon = {
	>GeometryObject,
	var coordinates : Array<Array<Position>>;
};
typedef MultiPolygon = {
	>GeometryObject,
	var coordinates : Array<Array<Array<Position>>>;
};
typedef GeometryCollection = {
	>GeoJsonObject,
	var geometries : Array<GeometryObject>;
};
typedef Feature = {
	>GeoJsonObject,
	var geometry : GeometryObject;
	var properties : Dynamic;
	@:optional
	var id : String;
};
typedef FeatureCollection = {
	>GeoJsonObject,
	var features : Array<Feature>;
};
typedef CoordinateReferenceSystem = {
	var type : String;
	var properties : Dynamic;
};
typedef NamedCoordinateReferenceSystem = {
	>CoordinateReferenceSystem,
	var properties : { var name : String; };
};
typedef LinkedCoordinateReferenceSystem = {
	>CoordinateReferenceSystem,
	var properties : { var href : String; var type : String; };
};
