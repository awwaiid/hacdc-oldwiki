Note that, as a point of distinction from the [Physical Access Control
Project](Physical_Access_Control_Project), this project's
scope includes the whole [church](http://www.saintstephensdc.org/), its
staff and tenants.

There was a meeting in the space at 1pm on Saturday, 6 December 2008 to
start prototyping the Asterisk back-end.

Discussion is taking place on [the red door mailing
list](http://hacdc.org/mailman/listinfo/reddoor_hacdc.org).

# Current plans {#current_plans}

As per a discussion Nate had with Brian on Tuesday, December 16th, here
are the current plans:

Requirement: the person doing the unlocking must see the guest before
opening the door. So, unlocking by phone is not permissible. Either get
video on screen, or just walk downstairs and see 'em through the window.

Outside: All that's needed is a camera, a keypad, and a place Brian can
stick a printed directory page. Two-way audio (speakerphone at the
outside panel) would be nice too but isn't a strict requirement. The
video will be served to the internet over St. Stephen's internet
connection.

When a guest dials a suite number: (which will be a 1 or 2 digit number,
probably followed by the star or pound key) The system should place a
call over the PSTN to ring whoever's associated with that space. The
suite-number-to-phone-number lookup table will be maintained by Brian.

When the phone is answered: It'd be nice to have two-way audio to the
panel, so the answerer can talk to the guest and ascertain who they are.
BUT UNLOCKING CANNOT BE DONE BY PHONE. See "requirement", above.

To unlock the door: The answerer (or anyone else) can just walk
downstairs and open the door, OR pull up video over the web, and after
having visually confirmed the guest's identity, the answerer can enter
their PIN on the website and unlock the door that way. So the webserver
will need a copy of the PIN database, or will need to forward all
attempts to some other device to try them.

Any authorized user can just enter their PIN at the keypad and let
themself in, of course. (Yeah, I know that's not a word. Bite me,
English language!)

Caveat: The answerer could just tell their PIN to the guest over the
phone, couldn't they? To prevent this, and enforce the face-view
requirement, perhaps the keypad could refuse to accept PINs for a while
after dialing a suite number.

Ideally: Video from the panel camera will be split, so it can be
digitized by the web video server AND by the surveillance recorder in
Brian's office, which is NOT connected to the internet.

[Category:Previous Projects](Category:Previous_Projects)
