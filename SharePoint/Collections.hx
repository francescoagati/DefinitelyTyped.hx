extern class EntityFieldCollection extends SP.ClientObjectCollection<SP.BusinessData.EntityField> {
	function itemAt(index:Float):SP.BusinessData.EntityField;
	function get_item(index:Float):SP.BusinessData.EntityField;
}
extern class EntityIdentifierCollection extends SP.ClientObjectCollection<SP.BusinessData.EntityIdentifier> {
	function itemAt(index:Float):SP.BusinessData.EntityIdentifier;
	function get_item(index:Float):SP.BusinessData.EntityIdentifier;
}
extern class EntityInstanceCollection extends SP.ClientObjectCollection<SP.BusinessData.Runtime.EntityInstance> {
	function itemAt(index:Float):SP.BusinessData.Runtime.EntityInstance;
	function get_item(index:Float):SP.BusinessData.Runtime.EntityInstance;
}
extern class FilterCollection extends SP.ClientObjectCollection<SP.BusinessData.Filter> {
	function itemAt(index:Float):SP.BusinessData.Filter;
	function get_item(index:Float):SP.BusinessData.Filter;
	function setFilterValue(inputFilterName:String, valueIndex:Float, value:Dynamic):Void;
}
extern class LobSystemInstanceCollection extends SP.ClientObjectCollection<SP.BusinessData.LobSystemInstance> {
	function itemAt(index:Float):SP.BusinessData.LobSystemInstance;
	function get_item(index:Float):SP.BusinessData.LobSystemInstance;
}
extern class TypeDescriptorCollection extends SP.ClientObjectCollection<SP.BusinessData.TypeDescriptor> {
	function itemAt(index:Float):SP.BusinessData.TypeDescriptor;
	function get_item(index:Float):SP.BusinessData.TypeDescriptor;
}
