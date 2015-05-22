extern class AppBdcCatalog extends SP.ClientObject {
	function getEntity(namespace:String, name:String):SP.BusinessData.Entity;
	function getLobSystemProperty(lobSystemName:String, propertyName:String):SP.StringResult;
	function setLobSystemProperty(lobSystemName:String, propertyName:String, propertyValue:String):Void;
	function getLobSystemInstanceProperty(lobSystemName:String, lobSystemInstanceName:String, propertyName:String):SP.StringResult;
	function setLobSystemInstanceProperty(lobSystemName:String, lobSystemInstanceName:String, propertyName:String, propertyValue:String):Void;
	function getConnectionId(lobSystemName:String, lobSystemInstanceName:String):SP.StringResult;
	function setConnectionId(lobSystemName:String, lobSystemInstanceName:String, connectionId:String):Void;
	function getPermissibleConnections():Array<String>;
}
extern class Entity extends SP.ClientObject {
	function get_estimatedInstanceCount():Float;
	function get_name():String;
	function get_namespace():String;
	function getIdentifiers():SP.BusinessData.Collections.EntityIdentifierCollection;
	function getIdentifierCount():SP.IntResult;
	function getLobSystem():SP.BusinessData.LobSystem;
	function getCreatorView(methodInstanceName:String):SP.BusinessData.EntityView;
	function getUpdaterView(updaterName:String):SP.BusinessData.EntityView;
	function getFinderView(methodInstanceName:String):SP.BusinessData.EntityView;
	function getSpecificFinderView(specificFinderName:String):SP.BusinessData.EntityView;
	function getDefaultSpecificFinderView():SP.BusinessData.EntityView;
	function findSpecificDefault(identity:SP.BusinessData.Runtime.EntityIdentity, lobSystemInstance:SP.BusinessData.LobSystemInstance):SP.BusinessData.Runtime.EntityInstance;
	function findSpecific(identity:SP.BusinessData.Runtime.EntityIdentity, specificFinderName:String, lobSystemInstance:SP.BusinessData.LobSystemInstance):SP.BusinessData.Runtime.EntityInstance;
	function findSpecificDefaultByBdcId(bdcIdentity:String, lobSystemInstance:SP.BusinessData.LobSystemInstance):SP.BusinessData.Runtime.EntityInstance;
	function findSpecificByBdcId(bdcIdentity:String, specificFinderName:String, lobSystemInstance:SP.BusinessData.LobSystemInstance):SP.BusinessData.Runtime.EntityInstance;
	function findFiltered(filterList:SP.BusinessData.Collections.FilterCollection, nameOfFinder:String, lobSystemInstance:SP.BusinessData.LobSystemInstance):SP.BusinessData.Collections.EntityInstanceCollection;
	function findAssociated(entityInstance:SP.BusinessData.Runtime.EntityInstance, associationName:String, filterList:SP.BusinessData.Collections.FilterCollection, lobSystemInstance:SP.BusinessData.LobSystemInstance):SP.BusinessData.Collections.EntityInstanceCollection;
	function getFilters(methodInstanceName:String):SP.BusinessData.Collections.FilterCollection;
	function execute(methodInstanceName:String, lobSystemInstance:SP.BusinessData.LobSystemInstance, inputParams:Array<Dynamic>):SP.BusinessData.MethodExecutionResult;
	function getAssociationView(associationName:String):SP.BusinessData.EntityView;
	function create(fieldValues:SP.BusinessData.Runtime.EntityFieldValueDictionary, lobSystemInstance:SP.BusinessData.LobSystemInstance):SP.BusinessData.Runtime.EntityIdentity;
	function subscribe(eventType:SP.BusinessData.Runtime.EntityEventType, notificationCallback:SP.BusinessData.Runtime.NotificationCallback, onBehalfOfUser:String, subscriberName:String, lobSystemInstance:SP.BusinessData.LobSystemInstance):SP.BusinessData.Runtime.Subscription;
	function unsubscribe(subscription:SP.BusinessData.Runtime.Subscription, onBehalfOfUser:String, unsubscriberName:String, lobSystemInstance:SP.BusinessData.LobSystemInstance):Void;
}
extern class EntityField extends SP.ClientObject {
	function get_containsLocalizedDisplayName():Bool;
	function get_defaultDisplayName():String;
	function get_localizedDisplayName():String;
	function get_name():String;
}
extern class EntityIdentifier extends SP.ClientObject {
	function get_identifierType():String;
	function get_name():String;
	function getDefaultDisplayName():SP.StringResult;
	function containsLocalizedDisplayName():SP.BooleanResult;
	function getLocalizedDisplayName():SP.StringResult;
}
extern class EntityView extends SP.ClientObject {
	function get_fields():SP.BusinessData.Collections.EntityFieldCollection;
	function get_name():String;
	function get_relatedSpecificFinderName():String;
	function getDefaultValues():SP.BusinessData.Runtime.EntityFieldValueDictionary;
	function getXmlSchema():SP.StringResult;
	function getTypeDescriptor(fieldDotNotation:String):SP.BusinessData.TypeDescriptor;
	function getType(fieldDotNotation:String):SP.StringResult;
}
extern class Filter extends SP.ClientObject {
	function get_defaultDisplayName():String;
	function get_filterField():String;
	function get_filterType():String;
	function get_localizedDisplayName():String;
	function get_name():String;
	function get_valueCount():Float;
}
extern class LobSystem extends SP.ClientObject {
	function get_name():String;
	function getLobSystemInstances():SP.BusinessData.Collections.LobSystemInstanceCollection;
}
extern class LobSystemInstance extends SP.ClientObject {
	function get_name():String;
}
extern class MethodExecutionResult extends SP.ClientObject {
	function get_returnParameterCollection():SP.BusinessData.ReturnParameterCollection;
}
extern class ReturnParameterCollection extends SP.ClientObjectCollection<SP.BusinessData.Runtime.EntityFieldValueDictionary> {
	function itemAt(index:Float):SP.BusinessData.Runtime.EntityFieldValueDictionary;
	function get_item(index:Float):SP.BusinessData.Runtime.EntityFieldValueDictionary;
}
extern class TypeDescriptor extends SP.ClientObject {
	function get_containsReadOnly():Bool;
	function get_isCollection():Bool;
	function get_isReadOnly():Bool;
	function get_name():String;
	function get_typeName():String;
	function containsLocalizedDisplayName():SP.BooleanResult;
	function getLocalizedDisplayName():SP.StringResult;
	function getDefaultDisplayName():SP.StringResult;
	function isRoot():SP.BooleanResult;
	function isLeaf():SP.BooleanResult;
	function getChildTypeDescriptors():SP.BusinessData.Collections.TypeDescriptorCollection;
	function getParentTypeDescriptor():SP.BusinessData.TypeDescriptor;
}
