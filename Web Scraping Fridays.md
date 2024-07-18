# Schedule

-   Aug 14
-   Aug 28
-   Sep 11
-   Sep 25

# CFAA

# Tools

# Picking Victims

# Examples

`<code>`{=html} wget
<https://www.congress.gov/search?q=%7B%22source%22%3A%22legislation%22%2C%22congress%22%3A%22114%22%7D&pageSize=250>

for each in \`cat
./search\\?q\\=%7B%22source%22%3A%22legislation%22%2C%22congress%22%3A%22114%22%7D\\&pageSize\\=250
\| sed -n "s/.\*H\\.R\\.$[0-9]\{1,\}$.\*/\\1/p"\`; do { wget
<https://www.congress.gov/bill/114th-congress/house-bill/$each/text?format=txt>;
} done;

cat rh\\?format\\=txt \| sed
"/.\*pre\>/{s/.\*$pre>$/FOUNDME:\\1/;:a;N;s/\^$FOUNDME:pre>\n\(\|FOUNDME:.*\n$\\{0,\\}\\)$.*$/\\1FOUNDMORE:\\3/;;s/FOUNDMORE/FOUNDME/;ta}"\|
grep FOUNDME \| sed
"/.\*div\>/{s/.\*$div>$//;:a;N;s/.\*//;;s/FOUNDME//;ta;}" \| less

`cat rh\?format\=txt | sed "/.*pre>/{s/.*`$pre>$`/FOUNDME:\1/;:a;N;s/^`$FOUNDME:pre>\n\(\|FOUNDME:.*\n$`\{0,\}\)`$.*$`/\1FOUNDME:\3/;ba}"| sed -n "s/FOUNDME://p"  | sed "/.*div>/{s/.*`$div>$`//;:a;N;s/.*//;ba;}" | less`

`</code>`{=html}

# Resources
