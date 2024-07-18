## Background

[Go](http://en.wikipedia.org/wiki/Go_(board_game)) is a board game of
strategy, like chess, that is around 3000 years old and the most popular
game of it's type in the world. Before going any further, take a look at
the wikipedia page... the short version is that it's an *extremely* easy
game to learn and for every player to date beyond mastery. No computer
or algorithmic approach can beat even a moderately skilled amateur (it's
been in the crosshairs of the AI community since chess, a vastly
inferior pastime, fell with little resistance) but four year olds are
routinely taught to play. Its played on a grid, usually 19x19, but
occasionally bigger and frequently smaller for faster or educational
games (9x9 and 13x13 being the other standard sizes). The object is for
two players to try to surround as much of the board as possible by
placing immovable stones on the intersection points of the grid, the
central caveat being that stones can be captured if totally surrounded
by opposing colored stones. There are maybe two other rules, depending
on how you count, but it's beautifully simple.

Games are played ([illustrative
picture](http://en.wikipedia.org/wiki/Image:Go-Equipment-Narrow-Black.png))
on a board called a Goban, traditionally a very thick slab of wood with
it's own feet that sat directly on the floor, with players on opposing
sides sitting on cushions. These days you're more likely to see a table
board, which is still essentially a slab of wood. The stones range from
traditional (read: expensive) slate and shell to bottlecaps
(glass/plastic coated lead being the most common).

## Concept

Many clients exist to play Go on computers/handheld devices. These are
wonderful in that they can record your game in the SGF format, which is
(near) universally used by players to review their games (an important
part of getting better, often done with a teacher or opponent). They're
also handy when you're moving around, and can't set up a bunch of slick
stones on a slab of wood (trains, planes, automobiles, bicycles). For
casual games, it's nice to be able to stop and resume at any time.

The big downside is face to face interaction. It's simply nowhere near
as enjoyable to play by passing a handheld back and forth or staring at
a computer, the latter not being particularly portable most of the time
anyway.

So the plan would be to build something that's as close to the form
factor of a real goban, but shrunk a bit for portability, and completely
electronic. I'd say about a 30cm square (\~1 foot for the unit
challenged) and no thicker than a paperback book would be a good size.
Something you can throw in a bag without hesitation. It should have as
intuitive an interface as possible, the ability to automatically score
the game, and best of all store games and export them to a computer
somehow.

Of course, it should also have some pointless eastereggs built in...
[the game of life](http://en.wikipedia.org/wiki/Conway%27s_game_of_life)
springs to mind.

## Implementation Ideas

Simply but, a big array of multicolor LEDs, each one an "intersection"
on the board. 19\^2, 361, of them. A glorious sight to behold. Initially
I thought it would be neat to make each LED a pushbutton, but quickly
realized that multicolor LED pushbuttons are expensive, make the whole
project orders of magnitude more difficult and would be rather fragile
(I'd be delighted if someone showed me otherwise though). So the backup
plan would be to simply have a big old grid of LEDs and a d-pad
(think... nintendo controller) to move around your "stone" on the matrix
before placing it. A five button interface, one on each side. If you use
Red/Green bicolor LEDs you can get three colors (tricky eh?): Red,
Green, and Yellow. I *think*
[these](http://www.superbrightleds.com/TriColor%20LED.htm) are true
tricolor LEDs... in the sense that you have one anode (or cathode, your
choice) per color (unfortunately they cost way too much, we'll see if
they can be found cheaper, something under \$0.30 would be nice). The
stone you're "placing" would be yellow, and upon pressing would turn
your color (based on whose turn it is, obviously). The yellow could also
be used to mark the "edge" when playing on a smaller 9x9 or 13x13 board.

This is a project ideally suited for a microcontroller of some sort.
They're surprisingly cheap (once you factor in how much it costs to get
PIC/AVR prog hardware) and should be very easy to interface to a
computer for game data offload. Also, the algorithms for driving this
thing will be more sophisticated than I'd want to try to implement on a
PIC or AVR. Totally open to ideas here though - I've never done anything
with microcontrollers except some robot programming in C with PICs, and
then only using an existing framework.

Driving a huge multicolor LED matrix will be... interesting. The normal
solution for a monochrome display is, as I understand it, a bunch of
shift registers. I guess for this, if you use "true" tricolor LEDs,
you'd just need twice as many shift registers. If you use bicolor LEDs,
which, as I understand it, achieve the third color by duty cycle
trickery (switching between the two colors very rapidly to blend them)
I'm not sure how you could accomplish this. Advice needed.

[Category:Proposed_Projects](Category:Proposed_Projects)
