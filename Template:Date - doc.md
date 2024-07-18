```{=mediawiki}
{{TemplateBox
|1=1
|1d=number of the year
|2=2
|2d=number of month in the year
|3=3
|3d=number of day in the month
|4=4
|4d=language code (only needs to be provided if the language shall be fixed and independant from the user's preferences)
|4def=value of <nowiki>{{int:Lang}}</nowiki>
|5=form
|5d=allows to specify differing syntactic forms to apply to the date (e.g. in some Polish phrases the month must appear in [[w:Genitive case|genitive form]] instead of nominative, so you have to set <tt>form</tt> to ''gen'')
|name=Date
|desc=This template is used to show the date of publication or upload in the language set in the preferences.

You can leave out parts of the data.
|namespace=Template
|usergroup=all
|usage-notes=
Date example: 9 January 2009
<pre>
{{Date|2009|1|9}}
</pre>

Result, date in the language of your preferences:
{{Date|2009|1|9}}

=== Microformat ===
{{Tl|Date}} also returns the date, hidden by CSS, in the ISO 8601 format needed by the <!-- hAtom (class="updated"),--> [[w:HCalendar|hCalendar]] (<code>class="dtstart"</code>) <!-- and hCard (class="bday")--> microformat. See [[Commons:Microformats Project|the microformats project]].
|type=marker
|example=
|i18n-method=switch
|i18n-desc=
|seealso={{tl|ISOdate}} – Template used to parse the date in {{tl|information}}; {{tl|other date}}
|setscats=
|lines=one
|shorthand=
|relieson={{tl|I18n month}}, {{tl|formatnum}}
}}
```
`<includeonly>`{=html} `</includeonly>`{=html}

[`{{PAGENAME}}`{=mediawiki}](Category:Time,_date_and_calendar_templates)
[`{{PAGENAME}}`{=mediawiki}](Category:User_interface_language_dependent_templates)
