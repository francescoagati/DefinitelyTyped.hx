typedef AGSMouseEvent = {
	>MouseEvent,
	@:optional
	var graphic : Graphic;
	var mapPoint : Point;
	var screenPoint : ScreenPoint;
};
typedef AddOptions = {
	@:optional
	var addedGraphics : Array<Graphic>;
	@:optional
	var featureLayer : FeatureLayer;
};
typedef AggregatePointsOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var groupByField : String;
	@:optional
	var keepBoundariesWithNoPoints : Bool;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	var pointLayer : FeatureLayer;
	var polygonLayer : FeatureLayer;
	var polygonLayers : Array<FeatureLayer>;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
	@:optional
	var summaryFields : Array<String>;
};
typedef ArcGISDynamicMapServiceLayerOptions = {
	@:optional
	var className : String;
	@:optional
	var gdbVersion : String;
	@:optional
	var id : String;
	@:optional
	var imageParameters : ImageParameters;
	@:optional
	var infoTemplates : Dynamic;
	@:optional
	var opacity : Float;
	@:optional
	var refreshInterval : Float;
	@:optional
	var resourceInfo : Dynamic;
	@:optional
	var showAttribution : Bool;
	@:optional
	var useMapImage : Bool;
	@:optional
	var useMapTime : Bool;
	@:optional
	var visible : Bool;
};
typedef ArcGISImageServiceLayerOptions = {
	@:optional
	var id : String;
	@:optional
	var imageServiceParameters : ImageServiceParameters;
	@:optional
	var infoTemplate : InfoTemplate;
	@:optional
	var opacity : Float;
	@:optional
	var resourceInfo : Dynamic;
	@:optional
	var useMapImage : Bool;
	@:optional
	var useMapTime : Bool;
	@:optional
	var visible : Bool;
};
typedef ArcGISImageServiceVectorLayerOptions = {
	@:optional
	var pixelFilter : Dynamic;
	@:optional
	var rendererStyle : String;
	@:optional
	var symbolTileSize : Float;
};
typedef ArcGISTiledMapServiceLayerOptions = {
	@:optional
	var className : String;
	@:optional
	var displayLevels : Float;
	@:optional
	var exclusionAreas : Array<Dynamic>;
	@:optional
	var id : String;
	@:optional
	var infoTemplates : Dynamic;
	@:optional
	var opacity : Float;
	@:optional
	var refreshInterval : Float;
	@:optional
	var resampling : Bool;
	@:optional
	var resamplingTolerance : Float;
	@:optional
	var resourceInfo : Dynamic;
	@:optional
	var showAttribution : Bool;
	@:optional
	var tileServers : Array<String>;
	@:optional
	var visible : Bool;
};
typedef AttributeInspectorOptions = {
	var layerInfos : Array<Dynamic>;
};
typedef AttributionOptions = {
	@:optional
	var itemDelimiter : String;
	var map : Map;
};
typedef BasemapGalleryOptions = {
	@:optional
	var basemapIds : Array<String>;
	@:optional
	var basemaps : Array<Basemap>;
	@:optional
	var basemapsGroup : Dynamic;
	@:optional
	var bingMapsKey : String;
	var map : Map;
	@:optional
	var portalUrl : String;
	@:optional
	var referenceIds : Array<String>;
	@:optional
	var showArcGISBasemaps : Bool;
};
typedef BasemapLayerOptions = {
	@:optional
	var bandIds : Array<Float>;
	@:optional
	var copyright : String;
	@:optional
	var displayLevels : Array<Float>;
	@:optional
	var fullExtent : Extent;
	@:optional
	var initialExtent : Extent;
	@:optional
	var isReference : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var subDomains : Array<String>;
	@:optional
	var tileInfo : TileInfo;
	@:optional
	var tileServer : Array<String>;
	@:optional
	var type : String;
	@:optional
	var url : String;
	@:optional
	var visibleLayers : Array<Float>;
};
typedef BasemapOptions = {
	@:optional
	var id : String;
	var layers : Array<BasemapLayer>;
	@:optional
	var thumbnailUrl : String;
	@:optional
	var title : String;
};
typedef BasemapToggleOptions = {
	@:optional
	var basemap : String;
	@:optional
	var basemaps : Dynamic;
	var map : Map;
	@:optional
	var theme : String;
	@:optional
	var visible : Bool;
};
typedef BookmarksOptions = {
	@:optional
	var bookmarks : Array<BookmarkItem>;
	@:optional
	var editable : Bool;
	var map : Map;
};
typedef CSVLayerOptions = {
	@:optional
	var columnDelimiter : String;
	@:optional
	var copyright : String;
	@:optional
	var fields : Array<Dynamic>;
	@:optional
	var latitudeFieldName : String;
	@:optional
	var longitudeFieldName : String;
	@:optional
	var outFields : Array<String>;
};
typedef CircleOptions1 = {
	@:optional
	var geodesic : Bool;
	@:optional
	var numberOfPoints : Float;
	@:optional
	var radius : Float;
	@:optional
	var radiusUnit : Units;
};
typedef CircleOptions2 = {
	var center : Dynamic;
	@:optional
	var geodesic : Bool;
	@:optional
	var numberOfPoints : Float;
	@:optional
	var radius : Float;
	@:optional
	var radiusUnit : Units;
};
typedef ClassedColorSliderOptions = {
	var breakInfos : Dynamic;
	@:optional
	var classificationMethod : String;
	var handles : Array<Float>;
	@:optional
	var histogram : Dynamic;
	@:optional
	var histogramWidth : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var normalizationType : String;
	@:optional
	var primaryHandle : Float;
	@:optional
	var rampWidth : Float;
	@:optional
	var showHandles : Bool;
	@:optional
	var showHistogram : Bool;
	@:optional
	var showLabels : Bool;
	@:optional
	var showTicks : Bool;
	@:optional
	var statistics : Dynamic;
};
typedef ClassedSizeSliderOptions = {
	var breakInfos : Dynamic;
	@:optional
	var classificationMethod : String;
	var handles : Array<Float>;
	@:optional
	var histogram : Dynamic;
	@:optional
	var histogramWidth : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var normalizationType : String;
	@:optional
	var primaryHandle : Float;
	@:optional
	var rampWidth : Float;
	@:optional
	var showHandles : Bool;
	@:optional
	var showHistogram : Bool;
	@:optional
	var showLabels : Bool;
	@:optional
	var showTicks : Bool;
	@:optional
	var statistics : Dynamic;
	@:optional
	var symbol : Dynamic;
};
typedef ColorInfoSliderOptions = {
	@:optional
	var classificationMethod : String;
	var colorInfo : Dynamic;
	var handles : Array<Float>;
	@:optional
	var histogram : Dynamic;
	@:optional
	var histogramWidth : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var normalizationType : String;
	@:optional
	var primaryHandle : Float;
	@:optional
	var rampWidth : Float;
	@:optional
	var showHandles : Bool;
	@:optional
	var showHistogram : Bool;
	@:optional
	var showLabels : Bool;
	@:optional
	var showTicks : Bool;
	@:optional
	var showTransparentBackground : Bool;
	@:optional
	var statistics : Dynamic;
	@:optional
	var zoomOptions : Dynamic;
};
typedef ColorPickerOptions = {
	var color : Color;
	var colorsPerRow : Float;
	var palette : Array<Color>;
	var recentColors : Array<Color>;
	var required : Bool;
	var showRecentColors : Bool;
	var showTransparencySlider : Bool;
};
typedef ConnectOriginsToDestinationsOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var distanceDefaultUnits : String;
	var featureLayers : Array<FeatureLayer>;
	@:optional
	var map : Map;
	var originsLayer : FeatureLayer;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
};
typedef CoordinatesLocationProviderOptions = {
	var xField : String;
	var yField : String;
};
typedef CreateBuffersOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var bufferDistance : Array<Float>;
	var inputLayer : FeatureLayer;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : String;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
};
typedef CreateDriveTimeAreasOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var breakUnits : String;
	@:optional
	var breakValues : Array<Float>;
	var inputLayer : FeatureLayer;
	@:optional
	var inputType : String;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	@:optional
	var overlapPolicy : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
};
typedef CreateViewshedOptions = {
	@:optional
	var analysisGpServer : String;
	var inputLayer : FeatureLayer;
	@:optional
	var map : Map;
	@:optional
	var portalUrl : String;
};
typedef CreateWatershedsOptions = {
	@:optional
	var analysisGpServer : String;
	var inputLayer : FeatureLayer;
	@:optional
	var map : Map;
	@:optional
	var portalUrl : String;
};
typedef CutOptions = {
	@:optional
	var addedGraphics : Array<Graphic>;
	@:optional
	var featureLayer : FeatureLayer;
	@:optional
	var postUpdatedGraphics : Array<Graphic>;
	@:optional
	var preUpdatedGraphics : Array<Graphic>;
};
typedef DataAdapterFeatureLayerOptions = {
	var dataAdapterQuery : Dynamic;
	var locationProvider : LocationProviderBase;
};
typedef DataBrowserOptions = {
	@:optional
	var countryBox : Bool;
	@:optional
	var countryID : String;
	@:optional
	var selection : Array<String>;
	@:optional
	var title : String;
};
typedef DeleteOptions = {
	@:optional
	var deletedGraphics : Array<Graphic>;
	@:optional
	var featureLayer : FeatureLayer;
};
typedef DirectionsOptions = {
	@:optional
	var alphabet : Dynamic;
	@:optional
	var autoSolve : Bool;
	@:optional
	var canModifyStops : Bool;
	@:optional
	var centerAtSegmentStart : Bool;
	@:optional
	var directions : Dynamic;
	@:optional
	var directionsLengthUnits : String;
	@:optional
	var dragging : Bool;
	@:optional
	var focusOnNewStop : Bool;
	@:optional
	var fromSymbol : PictureMarkerSymbol;
	@:optional
	var fromSymbolDrag : PictureMarkerSymbol;
	@:optional
	var geocoderOptions : Dynamic;
	@:optional
	var geocoders : Array<Geocoder>;
	@:optional
	var geometryTaskUrl : String;
	var map : Map;
	@:optional
	var mapClickActive : Bool;
	@:optional
	var maxStops : Float;
	@:optional
	var minStops : Float;
	@:optional
	var optimalRoute : Bool;
	@:optional
	var printPage : String;
	@:optional
	var printTaskUrl : String;
	@:optional
	var printTemplate : String;
	@:optional
	var returnToStart : Bool;
	@:optional
	var routeParams : RouteParameters;
	@:optional
	var routeSymbol : SimpleLineSymbol;
	@:optional
	var routeTaskUrl : String;
	@:optional
	var segmentInfoTemplate : InfoTemplate;
	@:optional
	var segmentSymbol : SimpleLineSymbol;
	@:optional
	var showActivateButton : Bool;
	@:optional
	var showClearButton : Bool;
	@:optional
	var showMilesKilometersOption : Bool;
	@:optional
	var showOptimalRouteOption : Bool;
	@:optional
	var showPrintPage : Bool;
	@:optional
	var showReturnToStartOption : Bool;
	@:optional
	var showReverseStopsButton : Bool;
	@:optional
	var showSegmentHighlight : Bool;
	@:optional
	var showSegmentPopup : Bool;
	@:optional
	var showTrafficOption : Bool;
	@:optional
	var showTravelModesOption : Bool;
	@:optional
	var solving : Bool;
	@:optional
	var stopGraphics : Array<Graphic>;
	@:optional
	var stops : Dynamic;
	@:optional
	var stopsInfoTemplate : InfoTemplate;
	@:optional
	var stopSymbol : PictureMarkerSymbol;
	@:optional
	var stopSymbolDrag : PictureMarkerSymbol;
	@:optional
	var textGraphics : Array<Graphic>;
	@:optional
	var textSymbolColor : Color;
	@:optional
	var textSymbolFont : Font;
	@:optional
	var textSymbolOffset : Dynamic;
	@:optional
	var theme : String;
	@:optional
	var toSymbol : PictureMarkerSymbol;
	@:optional
	var toSymbolDrag : PictureMarkerSymbol;
	@:optional
	var traffic : Bool;
	@:optional
	var trafficLayer : ArcGISDynamicMapServiceLayer;
};
typedef DissolveBoundariesOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var dissolveFields : Array<String>;
	var inputLayer : FeatureLayer;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
	@:optional
	var summaryFields : Array<String>;
};
typedef DotDensityRendererOptions = {
	@:optional
	var backgroundColor : Color;
	@:optional
	var dotShape : String;
	@:optional
	var dotSize : Float;
	var dotValue : Float;
	var fields : Array<Dynamic>;
	@:optional
	var outline : LineSymbol;
};
typedef DrawOptions = {
	@:optional
	var drawTime : Float;
	@:optional
	var showTooltips : Bool;
	@:optional
	var tolerance : Float;
	@:optional
	var tooltipOffset : Float;
};
typedef DriveBufferOptions = {
	var radius : Array<Float>;
	var units : String;
};
typedef EditOptions = {
	@:optional
	var allowAddVertices : Bool;
	@:optional
	var allowDeletevertices : Bool;
	@:optional
	var ghostLineSymbol : LineSymbol;
	@:optional
	var ghostVertexSymbol : MarkerSymbol;
	@:optional
	var textSymbolEditorHolder : Dynamic;
	@:optional
	var uniformScaling : Bool;
	@:optional
	var vertexSymbol : MarkerSymbol;
};
typedef EditorOptions = {
	@:optional
	var settings : Dynamic;
};
typedef EnrichLayerOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var distance : Float;
	@:optional
	var enableTravelModes : Bool;
	var inputLayer : FeatureLayer;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
	@:optional
	var showTrafficWidget : Bool;
};
typedef ExtractDataOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var clip : Bool;
	@:optional
	var dataFormat : String;
	var featureLayers : Array<FeatureLayer>;
	@:optional
	var inputLayers : Array<FeatureLayer>;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
};
typedef FeatureLayerOptions = {
	@:optional
	var autoGeneralize : Bool;
	@:optional
	var className : String;
	@:optional
	var definitionExpression : String;
	@:optional
	var displayOnPan : Bool;
	@:optional
	var editSummaryCallback : haxe.Constraints.Function;
	@:optional
	var gdbVersion : String;
	@:optional
	var id : String;
	@:optional
	var infoTemplate : InfoTemplate;
	@:optional
	var maxAllowableOffset : Float;
	@:optional
	var mode : Float;
	@:optional
	var opacity : Float;
	@:optional
	var orderByFields : Array<String>;
	@:optional
	var outFields : Array<String>;
	@:optional
	var refreshInterval : Float;
	@:optional
	var resourceInfo : Dynamic;
	@:optional
	var showAttribution : Bool;
	@:optional
	var showLabels : Bool;
	@:optional
	var source : LayerSource;
	@:optional
	var tileHeight : Float;
	@:optional
	var tileWidth : Float;
	@:optional
	var trackIdField : String;
	@:optional
	var useMapTime : Bool;
	@:optional
	var visible : Bool;
};
typedef FeatureTableOptions = {
	@:optional
	var allowSelectAll : Bool;
	@:optional
	var cellNavigation : Bool;
	@:optional
	var dateOptions : Dynamic;
	var featureLayer : FeatureLayer;
	@:optional
	var hiddenFields : Array<String>;
	@:optional
	var map : Map;
	@:optional
	var noDataMessage : String;
	@:optional
	var selectionMode : String;
};
typedef FindHotSpotsOptions = {
	var aggregationPolygonLayers : Array<FeatureLayer>;
	@:optional
	var analysisField : String;
	@:optional
	var analysisGpServer : String;
	var analysisLayer : FeatureLayer;
	var boundingPolygonLayers : Array<FeatureLayer>;
	@:optional
	var isProcessInfo : Bool;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
};
typedef FindNearestOptions = {
	@:optional
	var analysisGpServer : String;
	var analysisLayer : FeatureLayer;
	@:optional
	var enableTravelModes : Bool;
	@:optional
	var map : Map;
	@:optional
	var maxCount : Float;
	var nearLayer : FeatureLayer;
	var nearLayers : Array<FeatureLayer>;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var searchCutoff : Float;
	@:optional
	var searchCutoffUnits : String;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
};
typedef FindTaskOptions = {
	@:optional
	var gdbVersion : String;
};
typedef GalleryOptions = {
	var items : Array<Dynamic>;
	@:optional
	var showTitle : Bool;
	@:optional
	var thumbnailStyle : String;
};
typedef GaugeOptions = {
	@:optional
	var caption : String;
	@:optional
	var color : String;
	@:optional
	var dataField : String;
	@:optional
	var dataFormat : String;
	@:optional
	var dataLabelField : String;
	@:optional
	var fromWebmap : Bool;
	@:optional
	var layer : GraphicsLayer;
	@:optional
	var maxDataValue : Float;
	@:optional
	var noDataLabel : String;
	@:optional
	var numberFormat : Dynamic;
	@:optional
	var title : String;
	@:optional
	var unitLabel : String;
};
typedef GenerateRendererTaskOptions = {
	@:optional
	var checkValueRange : Bool;
	@:optional
	var gdbVersion : String;
};
typedef GeoRSSLayerOptions = {
	@:optional
	var infoTemplate : InfoTemplate;
	@:optional
	var outSpatialReference : SpatialReference;
	@:optional
	var pointSymbol : Symbol;
	@:optional
	var polygonSymbol : Symbol;
	@:optional
	var polylineSymbol : Symbol;
};
typedef GeocoderOptions = {
	@:optional
	var arcgisGeocoder : Dynamic;
	@:optional
	var autoComplete : Bool;
	@:optional
	var autoNavigate : Bool;
	@:optional
	var geocoderMenu : Bool;
	@:optional
	var geocoders : Array<Dynamic>;
	@:optional
	var graphicsLayer : GraphicsLayer;
	@:optional
	var highlightLocation : Bool;
	var map : Map;
	@:optional
	var maxLocations : Float;
	@:optional
	var minCharacters : Float;
	@:optional
	var searchDelay : Float;
	@:optional
	var showResults : Bool;
	@:optional
	var symbol : Symbol;
	@:optional
	var theme : String;
	@:optional
	var value : String;
	@:optional
	var zoomScale : Float;
};
typedef GeometryLocationProviderOptions = {
	var geometryField : String;
	var geometryType : String;
};
typedef GraphicsLayerOptions = {
	@:optional
	var className : String;
	@:optional
	var dataAttributes : Dynamic;
	@:optional
	var displayOnPan : Bool;
	@:optional
	var id : String;
	@:optional
	var infoTemplate : InfoTemplate;
	@:optional
	var opacity : Float;
	@:optional
	var refreshInterval : Float;
	@:optional
	var styling : Bool;
	@:optional
	var visible : Bool;
};
typedef Handle = {
	function remove():Void;
};
typedef HeatmapRendererOptions = {
	@:optional
	var blurRadius : Float;
	var colors : Array<String>;
	@:optional
	var field : String;
	@:optional
	var maxPixelIntensity : Float;
	@:optional
	var minPixelIntensity : Float;
};
typedef HeatmapSliderOptions = {
	var colorStops : Array<Dynamic>;
	var handles : Array<Float>;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var rampWidth : Float;
	@:optional
	var showHandles : Bool;
	@:optional
	var showLabels : Bool;
	@:optional
	var showTicks : Bool;
};
typedef HistogramTimeSliderOptions = {
	@:optional
	var color : String;
	@:optional
	var dateFormat : String;
	@:optional
	var layers : Array<Layer>;
	@:optional
	var mode : String;
	@:optional
	var timeInterval : String;
};
typedef HomeButtonOptions = {
	@:optional
	var extent : Extent;
	var map : Map;
	@:optional
	var theme : String;
	@:optional
	var visible : Bool;
};
typedef HorizontalSliderOptions = {
	var labels : Array<String>;
};
typedef IdentifyTaskOptions = {
	@:optional
	var gdbVersion : String;
};
typedef KMLLayerOptions = {
	@:optional
	var className : String;
	@:optional
	var outSR : SpatialReference;
	@:optional
	var refreshInterval : Float;
};
typedef LabelLayerOptions = {
	@:optional
	var id : String;
	@:optional
	var mode : String;
};
typedef LayerOptions = {
	@:optional
	var className : String;
	@:optional
	var refreshInterval : Float;
	@:optional
	var showAttribution : Bool;
};
typedef LayerSwipeOptions = {
	@:optional
	var clip : Float;
	@:optional
	var enabled : Bool;
	var layers : Array<Layer>;
	@:optional
	var left : Float;
	var map : Map;
	@:optional
	var theme : String;
	@:optional
	var top : Float;
	@:optional
	var type : String;
};
typedef LegendOptions = {
	@:optional
	var arrangement : Float;
	@:optional
	var autoUpdate : Bool;
	@:optional
	var layerInfos : Array<Dynamic>;
	var map : Map;
	@:optional
	var respectCurrentMapScale : Bool;
};
typedef LocateButtonOptions = {
	@:optional
	var centerAt : Bool;
	@:optional
	var geolocationOptions : Dynamic;
	@:optional
	var graphicsLayer : GraphicsLayer;
	@:optional
	var highlightLocation : Bool;
	@:optional
	var infoTemplate : InfoTemplate;
	var map : Map;
	@:optional
	var scale : Float;
	@:optional
	var setScale : Bool;
	@:optional
	var symbol : Symbol;
	@:optional
	var theme : String;
	@:optional
	var useTracking : Bool;
	@:optional
	var visible : Bool;
};
typedef LocatorLocationProviderOptions = {
	var addressFields : Dynamic;
	var locator : Locator;
};
typedef MapImageOptions = {
	@:optional
	var extent : Extent;
	@:optional
	var href : String;
};
typedef MapOptions = {
	@:optional
	var attributionWidth : Float;
	@:optional
	var autoResize : Bool;
	@:optional
	var basemap : String;
	@:optional
	var center : Dynamic;
	@:optional
	var displayGraphicsOnPan : Bool;
	@:optional
	var extent : Extent;
	@:optional
	var fadeOnZoom : Bool;
	@:optional
	var fitExtent : Bool;
	@:optional
	var force3DTransforms : Bool;
	@:optional
	var infoWindow : InfoWindowBase;
	@:optional
	var lods : Array<LOD>;
	@:optional
	var logo : Bool;
	@:optional
	var maxScale : Float;
	@:optional
	var maxZoom : Float;
	@:optional
	var minScale : Float;
	@:optional
	var minZoom : Float;
	@:optional
	var nav : Bool;
	@:optional
	var navigationMode : String;
	@:optional
	var optimizePanAnimation : Bool;
	@:optional
	var resizeDelay : Float;
	@:optional
	var scale : Float;
	@:optional
	var showAttribution : Bool;
	@:optional
	var showInfoWindowOnClick : Bool;
	@:optional
	var showLabels : Bool;
	@:optional
	var slider : Bool;
	@:optional
	var sliderLabels : Array<String>;
	@:optional
	var sliderOrientation : String;
	@:optional
	var sliderPosition : String;
	@:optional
	var sliderStyle : String;
	@:optional
	var smartNavigation : Bool;
	@:optional
	var wrapAround180 : Bool;
	@:optional
	var zoom : Float;
};
typedef MeasurementOptions = {
	@:optional
	var advancedLocationUnits : Bool;
	@:optional
	var defaultAreaUnit : Units;
	@:optional
	var defaultLengthUnit : Units;
	@:optional
	var geometry : Dynamic;
	@:optional
	var lineSymbol : SimpleLineSymbol;
	var map : Map;
	@:optional
	var pointSymbol : MarkerSymbol;
};
typedef MergeLayersOptions = {
	@:optional
	var analysisGpServer : String;
	var inputLayer : FeatureLayer;
	@:optional
	var map : Map;
	var mergeLayers : Array<FeatureLayer>;
	@:optional
	var mergingAttributes : Array<String>;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
};
typedef NAOutputLine = {
	var NONE : Dynamic;
	var STRAIGHT : Dynamic;
	var TRUE_SHAPE : Dynamic;
	var TRUE_SHAPE_WITH_MEASURE : Dynamic;
};
typedef NAOutputPolygon = {
	var DETAILED : Dynamic;
	var NONE : Dynamic;
	var SIMPLIFIED : Dynamic;
};
typedef NATravelDirection = {
	var FROM_FACILITY : Dynamic;
	var TO_FACILITY : Dynamic;
};
typedef NAUTurn = {
	var ALLOW_BACKTRACK : Dynamic;
	var AT_DEAD_ENDS_AND_INTERSECTIONS : Dynamic;
	var AT_DEAD_ENDS_ONLY : Dynamic;
	var NO_BACKTRACK : Dynamic;
};
typedef OAuthInfoOptions = {
	var appId : String;
	@:optional
	var authNamespace : String;
	@:optional
	var expiration : Float;
	@:optional
	var locale : String;
	@:optional
	var minTimeUntilExpiration : Float;
	@:optional
	var popup : Bool;
	@:optional
	var popupCallbackUrl : String;
	@:optional
	var popupWindowFeatures : String;
	@:optional
	var portalUrl : String;
};
typedef OpacitySliderOptions = {
	var handles : Array<Float>;
	@:optional
	var histogram : Dynamic;
	@:optional
	var histogramWidth : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	var opacityInfo : Dynamic;
	@:optional
	var primaryHandle : Float;
	@:optional
	var rampWidth : Float;
	@:optional
	var showHandles : Bool;
	@:optional
	var showHistogram : Bool;
	@:optional
	var showLabels : Bool;
	@:optional
	var showTicks : Bool;
	@:optional
	var showTransparentBackground : Bool;
	@:optional
	var statistics : Dynamic;
	@:optional
	var zoomOptions : Dynamic;
};
typedef OpenStreetMapLayerOptions = {
	@:optional
	var displayLevels : Array<Float>;
	@:optional
	var id : String;
	@:optional
	var opacity : Float;
	@:optional
	var resampling : Bool;
	@:optional
	var resamplingTolerance : Float;
	@:optional
	var tileServers : Array<String>;
	@:optional
	var visible : Bool;
};
typedef OperationBaseOptions = {
	@:optional
	var label : String;
	@:optional
	var type : String;
};
typedef OverlayLayersOptions = {
	@:optional
	var analysisGpServer : String;
	var inputLayer : FeatureLayer;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	var overlayLayer : Array<FeatureLayer>;
	@:optional
	var overlayType : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
	@:optional
	var snapToInput : Bool;
	@:optional
	var tolerance : Float;
};
typedef OverviewMapOptions = {
	@:optional
	var attachTo : String;
	@:optional
	var baseLayer : Layer;
	@:optional
	var color : String;
	@:optional
	var expandFactor : Float;
	@:optional
	var height : Float;
	@:optional
	var id : String;
	var map : Map;
	@:optional
	var maximizeButton : Bool;
	@:optional
	var opacity : Float;
	@:optional
	var visible : Bool;
	@:optional
	var width : Float;
};
typedef PixelBlockOptions = {
	var height : Float;
	@:optional
	var mask : Array<Dynamic>;
	var pixels : Array<Array<Float>>;
	@:optional
	var pixelType : String;
	@:optional
	var statistics : Array<Dynamic>;
	var width : Float;
};
typedef PopupMobileOptions = {
	@:optional
	var fillSymbol : FillSymbol;
	@:optional
	var highlight : Bool;
	@:optional
	var lineSymbol : LineSymbol;
	@:optional
	var marginLeft : Float;
	@:optional
	var marginTop : Float;
	@:optional
	var markerSymbol : MarkerSymbol;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
	@:optional
	var zoomFactor : Float;
};
typedef PopupOptions = {
	@:optional
	var anchor : String;
	@:optional
	var fillSymbol : FillSymbol;
	@:optional
	var hideDelay : Bool;
	@:optional
	var highlight : Bool;
	@:optional
	var keepHighlightOnHide : Bool;
	@:optional
	var lineSymbol : LineSymbol;
	@:optional
	var marginLeft : Float;
	@:optional
	var marginTop : Float;
	@:optional
	var markerSymbol : MarkerSymbol;
	@:optional
	var offsetX : Float;
	@:optional
	var offsetY : Float;
	@:optional
	var pagingControls : Bool;
	@:optional
	var pagingInfo : Bool;
	@:optional
	var popupWindow : Bool;
	@:optional
	var titleInBody : Bool;
	@:optional
	var visibleWhenEmpty : Bool;
	@:optional
	var zoomFactor : Float;
};
typedef PopupTemplateOptions = {
	@:optional
	var utcOffset : Float;
};
typedef PrintOptions = {
	@:optional
	var async : Bool;
	@:optional
	var map : Map;
	@:optional
	var templates : Array<PrintTemplate>;
	@:optional
	var url : String;
};
typedef PrintTaskOptions = {
	@:optional
	var async : Bool;
};
typedef ProcessorOptions = {
	@:optional
	var autostart : Bool;
	@:optional
	var drawFeatures : Bool;
	@:optional
	var fetchWithWorker : Bool;
	@:optional
	var layers : Array<FeatureLayer>;
	@:optional
	var map : Map;
	@:optional
	var passFeatures : Bool;
	@:optional
	var requireWorkerSupport : Bool;
};
typedef QueryTaskLocationProviderOptions = {
	var queryParameters : Dynamic;
	var queryTask : QueryTask;
	var unicode : Bool;
	var whereFields : Dynamic;
};
typedef QueryTaskOptions = {
	@:optional
	var gdbVersion : String;
};
typedef RasterLayerOptions = {
	@:optional
	var drawMode : Bool;
	@:optional
	var drawType : String;
	@:optional
	var imageServiceParameters : ImageServiceParameters;
	@:optional
	var pixelFilter : Dynamic;
};
typedef RendererSliderOptions = {
	@:optional
	var handles : Array<Float>;
	var maximum : Float;
	@:optional
	var maxLabel : String;
	var minimum : Float;
	@:optional
	var minLabel : String;
	@:optional
	var precision : Float;
	@:optional
	var primaryHandle : Float;
	@:optional
	var showHandles : Bool;
	@:optional
	var showLabels : Dynamic;
	@:optional
	var showTicks : Bool;
	var values : Array<Float>;
};
typedef RingBufferOptions = {
	var radii : Array<Float>;
	var units : String;
};
typedef ScaleDependentRendererOptions = {
	@:optional
	var rendererInfos : Array<Dynamic>;
};
typedef ScalebarOptions = {
	@:optional
	var attachTo : String;
	var map : Map;
	@:optional
	var scalebarStyle : String;
	@:optional
	var scalebarUnit : String;
};
typedef SearchOptions = {
	@:optional
	var activeSourceIndex : Dynamic;
	@:optional
	var addLayersFromMap : Bool;
	@:optional
	var autoNavigate : Bool;
	@:optional
	var autoSelect : Bool;
	@:optional
	var enableButtonMode : Bool;
	@:optional
	var enableHighlight : Bool;
	@:optional
	var enableInfoWindow : Bool;
	@:optional
	var enableLabel : Bool;
	@:optional
	var enableSourcesMenu : Bool;
	@:optional
	var enableSuggestions : Bool;
	@:optional
	var enableSuggestionsMenu : Bool;
	@:optional
	var expanded : Bool;
	@:optional
	var graphicsLayer : Layer;
	@:optional
	var highlightSymbol : Symbol;
	@:optional
	var infoTemplate : InfoTemplate;
	@:optional
	var labelSymbol : TextSymbol;
	@:optional
	var locationToAddressDistance : Float;
	@:optional
	var map : Map;
	@:optional
	var maxResults : Float;
	@:optional
	var maxSuggestions : Float;
	@:optional
	var minCharacters : Float;
	@:optional
	var showInfoWindowOnSelect : Bool;
	@:optional
	var sources : Array<Dynamic>;
	@:optional
	var suggestionDelay : Float;
	@:optional
	var theme : String;
	@:optional
	var value : String;
	@:optional
	var visible : Bool;
	@:optional
	var zoomScale : Float;
};
typedef SizeInfoSliderOptions = {
	@:optional
	var classificationMethod : String;
	var handles : Array<Float>;
	@:optional
	var histogram : Dynamic;
	@:optional
	var histogramWidth : Float;
	@:optional
	var maxValue : Float;
	@:optional
	var minValue : Float;
	@:optional
	var normalizationType : String;
	@:optional
	var primaryHandle : Float;
	@:optional
	var rampWidth : Float;
	@:optional
	var showHandles : Bool;
	@:optional
	var showHistogram : Bool;
	@:optional
	var showLabels : Bool;
	@:optional
	var showTicks : Bool;
	var sizeInfo : Dynamic;
	@:optional
	var statistics : Dynamic;
	@:optional
	var zoomOptions : Dynamic;
};
typedef SnappingManagerOptions = {
	@:optional
	var alwaysSnap : Bool;
	@:optional
	var layerInfos : Array<Dynamic>;
	var map : Map;
	@:optional
	var snapKey : Dynamic;
	@:optional
	var snapPointSymbol : SimpleMarkerSymbol;
	@:optional
	var tolerance : Float;
};
typedef SpatialIndexOptions = {
	@:optional
	var autostart : Bool;
	@:optional
	var drawFeatures : Bool;
	@:optional
	var fetchWithWorkers : Bool;
	@:optional
	var indexOptions : Dynamic;
	@:optional
	var indexType : String;
	@:optional
	var layers : Array<FeatureLayer>;
	@:optional
	var map : Map;
	@:optional
	var passFeatures : Bool;
	@:optional
	var requireWorkerSupport : Bool;
};
typedef StandardGeographyQueryLocationProviderOptions = {
	var geographyQueryTemplate : String;
	@:optional
	var queryParameters : Dynamic;
	var standardGeographyQueryTask : StandardGeographyQueryTask;
};
typedef StreamLayerOptions1 = {
	@:optional
	var className : String;
	@:optional
	var definitionExpression : String;
	@:optional
	var geometryDefinition : Extent;
	@:optional
	var maximumTrackPoints : Float;
	@:optional
	var outFields : Array<String>;
	@:optional
	var purgeOptions : Dynamic;
};
typedef StreamLayerOptions2 = {
	@:optional
	var className : String;
	@:optional
	var geometryDefinition : Extent;
	@:optional
	var maximumTrackPoints : Float;
	@:optional
	var outFields : Array<String>;
	@:optional
	var purgeOptions : Dynamic;
	@:optional
	var socketUrl : String;
};
typedef SummarizeNearbyOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var distance : Array<Float>;
	@:optional
	var enableTravelModes : Bool;
	@:optional
	var groupByField : String;
	@:optional
	var map : Map;
	@:optional
	var nearType : String;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var shapeUnits : String;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
	@:optional
	var summaryFields : Array<String>;
	@:optional
	var summaryLayer : FeatureLayer;
	var summaryLayers : Array<FeatureLayer>;
	var sumNearbyLayer : FeatureLayer;
	@:optional
	var sumShape : Bool;
	@:optional
	var units : String;
};
typedef SummarizeWithinOptions = {
	@:optional
	var analysisGpServer : String;
	@:optional
	var groupByField : String;
	@:optional
	var map : Map;
	@:optional
	var outputLayerName : String;
	@:optional
	var portalUrl : String;
	@:optional
	var returnFeatureCollection : Bool;
	@:optional
	var showChooseExtent : Bool;
	@:optional
	var showCredits : Bool;
	@:optional
	var showHelp : Bool;
	@:optional
	var showSelectFolder : Bool;
	@:optional
	var summaryFields : String;
	@:optional
	var summaryLayer : FeatureLayer;
	var summaryLayers : Array<FeatureLayer>;
	var sumWithinLayer : FeatureLayer;
};
typedef SymbolStylerOptions = {
	var portalSelf : String;
	var portalUrl : String;
};
typedef TemplatePickerOptions = {
	@:optional
	var columns : Float;
	@:optional
	var emptyMessage : String;
	@:optional
	var featureLayers : Array<FeatureLayer>;
	@:optional
	var grouping : Bool;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var maxLabelLength : Float;
	@:optional
	var rows : Float;
	@:optional
	var showTooltip : Bool;
	@:optional
	var style : String;
	@:optional
	var useLegend : Bool;
};
typedef TimeSliderOptions = {
	@:optional
	var excludeDataAtLeadingThumb : Bool;
	@:optional
	var excludeDataAtTrailingThumb : Bool;
};
typedef UndoManagerOptions = {
	@:optional
	var maxOperations : Float;
};
typedef UnionOptions = {
	@:optional
	var deletedGraphics : Array<Graphic>;
	@:optional
	var featureLayer : FeatureLayer;
	@:optional
	var postUpdatedGraphics : Array<Graphic>;
	@:optional
	var preUpdatedGraphics : Array<Graphic>;
};
typedef UpdateOptions = {
	@:optional
	var featureLayer : FeatureLayer;
	@:optional
	var postUpdatedGraphics : Array<Graphic>;
	@:optional
	var preUpdatedGraphics : Array<Graphic>;
};
typedef VEGeocoderOptions = {
	@:optional
	var bingMapsKey : String;
	@:optional
	var culture : String;
};
typedef VETiledLayerOptions = {
	@:optional
	var bingMapsKey : String;
	@:optional
	var className : String;
	@:optional
	var culture : String;
	@:optional
	var mapStyle : String;
	@:optional
	var refreshInterval : Float;
};
typedef VectorFieldRendererOptions = {
	@:optional
	var flowRepresentation : String;
	@:optional
	var singleArrowSymbol : Symbol;
	@:optional
	var style : String;
};
typedef WMSLayerOptions = {
	@:optional
	var format : String;
	@:optional
	var resourceInfo : Dynamic;
	@:optional
	var transparent : Bool;
	@:optional
	var version : String;
	@:optional
	var visibleLayers : Array<String>;
};
typedef WMTSLayerInfoOptions = {
	@:optional
	var description : String;
	@:optional
	var format : String;
	@:optional
	var fullExtent : Extent;
	@:optional
	var identifier : String;
	@:optional
	var initialExtent : Extent;
	@:optional
	var style : String;
	@:optional
	var tileInfo : TileInfo;
	@:optional
	var tileMatrixSet : String;
	@:optional
	var title : String;
};
typedef WMTSLayerOptions = {
	@:optional
	var layerInfo : WMTSLayerInfo;
	@:optional
	var resampling : Bool;
	@:optional
	var resamplingTolerance : Float;
	@:optional
	var resourceInfo : Dynamic;
	@:optional
	var serviceMode : String;
};
typedef WebTiledLayerOptions = {
	@:optional
	var copyright : String;
	@:optional
	var fullExtent : Extent;
	@:optional
	var initialExtent : Extent;
	@:optional
	var resampling : Bool;
	@:optional
	var resamplingTolerance : Float;
	@:optional
	var subDomains : Array<String>;
	@:optional
	var tileInfo : TileInfo;
	@:optional
	var tileServers : Array<String>;
};
