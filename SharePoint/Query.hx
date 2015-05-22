extern class Query extends SP.ClientObject {
	var get_blockDedupeMode : Void -> Float;
	var set_blockDedupeMode : Float -> Void;
	var get_bypassResultTypes : Void -> Bool;
	var set_bypassResultTypes : Bool -> Void;
	var get_clientType : Void -> String;
	var set_clientType : String -> Void;
	var get_culture : Void -> Float;
	var set_culture : Float -> Void;
	var get_desiredSnippetLength : Void -> Float;
	var set_desiredSnippetLength : Float -> Void;
	var get_enableInterleaving : Void -> Bool;
	var set_enableInterleaving : Bool -> Void;
	var get_enableNicknames : Void -> Bool;
	var set_enableNicknames : Bool -> Void;
	var get_enableOrderingHitHighlightedProperty : Void -> Bool;
	var set_enableOrderingHitHighlightedProperty : Bool -> Void;
	var get_enablePhonetic : Void -> Bool;
	var set_enablePhonetic : Bool -> Void;
	var get_enableQueryRules : Void -> Bool;
	var set_enableQueryRules : Bool -> Void;
	var get_enableStemming : Void -> Bool;
	var set_enableStemming : Bool -> Void;
	var get_generateBlockRankLog : Void -> Bool;
	var set_generateBlockRankLog : Bool -> Void;
	var get_hitHighlightedMultivaluePropertyLimit : Void -> Float;
	var set_hitHighlightedMultivaluePropertyLimit : Float -> Void;
	var get_hitHighlightedProperties : Void -> StringCollection;
	var get_ignoreSafeQueryPropertiesTemplateUrl : Void -> Bool;
	var set_ignoreSafeQueryPropertiesTemplateUrl : Bool -> Void;
	var get_impressionID : Void -> String;
	var set_impressionID : String -> Void;
	var get_maxSnippetLength : Void -> Float;
	var set_maxSnippetLength : Float -> Void;
	var get_personalizationData : Void -> QueryPersonalizationData;
	var set_personalizationData : Dynamic -> Void;
	var get_processBestBets : Void -> Bool;
	var set_processBestBets : Bool -> Void;
	var get_processPersonalFavorites : Void -> Bool;
	var set_processPersonalFavorites : Bool -> Void;
	var get_queryTag : Void -> String;
	var set_queryTag : String -> Void;
	var get_queryTemplate : Void -> String;
	var set_queryTemplate : String -> Void;
	var get_queryTemplateParameters : Void -> { };
	var get_queryText : Void -> String;
	var set_queryText : String -> Void;
	var get_rankingModelId : Void -> String;
	var set_rankingModelId : String -> Void;
	var get_resultsUrl : Void -> String;
	var set_resultsUrl : String -> Void;
	var get_rowLimit : Void -> Float;
	var set_rowLimit : Float -> Void;
	var get_rowsPerPage : Void -> Float;
	var set_rowsPerPage : Float -> Void;
	var get_safeQueryPropertiesTemplateUrl : Void -> String;
	var set_safeQueryPropertiesTemplateUrl : String -> Void;
	var get_showPeopleNameSuggestions : Void -> Bool;
	var set_showPeopleNameSuggestions : Bool -> Void;
	var get_sourceId : Void -> SP.Guid;
	var set_sourceId : SP.Guid -> Void;
	var get_startRow : Void -> Float;
	var set_startRow : Float -> Void;
	var get_summaryLength : Void -> Float;
	var set_summaryLength : Dynamic -> Void;
	var get_timeout : Void -> Float;
	var set_timeout : Float -> Void;
	var get_totalRowsExactMinimum : Void -> Float;
	var set_totalRowsExactMinimum : Float -> Void;
	var get_trimDuplicates : Void -> Bool;
	var set_trimDuplicates : Bool -> Void;
	var get_uiLanguage : Void -> Float;
	var set_uiLanguage : Float -> Void;
	var getQuerySuggestionsWithResults : Float -> Float -> Bool -> Bool -> Bool -> Bool -> QuerySuggestionResults;
}
extern class KeywordQuery extends Query {
	function new(context:SP.ClientContext):Void;
	var get_collapseSpecification : Void -> String;
	var set_collapseSpecification : String -> Void;
	var get_enableSorting : Void -> Bool;
	var set_enableSorting : Bool -> Void;
	var get_hiddenConstraints : Void -> String;
	var set_hiddenConstraints : String -> Void;
	var get_properties : Void -> KeywordQueryProperties;
	var get_refinementFilters : Void -> StringCollection;
	var set_refinementFilters : StringCollection -> Void;
	var get_refiners : Void -> String;
	var set_refiners : String -> Void;
	var get_reorderingRules : Void -> ReorderingRuleCollection;
	var set_reorderingRules : ReorderingRuleCollection -> Void;
	var get_selectProperties : Void -> StringCollection;
	var get_sortList : Void -> SortCollection;
	var get_trimDuplicatesIncludeId : Void -> Float;
	var set_trimDuplicatesIncludeId : Float -> Void;
}
extern class SearchExecutor extends SP.ClientObject {
	function new(context:SP.ClientContext):Void;
	var executeQuery : Query -> SP.JsonObjectResult;
	var executeQueries : Array<String> -> Array<Query> -> Bool -> SP.JsonObjectResult;
	var recordPageClick : String -> String -> Float -> String -> Float -> String -> String -> String -> String -> Void;
	var exportPopularQueries : SP.Web -> SP.Guid -> SP.JsonObjectResult;
}
extern class StringCollection extends SP.ClientObjectCollection<String> {
	function new(context:SP.ClientContext):Void;
	var itemAt : Float -> String;
	var get_item : Float -> String;
	var get_childItemType : Void -> Dynamic;
	var add : String -> Void;
	var clear : Void -> Void;
}
extern class QueryPersonalizationData extends SP.ClientObject {

}
extern class QuerySuggestionResults extends SP.ClientValueObject {
	var get_peopleNames : Void -> Array<String>;
	var set_peopleNames : Array<String> -> Void;
	var get_personalResults : Void -> Array<PersonalResultSuggestion>;
	var set_personalResults : Array<PersonalResultSuggestion> -> Void;
	var get_queries : Void -> Array<QuerySuggestionQuery>;
	var set_queries : Array<QuerySuggestionQuery> -> Void;
}
extern class PersonalResultSuggestion extends SP.ClientValueObject {
	var get_highlightedTitle : Void -> String;
	var set_highlightedTitle : String -> Void;
	var get_isBestBet : Void -> Bool;
	var set_isBestBet : Bool -> Void;
	var get_title : Void -> String;
	var set_title : String -> Void;
	var get_url : Void -> String;
	var set_url : String -> Void;
}
extern class QuerySuggestionQuery extends SP.ClientValueObject {
	var get_isPersonal : Void -> Bool;
	var set_isPersonal : Bool -> Void;
	var get_query : Void -> String;
	var set_query : String -> Void;
}
extern class KeywordQueryProperties extends SP.ClientObject {
	var get_item : String -> Dynamic;
	var set_item : String -> Dynamic -> Void;
	var setQueryPropertyValue : String -> QueryPropertyValue;
	var getQueryPropertyValue : String -> QueryPropertyValue -> Void;
}
@:enum abstract QueryPropertyValueType(Int) {
	var none = 0;
	var stringType = 1;
	var int32TYpe = 2;
	var booleanType = 3;
	var stringArrayType = 4;
	var unSupportedType = 5;
}
extern class QueryPropertyValue extends SP.ClientValueObject {
	var get_boolVal : Void -> Bool;
	var set_boolVal : Bool -> Bool;
	var get_intVal : Void -> Float;
	var set_intVal : Float -> Float;
	var get_queryPropertyValueTypeIndex : Void -> Float;
	var set_queryPropertyValueTypeIndex : Float -> Void;
	var get_strArray : Void -> Array<String>;
	var set_strArray : Array<String> -> Array<String>;
	var get_strVal : Void -> String;
	var set_strVal : String -> String;
}
extern class QueryUtility {
	static var create : String -> Dynamic -> QueryPropertyValue;
	static var getQueryPropertyValueType : QueryPropertyValue -> QueryPropertyValueType;
	static var queryPropertyValueToObject : QueryPropertyValue -> Dynamic;
}
extern class ReorderingRuleCollection extends SP.ClientObjectCollection<ReorderingRule> {
	var itemAt : Float -> ReorderingRule;
	var get_item : Float -> ReorderingRule;
	var get_childItemType : Void -> Dynamic;
	var add : ReorderingRule -> Void;
	var clear : Void -> Void;
}
@:enum abstract ReorderingRuleMatchType(Int) {
	var resultContainsKeyword = 0;
	var titleContainsKeyword = 1;
	var titleMatchesKeyword = 2;
	var urlStartsWith = 3;
	var urlExactlyMatches = 4;
	var contentTypeIs = 5;
	var fileExtensionMatches = 6;
	var resultHasTag = 7;
	var manualCondition = 8;
}
extern class ReorderingRule extends SP.ClientValueObject {
	var get_boost : Void -> Float;
	var set_boost : Float -> Void;
	var get_matchType : Void -> ReorderingRuleMatchType;
	var set_matchType : ReorderingRuleMatchType -> Void;
	var get_matchValue : Void -> String;
	var set_matchValue : String -> Void;
}
extern class SortCollection extends SP.ClientObjectCollection<Sort> {
	var itemAt : Float -> Sort;
	var get_item : Float -> Sort;
	var get_childItemType : Void -> Dynamic;
	var add : String -> SortDirection -> Void;
	var clear : Void -> Void;
}
@:enum abstract SortDirection(Int) {
	var ascending = 0;
	var descending = 1;
	var fqlFormula = 2;
}
extern class Sort extends SP.ClientValueObject {
	var get_direction : Void -> SortDirection;
	var set_direction : SortDirection -> Void;
	var get_property : Void -> String;
	var set_property : String -> Void;
}
extern class ResultTableCollection extends SP.ClientValueObjectCollection<ResultTable> {
	var get_item : Float -> ResultTable;
	var get_elapsedTime : Void -> Float;
	var set_elapsedTime : Float -> Void;
	var get_properties : Void -> { };
	var get_queryErrors : Void -> { };
	var get_queryId : Void -> String;
	var get_spellingSuggestion : Void -> String;
	var get_triggeredRules : Void -> Array<SP.Guid>;
	var initPropertiesFromJson : Dynamic -> Void;
}
extern class ResultTable extends SP.ClientValueObject {
	var get_groupTemplateId : Void -> String;
	var get_itemTemplateId : Void -> String;
	var get_properties : Void -> { };
	var get_queryId : Void -> String;
	var get_queryRuleId : Void -> String;
	var get_resultRows : Void -> Array<{ }>;
	var get_resultTitle : Void -> String;
	var get_resultTitleUrl : Void -> String;
	var get_rowCount : Void -> Float;
	var get_tableType : Void -> String;
	var get_totalRows : Void -> Float;
	var get_totalRowsIncludingDuplicates : Void -> Float;
	var initPropertiesFromJson : Dynamic -> Void;
}
extern class RankingLabeling extends SP.ClientObject {
	function new(context:SP.ClientContext):Void;
	var getJudgementsForQuery : String -> SP.JsonObjectResult;
	var addJudgment : String -> String -> Float -> Void;
	var normalizeResultUrl : String -> SP.JsonObjectResult;
}
extern class PopularQuery extends SP.ClientValueObject {
	var get_clickCount : Void -> Float;
	var set_clickCount : Float -> Void;
	var get_LCID : Void -> Float;
	var set_LCID : Float -> Void;
	var get_queryCount : Void -> Float;
	var set_queryCount : Float -> Void;
	var get_queryText : Void -> String;
	var set_queryText : String -> Void;
}
extern class QueryPropertyNames {
	static var blockDedupeMode : String;
	static var bypassResultTypes : String;
	static var clientType : String;
	static var culture : String;
	static var desiredSnippetLength : String;
	static var enableInterleaving : String;
	static var enableNicknames : String;
	static var enableOrderingHitHighlightedProperty : String;
	static var enablePhonetic : String;
	static var enableQueryRules : String;
	static var enableStemming : String;
	static var generateBlockRankLog : String;
	static var hitHighlightedMultivaluePropertyLimit : String;
	static var ignoreSafeQueryPropertiesTemplateUrl : String;
	static var impressionID : String;
	static var maxSnippetLength : String;
	static var processBestBets : String;
	static var processPersonalFavorites : String;
	static var queryTag : String;
	static var queryTemplate : String;
	static var queryTemplateParameters : String;
	static var queryText : String;
	static var rankingModelId : String;
	static var resultsUrl : String;
	static var rowLimit : String;
	static var rowsPerPage : String;
	static var safeQueryPropertiesTemplateUrl : String;
	static var showPeopleNameSuggestions : String;
	static var sourceId : String;
	static var startRow : String;
	static var summaryLength : String;
	static var timeout : String;
	static var totalRowsExactMinimum : String;
	static var trimDuplicates : String;
	static var uiLanguage : String;
}
extern class QueryObjectPropertyNames {
	static var hitHighlightedProperties : String;
	static var personalizationData : String;
}
extern class KeywordQueryPropertyNames {
	static var collapseSpecification : String;
	static var enableSorting : String;
	static var hiddenConstraints : String;
	static var refiners : String;
	static var trimDuplicatesIncludeId : String;
}
extern class KeywordQueryObjectPropertyNames {
	static var properties : String;
	static var refinementFilters : String;
	static var reorderingRules : String;
	static var selectProperties : String;
	static var sortList : String;
}
