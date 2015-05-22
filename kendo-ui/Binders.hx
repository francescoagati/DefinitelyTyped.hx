typedef Bindings = { };
extern class Binder extends Class {
	static var fn : Binder;
	static function extend(prototype:Dynamic):Binder;
	var element : Dynamic;
	var bindings : Bindings;
	function new(element:Dynamic, bindings:Bindings, ?options:BinderOptions):Void;
	function init(element:Dynamic, bindings:Bindings, ?options:BinderOptions):Void;
	function bind(binding:Binding, attribute:String):Void;
	function destroy():Void;
	@:overload(function(attribute:String):Void { })
	function refresh():Void;
	var options : BinderOptions;
}
typedef BinderOptions = { };
extern class ObservableObject extends Observable {
	function new(?value:Dynamic):Void;
	function init(?value:Dynamic):Void;
	function get(name:String):Dynamic;
	function parent():ObservableObject;
	function set(name:String, value:Dynamic):Void;
	function toJSON():Dynamic;
	var uid : String;
}
extern class Model extends ObservableObject {
	var idField : String;
	var _defaultId : Dynamic;
	var fields : DataSourceSchemaModelFields;
	var defaults : { };
	function new(?data:Dynamic):Void;
	function init(?data:Dynamic):Void;
	function accept(?data:Dynamic):Void;
	var dirty : Bool;
	var id : Dynamic;
	function editable(field:String):Bool;
	function isNew():Bool;
	@:overload(function(options:DataSourceSchemaModelWithFieldsArray):Dynamic { })
	static function define(options:DataSourceSchemaModelWithFieldsObject):Dynamic;
}
typedef SchedulerEventData = {
	@:optional
	var description : String;
	@:optional
	var end : Date;
	@:optional
	var endTimezone : String;
	@:optional
	var isAllDay : Bool;
	@:optional
	var id : Dynamic;
	@:optional
	var start : Date;
	@:optional
	var startTimezone : String;
	@:optional
	var recurrenceId : Dynamic;
	@:optional
	var recurrenceRule : String;
	@:optional
	var recurrenceException : String;
	@:optional
	var title : String;
};
extern class SchedulerEvent extends Model {
	function new(?data:SchedulerEventData):Void;
	function init(?data:SchedulerEventData):Void;
	var description : String;
	var end : Date;
	var endTimezone : String;
	var isAllDay : Bool;
	var id : Dynamic;
	var start : Date;
	var startTimezone : String;
	var recurrenceId : Dynamic;
	var recurrenceRule : String;
	var recurrenceException : String;
	var title : String;
	static var idField : String;
	static var fields : DataSourceSchemaModelFields;
	@:overload(function(options:DataSourceSchemaModelWithFieldsArray):Dynamic { })
	static function define(options:DataSourceSchemaModelWithFieldsObject):Dynamic;
	function clone(options:Dynamic, updateUid:Bool):SchedulerEvent;
	function duration():Float;
	function expand(start:Date, end:Date, zone:Dynamic):Array<SchedulerEvent>;
	function update(eventInfo:SchedulerEventData):Void;
	function isMultiDay():Bool;
	function isException():Bool;
	function isOccurrence():Bool;
	function isRecurring():Bool;
	function isRecurrenceHead():Bool;
	function toOccurrence(options:Dynamic):SchedulerEvent;
}
extern class TreeListModel extends Model {
	function new(?data:Dynamic):Void;
	function init(?data:Dynamic):Void;
	var id : Dynamic;
	var parentId : Dynamic;
	@:overload(function():Bool { })
	function loaded(value:Bool):Void;
	static var idField : String;
	static var fields : DataSourceSchemaModelFields;
	@:overload(function(options:DataSourceSchemaModelWithFieldsArray):Dynamic { })
	static function define(options:DataSourceSchemaModelWithFieldsObject):Dynamic;
}
extern class TreeListDataSource extends DataSource {
	function load(model:kendo.data.TreeListModel):JQueryPromise<Dynamic>;
	function childNodes(model:kendo.data.TreeListModel):Array<kendo.data.TreeListModel>;
	function rootNodes():Array<kendo.data.TreeListModel>;
	function parentNode(model:kendo.data.TreeListModel):kendo.data.TreeListModel;
	@:overload(function(model:Dynamic):Float { })
	function level(model:kendo.data.TreeListModel):Float;
	@:overload(function(model:kendo.data.TreeListModel):kendo.data.TreeListModel { })
	function add(model:Dynamic):kendo.data.TreeListModel;
	function at(index:Float):kendo.data.TreeListModel;
	function cancelChanges(?model:kendo.data.TreeListModel):Void;
	function get(id:Dynamic):kendo.data.TreeListModel;
	function getByUid(uid:String):kendo.data.TreeListModel;
	function indexOf(value:kendo.data.TreeListModel):Float;
	@:overload(function(index:Float, model:Dynamic):kendo.data.TreeListModel { })
	function insert(index:Float, model:kendo.data.TreeListModel):kendo.data.TreeListModel;
	function remove(model:kendo.data.TreeListModel):Void;
}
extern class GanttTask extends Model {
	function new(?data:Dynamic):Void;
	function init(?data:Dynamic):Void;
	var id : Dynamic;
	var parentId : Float;
	var orderId : Float;
	var title : String;
	var start : Date;
	var end : Date;
	var percentComplete : Float;
	var summary : Bool;
	var expanded : Bool;
	static var idField : String;
	static var fields : DataSourceSchemaModelFields;
	@:overload(function(options:DataSourceSchemaModelWithFieldsArray):Dynamic { })
	static function define(options:DataSourceSchemaModelWithFieldsObject):Dynamic;
}
extern class GanttDependency extends Model {
	function new(?data:Dynamic):Void;
	function init(?data:Dynamic):Void;
	var id : Dynamic;
	var predecessorId : Float;
	var successorId : Float;
	var type : Float;
	static var idField : String;
	static var fields : DataSourceSchemaModelFields;
	@:overload(function(options:DataSourceSchemaModelWithFieldsArray):Dynamic { })
	static function define(options:DataSourceSchemaModelWithFieldsObject):Dynamic;
}
extern class Node extends Model {
	var children : HierarchicalDataSource;
	function append(model:Dynamic):Void;
	function level():Float;
	function load(id:Dynamic):Void;
	@:overload(function():Bool { })
	function loaded(value:Bool):Void;
	function parentNode():Node;
}
extern class SchedulerDataSource extends DataSource {
	@:overload(function(model:kendo.data.SchedulerEvent):kendo.data.SchedulerEvent { })
	function add(model:Dynamic):kendo.data.SchedulerEvent;
	function at(index:Float):kendo.data.SchedulerEvent;
	function cancelChanges(?model:kendo.data.SchedulerEvent):Void;
	function get(id:Dynamic):kendo.data.SchedulerEvent;
	function getByUid(uid:String):kendo.data.SchedulerEvent;
	function indexOf(value:kendo.data.SchedulerEvent):Float;
	@:overload(function(index:Float, model:Dynamic):kendo.data.SchedulerEvent { })
	function insert(index:Float, model:kendo.data.SchedulerEvent):kendo.data.SchedulerEvent;
	function remove(model:kendo.data.SchedulerEvent):Void;
}
extern class GanttDataSource extends DataSource {
	@:overload(function(model:kendo.data.GanttTask):kendo.data.GanttTask { })
	function add(model:Dynamic):kendo.data.GanttTask;
	function at(index:Float):kendo.data.GanttTask;
	function cancelChanges(?model:kendo.data.GanttTask):Void;
	function get(id:Dynamic):kendo.data.GanttTask;
	function getByUid(uid:String):kendo.data.GanttTask;
	function indexOf(value:kendo.data.GanttTask):Float;
	@:overload(function(index:Float, model:kendo.data.GanttTask):kendo.data.GanttTask { })
	function insert(index:Float, model:Dynamic):kendo.data.GanttTask;
	function remove(model:kendo.data.GanttTask):Void;
}
extern class GanttDependencyDataSource extends DataSource {
	@:overload(function(model:kendo.data.GanttDependency):kendo.data.GanttDependency { })
	function add(model:Dynamic):kendo.data.GanttDependency;
	function at(index:Float):kendo.data.GanttDependency;
	function cancelChanges(?model:kendo.data.GanttDependency):Void;
	function get(id:Dynamic):kendo.data.GanttDependency;
	function getByUid(uid:String):kendo.data.GanttDependency;
	function indexOf(value:kendo.data.GanttDependency):Float;
	@:overload(function(index:Float, model:kendo.data.GanttDependency):kendo.data.GanttDependency { })
	function insert(index:Float, model:Dynamic):kendo.data.GanttDependency;
	function remove(model:kendo.data.GanttDependency):Void;
}
extern class HierarchicalDataSource extends DataSource {
	function new(?options:HierarchicalDataSourceOptions):Void;
	function init(?options:HierarchicalDataSourceOptions):Void;
}
typedef HierarchicalDataSourceOptions = {
	>DataSourceOptions,
	@:optional
	var schema : HierarchicalDataSourceSchema;
};
typedef HierarchicalDataSourceSchema = {
	>DataSourceSchemaWithOptionsModel,
	@:optional
	var model : HierarchicalDataSourceSchemaModel;
};
typedef HierarchicalDataSourceSchemaModel = {
	>DataSourceSchemaModel,
	@:optional
	var hasChildren : Dynamic;
	@:optional
	var children : Dynamic;
};
typedef PivotDiscoverRequestRestrictionOptions = {
	var catalogName : String;
	var cubeName : String;
};
typedef PivotDiscoverRequestDataOptions = {
	var command : String;
	var restrictions : PivotDiscoverRequestRestrictionOptions;
};
typedef PivotDiscoverRequestOptions = {
	var data : PivotDiscoverRequestDataOptions;
};
typedef PivotTransportConnection = {
	@:optional
	var catalog : String;
	@:optional
	var cube : String;
};
typedef PivotTransportDiscover = {
	@:optional
	var cache : Bool;
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef PivotTransport = {
	@:optional
	var discover : Dynamic;
	@:optional
	var read : Dynamic;
};
typedef PivotTransportWithObjectOperations = {
	>PivotTransport,
	var connection : PivotTransportConnection;
	@:optional
	var discover : PivotTransportDiscover;
	@:optional
	var read : DataSourceTransportRead;
};
typedef PivotTransportWithFunctionOperations = {
	>PivotTransport,
	@:optional
	var discover : DataSourceTransportOptions -> Void;
	@:optional
	var read : DataSourceTransportOptions -> Void;
};
typedef PivotDataSourceAxisOptions = {
	var name : String;
	@:optional
	var expand : Bool;
};
typedef PivotDataSourceMeasureOptions = {
	var values : Array<String>;
	@:optional
	var axis : String;
};
typedef PivotDataSourceOptions = {
	>DataSourceOptions,
	@:optional
	var columns : Array<PivotDataSourceAxisOptions>;
	@:optional
	var measures : Array<PivotDataSourceMeasureOptions>;
	@:optional
	var rows : Array<PivotDataSourceAxisOptions>;
	@:optional
	var transport : PivotTransport;
	@:optional
	var schema : PivotSchema;
};
typedef PivotTupleModel = {
	var children : Array<PivotTupleModel>;
	@:optional
	var caption : String;
	var name : String;
	@:optional
	var levelName : String;
	var levelNum : Float;
	@:optional
	var hasChildren : Bool;
	@:optional
	var hierarchy : String;
};
typedef PivotSchemaRowAxis = {
	var tuples : Array<PivotTupleModel>;
};
typedef PivotSchemaColumnAxis = {
	var tuples : Array<PivotTupleModel>;
};
typedef PivotSchemaAxes = {
	var rows : PivotSchemaRowAxis;
	var columns : PivotSchemaColumnAxis;
};
typedef PivotSchema = {
	>DataSourceSchema,
	@:optional
	var axes : Dynamic;
	@:optional
	var catalogs : Dynamic;
	@:optional
	var cubes : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var dimensions : Dynamic;
	@:optional
	var hierarchies : Dynamic;
	@:optional
	var levels : Dynamic;
	@:optional
	var measures : Dynamic;
};
extern class PivotDataSource extends DataSource {
	function axes():PivotSchemaAxes;
	function new(?options:PivotDataSourceOptions):Void;
	function init(?options:PivotDataSourceOptions):Void;
	function catalog(val:String):Void;
	function columns(val:Array<String>):Array<String>;
	function cube(val:String):Void;
	function discover(options:PivotDiscoverRequestOptions):JQueryPromise<Dynamic>;
	function measures(val:Array<String>):Array<String>;
	function measuresAxis():String;
	function rows(val:Array<String>):Array<String>;
	function schemaCatalogs():JQueryPromise<Dynamic>;
	function schemaCubes():JQueryPromise<Dynamic>;
	function schemaDimensions():JQueryPromise<Dynamic>;
	function schemaHierarchies():JQueryPromise<Dynamic>;
	function schemaLevels():JQueryPromise<Dynamic>;
	function schemaMeasures():JQueryPromise<Dynamic>;
}
typedef DataSourceTransport = {
	@:optional
	function parameterMap(data:DataSourceTransportParameterMapData, type:String):Dynamic;
	@:optional
	var create : DataSourceTransportCreate;
	@:optional
	var destroy : DataSourceTransportDestroy;
	@:optional
	var push : haxe.Constraints.Function;
	@:optional
	var read : DataSourceTransportRead;
	@:optional
	var signalr : DataSourceTransportSignalr;
	@:optional
	var update : DataSourceTransportUpdate;
};
typedef DataSourceTransportSignalrClient = {
	@:optional
	var create : String;
	@:optional
	var destroy : String;
	@:optional
	var read : String;
	@:optional
	var update : String;
};
typedef DataSourceTransportSignalrServer = {
	@:optional
	var create : String;
	@:optional
	var destroy : String;
	@:optional
	var read : String;
	@:optional
	var update : String;
};
typedef DataSourceTransportSignalr = {
	@:optional
	var client : DataSourceTransportSignalrClient;
	@:optional
	var hub : Dynamic;
	@:optional
	var promise : Dynamic;
	@:optional
	var server : DataSourceTransportSignalrServer;
};
typedef DataSourceParameterMapDataAggregate = {
	@:optional
	var field : String;
	@:optional
	var aggregate : String;
};
typedef DataSourceParameterMapDataGroup = {
	@:optional
	var aggregate : Array<DataSourceParameterMapDataAggregate>;
	@:optional
	var field : String;
	@:optional
	var dir : String;
};
typedef DataSourceParameterMapDataFilter = {
	@:optional
	var field : String;
	@:optional
	var filters : Array<DataSourceParameterMapDataFilter>;
	@:optional
	var logic : String;
	@:optional
	var operator : String;
	@:optional
	var value : Dynamic;
};
typedef DataSourceParameterMapDataSort = {
	@:optional
	var field : String;
	@:optional
	var dir : String;
};
typedef DataSourceTransportParameterMapData = {
	@:optional
	var aggregate : Array<DataSourceParameterMapDataAggregate>;
	@:optional
	var group : Array<DataSourceParameterMapDataGroup>;
	@:optional
	var filter : DataSourceParameterMapDataFilter;
	@:optional
	var models : Array<Model>;
	@:optional
	var page : Float;
	@:optional
	var pageSize : Float;
	@:optional
	var skip : Float;
	@:optional
	var sort : Array<DataSourceParameterMapDataSort>;
	@:optional
	var take : Float;
};
typedef DataSourceSchema = {
	@:optional
	var model : Dynamic;
};
typedef DataSourceSchemaWithOptionsModel = {
	>DataSourceSchema,
	@:optional
	var model : DataSourceSchemaModel;
};
typedef DataSourceSchemaWithConstructorModel = {
	>DataSourceSchema,
	@:optional
	var model : Dynamic;
};
typedef DataSourceSchemaModel = {
	@:optional
	var id : String;
	@:optional
	var fields : Dynamic;
};
typedef DataSourceSchemaModelWithFieldsArray = {
	>DataSourceSchemaModel,
	@:optional
	var fields : Array<DataSourceSchemaModelField>;
};
typedef DataSourceSchemaModelWithFieldsObject = {
	>DataSourceSchemaModel,
	@:optional
	var fields : DataSourceSchemaModelFields;
};
typedef DataSourceSchemaModelFields = { };
typedef DataSourceSchemaModelField = {
	@:optional
	var field : String;
	@:optional
	var from : String;
	@:optional
	var defaultValue : Dynamic;
	@:optional
	var editable : Bool;
	@:optional
	var nullable : Bool;
	@:optional
	var parse : haxe.Constraints.Function;
	@:optional
	var type : String;
	@:optional
	var validation : DataSourceSchemaModelFieldValidation;
};
typedef DataSourceSchemaModelFieldValidation = {
	@:optional
	var required : Bool;
	@:optional
	var min : Dynamic;
	@:optional
	var max : Dynamic;
};
extern class ObservableArray extends Observable {
	function new(array:Array<Dynamic>):Void;
	function init(array:Array<Dynamic>):Void;
	function empty():Void;
	function every(callback:Dynamic -> Float -> ObservableArray -> Bool):Bool;
	function filter(callback:Dynamic -> Float -> ObservableArray -> Bool):Array<Dynamic>;
	function find(callback:Dynamic -> Float -> ObservableArray -> Bool):Dynamic;
	function forEach(callback:Dynamic -> Float -> ObservableArray -> Void):Void;
	function indexOf(item:Dynamic):Float;
	function join(separator:String):String;
	var length : Float;
	function map(callback:Dynamic -> Float -> ObservableArray -> Dynamic):Array<Dynamic>;
	function parent():ObservableObject;
	function pop():ObservableObject;
	function push(items:haxe.extern.Rest<Dynamic>):Float;
	function remove(item:Dynamic):Void;
	function shift():Dynamic;
	function slice(begin:Float, ?end:Float):Array<Dynamic>;
	function some(callback:Dynamic -> Float -> ObservableArray -> Bool):Bool;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Dynamic>):Array<Dynamic> { })
	function splice(start:Float):Array<Dynamic>;
	function toJSON():Array<Dynamic>;
	function unshift(items:haxe.extern.Rest<Dynamic>):Float;
	function wrap(object:Dynamic, parent:Dynamic):Dynamic;
	function wrapAll(source:Dynamic, target:Dynamic):Dynamic;
}
typedef ObservableArrayEvent = {
	@:optional
	var field : String;
	@:optional
	var action : String;
	@:optional
	var index : Float;
	@:optional
	var items : Array<kendo.data.Model>;
};
extern class DataSource extends Observable {
	function new(?options:DataSourceOptions):Void;
	function init(?options:DataSourceOptions):Void;
	static function create(?options:DataSourceOptions):DataSource;
	var options : DataSourceOptions;
	@:overload(function(model:kendo.data.Model):kendo.data.Model { })
	function add(model:Dynamic):kendo.data.Model;
	@:overload(function():Dynamic { })
	function aggregate(val:Dynamic):Void;
	function aggregates():Dynamic;
	function at(index:Float):kendo.data.ObservableObject;
	function cancelChanges(?model:kendo.data.Model):Void;
	@:overload(function(value:Dynamic):Void { })
	function data():kendo.data.ObservableArray;
	function fetch(?callback:haxe.Constraints.Function):JQueryPromise<Dynamic>;
	@:overload(function(filters:Array<DataSourceFilterItem>):Void { })
	@:overload(function(filters:DataSourceFilters):Void { })
	@:overload(function():DataSourceFilters { })
	function filter(filters:DataSourceFilterItem):Void;
	function get(id:Dynamic):kendo.data.Model;
	function getByUid(uid:String):kendo.data.Model;
	@:overload(function():Dynamic { })
	function group(groups:Dynamic):Void;
	function hasChanges():Bool;
	function indexOf(value:kendo.data.ObservableObject):Float;
	@:overload(function(index:Float, model:Dynamic):kendo.data.Model { })
	function insert(index:Float, model:kendo.data.Model):kendo.data.Model;
	@:overload(function():Bool { })
	function online(value:Bool):Void;
	@:overload(function():Array<Dynamic> { })
	function offlineData(data:Array<Dynamic>):Void;
	@:overload(function(page:Float):Void { })
	function page():Float;
	@:overload(function(size:Float):Void { })
	function pageSize():Float;
	function query(?options:Dynamic):JQueryPromise<Dynamic>;
	function read(?data:Dynamic):JQueryPromise<Dynamic>;
	function remove(model:kendo.data.ObservableObject):Void;
	@:overload(function(sort:Array<DataSourceSortItem>):Void { })
	@:overload(function():Array<DataSourceSortItem> { })
	function sort(sort:DataSourceSortItem):Void;
	function sync():JQueryPromise<Dynamic>;
	function total():Float;
	function totalPages():Float;
	function view():kendo.data.ObservableArray;
}
typedef DataSourceAggregateItem = {
	@:optional
	var field : String;
	@:optional
	var aggregate : String;
};
typedef DataSourceFilter = { };
typedef DataSourceFilterItem = {
	>DataSourceFilter,
	@:optional
	var operator : String;
	@:optional
	var field : String;
	@:optional
	var value : Dynamic;
};
typedef DataSourceFilters = {
	>DataSourceFilter,
	@:optional
	var logic : String;
	@:optional
	var filters : Array<DataSourceFilter>;
};
typedef DataSourceGroupItemAggregate = {
	@:optional
	var field : String;
	@:optional
	var aggregate : String;
};
typedef DataSourceGroupItem = {
	@:optional
	var field : String;
	@:optional
	var dir : String;
	@:optional
	var aggregates : Array<DataSourceGroupItemAggregate>;
};
typedef DataSourceSchema = {
	@:optional
	var aggregates : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var errors : Dynamic;
	@:optional
	var groups : Dynamic;
	@:optional
	var parse : haxe.Constraints.Function;
	@:optional
	var total : Dynamic;
	@:optional
	var type : String;
};
typedef DataSourceSortItem = {
	@:optional
	var field : String;
	@:optional
	var dir : String;
};
typedef DataSourceTransportCreate = {
	@:optional
	var cache : Bool;
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef DataSourceTransportDestroy = {
	@:optional
	var cache : Bool;
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef DataSourceTransportRead = {
	@:optional
	var cache : Bool;
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef DataSourceTransportUpdate = {
	@:optional
	var cache : Bool;
	@:optional
	var contentType : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dataType : String;
	@:optional
	var type : String;
	@:optional
	var url : Dynamic;
};
typedef DataSourceTransportWithObjectOperations = {
	>DataSourceTransport,
	@:optional
	var create : DataSourceTransportCreate;
	@:optional
	var destroy : DataSourceTransportDestroy;
	@:optional
	var read : DataSourceTransportRead;
	@:optional
	var update : DataSourceTransportUpdate;
};
typedef DataSourceTransportWithFunctionOperations = {
	>DataSourceTransport,
	@:optional
	var create : DataSourceTransportOptions -> Void;
	@:optional
	var destroy : DataSourceTransportOptions -> Void;
	@:optional
	var read : DataSourceTransportReadOptions -> Void;
	@:optional
	var update : DataSourceTransportOptions -> Void;
};
typedef DataSourceTransportOptions = {
	var success : ?Dynamic -> Void;
	var error : ?Dynamic -> Void;
	var data : Dynamic;
};
typedef DataSourceTransportReadOptionsData = {
	@:optional
	var sort : Array<DataSourceSortItem>;
	@:optional
	var filter : DataSourceFilters;
	@:optional
	var group : Array<DataSourceGroupItem>;
	@:optional
	var take : Float;
	@:optional
	var skip : Float;
};
typedef DataSourceTransportReadOptions = {
	>DataSourceTransportOptions,
	var data : DataSourceTransportReadOptionsData;
};
typedef DataSourceTransportBatchOptionsData = {
	var models : Array<Dynamic>;
};
typedef DataSourceTransportBatchOptions = {
	>DataSourceTransportOptions,
	var data : DataSourceTransportBatchOptionsData;
};
typedef DataSourceOptions = {
	@:optional
	var aggregate : Array<DataSourceAggregateItem>;
	@:optional
	var autoSync : Bool;
	@:optional
	var batch : Bool;
	@:optional
	var data : Dynamic;
	@:optional
	var filter : Dynamic;
	@:optional
	var group : Array<DataSourceGroupItem>;
	@:optional
	var offlineStorage : Dynamic;
	@:optional
	var page : Float;
	@:optional
	var pageSize : Float;
	@:optional
	var schema : DataSourceSchema;
	@:optional
	var serverAggregates : Bool;
	@:optional
	var serverFiltering : Bool;
	@:optional
	var serverGrouping : Bool;
	@:optional
	var serverPaging : Bool;
	@:optional
	var serverSorting : Bool;
	@:optional
	var sort : Dynamic;
	@:optional
	var transport : DataSourceTransport;
	@:optional
	var type : String;
	@:optional
	function change(e:DataSourceChangeEvent):Void;
	@:optional
	function error(e:DataSourceErrorEvent):Void;
	@:optional
	function sync(e:DataSourceEvent):Void;
	@:optional
	function requestStart(e:DataSourceRequestStartEvent):Void;
	@:optional
	function requestEnd(e:DataSourceRequestEndEvent):Void;
};
typedef DataSourceEvent = {
	@:optional
	var sender : DataSource;
};
typedef DataSourceItemOrGroup = { };
typedef DataSourceGroup = {
	>DataSourceItemOrGroup,
	var aggregates : Array<Dynamic>;
	var field : String;
	var hasSubgroups : Bool;
	var items : Array<DataSourceItemOrGroup>;
	var value : Dynamic;
};
typedef DataSourceChangeEvent = {
	>DataSourceEvent,
	@:optional
	var field : String;
	@:optional
	var value : Model;
	@:optional
	var action : String;
	@:optional
	var index : Float;
	@:optional
	var items : Array<DataSourceItemOrGroup>;
	@:optional
	var node : Dynamic;
};
typedef DataSourceErrorEvent = {
	>DataSourceEvent,
	var xhr : JQueryXHR;
	var status : String;
	var errorThrown : Dynamic;
	@:optional
	var errors : Dynamic;
};
typedef DataSourceRequestStartEvent = {
	>DataSourceEvent,
	@:optional
	var type : String;
};
typedef DataSourceRequestEndEvent = {
	>DataSourceEvent,
	@:optional
	var response : Dynamic;
	@:optional
	var type : String;
};
