The following lightly commented, poorly structured bash/perl script
downloads all the pages under
<http://wiki.hacdc.org/index.php/Category:Meeting_Minutes> and greps
through them for mentions of bylaws, standing, and rule, helpful if you
want to search through old meeting minutes. Can be modified for other
purposes. It sucks but it probably works for its intended purpose.
Requires the HTML::LinkExtractor perl module and elinks or w3m.

`   #!/bin/bash`

`   path="/tmp/hacdcminutes"`

`   get_links() {`\
`       perl -E ' `\
`           use HTML::LinkExtractor;`\
`           use `[`Data::Dumper`](Data::Dumper)`;`

`           local $/;`\
`           my $input = ``<STDIN>`{=html}`;`\
`           #chomp( $input );`\
`           my $LX = new HTML::LinkExtractor();`\
`           $LX->strip(1);`

`           $LX->parse(\$input);`

`           my @links = @{$LX->links}; `

`           foreach my $link ( @links ){`\
`               $count++;`\
`               last if ($link->{"href"} =~ ".*wiki.hacdc.org/index.php.title.Category.Meeting_Minutes.oldid.6639");`\
`               if ( ($link->{"href"} =~ /.*index.php.*/) && !($link->{"_TEXT"} =~ "/^\s*$/")){`\
`                   my $href = $link->{"href"};`\
`                   $href =~ s/.*http/http/; `\
`                   print "$href \n"; # > page.$count \n";`\
`               }`\
`           }`\
`           __END__`\
`       '`\
`   }`

`   #only needed if you use curl or wget`\
`   #uastr="Mozilla/5.0 (Windows NT 6.3; WOW64) Chrome/41.0.2226.0 Safari/537.36"`\
`    url="`[`http://wiki.hacdc.org/index.php/Category:Meeting_Minutes`](http://wiki.hacdc.org/index.php/Category:Meeting_Minutes)`"`\
`   #baseurl="`[`http://wiki.hacdc.org`](http://wiki.hacdc.org)`"`\
`   cd "$path" || exit;`\
`   set -v`\
`   #can use w3m instead of elinks.  maybe also lynx or links?  or curl.  I don't remember why this doesn't use curl, I copied this from an old script.`\
`   elinks -source $url | get_links | sed "s/^/http\:\/\/wiki\.hacdc\.org/g" | while read -r line; do count=$(expr $count + 1); echo "$line"; elinks -dump "$line" > "$count.txt"; done`

`   grep rule -C 3 > rule.txt`\
`   grep standing -C 3 > standing.txt`\
`   grep bylaw -C 3 > bylaw.txt`
