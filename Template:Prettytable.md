`<includeonly>`{=html}width="`{{{width|auto}}}`{=mediawiki}"
cellspacing="4" cellpadding="3" rules="all" style="margin:1em 1em 1em 0;
border:solid 1px #bcc; border-collapse:collapse; empty-cells:show;
`{{{style|}}}`{=mediawiki}"`</includeonly>`{=html}`<noinclude>`{=html}
This template can be used within a table to provide basic styling that's
probably more in-line with what the user is expecting.

**This:**

:   `<font style="white-space:pre-wrap;">`{=html}`<nowiki>`{=html}{\|

! A !! B !! C \|- \| one cell \|\| two cell \|\| three cell \|}
`</nowiki>`{=html}`</font>`{=html} **Renders as:**

  A          B          C
  ---------- ---------- ------------
  one cell   two cell   three cell

While this: `<font style="white-space:pre-wrap;">`{=html}`<nowiki>`{=html}{\| `{{Prettytable}}`{=mediawiki}

! A !! B !! C \|- \| one cell \|\| two cell \|\| three cell \|}
`</nowiki>`{=html}`</font>`{=html} **Renders as:**

  A          B          C
  ---------- ---------- ------------
  one cell   two cell   three cell

`</noinclude>`{=html}

[`{{PAGENAME}}`{=mediawiki}](Category:Templates)
