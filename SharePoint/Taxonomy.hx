@:enum abstract StringMatchOption(Int) {
	var startsWith = 0;
	var exactMatch = 1;
}
@:enum abstract ChangeItemType(Int) {
	var unknown = 0;
	var term = 1;
	var termSet = 2;
	var group = 3;
	var termStore = 4;
	var site = 5;
}
@:enum abstract ChangeOperationType(Int) {
	var unknown = 0;
	var add = 1;
	var edit = 2;
	var deleteObject = 3;
	var move = 4;
	var copy = 5;
	var pathChange = 6;
	var merge = 7;
	var importObject = 8;
	var restore = 9;
}
extern class TaxonomySession extends SP.ClientObject {
	static function getTaxonomySession(context:SP.ClientContext):TaxonomySession;
	function get_offlineTermStoreNames():Array<String>;
	function get_termStores():TermStoreCollection;
	@:overload(function(labelMatchInformation:LabelMatchInformation):TermCollection { })
	function getTerms(termLabel:String, trimUnavailable:Bool):TermCollection;
	function updateCache():Void;
	function getTerm(guid:SP.Guid):Term;
	function getTermsById(termIds:Array<SP.Guid>):TermCollection;
	function getTermsInDefaultLanguage(termLabel:String, defaultLabelOnly:Bool, stringMatchOption:StringMatchOption, resultCollectionSize:Float, trimUnavailable:Bool, trimDeprecated:Bool):TermCollection;
	function getTermsInWorkingLocale(termLabel:String, defaultLabelOnly:Bool, stringMatchOption:StringMatchOption, resultCollectionSize:Float, trimUnavailable:Bool, trimDeprecated:Bool):TermCollection;
	@:overload(function(customPropertyMatchInformation:CustomPropertyMatchInformation):TermCollection { })
	function getTermsWithCustomProperty(customPropertyName:String, trimUnavailable:Bool):TermCollection;
	function getTermSetsByName(termSetName:String, lcid:Float):TermSetCollection;
	function getTermSetsByTermLabel(requiredTermLabels:Array<String>, lcid:Float):TermSetCollection;
	function getDefaultKeywordsTermStore():TermStore;
	function getDefaultSiteCollectionTermStore():TermStore;
}
extern class TermStoreCollection extends SP.ClientObjectCollection<TermStore> {
	function itemAt(index:Float):TermStore;
	function get_item(index:Float):TermStore;
	function getById(id:SP.Guid):TermStore;
	function getByName(name:String):TermStore;
}
extern class TermStore extends SP.ClientObject {
	function get_contentTypePublishingHub():String;
	function get_defaultLanguage():Float;
	function set_defaultLanguage(value:Float):Void;
	function get_groups():TermGroupCollection;
	function get_hashTagsTermSet():TermSet;
	function get_id():SP.Guid;
	function get_isOnline():Bool;
	function get_keywordsTermSet():TermSet;
	function get_languages():Array<Float>;
	function get_name():String;
	function get_orphanedTermsTermSet():TermSet;
	function get_systemGroup():TermGroup;
	function get_workingLanguage():Float;
	function set_workingLanguage(value:Float):Void;
	function addLanguage(lcid:Float):Void;
	function commitAll():Void;
	@:overload(function(name:String, groupId:SP.Guid):TermGroup { })
	function createGroup(name:String):TermGroup;
	function deleteLanguage(lcid:Float):Void;
	function getChanges(changeInformation:ChangeInformation):ChangedItemCollection;
	function getGroup(id:SP.Guid):TermGroup;
	function getTerm(termId:SP.Guid):Term;
	function getTermInTermSet(termSetId:SP.Guid, termId:SP.Guid):Term;
	function getTermsById(termIds:Array<SP.Guid>):TermCollection;
	@:overload(function(labelMatchInformation:LabelMatchInformation):TermCollection { })
	function getTerms(termLabel:String, trimUnavailable:Bool):TermCollection;
	function getTermSetsByName(termSetName:String, lcid:Float):TermSetCollection;
	function getTermSetsByTermLabel(requiredTermLabels:Array<String>, lcid:Float):TermSetCollection;
	@:overload(function(customPropertyMatchInformation:CustomPropertyMatchInformation):TermCollection { })
	function getTermsWithCustomProperty(customPropertyName:String, trimUnavailable:Bool):TermCollection;
	function getTermSet(termSetId:SP.Guid):TermSet;
	function getTermSetsWithCustomProperty(customPropertyMatchInformation:CustomPropertyMatchInformation):TermSetCollection;
	function rollbackAll():Void;
	function updateCache():Void;
	function getSiteCollectionGroup(currentSite:SP.Site, createIfMissing:Bool):TermGroup;
	function updateUsedTermsOnSite(currentSite:SP.Site):Void;
}
extern class TaxonomyItem extends SP.ClientObject {
	static function normalizeName(context:SP.ClientContext, name:String):SP.StringResult;
	function get_createdDate():Date;
	function get_id():SP.Guid;
	function get_lastModifiedDate():Date;
	function get_name():String;
	function set_name(value:String):Void;
	function get_termStore():TermStore;
	function deleteObject():Void;
}
extern class TermGroupCollection extends SP.ClientObjectCollection<TermGroup> {
	function itemAt(index:Float):TermGroup;
	function get_item(index:Float):TermGroup;
	function getById(id:SP.Guid):TermGroup;
	function getByName(name:String):TermGroup;
}
extern class TermGroup extends TaxonomyItem {
	function get_description():String;
	function set_description(value:String):Void;
	function get_isSiteCollectionGroup():Bool;
	function get_isSystemGroup():Bool;
	function get_termSets():TermSetCollection;
	function createTermSet(name:String, newTermSetId:SP.Guid, lcid:Float):TermSet;
	function exportObject():SP.StringResult;
	function getChanges(changeInformation:ChangeInformation):ChangedItemCollection;
	function getTermSetsWithCustomProperty(customPropertyMatchInformation:CustomPropertyMatchInformation):TermSetCollection;
}
extern class TermSetItem extends TaxonomyItem {
	function get_customProperties():{ };
	function get_customSortOrder():String;
	function set_customSortOrder(value:String):Void;
	function get_isAvailableForTagging():Bool;
	function set_isAvailableForTagging(value:Bool):Void;
	function get_owner():String;
	function set_owner(value:String):Void;
	function get_terms():TermCollection;
	function createTerm(name:String, lcid:Float, newTermId:SP.Guid):Term;
	function reuseTerm(sourceTerm:Term, reuseBranch:Bool):Term;
	function reuseTermWithPinning(sourceTerm:Term):Term;
	function deleteCustomProperty(name:String):Void;
	function deleteAllCustomProperties():Void;
	function setCustomProperty(name:String, value:String):Void;
}
extern class TermSetCollection extends SP.ClientObjectCollection<TermSet> {
	function itemAt(index:Float):TermSet;
	function get_item(index:Float):TermSet;
	function getById(id:SP.Guid):TermSet;
	function getByName(name:String):TermSet;
}
extern class TermSet extends TermSetItem {
	function get_contact():String;
	function set_contact(value:String):Void;
	function get_description():String;
	function set_description(value:String):Void;
	function get_group():TermGroup;
	function get_isOpenForTermCreation():Bool;
	function set_isOpenForTermCreation(value:Bool):Void;
	function get_stakeholders():Array<String>;
	function addStakeholder(stakeholderName:String):Void;
	function copy():TermSet;
	function deleteStakeholder(stakeholderName:String):Void;
	function exportObject():SP.StringResult;
	function getAllTerms():TermCollection;
	function getChanges(changeInformation:ChangeInformation):ChangedItemCollection;
	function getTerm(termId:SP.Guid):Term;
	@:overload(function(termLabel:String, trimUnavailable:Bool):TermCollection { })
	@:overload(function(labelMatchInformation:LabelMatchInformation):TermCollection { })
	function getTerms(pagingLimit:Float):TermCollection;
	@:overload(function(customPropertyMatchInformation:CustomPropertyMatchInformation):TermCollection { })
	function getTermsWithCustomProperty(customPropertyName:String, trimUnavailable:Bool):TermCollection;
	function move(targetGroup:TermGroup):Void;
}
extern class TermCollection extends SP.ClientObjectCollection<Term> {
	function itemAt(index:Float):Term;
	function get_item(index:Float):Term;
	function getById(id:SP.Guid):Term;
	function getByName(name:String):Term;
}
extern class Term extends TermSetItem {
	function get_description():String;
	function get_isDeprecated():Bool;
	function get_isKeyword():Bool;
	function get_isPinned():Bool;
	function get_isPinnedRoot():Bool;
	function get_isReused():Bool;
	function get_isRoot():Bool;
	function get_isSourceTerm():Bool;
	function get_labels():LabelCollection;
	function get_localCustomProperties():{ };
	function get_mergedTermIds():Array<SP.Guid>;
	function get_parent():Term;
	function get_pathOfTerm():String;
	function get_pinSourceTermSet():TermSet;
	function get_reusedTerms():TermCollection;
	function get_sourceTerm():Term;
	function get_termsCount():Float;
	function get_termSet():TermSet;
	function get_termSets():TermSetCollection;
	function copy(doCopyChildren:Bool):Term;
	function createLabel(labelName:String, lcid:Float, isDefault:Bool):Label;
	function deleteLocalCustomProperty(name:String):Void;
	function deleteAllLocalCustomProperties():Void;
	function deprecate(doDepricate:Bool):Void;
	function getAllLabels(lcid:Float):LabelCollection;
	function getDefaultLabel(lcid:Float):Label;
	function getDescription(lcid:Float):SP.StringResult;
	@:overload(function(termLabel:String, lcid:Float, defaultLabelOnly:Bool, stringMatchOption:StringMatchOption, resultCollectionSize:Float, trimUnavailable:Bool):TermCollection { })
	function getTerms(pagingLimit:Float):TermCollection;
	function merge(termToMerge:Term):Void;
	function move(newParnt:TermSetItem):Void;
	function reassignSourceTerm(reusedTerm:Term):Void;
	function setDescription(description:String, lcid:Float):Void;
	function setLocalCustomProperty(name:String, value:String):Void;
	function getIsDescendantOf(ancestorTerm:Term):SP.BooleanResult;
	function getPath(lcid:Float):SP.StringResult;
}
extern class LabelCollection extends SP.ClientObjectCollection<Label> {
	function itemAt(index:Float):Label;
	function get_item(index:Float):Label;
	function getByValue(name:String):Label;
}
extern class Label extends SP.ClientObject {
	function get_isDefaultForLanguage():Bool;
	function get_language():Float;
	function set_language(value:Float):Void;
	function get_term():Term;
	function get_value():String;
	function set_value(value:String):Void;
	function deleteObject():Void;
	function setAsDefaultForLanguage():Void;
}
extern class LabelMatchInformation extends SP.ClientObject {
	function new(context:SP.ClientContext):Void;
	function get_defaultLabelOnly():Bool;
	function set_defaultLabelOnly(value:Bool):Void;
	function get_excludeKeyword():Bool;
	function set_excludeKeyword(value:Bool):Void;
	function get_lcid():Float;
	function set_lcid(value:Float):Void;
	function get_resultCollectionSize():Float;
	function set_resultCollectionSize(value:Float):Void;
	function get_stringMatchOption():StringMatchOption;
	function set_stringMatchOption(value:StringMatchOption):Void;
	function get_termLabel():String;
	function set_termLabel(value:String):Void;
	function get_trimDeprecated():Bool;
	function set_trimDeprecated(value:Bool):Void;
	function get_trimUnavailable():Bool;
	function set_trimUnavailable(value:Bool):Void;
}
extern class CustomPropertyMatchInformation extends SP.ClientObject {
	function new(context:SP.ClientContext):Void;
	function get_customPropertyName():String;
	function set_customPropertyName(value:String):Void;
	function get_customPropertyValue():String;
	function set_customPropertyValue(value:String):Void;
	function get_resultCollectionSize():Float;
	function set_resultCollectionSize(value:Float):Void;
	function get_stringMatchOption():StringMatchOption;
	function set_stringMatchOption(value:StringMatchOption):Void;
	function get_trimUnavailable():Bool;
	function set_trimUnavailable(value:Bool):Void;
}
extern class ChangeInformation extends SP.ClientObject {
	function new(context:SP.ClientContext):Void;
	function get_itemType():ChangeItemType;
	function set_itemType(value:ChangeItemType):Void;
	function get_operationType():ChangeOperationType;
	function set_operationType(value:ChangeOperationType):Void;
	function get_startTime():Date;
	function set_startTime(value:Date):Void;
	function get_withinTimeSpan():Float;
	function set_withinTimeSpan(value:Float):Void;
}
extern class ChangedItemCollection extends SP.ClientObjectCollection<ChangedItem> {
	function itemAt(index:Float):ChangedItem;
	function get_item(index:Float):ChangedItem;
}
extern class ChangedItem extends SP.ClientObject {
	function get_changedBy():String;
	function get_changedTime():Date;
	function get_id():SP.Guid;
	function get_itemType():ChangeItemType;
	function get_operation():ChangeOperationType;
}
extern class ChangedSite extends ChangedItem {
	function get_siteId():SP.Guid;
	function get_termId():SP.Guid;
	function get_termSetId():SP.Guid;
}
extern class ChangedGroup extends ChangedItem {

}
extern class ChangedTerm extends ChangedItem {
	function get_changedCustomProperties():Array<String>;
	function get_changedLocalCustomProperties():Array<String>;
	function get_groupId():SP.Guid;
	function get_lcidsForChangedDescriptions():Array<Float>;
	function get_lcidsForChangedLabels():Array<Float>;
	function get_termSetId():SP.Guid;
}
extern class ChangedTermSet extends ChangedItem {
	function get_fromGroupId():SP.Guid;
	function get_groupId():SP.Guid;
}
extern class ChangedTermStore extends ChangedItem {
	function get_changedLanguage():Float;
	function get_isDefaultLanguageChanged():Bool;
	function get_isFullFarmRestore():Bool;
}
extern class TaxonomyField extends SP.FieldLookup {
	function new(context:SP.ClientContext, fields:SP.FieldCollection, filedName:String):Void;
	function get_anchorId():SP.Guid;
	function set_anchorId(value:SP.Guid):Void;
	function get_createValuesInEditForm():Bool;
	function set_createValuesInEditForm(value:Bool):Void;
	function get_isAnchorValid():Bool;
	function get_isKeyword():Bool;
	function set_isKeyword(value:Bool):Void;
	function get_isPathRendered():Bool;
	function set_isPathRendered(value:Bool):Void;
	function get_isTermSetValid():Bool;
	function get_open():Bool;
	function set_open(value:Bool):Void;
	function get_sspId():SP.Guid;
	function set_sspId(value:SP.Guid):Void;
	function get_targetTemplate():String;
	function set_targetTemplate(value:String):Void;
	function get_termSetId():SP.Guid;
	function set_termSetId(value:SP.Guid):Void;
	function get_textField():SP.Guid;
	function get_userCreated():SP.Guid;
	function set_userCreated(value:SP.Guid):Void;
	function getFieldValueAsText(value:TaxonomyFieldValue):SP.StringResult;
	function getFieldValueAsTaxonomyFieldValue(value:String):TaxonomyFieldValue;
	function getFieldValueAsTaxonomyFieldValueCollection(value:String):TaxonomyFieldValueCollection;
	function setFieldValueByTerm(listItem:SP.ListItem, term:Term, lcid:Float):Void;
	function setFieldValueByTermCollection(listItem:SP.ListItem, terms:TermCollection, lcid:Float):Void;
	function setFieldValueByCollection(listItem:SP.ListItem, terms:Array<Term>, lcid:Float):Void;
	function setFieldValueByValue(listItem:SP.ListItem, taxValue:TaxonomyFieldValue):Void;
	function setFieldValueByValueCollection(listItem:SP.ListItem, taxValueCollection:TaxonomyFieldValueCollection):Void;
	function getFieldValueAsHtml(value:TaxonomyFieldValue):SP.StringResult;
	function getValidatedString(value:TaxonomyFieldValue):SP.StringResult;
}
extern class TaxonomyFieldValueCollection extends SP.ClientObjectCollection<TaxonomyFieldValue> {
	function new(context:SP.ClientContext, fieldValue:String, creatingField:SP.Field):Void;
	function itemAt(index:Float):TaxonomyFieldValue;
	function get_item(index:Float):TaxonomyFieldValue;
	function populateFromLabelGuidPairs(text:String):Void;
}
extern class TaxonomyFieldValue extends SP.ClientValueObject {
	function get_label():String;
	function set_label(value:String):Void;
	function get_termGuid():SP.Guid;
	function set_termGuid(value:SP.Guid):Void;
	function get_wssId():SP.Guid;
	function set_wssId(value:SP.Guid):Void;
}
extern class MobileTaxonomyField extends SP.ClientObject {
	function get_readOnly():Bool;
}
