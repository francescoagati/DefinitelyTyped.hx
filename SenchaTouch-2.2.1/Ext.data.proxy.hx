typedef IAjax = {
	>Ext.data.proxy.IServer,
	@:optional
	var headers : Dynamic;
	@:optional
	var password : String;
	@:optional
	var useDefaultXhrHeader : Bool;
	@:optional
	var username : String;
	@:optional
	var withCredentials : Bool;
	@:optional
	var actionMethods : Dynamic;
	@:optional
	function doRequest(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function getHeaders():Dynamic;
	@:optional
	function getMethod(?request:Ext.data.IRequest):String;
	@:optional
	function getPassword():String;
	@:optional
	function getUseDefaultXhrHeader():Bool;
	@:optional
	function getUsername():String;
	@:optional
	function getWithCredentials():Bool;
	@:optional
	function setHeaders(?headers:Dynamic):Void;
	@:optional
	function setPassword(?password:String):Void;
	@:optional
	function setUseDefaultXhrHeader(?useDefaultXhrHeader:Bool):Void;
	@:optional
	function setUsername(?username:String):Void;
	@:optional
	function setWithCredentials(?withCredentials:Bool):Void;
};
typedef IClient = {
	>Ext.data.proxy.IProxy,
	@:optional
	function clear():Void;
};
typedef IDirect = {
	>Ext.data.proxy.IServer,
	@:optional
	var api : Dynamic;
	@:optional
	var directFn : Dynamic;
	@:optional
	var extraParams : Dynamic;
	@:optional
	var paramOrder : Dynamic;
	@:optional
	var paramsAsHash : Bool;
	@:optional
	function buildUrl():String;
	@:optional
	function doRequest(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getApi():Dynamic;
	@:optional
	function getDirectFn():Dynamic;
	@:optional
	function getExtraParams():Dynamic;
	@:optional
	function getParamOrder():Dynamic;
	@:optional
	function getParamsAsHash():Bool;
	@:optional
	function setApi(?api:Dynamic):Void;
	@:optional
	function setDirectFn(?directFn:Dynamic):Void;
	@:optional
	function setExtraParams(?extraParams:Dynamic):Void;
	@:optional
	function setParamOrder(?paramOrder:Dynamic):Void;
	@:optional
	function setParamsAsHash(?paramsAsHash:Bool):Void;
};
typedef IJsonP = {
	>Ext.data.proxy.IServer,
	@:optional
	var autoAppendParams : Bool;
	@:optional
	var callbackKey : String;
	@:optional
	var recordParam : String;
	@:optional
	function abort():Void;
	@:optional
	function buildUrl(?request:Ext.data.IRequest):String;
	@:optional
	function destroy():Void;
	@:optional
	function doRequest(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function getAutoAppendParams():Bool;
	@:optional
	function getCallbackKey():String;
	@:optional
	function getDefaultWriterType():String;
	@:optional
	function getRecordParam():String;
	@:optional
	function setAutoAppendParams(?autoAppendParams:Bool):Void;
	@:optional
	function setCallbackKey(?callbackKey:String):Void;
	@:optional
	function setDefaultWriterType(?defaultWriterType:String):Void;
	@:optional
	function setRecordParam(?recordParam:String):Void;
};
typedef ILocalStorage = {
	>Ext.data.proxy.IWebStorage,
};
typedef IMemory = {
	>Ext.data.proxy.IClient,
	@:optional
	var data : Dynamic;
	@:optional
	function clear():Void;
	@:optional
	function create(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getData():Dynamic;
	@:optional
	function read(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setData(?data:Dynamic):Void;
	@:optional
	function update(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IProxy = {
	>Ext.IEvented,
	@:optional
	var batchActions : Bool;
	@:optional
	var batchOrder : String;
	@:optional
	var model : Dynamic;
	@:optional
	var reader : Dynamic;
	@:optional
	var writer : Dynamic;
	@:optional
	function batch(?options:Dynamic):Ext.data.IBatch;
	@:optional
	function create(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getBatchActions():Bool;
	@:optional
	function getBatchOrder():String;
	@:optional
	function getModel():Dynamic;
	@:optional
	function getReader():Dynamic;
	@:optional
	function getWriter():Dynamic;
	@:optional
	function read(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setBatchActions(?batchActions:Bool):Void;
	@:optional
	function setBatchOrder(?batchOrder:String):Void;
	@:optional
	function setModel(?model:Dynamic):Void;
	@:optional
	function setReader(?reader:Dynamic):Void;
	@:optional
	function setWriter(?writer:Dynamic):Void;
	@:optional
	function update(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IRest = {
	>Ext.data.proxy.IAjax,
	@:optional
	var appendId : Bool;
	@:optional
	var batchActions : Bool;
	@:optional
	var format : String;
	@:optional
	function getActionMethods():Dynamic;
	@:optional
	function getAppendId():Bool;
	@:optional
	function getBatchActions():Bool;
	@:optional
	function getFormat():String;
	@:optional
	function setActionMethods(?actionMethods:Dynamic):Void;
	@:optional
	function setAppendId(?appendId:Bool):Void;
	@:optional
	function setBatchActions(?batchActions:Bool):Void;
	@:optional
	function setFormat(?format:String):Void;
};
typedef IServer = {
	>Ext.data.proxy.IProxy,
	@:optional
	var api : Dynamic;
	@:optional
	var cacheString : String;
	@:optional
	var directionParam : String;
	@:optional
	var enablePagingParams : Bool;
	@:optional
	var extraParams : Dynamic;
	@:optional
	var filterParam : String;
	@:optional
	var groupParam : String;
	@:optional
	var limitParam : String;
	@:optional
	var noCache : Bool;
	@:optional
	var pageParam : String;
	@:optional
	var simpleSortMode : Bool;
	@:optional
	var sortParam : String;
	@:optional
	var startParam : String;
	@:optional
	var timeout : Float;
	@:optional
	var url : String;
	@:optional
	function afterRequest(?request:Ext.data.IRequest, ?success:Bool):Void;
	@:optional
	function buildRequest(?operation:Ext.data.IOperation):Ext.data.IRequest;
	@:optional
	function buildUrl(?request:Ext.data.IRequest):String;
	@:optional
	function create():Void;
	@:optional
	function destroy():Void;
	@:optional
	function doRequest(?operation:Ext.data.IOperation, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function encodeFilters(?filters:Array<Ext.util.IFilter>):String;
	@:optional
	function encodeSorters(?sorters:Array<Ext.util.ISorter>):String;
	@:optional
	function getApi():Dynamic;
	@:optional
	function getCacheString():String;
	@:optional
	function getDirectionParam():String;
	@:optional
	function getEnablePagingParams():Bool;
	@:optional
	function getExtraParams():Dynamic;
	@:optional
	function getFilterParam():String;
	@:optional
	function getGroupParam():String;
	@:optional
	function getLimitParam():String;
	@:optional
	function getNoCache():Bool;
	@:optional
	function getPageParam():String;
	@:optional
	function getSimpleSortMode():Bool;
	@:optional
	function getSortParam():String;
	@:optional
	function getStartParam():String;
	@:optional
	function getTimeout():Float;
	@:optional
	function processResponse(?success:Bool, ?operation:Ext.data.IOperation, ?request:Ext.data.IRequest, ?response:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function read():Void;
	@:optional
	function setApi(?api:Dynamic):Void;
	@:optional
	function setCacheString(?cacheString:String):Void;
	@:optional
	function setDirectionParam(?directionParam:String):Void;
	@:optional
	function setEnablePagingParams(?enablePagingParams:Bool):Void;
	@:optional
	function setExtraParam(?name:String, ?value:Dynamic):Void;
	@:optional
	function setExtraParams(?extraParams:Dynamic):Void;
	@:optional
	function setFilterParam(?filterParam:String):Void;
	@:optional
	function setGroupParam(?groupParam:String):Void;
	@:optional
	function setLimitParam(?limitParam:String):Void;
	@:optional
	function setNoCache(?noCache:Bool):Void;
	@:optional
	function setPageParam(?pageParam:String):Void;
	@:optional
	function setSimpleSortMode(?simpleSortMode:Bool):Void;
	@:optional
	function setSortParam(?sortParam:String):Void;
	@:optional
	function setStartParam(?startParam:String):Void;
	@:optional
	function setTimeout(?timeout:Float):Void;
	@:optional
	function setUrl(?url:String):Void;
	@:optional
	function update():Void;
};
typedef ISessionStorage = {
	>Ext.data.proxy.IWebStorage,
};
typedef ISql = {
	>Ext.data.proxy.IClient,
	@:optional
	var database : String;
	@:optional
	var table : String;
	@:optional
	function create(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getColumns():String;
	@:optional
	function getDatabase():String;
	@:optional
	function getDefaultDateFormat():String;
	@:optional
	function getRecordData(?record:Dynamic):Dynamic;
	@:optional
	function getTable():String;
	@:optional
	function getTableExists():Bool;
	@:optional
	function getUniqueIdStrategy():Bool;
	@:optional
	function read(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setColumns(?columns:String):Void;
	@:optional
	function setDatabase(?database:String):Void;
	@:optional
	function setDefaultDateFormat(?defaultDateFormat:String):Void;
	@:optional
	function setTable(?table:String):Void;
	@:optional
	function setTableExists(?tableExists:Bool):Void;
	@:optional
	function setUniqueIdStrategy(?uniqueIdStrategy:Bool):Void;
	@:optional
	function update(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IWebStorage = {
	>Ext.data.proxy.IClient,
	@:optional
	var enablePagingParams : Bool;
	@:optional
	var id : String;
	@:optional
	var cache : Dynamic;
	@:optional
	function clear():Void;
	@:optional
	function create(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function destroy(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getDefaultDateFormat():String;
	@:optional
	function getEnablePagingParams():Bool;
	@:optional
	function getId():String;
	@:optional
	function read(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setDefaultDateFormat(?defaultDateFormat:String):Void;
	@:optional
	function setEnablePagingParams(?enablePagingParams:Bool):Void;
	@:optional
	function setId(?id:String):Void;
	@:optional
	function setRecord(?record:Ext.data.IModel, ?id:String):Void;
	@:optional
	function update(?operation:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
};
