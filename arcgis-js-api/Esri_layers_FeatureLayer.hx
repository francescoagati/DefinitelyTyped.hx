extern class FeatureLayer extends GraphicsLayer {
	static var MODE_AUTO : Dynamic;
	static var MODE_ONDEMAND : Dynamic;
	static var MODE_SELECTION : Dynamic;
	static var MODE_SNAPSHOT : Dynamic;
	static var POPUP_HTML_TEXT : Dynamic;
	static var POPUP_NONE : Dynamic;
	static var POPUP_URL : Dynamic;
	static var SELECTION_ADD : Dynamic;
	static var SELECTION_NEW : Dynamic;
	static var SELECTION_SUBTRACT : Dynamic;
	var advancedQueryCapabilities : Dynamic;
	var allowGeometryUpdates : Bool;
	var attributionDataUrl : String;
	var capabilities : String;
	var copyright : String;
	var defaultDefinitionExpression : String;
	var defaultVisibility : Bool;
	var description : String;
	var displayField : String;
	var editFieldsInfo : Dynamic;
	var fields : Array<Field>;
	var fullExtent : Extent;
	var geometryType : String;
	var globalIdField : String;
	var graphics : Array<Graphic>;
	var hasAttachments : Bool;
	var hasAttributionData : Bool;
	var htmlPopupType : String;
	var labelingInfo : Array<LabelClass>;
	var layerId : Float;
	var maxRecordCount : Float;
	var maxScale : Float;
	var minScale : Float;
	var multipatchOption : String;
	var name : String;
	var objectIdField : String;
	var ownershipBasedAccessControlForFeatures : Dynamic;
	var relationships : Array<Dynamic>;
	var renderer : Renderer;
	var showAttribution : Bool;
	var showLabels : Bool;
	var source : LayerSource;
	var supportsAdvancedQueries : Bool;
	var supportsAttachmentsByUploadId : Bool;
	var supportsCalculate : Bool;
	var supportsStatistics : Bool;
	var suspended : Bool;
	var templates : Array<FeatureTemplate>;
	var timeInfo : TimeInfo;
	var type : String;
	var typeIdField : String;
	var types : Array<FeatureType>;
	var version : Float;
	var visibleAtMapScale : Bool;
	@:overload(function(featureCollectionObject:Dynamic, ?options:esri.FeatureLayerOptions):Void { })
	function new(url:String, ?options:esri.FeatureLayerOptions):Void;
	function addAttachment(objectId:Float, formNode:HTMLFormElement, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function applyEdits(?adds:Array<Graphic>, ?updates:Array<Graphic>, ?deletes:Array<Graphic>, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function clearSelection():FeatureLayer;
	function deleteAttachments(objectId:Float, attachmentIds:Array<Float>, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function getAttributionData():Dynamic;
	function getDefinitionExpression():String;
	function getDomain(fieldName:String, ?options:Dynamic):Domain;
	function getEditCapabilities(?options:Dynamic):Dynamic;
	function getEditInfo(feature:Graphic, ?options:Dynamic):Dynamic;
	function getEditSummary(feature:Graphic, ?options:Dynamic):String;
	function getField(fieldName:String):Field;
	function getMaxAllowableOffset():Float;
	function getOrderByFields():Array<String>;
	function getSelectedFeatures():Array<Graphic>;
	function getSelectionSymbol():Symbol;
	function getTimeDefinition():TimeExtent;
	function getType(feature:Graphic):FeatureType;
	function hasXYFootprint():Bool;
	function isEditable():Bool;
	function isVisibleAtScale(scale:Float):Bool;
	function queryAttachmentInfos(objectId:Float, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function queryCount(query:Query, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function queryExtent(query:Query, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function queryFeatures(query:Query, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function queryIds(query:Query, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function queryRelatedFeatures(relQuery:RelationshipQuery, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function redraw():Void;
	function refresh():Void;
	function resume():Void;
	function selectFeatures(query:Query, ?selectionMethod:Float, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function setAutoGeneralize(enable:Bool):FeatureLayer;
	function setDefinitionExpression(expression:String):FeatureLayer;
	function setEditable(editable:Bool):FeatureLayer;
	function setGDBVersion(versionName:String):FeatureLayer;
	function setInfoTemplate(infoTemplate:InfoTemplate):Void;
	function setLabelingInfo(labelingInfo:Array<LabelClass>):Void;
	function setMaxAllowableOffset(offset:Float):Void;
	function setMaxScale(scale:Float):Void;
	function setMinScale(scale:Float):Void;
	function setOpacity(opacity:Float):Void;
	function setRenderer(renderer:Renderer):Void;
	function setScaleRange(minScale:Float, maxScale:Float):Void;
	function setSelectionSymbol(symbol:Symbol):FeatureLayer;
	function setShowLabels(showLabels:Bool):Void;
	function setTimeDefinition(definition:TimeExtent):FeatureLayer;
	function setTimeOffset(offsetValue:Float, offsetUnits:String):FeatureLayer;
	function setUseMapTime(update:Bool):Void;
	function suspend():Void;
	function toJson():Dynamic;
	@:overload(function(type:Before-apply-edits, listener:{ var adds : Array<Graphic>; var deletes : Array<Graphic>; var updates : Array<Graphic>; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Capabilities-change, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Dbl-click, listener:{ var event : Dynamic; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Delete-attachments-complete, listener:{ var results : Array<Dynamic>; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Edits-complete, listener:{ var adds : Array<FeatureEditResult>; var deletes : Array<FeatureEditResult>; var updates : Array<FeatureEditResult>; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Gdb-version-change, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Labeling-info-change, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Query-attachment-infos-complete, listener:{ var info : Array<Dynamic>; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Query-count-complete, listener:{ var count : Float; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Query-extent-complete, listener:{ var count : Float; var extent : Extent; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Query-features-complete, listener:{ var featureSet : FeatureSet; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Query-ids-complete, listener:{ var objectIds : Array<Float>; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Query-limit-exceeded, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Query-related-features-complete, listener:{ var relatedFeatures : Dynamic; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Resume, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-range-change, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Scale-visibility-change, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Selection-clear, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Selection-complete, listener:{ var features : Array<Graphic>; var method : Float; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Show-labels-change, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Suspend, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Update-end, listener:{ var error : Error; var info : Dynamic; var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:Update-start, listener:{ var target : FeatureLayer; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Add-attachment-complete, listener:{ var result : FeatureEditResult; var target : FeatureLayer; } -> Void):esri.Handle;
}
