typedef IView = {
	>IJoinable,
	>IFinalizable,
	function Query():IQuery;
	function RowLimit(limit:Float, ?paged:Bool):IView;
	function Scope(scope:ViewScope):IView;
};
typedef IJoinable = {
	function InnerJoin(lookupFieldInternalName:String, alias:String):IJoin;
	function LeftJoin(lookupFieldInternalName:String, alias:String):IJoin;
};
typedef IJoin = {
	>IJoinable,
	function Select(remoteFieldInternalName:String, remoteFieldAlias:String):IProjectableView;
};
typedef IProjectableView = {
	>IView,
	function Select(remoteFieldInternalName:String, remoteFieldAlias:String):IProjectableView;
};
@:enum abstract ViewScope(Int) {
	var Recursive = 0;
	var RecursiveAll = 1;
	var FilesOnly = 2;
}
typedef IQuery = {
	function Where():IFieldExpression;
};
typedef IFinalizableToString = {
	function ToString():String;
};
typedef IFinalizable = {
	>IFinalizableToString,
	function ToCamlQuery():Dynamic;
};
typedef ISortable = {
	>IFinalizable,
	function OrderBy(fieldInternalName:String, ?override:Bool, ?useIndexForOrderBy:Bool):ISortedQuery;
	function OrderByDesc(fieldInternalName:String, ?override:Bool, ?useIndexForOrderBy:Bool):ISortedQuery;
};
typedef IGroupable = {
	>ISortable,
	function GroupBy(fieldInternalName:Dynamic):IGroupedQuery;
};
typedef IExpression = {
	>IGroupable,
	function And():IFieldExpression;
	function Or():IFieldExpression;
};
typedef IGroupedQuery = {
	>ISortable,
};
typedef ISortedQuery = {
	>IFinalizable,
	function ThenBy(fieldInternalName:String):Dynamic;
	function ThenByDesc(fieldInternalName:String):Dynamic;
};
typedef IFieldExpression = {
	@:overload(function(conditions:Array<IExpression>):IExpression { })
	function All(conditions:haxe.extern.Rest<IExpression>):IExpression;
	@:overload(function(conditions:Array<IExpression>):IExpression { })
	function Any(conditions:haxe.extern.Rest<IExpression>):IExpression;
	function TextField(internalName:String):ITextFieldExpression;
	function BooleanField(internalName:String):IBooleanFieldExpression;
	function UrlField(internalName:String):ITextFieldExpression;
	function NumberField(internalName:String):INumberFieldExpression;
	function CounterField(internalName:String):INumberFieldExpression;
	function IntegerField(internalName:String):INumberFieldExpression;
	function UserField(internalName:String):IUserFieldExpression;
	function LookupField(internalName:String):ILookupFieldExpression;
	function LookupMultiField(internalName:String):ILookupMultiFieldExpression;
	function UserMultiField(internalName:String):IUserMultiFieldExpression;
	function DateField(internalName:String):IDateTimeFieldExpression;
	function DateTimeField(internalName:String):IDateTimeFieldExpression;
	function DateRangesOverlap(overlapType:DateRangesOverlapType, calendarDate:String, ?eventDateField:String, ?endDateField:String, ?recurrenceIDField:String):IExpression;
};
typedef IBooleanFieldExpression = {
	function IsTrue():IExpression;
	function IsFalse():IExpression;
	function EqualTo(value:Bool):IExpression;
	function NotEqualTo(value:Bool):IExpression;
	function IsNull():IExpression;
	function IsNotNull():IExpression;
};
typedef INumberFieldExpression = {
	function EqualTo(value:Float):IExpression;
	function NotEqualTo(value:Float):IExpression;
	function GreaterThan(value:Float):IExpression;
	function LessThan(value:Float):IExpression;
	function GreaterThanOrEqualTo(value:Float):IExpression;
	function LessThanOrEqualTo(value:Float):IExpression;
	function IsNull():IExpression;
	function IsNotNull():IExpression;
	function In(arrayOfValues:Array<Float>):IExpression;
};
typedef IDateTimeFieldExpression = {
	function IsNull():IExpression;
	function IsNotNull():IExpression;
	@:overload(function(value:String):IExpression { })
	function EqualTo(value:Date):IExpression;
	@:overload(function(value:String):IExpression { })
	function NotEqualTo(value:Date):IExpression;
	@:overload(function(value:String):IExpression { })
	function GreaterThan(value:Date):IExpression;
	@:overload(function(value:String):IExpression { })
	function LessThan(value:Date):IExpression;
	@:overload(function(value:String):IExpression { })
	function GreaterThanOrEqualTo(value:Date):IExpression;
	@:overload(function(value:String):IExpression { })
	function LessThanOrEqualTo(value:Date):IExpression;
	@:overload(function(arrayOfValues:Array<String>):IExpression { })
	function In(arrayOfValues:Array<Date>):IExpression;
};
typedef ITextFieldExpression = {
	function EqualTo(value:String):IExpression;
	function NotEqualTo(value:String):IExpression;
	function Contains(value:String):IExpression;
	function BeginsWith(value:String):IExpression;
	function IsNull():IExpression;
	function IsNotNull():IExpression;
	function In(arrayOfValues:Array<String>):IExpression;
};
typedef IUserFieldExpression = {
	var Membership : IMembership;
	function EqualToCurrentUser():IExpression;
	function IsInCurrentUserGroups():IExpression;
	function IsInSPGroup(groupId:Float):IExpression;
	function IsInSPWebGroups():IExpression;
	function IsInSPWebAllUsers():IExpression;
	function IsInSPWebUsers():IExpression;
	function Id():INumberFieldExpression;
	function ValueAsText():ITextFieldExpression;
};
typedef IMembership = {
	function CurrentUserGroups():IExpression;
	function SPGroup(groupId:Float):IExpression;
	var SPWeb : IMembershipSPWeb;
};
typedef IMembershipSPWeb = {
	function AllUsers():IExpression;
	function Users():IExpression;
	function Groups():IExpression;
};
typedef ILookupFieldExpression = {
	function Id():INumberFieldExpression;
	function ValueAsText():ITextFieldExpression;
	function ValueAsNumber():INumberFieldExpression;
	function ValueAsDate():IDateTimeFieldExpression;
	function ValueAsDateTime():IDateTimeFieldExpression;
	function ValueAsBoolean():IBooleanFieldExpression;
};
typedef ILookupMultiFieldExpression = {
	function IncludesSuchItemThat():ILookupFieldExpression;
	function IsNull():IExpression;
	function IsNotNull():IExpression;
	function Includes(value:Dynamic):IExpression;
	function NotIncludes(value:Dynamic):IExpression;
	function EqualTo(value:Dynamic):IExpression;
	function NotEqualTo(value:Dynamic):IExpression;
};
typedef IUserMultiFieldExpression = {
	function IncludesSuchItemThat():IUserFieldExpression;
	function IsNull():IExpression;
	function IsNotNull():IExpression;
	function Includes(value:Dynamic):IExpression;
	function NotIncludes(value:Dynamic):IExpression;
	function EqualTo(value:Dynamic):IExpression;
	function NotEqualTo(value:Dynamic):IExpression;
};
@:enum abstract DateRangesOverlapType(Int) {
	var Now = 0;
	var Day = 1;
	var Week = 2;
	var Month = 3;
	var Year = 4;
}
extern class Internal {
	static function createView(?viewFields:Array<String>):IView;
	static function createViewFields(viewFields:Array<String>):IFinalizableToString;
	static function createWhere():IFieldExpression;
	static function createExpression():IFieldExpression;
}
extern class CamlValues {
	static var UserID : String;
	static var Today : String;
	static function TodayWithOffset(offsetDays:Float):String;
	static var Now : String;
	static var ListProperty : { var Created : String; var DefaultViewUrl : String; var Description : String; var EnableSyndication : String; var ItemCount : String; var LinkTitle : String; var MajorVersionLimit : String; var MajorWithMinorVersionsLimit : String; var RelativeFolderPath : String; var Title : String; var ViewSelector : String; };
	static var ProjectProperty : { var BlogCategoryTitle : String; var BlogPostTitle : String; var Description : String; var RecycleBinEnabled : String; var SiteOwnerName : String; var SiteUrl : String; var Title : String; var Url : String; };
}
