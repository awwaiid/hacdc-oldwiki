If it was me, I'd interface the digital modes via the ACC connector (13
pin DIN). That way you can leave the Mic connected and not have to
re-wire to change modes.

As for an audio interface, let's see what Google offers up:
<http://www.wraith.sf.ca.us/electronics/radio/rigif.html>

Looks like you're on the right track, see how they sum the two audio
channels into one using 2 - 2.2K ohm resistors.

See the comment to keep the grounds isolated. Of course, the rig control
interface will connect the grounds, so I think that may be less critical
-- I seem to recall just using pots (variable resistors) for level
control. You'd need opto-isolators on the CI/V control side to maintain
complete ground isolation, I believe -- I don't have the schematics for
the radio here.

After a while, I wound up using this device (SignalLink), as it contains
a built in sound-card and VOX-operated transmit. Made things very easy
and allowed me to maintain the speaker connection at the PC.

<http://www.tigertronics.com/slusbmain.htm> -- \$110.00 + ship with all
cables, etc. needed. (The CI/V rig control is not a part of this
scheme.) It worked really well and looked great.

That way I didn't have to futz with cables to use the PC for different
purposes. And I personally like the esthetic of a really tidy station.
YMMV, of course.

In this vein, here's how G4ILO built his own:
<http://www.g4ilo.com/usblink.html>

(BTW: He claims that most modern sound cards have the transformers
built-in so adding your own is redundant and un-necessary. So check.)

The Voice Operated Transmit (VOX) circuit to key the PTT line on the
radio:

Hmmm... I'd love to get a 2M WSJT meteor scatter station w/ a beam on
the roof Martin. --http://physics.princeton.edu/pulsar/K1JT/ -- just
keep that in the back of your mind.

Of course, once we get the radio and PC interfaced, running WSPR will be
trivial, esp. if the PC can boot into Windows:
<http://wsprnet.org/drupal/>

[Category:Amateur Radio](Category:Amateur_Radio)
