+----------------------------------+----------------------------------+
| `{{{description-l                | `<span class="summary" style="   |
| abel|Description}}}`{=mediawiki} | display:none">`{=html}`{{PAGENAM |
|                                  | E}}`{=mediawiki}`</span>`{=html} |
|                                  | {{ #if:                          |
|                                  | `{{{description|}}}`{=mediawiki} |
|                                  | \|                               |
|                                  | `{{{description|}}}`{=mediawiki} |
|                                  | \|                               |
|                                  | `{{De                            |
|                                  | scription missing}}`{=mediawiki} |
|                                  | }}                               |
+==================================+==================================+
| `{{                              | ```{=mediawiki}                  |
| {date-label|Date}}}`{=mediawiki} | {{ISOdate|{{{date|}}}}}          |
|                                  | ```                              |
+----------------------------------+----------------------------------+
| `{{{sou                          | {{ #if:                          |
| rce-label|Source}}}`{=mediawiki} | `{{{source|}}}`{=mediawiki} \|   |
|                                  | `{{Parse sou                     |
|                                  | rce|{{{source|}}}}}`{=mediawiki} |
|                                  | \|                               |
|                                  | `{{Source missing}}`{=mediawiki} |
|                                  | }}                               |
+----------------------------------+----------------------------------+
| `{{{aut                          | {{ #if:                          |
| hor-label|Author}}}`{=mediawiki} | `{{{author|}}}`{=mediawiki} \|   |
|                                  | `{{{author|}}}`{=mediawiki} \|   |
|                                  | `{{Author missing}}`{=mediawiki} |
|                                  | }}                               |
+----------------------------------+----------------------------------+
| `{{{permission-                  | {{ #if:                          |
| label|Permission}}}`{=mediawiki} | `{{{permission|}}}`{=mediawiki}  |
|                                  | \|                               |
|                                  | `{{{permission|}}}`{=mediawiki}  |
|                                  | \|                               |
|                                  | `{{{see                          |
|                                  | -below|see below}}}`{=mediawiki} |
|                                  | }}{{#switch:                     |
|                                  | `{{                              |
|                                  | {other_versions|}}}`{=mediawiki} |
+----------------------------------+----------------------------------+

`<noinclude>`{=html} `{{Information/lang}}`{=mediawiki}
`</noinclude>`{=html}

[`{{PAGENAME}}`{=mediawiki}](Category:Templates)
