typedef SchedulerTemplates = {
	function agenda_date(start:Date, end:Date):String;
	function agenda_text(start:Date, end:Date, event:Dynamic):String;
	function agenda_time(start:Date, end:Date, event:Dynamic):String;
	function api_date(date:Date):String;
	function calendar_date(date:Date):String;
	function calendar_month(date:Date):String;
	function calendar_scale_date(date:Date):String;
	function calendar_time(date:Date):String;
	function day_date(date:Date):String;
	function day_scale_date(date:Date):String;
	function event_bar_date(start:Date, end:Date, event:Dynamic):String;
	function event_bar_text(start:Date, end:Date, event:Dynamic):String;
	function event_class(start:Date, end:Date, event:Dynamic):String;
	function event_date(date:Date):String;
	function event_header(start:Date, end:Date, event:Dynamic):String;
	function event_text(start:Date, end:Date, event:Dynamic):String;
	function hour_scale(date:Date):String;
	function load_format(date:Date):String;
	function map_date(start:Date, end:Date):String;
	function map_text(start:Date, end:Date, event:Dynamic):String;
	function map_time(start:Date, end:Date, event:Dynamic):String;
	function marker_date(start:Date, end:Date, event:Dynamic):String;
	function marker_text(start:Date, end:Date, event:Dynamic):String;
	function month_date(date:Date):String;
	function month_date_class(start:Date, end:Date, event:Dynamic):String;
	function month_day(date:Date):String;
	function month_events_link(date:Date, count:Float):String;
	function month_scale_date(date:Date):String;
	function quick_info_content(start:Date, end:Date, event:Dynamic):String;
	function quick_info_date(start:Date, end:Date, event:Dynamic):String;
	function quick_info_title(start:Date, end:Date, event:Dynamic):String;
	function time_picker():String;
	function tooltip_date_format(date:Date):String;
	function tooltip_text(start:Date, end:Date, event:Dynamic):String;
	function week_agenda_event_text(start:Date, end:Date, event:Dynamic, cellDate:Date, pos:String):String;
	function week_agenda_scale_date(date:Date):String;
	function week_date(start:Date, end:Date):String;
	function week_date_class(start:Date, end:Date, event:Dynamic):String;
	function week_scale_date(date:Date):String;
	function xml_date(date:Date):Date;
	function xml_format(date:Date):String;
	function year_date(date:Date):String;
	function year_month(date:Date):String;
	function year_scale_date(date:Date):String;
	function year_tooltip(start:Date, end:Date, event:Dynamic):String;
	function lightbox_header(start:Date, end:Date, event:Dynamic):String;
	function grid_date(start:Date, end:Date):String;
	function grid_full_date(start:Date, end:Date, ev:Dynamic):String;
	function grid_single_date(date:Date):String;
	function grid_field(field_name:String, event:Dynamic):String;
	function timeline_cell_value(evs:Dynamic):String;
	function timeline_cell_class(evs:Dynamic, date:Date, section:Dynamic):String;
	function timeline_scalex_class(date:Date):String;
	function timeline_second_scalex_class(date:Date):String;
	function timeline_scaley_class(key:String, label:String, section:Dynamic):String;
	function timeline_scale_label(key:String, label:String, section:Dynamic):String;
	function timeline_tooltip(start:Date, end:Date, event:Dynamic):String;
	function timeline_date(date1:Date, date2:Date):String;
	function timeline_scale_date(date:Date):String;
	function timeline_second_scale_date(date:Date):String;
	function units_date(date:Date):String;
	function units_scale_text(key:String, label:String, unit:Dynamic):String;
};
typedef SchedulerConfigOptions = {
	var active_link_view : String;
	var agenda_end : Date;
	var agenda_start : Date;
	var all_timed : Dynamic;
	var api_date : String;
	var auto_end_date : Bool;
	var buttons_left : Dynamic;
	var buttons_right : Dynamic;
	var cascade_event_count : Float;
	var cascade_event_display : Bool;
	var cascade_event_margin : Float;
	var check_limits : Bool;
	var collision_limit : Float;
	var container_autoresize : Bool;
	var day_date : String;
	var dblclick_create : Bool;
	var default_date : String;
	var details_on_create : Bool;
	var details_on_dblclick : Bool;
	var display_marked_timespans : Bool;
	var displayed_event_color : String;
	var displayed_event_text_color : String;
	var drag_create : Bool;
	var drag_lightbox : Bool;
	var drag_move : Bool;
	var drag_resize : Bool;
	var edit_on_create : Bool;
	var event_duration : Float;
	var first_hour : Float;
	var fix_tab_position : Bool;
	var full_day : Bool;
	var highlight_displayed_event : Bool;
	var hour_date : String;
	var hour_size_px : Float;
	var icons_edit : Dynamic;
	var icons_select : Dynamic;
	var include_end_by : Bool;
	var last_hour : Float;
	var left_border : Bool;
	var lightbox : Dynamic;
	var lightbox_recurring : String;
	var limit_end : Date;
	var limit_start : Date;
	var limit_time_select : Bool;
	var limit_view : Bool;
	var load_date : String;
	var map_end : Date;
	var map_error_position : Dynamic;
	var map_infowindow_max_width : Float;
	var map_initial_position : Dynamic;
	var map_initial_zoom : Float;
	var map_resolve_event_location : Bool;
	var map_resolve_user_location : Bool;
	var map_start : Date;
	var map_type : Dynamic;
	var map_zoom_after_resolve : Float;
	var mark_now : Bool;
	var max_month_events : Float;
	var minicalendar : Dynamic;
	var month_date : String;
	var month_day : String;
	var month_day_min_height : Float;
	var multi_day : Bool;
	var multi_day_height_limit : Dynamic;
	var occurrence_timestamp_in_utc : Bool;
	var positive_closing : Bool;
	var preserve_length : Bool;
	var preserve_scroll : Bool;
	var prevent_cache : Bool;
	var quick_info_detached : Bool;
	var readonly : Bool;
	var readonly_form : Bool;
	var repeat_date : String;
	var repeat_precise : Bool;
	var scroll_hour : Float;
	var select : Bool;
	var separate_short_events : Bool;
	var server_utc : Bool;
	var show_loading : Bool;
	var start_on_monday : Bool;
	var time_step : Float;
	var touch : Dynamic;
	var touch_drag : Dynamic;
	var touch_tip : Bool;
	var use_select_menu_space : Bool;
	var week_date : String;
	var wide_form : Bool;
	var xml_date : String;
	var year_x : Float;
	var year_y : Float;
};
typedef SchedulerDateHelpers = {
	function add(origin:Date, count:Float, unit:String):Date;
	function copy(origin:Date):Date;
	function date_part(origin:Date):Date;
	function time_part(origin:Date):Date;
	function day_start(origin:Date):Date;
	function month_start(origin:Date):Date;
	function week_start(origin:Date):Date;
	function year_start(origin:Date):Date;
	function getISOWeek(origin:Date):Float;
	function getUTCISOWeek(origin:Date):Float;
	function date_to_str(format:String):Dynamic;
	function str_to_date(format:String):Dynamic;
	function convert_to_utc(origin:Date):Date;
	function to_fixed(value:Float):String;
};
typedef SchedulerHotkeys = {
	var edit_save : Float;
	var edit_cancel : Float;
};
typedef SchedulerLocaleDate = {
	var month_full : Array<String>;
	var month_short : Array<String>;
	var day_full : Array<String>;
	var day_short : Array<String>;
};
typedef SchedulerLocaleLabels = {
	var dhx_cal_today_button : String;
	var day_tab : String;
	var week_tab : String;
	var month_tab : String;
	var new_event : String;
	var icon_save : String;
	var icon_cancel : String;
	var icon_details : String;
	var icon_edit : String;
	var icon_delete : String;
	var confirm_closing : String;
	var confirm_deleting : String;
	var section_description : String;
	var section_time : String;
};
typedef SchedulerLocale = {
	var date : SchedulerLocaleDate;
	var labels : SchedulerLocaleLabels;
};
typedef SchedulerSizes = {
	var bar_height : Float;
	var editor_width : Float;
	var lightbox_additional_height : Float;
	var map_date_width : Float;
	var map_description_width : Float;
	var margin_left : Float;
	var margin_top : Float;
	var menu_width : Float;
	var min_event_height : Float;
	var month_scale_height : Float;
	var nav_height : Float;
	var scale_height : Float;
	var scale_width : Float;
	var scroll_width : Float;
};
typedef SchedulerStatic = {
	var templates : SchedulerTemplates;
	var config : SchedulerConfigOptions;
	var date : SchedulerDateHelpers;
	var keys : SchedulerHotkeys;
	var skin : String;
	var version : String;
	var xy : SchedulerSizes;
	var locale : SchedulerLocale;
	function addEvent(event:Dynamic):String;
	function addEventNow(event:Dynamic):String;
	function addMarkedTimespan(config:Dynamic):Dynamic;
	function addSection(section:Dynamic, parent_id:String):Bool;
	function attachEvent(name:String, handler:haxe.extern.Rest<Dynamic> -> Dynamic):String;
	function backbone(events:Dynamic):Dynamic;
	function blockTime(date:Dynamic, time_points:Dynamic, ?items:Dynamic):Dynamic;
	function callEvent(name:String, params:Dynamic):Bool;
	function changeEventId(id:String, new_id:String):Dynamic;
	function checkCollision(event:Dynamic):Bool;
	function checkEvent(name:String):Bool;
	function checkInMarkedTimespan(event:Dynamic, timespan:String):Bool;
	function checkLimitViolation(event:Dynamic):Bool;
	function clearAll():Dynamic;
	function closeAllSections():Dynamic;
	function closeSection(section_id:String):Dynamic;
	function collapse():Dynamic;
	function createGridView(config:Dynamic):Dynamic;
	function createTimelineView(config:Dynamic):Dynamic;
	function createUnitsView(config:Dynamic):Dynamic;
	function deleteAllSections():Dynamic;
	function deleteEvent(id:Dynamic):Dynamic;
	function deleteMarkedTimespan(id:String):Dynamic;
	function deleteSection(section_id:String):Bool;
	function destroyCalendar(?name:Dynamic):Dynamic;
	function detachEvent(id:String):Dynamic;
	function edit(id:String):Dynamic;
	function editStop(id:String):Dynamic;
	function endLightbox(mode:Bool, box:HTMLElement):Dynamic;
	function expand():Dynamic;
	function formSection(name:String):Dynamic;
	function getActionData(e:Event):Dynamic;
	function getEvent(event_id:Dynamic):Dynamic;
	function getEventEndDate(id:String):Date;
	function getEventStartDate(id:String):Date;
	function getEventText(id:String):String;
	function getEvents(?from:Date, ?to:Date):Dynamic;
	function getLabel(property:String, key:Dynamic):Dynamic;
	function getLightbox():HTMLElement;
	function getRecDates(id:String, number:Float):Dynamic;
	function getRenderedEvent(id:String):HTMLElement;
	function getSection(section_id:String):Dynamic;
	function getState():Dynamic;
	function getUserData(id:String, name:String):Dynamic;
	function hideCover(?box:HTMLElement):Dynamic;
	function hideQuickInfo():Dynamic;
	function init(container:Dynamic, ?date:Date, ?view:String):Dynamic;
	function invertZones(zones:Dynamic):Dynamic;
	function isCalendarVisible():Dynamic;
	function isOneDayEvent(event:Dynamic):Bool;
	function linkCalendar(calendar:Dynamic, shift:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic;
	function load(url:String, ?type:String, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic;
	function markCalendar(calendar:Dynamic, date:Date, css:String):Dynamic;
	function markTimespan(config:Dynamic):Dynamic;
	function openAllSections():Dynamic;
	function openSection(section_id:String):Dynamic;
	function parse(data:Dynamic, ?type:String):Dynamic;
	function renderCalendar(config:Dynamic):Dynamic;
	function renderEvent(container:HTMLElement, event:Dynamic):Bool;
	function resetLightbox():Dynamic;
	function scrollUnit(step:Float):Dynamic;
	function select(id:String):Dynamic;
	function serverList(list_name:String, ?options:Dynamic):Dynamic;
	function setCurrentView(?date:Date, ?view:String):Dynamic;
	function setEvent(id:Dynamic, event:Dynamic):Dynamic;
	function setEventEndDate(id:String, date:Date):Dynamic;
	function setEventStartDate(id:String, date:Date):Dynamic;
	function setEventText(id:String, text:String):Dynamic;
	function setLightboxSize():Dynamic;
	function setLoadMode(mode:String):Dynamic;
	function setUserData(id:String, name:String, value:Dynamic):Dynamic;
	function showCover(?box:HTMLElement):Dynamic;
	function showEvent(id:String, ?view:String):Dynamic;
	function showLightbox(id:String):Dynamic;
	function showQuickInfo(id:String):Dynamic;
	function startLightbox(id:String, box:HTMLElement):Dynamic;
	function toICal(?header:String):String;
	function toJSON():String;
	function toPDF(url:String, ?mode:String):Dynamic;
	function toPDFRange(from:Date, to:Date, view:String, path:String, color:String):Dynamic;
	function toXML():String;
	function uid():Dynamic;
	function unblockTime(days:Dynamic, ?zones:Dynamic, ?sections:Dynamic):Dynamic;
	function unmarkCalendar(calendar:Dynamic, date:Date, css:String):Dynamic;
	function unmarkTimespan(divs:Dynamic):Dynamic;
	function unselect(?id:String):Dynamic;
	function updateCalendar(calendar:Dynamic, new_date:Date):Dynamic;
	function updateCollection(collection:String, options:Dynamic):Bool;
	function updateEvent(id:String):Dynamic;
	function updateView(date:Date, view:String):Dynamic;
};
extern class DhtmlxschedulerTopLevel {
	static var scheduler : SchedulerStatic;
}
