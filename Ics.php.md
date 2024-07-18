```{=mediawiki}
{{Obsolete}}
```
This code still needs to be cleaned up some.

-   Note, this script requires:
    [Drupal.login.php](Drupal.login.php)

\<?php\
\
include('Drupal.login.php');\
\
\$ics_contents = "BEGIN:VCALENDAR\\n";\
\$ics_contents .= "VERSION:2.0\\n";\
\$ics_contents .= "PRODID:PHP\\n";\
\$ics_contents .= "METHOD:PUBLISH\\n";\
\$ics_contents .= "X-WR-CALNAME:HacDC Schedule\\n";\
\
\# Change the timezone as well daylight settings if need be\
\$ics_contents .= "X-WR-TIMEZONE:America/New_York\\n";\
\$ics_contents .= "BEGIN:VTIMEZONE\\n";\
\$ics_contents .= "TZID:America/New_York\\n";\
\$ics_contents .= "BEGIN:DAYLIGHT\\n";\
\$ics_contents .= "TZOFFSETFROM:-0500\\n";\
\$ics_contents .= "TZOFFSETTO:-0400\\n";\
\$ics_contents .= "DTSTART:20070311T020000\\n";\
\$ics_contents .= "RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=2SU\\n";\
\$ics_contents .= "TZNAME:EDT\\n";\
\$ics_contents .= "END:DAYLIGHT\\n";\
\$ics_contents .= "BEGIN:STANDARD\\n";\
\$ics_contents .= "TZOFFSETFROM:-0400\\n";\
\$ics_contents .= "TZOFFSETTO:-0500\\n";\
\$ics_contents .= "DTSTART:20071104T020000\\n";\
\$ics_contents .= "RRULE:FREQ=YEARLY;BYMONTH=11;BYDAY=1SU\\n";\
\$ics_contents .= "TZNAME:EST\\n";\
\$ics_contents .= "END:STANDARD\\n";\
\$ics_contents .= "END:VTIMEZONE\\n";\
\
\$events = mysql_query("SELECT\
node.nid AS nid,\
node.title AS title,\
node.changed as node_changed,\
node.type AS node_type,\
node.vid AS node_vid,\
content_field_date.field_date_value as Start,\
content_field_date.field_date_value2 as End\
FROM (node\
left join content_field_date on node.vid = content_field_date.vid)\
WHERE type = 'event'\
ORDER BY Start\
");\
\
function clean_url(\$desc) {\
\$desc = html_entity_decode(\$desc);\
\$desc = strip_tags(\$desc);\
\$desc = ereg_replace("\[\^A-Za-z0-9
-\|=\`\~!@#\$%\^&\*()\_+,./?\>\<:;'{}\]", "", \$desc );\
return \$desc;\
}\
\
while (\$schedule_details = mysql_fetch_assoc(\$events)) {\
\
if (date('T', strtotime(\$schedule_details\['Start'\])) == "EDT") {\
\$Offset = 4\*60\*60;\
} else {\
\$Offset = 5\*60\*60;\
}\
\$Start = strtotime(\$schedule_details\['Start'\])-\$Offset;\
\$End = strtotime(\$schedule_details\['End'\])-\$Offset;\
\
\
\$desc1 = mysql_query("SELECT \* from node_revisions\
WHERE\
nid = '".\$schedule_details\['nid'\]."' and\
vid = '".\$schedule_details\['node_vid'\]."'");\
\
\$desc1 = mysql_fetch_assoc(\$desc1);\
\
\$Yr = date(Y,\$Start);\
\$Mo = date(m,\$Start);\
\$Day = date(d,\$Start);\
\$Hr = date(H,\$Start);\
\$Min = date(i,\$Start);\
\$Yr1 = date(Y,\$End);\
\$Mo1 = date(m,\$End);\
\$Day1 = date(d,\$End);\
\$Hr1 = date(H,\$End);\
\$Min1 = date(i,\$End);\
\
\$id = \$schedule_details\['nid'\];\
\$start_date = \$Yr."-".\$Mo."-".\$Day;\
\$start_time = \$Hr.":".\$Min.":00";\
\$end_date = \$Yr1."-".\$Mo1."-".\$Day1;\
\$end_time = \$Hr1.":".\$Min1.":00";\
\
\$category = "HacDC";\
\$name = \$schedule_details\['title'\];\
\$location = "1525 Newton St NW, Washington DC 20010 (Near corner of
16th and Newton NW)";\
\$description = clean_url(strip_tags(\$desc1\['body'\]));\
\
\# Remove '-' in \$start_date and \$end_date\
\$estart_date = str_replace("-", "", \$start_date);\
\$eend_date = str_replace("-", "", \$end_date);\
\
\# Remove ':' in \$start_time and \$end_time\
\$estart_time = str_replace(":", "", \$start_time);\
\$eend_time = str_replace(":", "", \$end_time);\
\
\# Replace some HTML tags\
\$name = str_replace("\<br\>", "\\\\r\\\\n", \$name);\
\$name = str_replace("&amp;", "&", \$name);\
\$name = str_replace("&rarr;", "--\>", \$name);\
\$name = str_replace("&larr;", "\<--", \$name);\
\$name = str_replace(",", "\\\\,", \$name);\
\$name = str_replace(";", "\\\\;", \$name);\
\
\$location = str_replace("\<br\>", "\\\\r\\\\n", \$location);\
\$location = str_replace("&amp;", "&", \$location);\
\$location = str_replace("&rarr;", "--\>", \$location);\
\$location = str_replace("&larr;", "\<--", \$location);\
\$location = str_replace(",", "\\\\,", \$location);\
\$location = str_replace(";", "\\\\;", \$location);\
\
\$description = str_replace("\<br\>", "\\\\r\\\\n", \$description);\
\$description = str_replace("&amp;", "&", \$description);\
\$description = str_replace("&rarr;", "--\>", \$description);\
\$description = str_replace("&larr;", "\<--", \$description);\
\$description = str_replace("\<em\>", "", \$description);\
\$description = str_replace("\</em\>", "", \$description);\
\
\# Change TZID if need be\
\$ics_contents .= "BEGIN:VEVENT\\r\\n";\
\$ics_contents .= "DTSTART;TZID=America/New_York:" . \$estart_date .
"T". \$estart_time . "\\r\\n";\
\$ics_contents .= "DTEND;TZID=America/New_York:" . \$eend_date . "T".
\$eend_time . "\\r\\n";\
\$ics_contents .= "DTSTAMP:" . date('Ymd') . "T". date('His') .
"Z\\r\\n";\
\$ics_contents .= "SUMMARY:" . \$name . "\\r\\n";\
\$ics_contents .= "LOCATION:" . \$location . "\\r\\n";\
\$ics_contents .= "DESCRIPTION:" . \$description . "\\r\\n";\
\$ics_contents .= "UID:" . \$id .rand(0,9999). "\\r\\n";\
\$ics_contents .= "SEQUENCE:0\\r\\n";\
\$ics_contents .= "END:VEVENT\\r\\n";\
}\
\$ics_contents .= "END:VCALENDAR\\r\\n";\
\
echo \$ics_contents;\
