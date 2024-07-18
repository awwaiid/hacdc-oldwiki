`<includeonly>`{=html}{{#if:`{{{inline|}}}`{=mediawiki}\|`<span class="description {{{1}}}" lang="{{{4|{{{1}}}}}}">`{=html}\|

```{=html}
<div class="description {{{1}}}" lang="{{{4|{{{1}}}}}}">
```
}}`<span class="language {{{1}}}" title="{{{name|{{{3|}}}}}}">`{=html}**{{#language:`{{{1}}}`{=mediawiki}}}`{{{5|}}}`{=mediawiki}:**`</span>`{=html}
`{{{2|}}}`{=mediawiki}{{#if:`{{{inline|}}}`{=mediawiki}\|`</span>`{=html}\|

```{=html}
</div>
```
}}`</includeonly>`{=html}`<noinclude>`{=html}

------------------------------------------------------------------------

Parameters:

-   1=wikicode for the language and name of the CSS formating class
    (mandatory)
-   2=description text (optional, default is empty)
-   3=title for tooltip (optional, default is empty)
    -   name=alternative parameter name for parameter 3
-   4=standard code for lang tag in HTML (optional, default is same as
    parameter 1)
-   5=extension text shown after the language name before colon
    (optional, default is empty)
-   inline=optional, default is empty string. When set to any value
    different from an empty string, forces the template to be displayed
    inline, so that it does not break the current paragraph (i.e. that
    makes possible to put several descriptions side by side on a single
    line)

`</noinclude>`{=html}

[Category:Templates](Category:Templates)
