@:enum abstract ContactFieldType(Int) {
	var email = 0;
	var phoneNumber = 1;
	var location = 2;
	var instantMessage = 3;
	var custom = 4;
}
@:enum abstract ContactFieldCategory(Int) {
	var none = 0;
	var home = 1;
	var work = 2;
	var mobile = 3;
	var other = 4;
}
@:enum abstract ContactSelectionMode(Int) {
	var contacts = 0;
	var fields = 1;
}
typedef IContactField = {
	var category : Windows.ApplicationModel.Contacts.ContactFieldCategory;
	var name : String;
	var type : Windows.ApplicationModel.Contacts.ContactFieldType;
	var value : String;
};
extern class ContactField {
	@:overload(function(value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Void { })
	@:overload(function(name:String, value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Void { })
	function new(value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType):Void;
	var category : Windows.ApplicationModel.Contacts.ContactFieldCategory;
	var name : String;
	var type : Windows.ApplicationModel.Contacts.ContactFieldType;
	var value : String;
}
typedef IContactLocationField = {
	>Windows.ApplicationModel.Contacts.IContactField,
	var city : String;
	var country : String;
	var postalCode : String;
	var region : String;
	var street : String;
	var unstructuredAddress : String;
};
extern class ContactLocationField {
	@:overload(function(unstructuredAddress:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Void { })
	@:overload(function(unstructuredAddress:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory, street:String, city:String, region:String, country:String, postalCode:String):Void { })
	function new(unstructuredAddress:String):Void;
	var city : String;
	var country : String;
	var postalCode : String;
	var region : String;
	var street : String;
	var unstructuredAddress : String;
	var category : Windows.ApplicationModel.Contacts.ContactFieldCategory;
	var name : String;
	var type : Windows.ApplicationModel.Contacts.ContactFieldType;
	var value : String;
}
typedef IContactInstantMessageField = {
	>Windows.ApplicationModel.Contacts.IContactField,
	var displayText : String;
	var launchUri : Windows.Foundation.Uri;
	var service : String;
	var userName : String;
};
extern class ContactInstantMessageField {
	@:overload(function(userName:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Void { })
	@:overload(function(userName:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory, service:String, displayText:String, verb:Windows.Foundation.Uri):Void { })
	function new(userName:String):Void;
	var displayText : String;
	var launchUri : Windows.Foundation.Uri;
	var service : String;
	var userName : String;
	var category : Windows.ApplicationModel.Contacts.ContactFieldCategory;
	var name : String;
	var type : Windows.ApplicationModel.Contacts.ContactFieldType;
	var value : String;
}
typedef IKnownContactFieldStatics = {
	var email : String;
	var instantMessage : String;
	var location : String;
	var phoneNumber : String;
	function convertNameToType(name:String):Windows.ApplicationModel.Contacts.ContactFieldType;
	function convertTypeToName(type:Windows.ApplicationModel.Contacts.ContactFieldType):String;
};
extern class KnownContactField {
	static var email : String;
	static var instantMessage : String;
	static var location : String;
	static var phoneNumber : String;
	static function convertNameToType(name:String):Windows.ApplicationModel.Contacts.ContactFieldType;
	static function convertTypeToName(type:Windows.ApplicationModel.Contacts.ContactFieldType):String;
}
typedef IContactInformation = {
	var customFields : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactField>;
	var emails : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactField>;
	var instantMessages : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactInstantMessageField>;
	var locations : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactLocationField>;
	var name : String;
	var phoneNumbers : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactField>;
	function getThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStreamWithContentType>;
	function queryCustomFields(customName:String):Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactField>;
};
extern class ContactInformation {
	var customFields : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactField>;
	var emails : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactField>;
	var instantMessages : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactInstantMessageField>;
	var locations : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactLocationField>;
	var name : String;
	var phoneNumbers : Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactField>;
	function getThumbnailAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStreamWithContentType>;
	function queryCustomFields(customName:String):Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactField>;
}
typedef IContactPicker = {
	var commitButtonText : String;
	var desiredFields : Windows.Foundation.Collections.IVector<String>;
	var selectionMode : Windows.ApplicationModel.Contacts.ContactSelectionMode;
	function pickSingleContactAsync():Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Contacts.ContactInformation>;
	function pickMultipleContactsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactInformation>>;
};
extern class ContactPicker {
	var commitButtonText : String;
	var desiredFields : Windows.Foundation.Collections.IVector<String>;
	var selectionMode : Windows.ApplicationModel.Contacts.ContactSelectionMode;
	function pickSingleContactAsync():Windows.Foundation.IAsyncOperation<Windows.ApplicationModel.Contacts.ContactInformation>;
	function pickMultipleContactsAsync():Windows.Foundation.IAsyncOperation<Windows.Foundation.Collections.IVectorView<Windows.ApplicationModel.Contacts.ContactInformation>>;
}
typedef IContact = {
	var fields : Windows.Foundation.Collections.IVector<Windows.ApplicationModel.Contacts.IContactField>;
	var name : String;
	var thumbnail : Windows.Storage.Streams.IRandomAccessStreamReference;
};
extern class Contact {
	var fields : Windows.Foundation.Collections.IVector<Windows.ApplicationModel.Contacts.IContactField>;
	var name : String;
	var thumbnail : Windows.Storage.Streams.IRandomAccessStreamReference;
}
typedef IContactFieldFactory = {
	@:overload(function(value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Windows.ApplicationModel.Contacts.ContactField { })
	@:overload(function(name:String, value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Windows.ApplicationModel.Contacts.ContactField { })
	function createField(value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType):Windows.ApplicationModel.Contacts.ContactField;
};
typedef IContactLocationFieldFactory = {
	@:overload(function(unstructuredAddress:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Windows.ApplicationModel.Contacts.ContactLocationField { })
	@:overload(function(unstructuredAddress:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory, street:String, city:String, region:String, country:String, postalCode:String):Windows.ApplicationModel.Contacts.ContactLocationField { })
	function createLocation(unstructuredAddress:String):Windows.ApplicationModel.Contacts.ContactLocationField;
};
typedef IContactInstantMessageFieldFactory = {
	@:overload(function(userName:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Windows.ApplicationModel.Contacts.ContactInstantMessageField { })
	@:overload(function(userName:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory, service:String, displayText:String, verb:Windows.Foundation.Uri):Windows.ApplicationModel.Contacts.ContactInstantMessageField { })
	function createInstantMessage(userName:String):Windows.ApplicationModel.Contacts.ContactInstantMessageField;
};
extern class ContactFieldFactory {
	@:overload(function(value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Windows.ApplicationModel.Contacts.ContactField { })
	@:overload(function(name:String, value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Windows.ApplicationModel.Contacts.ContactField { })
	function createField(value:String, type:Windows.ApplicationModel.Contacts.ContactFieldType):Windows.ApplicationModel.Contacts.ContactField;
	@:overload(function(unstructuredAddress:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Windows.ApplicationModel.Contacts.ContactLocationField { })
	@:overload(function(unstructuredAddress:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory, street:String, city:String, region:String, country:String, postalCode:String):Windows.ApplicationModel.Contacts.ContactLocationField { })
	function createLocation(unstructuredAddress:String):Windows.ApplicationModel.Contacts.ContactLocationField;
	@:overload(function(userName:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory):Windows.ApplicationModel.Contacts.ContactInstantMessageField { })
	@:overload(function(userName:String, category:Windows.ApplicationModel.Contacts.ContactFieldCategory, service:String, displayText:String, verb:Windows.Foundation.Uri):Windows.ApplicationModel.Contacts.ContactInstantMessageField { })
	function createInstantMessage(userName:String):Windows.ApplicationModel.Contacts.ContactInstantMessageField;
}
