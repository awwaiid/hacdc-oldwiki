![](Reverse_engineering_parallax_rfid_00026_small.jpg "Reverse_engineering_parallax_rfid_00026_small.jpg")

Setting the parallax RFID up is painfully simple. Just hook it up to a
serial port at 2400,8,N,1 and you're off.

![](Reverse_engineering_parallax_rfid_00024_small.jpg "Reverse_engineering_parallax_rfid_00024_small.jpg")

It's a simple device -- basically an RFID chip and a PIC used to
interface with serial. The RFID chip
[EM4095](http://www.emmicroelectronic.com/Products.asp?IdProduct=86) is
designed for low-frequency, amplitude modulated transponders.

There's not much of an obvious way to hack into the thing because most
all of the functionality (frequency generation, signal detection) is in
the EM4095. I tried tapping the Demod Out pin to see if I could get any
info that the PIC wasn't letting pass through.

![](Reverse_engineering_parallax_rfid_00033_small.jpg "Reverse_engineering_parallax_rfid_00033_small.jpg")

I tried a variety of cards on the thing. Mostly-predictably, only the
low-freq cards that it came with gave out anything that made sense.

![](Reverse_engineering_parallax_rfid_00038_small.jpg "Reverse_engineering_parallax_rfid_00038_small.jpg")

Using one of the supplied cards spits out what a reasonably
low-frequency data stream.

![](Reverse_engineering_parallax_rfid_00040_small.jpg "Reverse_engineering_parallax_rfid_00040_small.jpg")

The only other card that got any response was the Zipcard, which sync'ed
up with the RFID at 133kHz, but spat data that looks like the Zipcard's
running at a much higher frequency -- probably a multiple of 133?

![](Reverse_engineering_parallax_rfid_00051_small.jpg "Reverse_engineering_parallax_rfid_00051_small.jpg")

So basically, the parallax unit seems to be easy and reliable with its
cards, but sadly not too hackable/expandable.

[Category:Physical_Access_Control](Category:Physical_Access_Control)
