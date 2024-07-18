Hints about taking care of the wiki.. for better or worse.
`{{TOCright}}`{=mediawiki}

### Links

-   <http://www.mediawiki.org/wiki/Manual:Maintenance_scripts>
-   <http://www.mediawiki.org/wiki/Manual:RemoveUnusedAccounts.php>
-   <http://wiki.dreamhost.com/MediaWiki>

### Maintenance Scripts {#maintenance_scripts}

-   ssh into the dreamhost site
-   cd wiki.hacdc.org/
-   php-5.4 maintenance/\[somescriptname\].php

### Content Backup {#content_backup}

-   php-5.4 maintenance/dumpBackup.php --full --report \>
    MW_fullbu_14Dec2012.xml

Gave lots of div by 0 errors, but output seems ok. Have not tried
importing it though.

### Bad Bot Accounts {#bad_bot_accounts}

-   php-5.4 maintenance/removeUnusedAccounts.php --delete \>\>
    rmunused.txt &

    :   ... run w/o the --delete flag first
-   tailf rmunused.txt
-   go read a book

### Misc

-   css tweaks -\>
    <http://wiki.hacdc.org/index.php/MediaWiki:Common.css>
-   find what IPs have been requesting too many pages..

    :   cat \~/logs/wiki.hacdc.org/http/access.log\| awk '{print \$1}'
        \| sort \| uniq -c \|sort -n

------------------------------------------------------------------------

------------------------------------------------------------------------

## Status and Maintenance Record {#status_and_maintenance_record}

### 2013.12.14

The wiki's software is up to date. It's running very slowly and has been
for a long time. Created content backup: MW_fullbu_15Dec2013.xml

There are exactly 1 gazillion spambot accounts. Ok, it's actually
149,292 total accounts, most of which are bots. I tweaked the
removeUnusedAccounts.php script.. took out the check for logs. Ran and
deleted \~146k accounts, couple thousand remain.. dunno why yet.

Ran updateArticleCount.php (was seeing count errors when editing)

..and why is the memory usage so high?
`top - 15:04:00 up 269 days, 10:53, 2 users, load average: 7.47, 7.45, 6.52 Tasks: 13 total, 4 running, 9 sleeping, 0 stopped, 0 zombie Cpu(s): 56.2%us, 3.6%sy, 19.9%ni, 19.5%id, 0.2%wa, 0.0%hi, 0.6%si, 0.0%st Mem: 16433988k total, 16262920k used, 171068k free, 1267844k buffers Swap: 7823644k total, 584084k used, 7239560k free, 4145820k cached`

------------------------------------------------------------------------
