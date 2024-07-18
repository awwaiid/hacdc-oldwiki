This document is generated from a Markdown file, via pandoc:

    pandoc -r markdown redboot.md -w mediawiki -o redboot.wiki

This is the console help summary for the [La
Fonera](La_Fonera) wee white wireless wrouter.

More elaborate, but probably too up-to-date, documentation is to be had
at the [RedBoot User's
Guide](http://www.ecos.sourceware.org/docs-latest/redboot/redboot-guide.html).

### RedBoot help

For what it's worth, a summary of RedBoot's commands

    RedBoot&gt; help
    Manage aliases kept in FLASH memory
       alias name [value]
    Set/Query the system console baud rate
       baudrate [-b &lt;rate&gt;]
    Move Atheros Board Data information
       bdmove 
    Restore Atheros Board Data information
       bdrestore 
    Display Atheros Board Data information
       bdshow 
    Manage machine caches
       cache [ON | OFF]
    Display/switch console channel
       channel [-1|&lt;channel number&gt;]
    Compute a 32bit checksum [POSIX algorithm] for a range of memory
       cksum -b &lt;location&gt; -l &lt;length&gt;
    Display (hex dump) a range of memory
       dump -b &lt;location&gt; [-l &lt;length&gt;] [-s] [-1|2|4]
    Execute an image
       exec [-b &lt;argv addr&gt;] [-c &quot;kernel command line&quot;] [-w &lt;timeout&gt;]
            [&lt;entry point&gt;]
    Manage FLASH images
       fis {cmds}
    Manage configuration kept in FLASH memory
       fconfig [-i] [-l] [-n] [-f] [-d] | [-d] nickname [value]
    Execute code at a location
       go [-w &lt;timeout&gt;] [-c] [-n] [entry]
    Help about help?
       help [&lt;topic&gt;]
    Display command history
       history 
    Set/change IP addresses
       ip_address [-l &lt;local_ip_address&gt;[/&lt;mask_len&gt;]] [-h &lt;server_address&gt;]
    Load a file
       load [-r] [-v] [-d] [-h &lt;host&gt;] [-p &lt;TCP port&gt;][-m &lt;varies&gt;] [-c &lt;channel_number&gt;] 
            [-b &lt;base_address&gt;] &lt;file_name&gt;
    Compare two blocks of memory
       mcmp -s &lt;location&gt; -d &lt;location&gt; -l &lt;length&gt; [-1|-2|-4]
    Copy memory from one address to another
       mcopy -s &lt;location&gt; -d &lt;location&gt; -l &lt;length&gt; [-1|-2|-4]
    Fill a block of memory with a pattern
       mfill -b &lt;location&gt; -l &lt;length&gt; -p &lt;pattern&gt; [-1|-2|-4]
    Network connectivity test
       ping [-v] [-n &lt;count&gt;] [-l &lt;length&gt;] [-t &lt;timeout&gt;] [-r &lt;rate&gt;]
            [-i &lt;IP_addr&gt;] -h &lt;IP_addr&gt;
    Reset the system
       reset 
    Display RedBoot version information
       version 
    Display (hex dump) a range of memory
       x -b &lt;location&gt; [-l &lt;length&gt;] [-s] [-1|2|4]
