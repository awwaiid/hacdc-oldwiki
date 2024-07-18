Leadership

`   * Project Lead: Q`

Members

`   * Elliot`\
`   * Nathan`\
`   * Ash`

Proposed Budget: \$500.00 Status

`   * Obtained: Medeco M3 cylinder (with tail piece) and 5 keys`\
`   * Obtained: Electric Strike Plate`

TO DO

`   * Locate the M3 Core and Keys`\
`   * Locate the multiple strike plates (I think 1 was defective)`\
`   * Install the M3 Core as the backup locking mechanism`\
`   * Give the 5 keys to trusted members who frequent the space`\
`   * Install electric strike plate in the door jamb`\
`   * Run wiring from the strike plate to both sides of the walls (inside/outside)`\
`   * Implement an "outside" panel (HID R40 Multi-Protocol Reader)`\
`   * Design a central controlling system for the "inside" to manage users`

Abstract

The access control project, which has had many names over the past few
weeks of its existence, is a project with two main goals in mind. The
security of our space and the convenience of entry for all of our
members. The project has been developed into two stages and contains the
first stage of a revitalization of the mechanical locking mechanisms
currently being used as well as an enhancement to the door frame and its
underlying structure and the second stage being the development of a
brand new electronic security system with improved access control.

If you would like to add ideas (or want to help) please do so on this
page AND send a message to the members list stating your interest. If
you do not have access to the members list, post it to the blabber.
Stage One

`   * Using longer, stronger screws in the door's frame to enhance the structural integrity`\
`     *Replacing the crappy core cylinder that is currently in there with a new Medeco M3 series rim/mortise cylinder`\
`     *Reinforcing the hinges and making sure they are all strong enough to handle a kick by the feds (joke, please no emails)`\
`     *Either buying a new door knob or fixing the internals of the current, it was possible to lock yourself in when we first arrived.`

Stage Two

-   Implementing a smart card reader system (contacted)
-   Installing the impeding mechanism
-   We may need a circuit in the middle of the impeding mechanism and
    the card reader to do perform some logic. It depends on how the
    reader we buy is setup, if there are usable pins on the unit we
    could piggy-back a connector and setup a small circuit (diode and
    tiny IC) to supply voltage to the impeding mechanism when user_card
    = accepted;
-   Writing all the access cards for members
-   Developing a PAX system for the backend to log entry data and
    control users access (helpful for janitor access)
-   Use the PAX system to develop alerts that can be broadcast over TCP

Wed, May 14, 2008

Andrew ("Q"), Ash, and Elliot have continued brainstorming. Posted up a
link on the blog to discuss ways to go. Great suggestion (though it
might have been a (brilliant) joke?) to make a DDR pad. Elliot's been
messing around with the [Parallax RFID
board](Parallax_RFID_board), and learning what it can/can't
do, but he's new to RF stuff. Wed, June 5, 2008

So last night at open lab I disassembled the current locking mechanics
and made sure everything would work when buying a regular mortise
cylinder core from Medeco. Everything looks good to go, I think I'm
going to use the existing backplate which should be fine as long as we
get a tail on our new core. The door knob and internals are still really
flaky, but they really aren't even necessary at this point. With the new
core, (Medeco 10 series) we will have sufficient security and it will be
100x better than our current locks. -Q

[Category:Physical_Access_Control](Category:Physical_Access_Control)
