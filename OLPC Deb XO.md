For now see [this page](http://wiki.laptop.org/go/DebXO) and either
flash the nand flash image or install the bootable USB/SD image or
download the image [haxwithaxe](User:haxwithaxe) has made
[here](http://haxwithaxe.net/files/debxo-6.0-hacdc.img.gz) and follow
the USB/SD instructions from the
[DebXO](http://wiki.laptop.org/go/DebXO) page. If you use
[haxwithaxe's](User:haxwithaxe) image you **Must** expand the
partition to at least 2GB.

## After Install

1\) Boot up the XO with the boot media inserted or if you flashed the
nand then just boot up.

2\) If you used [haxwithaxe's](User:haxwithaxe) image then
skip this step else read on. The default image is missing some rather
important bits like the terminal activity and the means to install it.
To install any activity go [here](http://wiki.laptop.org/go/Activities)
and write down the url for the .xo file of the activity you want and
then get to the virtual console by pressing
ctrl+alt+`<first gradiated circle key>`{=html} (the gradiated circle
keys and the volume/brightness keys are mapped to the function keys).
Then wget the .xo from the url **without the <http://>** (damned if I
know why :/ ), run "sudo apt-get install unzip", then unzip the .xo and
place the resulting `<activity name>`{=html}.activity folder in
"/home/olpc/Activities/". To get back to Sugar press
ctrl+alt+`<a gradiated circle key>`{=html} ... i say "a" because it's
one of them but i can't tell which one. Just press each one successively
until Sugar pops up.

3\) Go wild with it it's full on Debian :P If you want you can follow
the [Soundmodem](OLPCSoundmodem) and make obnoxious noises :)
or one of the other OLPC specific how tos on this wiki.

[Category:OLPC](Category:OLPC)
