extern class WorkflowAssociation extends SP.ClientObject {
	function get_allowManual():Bool;
	function set_allowManual(value:Bool):Void;
	function get_associationData():String;
	function set_associationData(value:String):Void;
	function get_autoStartChange():Bool;
	function set_autoStartChange(value:Bool):Void;
	function get_autoStartCreate():Bool;
	function set_autoStartCreate(value:Bool):Void;
	function get_baseId():SP.Guid;
	function get_created():Date;
	function get_description():String;
	function set_description(value:String):Void;
	function get_enabled():Bool;
	function set_enabled(value:Bool):Void;
	function get_historyListTitle():String;
	function set_historyListTitle(value:String):Void;
	function get_id():SP.Guid;
	function get_instantiationUrl():String;
	function get_internalName():String;
	function get_isDeclarative():Bool;
	function get_listId():SP.Guid;
	function get_modified():Date;
	function get_name():String;
	function set_name(value:String):Void;
	function get_taskListTitle():String;
	function set_taskListTitle(value:String):Void;
	function get_webId():SP.Guid;
	function update():Void;
	function deleteObject():Void;
}
extern class WorkflowAssociationCollection extends SP.ClientObjectCollection<WorkflowAssociation> {
	function itemAt(index:Float):SP.Workflow.WorkflowAssociation;
	function get_item(index:Float):SP.Workflow.WorkflowAssociation;
	function getById(associationId:SP.Guid):SP.Workflow.WorkflowAssociation;
	function add(parameters:SP.Workflow.WorkflowAssociationCreationInformation):SP.Workflow.WorkflowAssociation;
	function getByName(name:String):SP.Workflow.WorkflowAssociation;
}
extern class WorkflowAssociationCreationInformation extends SP.ClientValueObject {
	function get_contentTypeAssociationHistoryListName():String;
	function set_contentTypeAssociationHistoryListName(value:String):Void;
	function get_contentTypeAssociationTaskListName():String;
	function set_contentTypeAssociationTaskListName(value:String):Void;
	function get_historyList():SP.List;
	function set_historyList(value:SP.List):Void;
	function get_name():String;
	function set_name(value:String):Void;
	function get_taskList():SP.List;
	function set_taskList(value:SP.List):Void;
	function get_template():SP.Workflow.WorkflowTemplate;
	function set_template(value:SP.Workflow.WorkflowTemplate):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class WorkflowTemplate extends SP.ClientObject {
	function get_allowManual():Bool;
	function get_associationUrl():String;
	function get_autoStartChange():Bool;
	function get_autoStartCreate():Bool;
	function get_description():String;
	function get_id():SP.Guid;
	function get_isDeclarative():Bool;
	function get_name():String;
	function get_permissionsManual():SP.BasePermissions;
}
extern class WorkflowTemplateCollection extends SP.ClientObjectCollection<WorkflowTemplate> {
	function itemAt(index:Float):SP.Workflow.WorkflowTemplate;
	function get_item(index:Float):SP.Workflow.WorkflowTemplate;
	function getById(templateId:SP.Guid):SP.Workflow.WorkflowTemplate;
	function getByName(name:String):SP.Workflow.WorkflowTemplate;
}
